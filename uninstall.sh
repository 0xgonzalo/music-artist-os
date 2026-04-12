#!/usr/bin/env bash
set -euo pipefail

main() {
    echo "════════════════════════════════════════"
    echo "║   Music Artist OS - Uninstaller      ║"
    echo "════════════════════════════════════════"
    echo ""

    SKILL_DIR="${HOME}/.claude/skills"
    AGENT_DIR="${HOME}/.claude/agents"

    # Remove main skill
    if [ -d "${SKILL_DIR}/music" ]; then
        # Ask about profile preservation
        if [ -f "${SKILL_DIR}/music/artist-profile.json" ]; then
            if [ -t 0 ]; then
                # Interactive terminal — ask the user
                read -p "Keep your artist profile data? (y/n) " -n 1 -r
                echo
            else
                # Piped input (curl | bash) — default to keeping profile
                echo "  Non-interactive mode detected. Backing up profile by default."
                REPLY="y"
            fi
            if [[ $REPLY =~ ^[Yy]$ ]]; then
                cp "${SKILL_DIR}/music/artist-profile.json" "${HOME}/artist-profile-backup.json"
                echo "  ✓ Profile saved to ~/artist-profile-backup.json"
            fi
        fi
        rm -rf "${SKILL_DIR}/music"
        echo "  ✓ Removed main skill"
    fi

    # Remove sub-skills
    REMOVED=0
    for skill in music-quick-start music-content music-releases music-finances music-live music-sync music-merch music-press music-fans music-analytics music-identity music-session-log music-collabs music-comms music-legal music-sustainability music-weekly-review; do
        if [ -d "${SKILL_DIR}/${skill}" ]; then
            rm -rf "${SKILL_DIR}/${skill}"
            REMOVED=$((REMOVED + 1))
        fi
    done
    echo "  ✓ Removed ${REMOVED} sub-skills"

    # Remove agents
    AGENTS_REMOVED=0
    for agent in audit-royalties audit-content audit-release audit-catalog audit-press; do
        if [ -f "${AGENT_DIR}/${agent}.md" ]; then
            rm -f "${AGENT_DIR}/${agent}.md"
            AGENTS_REMOVED=$((AGENTS_REMOVED + 1))
        fi
    done
    echo "  ✓ Removed ${AGENTS_REMOVED} subagents"

    echo ""
    echo "✓ Music Artist OS uninstalled."
    echo ""
    echo "  To reinstall: curl -fsSL https://raw.githubusercontent.com/0xgonzalo/music-artist-os/main/install.sh | bash"
}

main "$@"
