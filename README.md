# Music Artist OS

Complete career operating system for independent music artists. 17 sub-skills, 5 parallel audit agents, and persistent artist identity across releases, content, finances, live shows, sync licensing, merch, press, fans, analytics, collaborations, and creative sessions.

[![Claude Code Skill](https://img.shields.io/badge/Claude%20Code-Skill-blue)](https://claude.ai/claude-code)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](LICENSE)

## Installation

### Claude Code Marketplace (Recommended)

```bash
claude marketplace add 0xgonzalo https://github.com/0xgonzalo/music-artist-os
claude plugin install music-artist-os@0xgonzalo
```

### Shell Script (Alternative)

```bash
# Unix/macOS/Linux
curl -fsSL https://raw.githubusercontent.com/0xgonzalo/music-artist-os/main/install.sh | bash

# Windows PowerShell
irm https://raw.githubusercontent.com/0xgonzalo/music-artist-os/main/install.ps1 | iex
```

### Manual Install

```bash
git clone https://github.com/0xgonzalo/music-artist-os.git
cd music-artist-os
./install.sh          # Unix/macOS/Linux
```

## Update

```bash
# Marketplace
claude plugin install music-artist-os@0xgonzalo

# Shell script
curl -fsSL https://raw.githubusercontent.com/0xgonzalo/music-artist-os/main/install.sh | bash -s -- --update
```

Your artist profile is preserved during updates. New schema fields are added automatically on next session.

## Quick Start

```
# Start Claude Code
claude

# First-time setup (under 2 minutes)
/music-quick-start

# See all commands
/music

# What should I focus on this week?
/music-weekly-review

# Full career audit
/music audit
```

## Commands

| Command | Description |
|---------|-------------|
| `/music` | Main hub — shows all commands, routes by intent |
| `/music audit` | Full career audit with 5 parallel subagents |
| `/music-quick-start` | First-time setup — 4 questions, under 2 minutes |
| `/music-weekly-review` | Prioritized weekly tasks based on time + energy |
| `/music-content` | Content ideas for any platform — TikTok, IG, YT, faceless/viral |
| `/music-releases` | Release planning — 16 weeks through post-release review |
| `/music-finances` | Royalties, publishing, splits, budgets |
| `/music-live` | Shows, booking, tech riders, tour budget, show-day mode |
| `/music-sync` | Sync licensing — catalog prep, supervisor pitching |
| `/music-merch` | Merchandise — production, stores, pricing, drops |
| `/music-press` | Press outreach — EPK, pitching, coverage tracking |
| `/music-fans` | Mailing lists, community, superfans, newsletters |
| `/music-analytics` | Metric interpretation — what the numbers mean and what to do |
| `/music-identity` | Artist identity — archetype, voice, visual world, platform fit |
| `/music-session-log` | Log creative sessions — decisions, ideas, next steps |
| `/music-collabs` | Manage collaborations — briefs, stems, splits, status |
| `/music-comms` | Voice-adapted email templates and pitches |
| `/music-legal` | Agreement templates and contract red flags |
| `/music-sustainability` | Pace setting, energy, burnout prevention |

### `/music audit`

**Full Career Audit**

Spawns 5 parallel subagents to analyze your music career simultaneously:

- **audit-royalties** — checks all income streams are being collected (distributor, PRO, publishing admin, Content ID, SoundExchange)
- **audit-content** — reviews platform presence, posting consistency, identity alignment
- **audit-release** — checks release readiness, timeline position, pre-save status, press timing
- **audit-catalog** — verifies catalog metadata, sync readiness, splits documentation
- **audit-press** — assesses EPK completeness, press contacts, outreach timing

Generates a unified **Career Health Report** with prioritized actions.

### `/music-weekly-review`

**Priority Mode**

Reads your release timeline, goals, available hours, and energy level, then generates 3–5 prioritized tasks. Never suggests more work than you have time for. When energy is low, suggests lighter tasks. Always includes at least one creative task.

### `/music-content`

**Platform Content**

Generates content ideas shaped by your artist identity. Covers TikTok, Instagram, YouTube, Spotify, Bandcamp, Reddit, and X/Threads. Full faceless/camera-shy pathways for artists who don't want to be on camera. Includes 30-day content calendars, viral mechanic generation, and release-tied campaigns.

### `/music-finances`

**Royalties & Publishing**

The module most independent artists need first. Checks whether you're collecting all available income: master royalties, performance royalties (PRO), mechanical royalties (publishing admin), SoundExchange, YouTube Content ID, and neighboring rights. Country-aware — knows which PRO to register with based on where you're based.

## Features

### Progressive Identity

No heavy setup required. Your artist identity builds naturally as you use different commands — Claude asks 2–3 relevant questions when a module needs identity data, and saves each answer. Run `/music-identity` anytime for the complete setup.

### Plain Language Mode

On by default. All music business terms are explained clearly on first use:
- "PRO — a Performance Rights Organization. They collect money when your music is played publicly."
- "Mechanical royalties — money earned each time a copy of your song is made, including each stream."

Say "skip the explanations" when you're ready to turn it off.

### Show-Day Mode

When a show is within 7 days, `/music-live` proactively surfaces a checklist: tech rider, merch prep, setlist, social content, load-in times, and a day-of posting script.

### Sustainability

`/music-sustainability` protects your pace. Set your available hours, check your energy level, and Claude adjusts suggestions across all modules. Detects burnout signals over time and helps you take breaks without guilt.

### Persistent Profile

All commands share a single `artist-profile.json` that persists across sessions. Your identity, release plans, collaborators, press contacts, creative log, and goals are always available — no re-explaining.

### Country-Aware

Never assumes US/UK defaults. Asks your country once, then adapts PRO registration, publishing admin options, currency, festival databases, and platform availability.

### Faceless Content

Full content strategy for artists who don't want to show their face. DAW footage, abstract visuals, text-on-screen, hands-only, mystery series — available across TikTok, Instagram, YouTube, and Spotify Canvas.

## Architecture

```
.claude-plugin/
  plugin.json                        # Plugin manifest
  marketplace.json                   # Marketplace registry
skills/
  music-artist-os/                   # Main orchestrator
    SKILL.md
    references/                      # 5 RAG reference files
    artist-profile.json              # Profile template
  music-*/                           # 17 sub-skills
    SKILL.md
agents/
  audit-*.md                         # 5 parallel audit agents
```

### How It Works

1. **Orchestrator** (`/music`) routes commands to specialized sub-skills
2. **Sub-skills** provide deep single-domain workflows with structured output
3. **Agents** run in parallel during full audits for speed
4. **References** load on-demand (RAG pattern) — only what's needed per task
5. **Profile** persists across all sessions — artist data is never lost

## MCP Integration (Optional)

These integrations let Claude act on your behalf. Everything works without them.

| MCP | What it enables |
|-----|----------------|
| Gmail | Send pitches, booking emails, newsletters directly |
| Google Calendar | Create release timelines, show events, task reminders |
| Google Drive | Save press kits, split sheets, release plans |

If an MCP is unavailable, Claude outputs content as text you can copy.

## Example Prompts

### Getting started
```
/music-quick-start
/music
"I'm a musician and I need help"
```

### Planning & priorities
```
/music-weekly-review
"I have 3 hours this week — what matters most?"
"I'm overwhelmed — what should I focus on?"
```

### Releases
```
"I want to release a single in 8 weeks"
"Help me write a Spotify editorial pitch"
"Should this be a single or wait for the EP?"
```

### Content
```
"I need TikTok ideas but I don't want to show my face"
"Build me a 30-day content calendar"
"What should I post for release week?"
```

### Money
```
"Am I collecting all my royalties?"
"Help me register with my PRO"
"Create a split sheet for my new track"
```

### Shows
```
"I have a show in 5 days"
"Help me write a booking email"
"Create a tech rider"
```

### Creative work
```
"Log my session — worked on the new track with María"
"What did we decide about the bridge on track 3?"
"I need to send stems to my producer"
```

### Wellbeing
```
"I'm burned out"
"I need to take a break — what can I pause?"
"Set my pace to 3 hours a week"
```

## Uninstall

```bash
# Marketplace
claude plugin uninstall music-artist-os@0xgonzalo

# Shell script
curl -fsSL https://raw.githubusercontent.com/0xgonzalo/music-artist-os/main/uninstall.sh | bash
```

## License

MIT License — see [LICENSE](LICENSE) for details.

---

Built for Claude Code by [@0xgonzalo](https://github.com/0xgonzalo)
