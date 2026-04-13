---
name: music-weekly-review
description: "What should I do this week?" Priority mode for musicians. Reads the artist's release timeline, goals, energy level, and available hours, then generates 3-5 prioritized tasks. Use when a musician says "what should I focus on", "I'm overwhelmed", "I have X hours this week", or "what matters right now".
---

# Music Weekly Review

Generates a short, prioritized task list based on what actually matters right now.

## Profile
Read `~/.claude/skills/music/artist-profile.json` first.

## Flow

1. Read `hours_per_week_non_music` — if not set, ask: "How many hours this week can you spend on non-music career stuff? (content, emails, admin — everything that isn't writing or performing)"
2. Read `active_release` — calculate weeks until release date
3. Read `active_goals`
4. Read `shows` — any upcoming within 14 days?
5. Read `sustainability.energy_level` — if set, factor it in. If not, ask: "How's your energy this week? High / medium / low"
6. Read `creative_log` — anything unfinished?
7. Read `active_collaborations` — anything waiting on the artist?

## Generate task list

Output 3–5 tasks max. For each:
- **Task name** — specific and actionable
- **Command** — which `/music-*` command handles it
- **Time estimate** — how long it'll take
- **Why now** — one sentence on why this matters this week

## Rules

- Never suggest more work than the hours available
- If energy is low → lighter tasks (update bio, log a session, review analytics) over heavy ones (write press pitches, build content calendar)
- Always include at least one creative or enjoyable task
- If a show is within 7 days → that takes priority, suggest `/music-live` show mode
- If release is within 4 weeks → release tasks take priority
- If nothing is urgent → suggest maintenance tasks (update profile, review analytics, clean up catalog)
- End with: "Want me to walk you through any of these?"

## Weekly review mode

If the artist says "weekly review" or "let's check in":

1. **What shipped** — tasks completed, content posted, emails sent this week
2. **What's blocked** — anything stuck and why
3. **What's next** — top 3 priorities for next week
4. **Needs a decision** — anything waiting on the artist's input

Keep it under 5 minutes. Don't turn it into a chore.

## Quarterly OKR check

If the artist has `active_goals` set and it's the start of a quarter (or they ask):
- How are the goals tracking?
- What needs adjusting?
- See `~/.claude/skills/music/references/project.md` for OKR framework
