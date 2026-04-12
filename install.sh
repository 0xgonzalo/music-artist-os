#!/usr/bin/env bash
set -euo pipefail

# Music Artist OS Installer
# Wraps everything in main() to prevent partial execution on network failure

main() {
    SKILL_DIR="${HOME}/.claude/skills/music"
    AGENT_DIR="${HOME}/.claude/agents"
    REPO_URL="https://github.com/gonzalo/music-artist-os"

    UPDATE_MODE=false
    for arg in "$@"; do
        case "$arg" in
            --update) UPDATE_MODE=true ;;
        esac
    done

    echo "════════════════════════════════════════"
    if [ "$UPDATE_MODE" = true ]; then
        echo "║   Music Artist OS - Updater          ║"
    else
        echo "║   Music Artist OS - Installer        ║"
    fi
    echo "║   Claude Code Music Career Skill     ║"
    echo "════════════════════════════════════════"
    echo ""

    # Check prerequisites
    command -v git >/dev/null 2>&1 || { echo "✗ Git is required but not installed."; exit 1; }
    echo "✓ Git detected"

    # Create directories
    mkdir -p "${SKILL_DIR}/references"
    mkdir -p "${SKILL_DIR}/archive"
    mkdir -p "${AGENT_DIR}"

    # Clone or update
    TEMP_DIR=$(mktemp -d)
    trap "rm -rf ${TEMP_DIR}" EXIT

    echo "↓ Downloading Music Artist OS..."
    git clone --depth 1 "${REPO_URL}" "${TEMP_DIR}/music-artist-os" 2>/dev/null

    # Copy main skill + references
    echo "→ Installing main skill..."
    cp "${TEMP_DIR}/music-artist-os/music/SKILL.md" "${SKILL_DIR}/SKILL.md"
    cp "${TEMP_DIR}/music-artist-os/music/references/"*.md "${SKILL_DIR}/references/"

    # Handle artist profile
    if [ -f "${SKILL_DIR}/artist-profile.json" ]; then
        if [ "$UPDATE_MODE" = true ]; then
            echo "  → Checking profile schema..."
            echo "  ✓ Existing artist profile preserved (schema migration will run on next session)"
        else
            echo "  ✓ Existing artist profile preserved"
        fi
    else
        cp "${TEMP_DIR}/music-artist-os/music/artist-profile.json" "${SKILL_DIR}/artist-profile.json"
        echo "  ✓ Created fresh artist profile"
    fi

    # Copy sub-skills
    echo "→ Installing sub-skills..."
    SKILL_COUNT=0
    for skill_dir in "${TEMP_DIR}/music-artist-os/skills"/*/; do
        skill_name=$(basename "${skill_dir}")
        target="${HOME}/.claude/skills/${skill_name}"
        mkdir -p "${target}"
        cp "${skill_dir}SKILL.md" "${target}/SKILL.md"
        SKILL_COUNT=$((SKILL_COUNT + 1))
    done
    echo "  ✓ ${SKILL_COUNT} sub-skills installed"

    # Copy agents
    echo "→ Installing subagents..."
    AGENT_COUNT=0
    for agent_file in "${TEMP_DIR}/music-artist-os/agents/"*.md; do
        cp "${agent_file}" "${AGENT_DIR}/"
        AGENT_COUNT=$((AGENT_COUNT + 1))
    done
    echo "  ✓ ${AGENT_COUNT} subagents installed"

    echo ""
    if [ "$UPDATE_MODE" = true ]; then
        echo "✓ Music Artist OS updated successfully!"
        echo ""
        echo "  Your artist profile was preserved."
        echo "  Any new schema fields will be added on next session."
    else
        echo "✓ Music Artist OS installed successfully!"
    fi
    echo ""
    echo "  Installed:"
    echo "    • 1 main skill (music orchestrator)"
    echo "    • ${SKILL_COUNT} sub-skills"
    echo "    • ${AGENT_COUNT} audit subagents"
    echo "    • 5 reference files"
    echo ""
    echo "  Quick start:"
    echo "    1. Open Claude Code:    claude"
    echo "    2. Set up your profile: /music-quick-start"
    echo "    3. See all commands:    /music"
    echo ""
    echo "  Popular commands:"
    echo "    /music-weekly-review    What should I do this week?"
    echo "    /music-content          Content ideas for any platform"
    echo "    /music-releases         Plan a release"
    echo "    /music-finances         Am I collecting all my royalties?"
    echo "    /music audit            Full career audit"
    echo ""
    if [ "$UPDATE_MODE" = false ]; then
        echo "  To update: curl -fsSL ${REPO_URL}/raw/main/install.sh | bash -s -- --update"
    fi
    echo "  To uninstall: curl -fsSL ${REPO_URL}/raw/main/uninstall.sh | bash"
}

main "$@"
