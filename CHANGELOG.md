# Changelog

## [1.1.0] — 2026-04-12

### Fixed
- Profile path inconsistency — all 17 sub-skills now use correct `~/.claude/skills/music/` path (was `music-artist-os/`)
- Reference file cross-links in identity.md and project.md now use `/music-*` command names
- Uninstaller `read -p` no longer breaks when invoked via `curl | bash` (detects piped input)
- Firebase debug log removed from repository

### Added
- `--update` flag for install scripts — preserves artist profile during updates
- Schema versioning (`schema_version` field) in artist-profile.json with migration instructions
- Profile archiving system — arrays are archived when they exceed thresholds to prevent unbounded growth
- Fallback instructions for all 5 audit agents when web search is unavailable
- `claude-skill.json` manifest for Claude Code marketplace integration
- `claude install 0xgonzalo/music-artist-os` install method in README
- Archive directory (`~/.claude/skills/music/archive/`) created during install

### Removed
- Empty `scripts/` and `assets/` directories
- `firebase-debug.log` (added to .gitignore)

## [1.0.0] — 2026-04-12

### Added
- 1 main orchestrator skill (`/music`) with intent routing and full audit mode
- 17 sub-skills: quick-start, weekly-review, content, releases, finances, live, sync, merch, press, fans, analytics, identity, session-log, collabs, comms, legal, sustainability
- 5 parallel audit subagents: royalties, content, release, catalog, press
- 5 reference files: identity, memory, project, publishing, platforms
- Shared persistent artist profile (`artist-profile.json`)
- Progressive identity building — no heavy setup required
- Plain language mode — music business terms explained on first use
- Sustainability module — burnout prevention, energy-aware suggestions
- Creative session logging — decisions, ideas, next steps
- Collaboration management — briefs, stems, splits, status tracking
- Show-day mode — auto-activates 7 days before a show
- Priority mode — "what should I do this week" based on time and energy
- Faceless/camera-shy content pathways across all content generation
- Country-aware PRO and publishing registration
- MCP integration: Gmail, Google Calendar, Google Drive (with fallbacks)
- Install scripts for Unix/macOS and Windows PowerShell
- Uninstall scripts with profile backup option
