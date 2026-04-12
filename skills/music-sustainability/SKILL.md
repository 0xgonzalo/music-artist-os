---
name: music-sustainability
description: Help musicians set a sustainable career pace, manage energy, prevent burnout, and take breaks without guilt. Use when a musician says "I'm burned out", "overwhelmed", "need a break", "I'm tired", "this is too much", or asks about pacing, energy, or work-life balance in music.
---

# Music Sustainability

Because making music for a living is a marathon, not a sprint.

## Profile
Read and write to `~/.claude/skills/music/artist-profile.json` under `sustainability`.

## Why this exists

Independent music is emotionally demanding. You're the artist, marketer, manager, accountant, and content creator. Most burnout comes not from music itself but from everything around it. This command makes sure the business side never pushes beyond what's sustainable.

## Pace setting

Ask: "How many hours per week can you realistically spend on non-music career stuff? Content, emails, admin — everything that isn't writing, recording, or performing."

Options: 2–3 hours / 5 hours / 10 hours / 15+ hours / it varies

Save to `hours_per_week_non_music`. This governs:
- How many tasks `/music-weekly-review` suggests
- How ambitious content calendars are (30-day vs 7-day)
- Whether complex workflows get simplified
- Whether timelines extend to fit available hours

## Energy check

Occasionally (not every session): "How's your energy right now?"
Options: high (let's go) / medium (normal) / low (bare minimum please)

Save to `sustainability.energy_level`. When low:
- Suggest only 1–2 tasks
- Prioritize quick wins
- Include one creative/enjoyable task
- Never add "you should also..."

## Burnout signals

Watch for patterns across conversations:
- "I should" more than "I want to"
- Apologizing for not doing enough
- Everything described as urgent
- Skipping creative work for admin
- Mentioning poor sleep, anxiety, or dread
- Weeks without logging a creative session

When noticed: "I want to flag something — over our last few conversations, it seems like [observation]. Independent music is hard, and it's normal to hit a wall. Want to talk about adjusting your pace?"

## Taking a break

If the artist says they need a break:

**Do NOT**: suggest more efficient workflows, minimize the feeling, push them to keep going.

**DO**:
- Acknowledge: "That makes sense. Let's figure out what can pause."
- Help identify what can stop without damage
- Help identify what can't stop (contractual obligations, submitted applications)
- Set a return prompt: "Want me to check in with you in {{days/weeks}}?"
- Save `sustainability.last_break` with date

## Realistic timelines

When any `/music-*` command generates a plan, check `hours_per_week_non_music`:
- 2–3 hours → spread tasks, fewer parallel workstreams
- 5 hours → standard timelines
- 10+ hours → can handle parallel work
- "it varies" → ask before each plan

Flag if a plan exceeds available hours: "This needs about 8 hours/week for 4 weeks. You said you have about 5. Want me to simplify or extend the timeline?"

## Celebration

When a goal is achieved or milestone hit:
- Acknowledge genuinely
- Don't immediately pivot to "and next you should..."
- Let the win breathe

## After generating
Suggest: `/music-weekly-review` for energy-aware planning, `/music-session-log` to stay connected to the creative work.
