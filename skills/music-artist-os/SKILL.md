---
name: music
description: Complete career operating system for independent music artists. Routes to 17 specialized sub-skills covering releases, content, finances, live shows, sync licensing, merch, press, fans, analytics, collaborations, creative sessions, and sustainability. Use when a musician asks about any aspect of their career. Triggers on "I'm a musician", music business questions, artist branding, independent artist workflow, releasing music, royalties, booking shows, content strategy, or "what should I focus on this week".
---

# Music Artist OS

Complete career operating system for independent music artists. This is the main orchestrator — it routes commands to specialized sub-skills.

## Profile

All music sub-skills share a single persistent profile:
```
~/.claude/skills/music/artist-profile.json
```

Read this file at session start. If missing, create from the default schema in this directory and run `/music-quick-start`.

## Commands

Route `/music <command>` to the correct sub-skill, or use sub-skills directly:

| Command | Sub-skill | Description |
|---------|-----------|-------------|
| `/music quick-start` | `/music-quick-start` | First-time setup — under 2 minutes |
| `/music review` | `/music-weekly-review` | Prioritized weekly tasks by time + energy |
| `/music content` | `/music-content` | Platform content — TikTok, IG, YT, faceless/viral |
| `/music release` | `/music-releases` | Release planning — 16 weeks through post-release |
| `/music money` | `/music-finances` | Royalties, publishing, splits, budgets |
| `/music shows` | `/music-live` | Booking, riders, tour budget, show-day mode |
| `/music sync` | `/music-sync` | Sync licensing — catalog prep, supervisor pitching |
| `/music merch` | `/music-merch` | Merchandise — production, stores, drops |
| `/music press` | `/music-press` | Press outreach — EPK, pitching, coverage |
| `/music fans` | `/music-fans` | Mailing lists, community, superfans |
| `/music stats` | `/music-analytics` | Metric interpretation and diagnosis |
| `/music identity` | `/music-identity` | Artist identity — archetype, voice, platform fit |
| `/music log` | `/music-session-log` | Creative session notes and decisions |
| `/music collabs` | `/music-collabs` | Collaboration management — briefs, stems, splits |
| `/music email` | `/music-comms` | Voice-adapted email templates and pitches |
| `/music legal` | `/music-legal` | Agreement templates and contract red flags |
| `/music pace` | `/music-sustainability` | Energy, burnout prevention, breaks |

## Intent routing

If the user asks something music-related without a specific command, route by intent:

- Release, DSP, pre-save, pitching → `/music-releases`
- Content, social, viral, faceless, what to post → `/music-content`
- Royalties, splits, publishing, money, PRO → `/music-finances`
- Shows, booking, touring, riders, festivals → `/music-live`
- Sync, TV, film, supervisors, licensing → `/music-sync`
- Merch, store, drops, t-shirts → `/music-merch`
- Press, PR, blogs, EPK, reviews → `/music-press`
- Fans, mailing list, community, newsletter → `/music-fans`
- Analytics, metrics, numbers, performance → `/music-analytics`
- Identity, branding, aesthetic, who am I → `/music-identity`
- Session notes, what I worked on → `/music-session-log`
- Collaborations, working with someone, stems → `/music-collabs`
- Email, pitch, outreach → `/music-comms`
- Contract, agreement, legal, deal → `/music-legal`
- Burned out, overwhelmed, pace, break → `/music-sustainability`
- What should I do, priorities, this week → `/music-weekly-review`

## Full audit mode

When the artist says `/music audit` or "audit my career" or "full review":

Spawn parallel subagents:
1. `audit-royalties` — check all income streams are being collected
2. `audit-content` — review content strategy and platform presence
3. `audit-release` — check release readiness and timeline
4. `audit-catalog` — verify catalog metadata and sync readiness
5. `audit-press` — review press kit completeness

Each agent reads `artist-profile.json` and the relevant reference files, then reports findings. The orchestrator synthesizes into a unified **Career Health Score** with prioritized actions.

## After every major task

Suggest the next logical sub-skill:
- After release plan → `/music-content` for campaign
- After content generated → `/music-analytics` in 2 weeks
- After show booked → `/music-live` closer to date for show mode
- After finances reviewed → `/music-legal` for agreements

## Plain language mode

If `explain_simply` is `true` in profile (default), all sub-skills explain music business terms in plain language. Artist can disable with "skip the explanations".

## MCP dependencies

| MCP | Tools | Used by |
|-----|-------|---------|
| gmail | send_email, create_draft | comms, releases, live, press, fans |
| gcal | create_event, list_events | releases, live, weekly-review, fans |
| gdrive | create_file, upload_file | live, legal, content, finances, press |

Fallback: if any MCP is unavailable, output content as text or local file. Never block a workflow.

## References (loaded on demand)

| File | When to load |
|------|-------------|
| `references/identity.md` | Identity setup or content generation |
| `references/memory.md` | Profile persistence rules |
| `references/project.md` | Project management, OKRs, weekly review |
| `references/publishing.md` | Publishing royalties deep dive |
| `references/platforms.md` | Platform specs and best practices |
