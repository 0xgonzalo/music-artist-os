---
name: music-quick-start
description: First-time setup for Music Artist OS. Run this when a musician wants to get started. Asks 4 questions, saves the profile, and the artist is ready to use any other music command. Takes under 2 minutes.
---

# Music Quick Start

Get a musician set up in under 2 minutes.

## Profile location
```
~/.claude/skills/music/artist-profile.json
```

## Flow

1. Check if `artist-profile.json` exists and has `name` populated
2. If already set up → greet by name, show active release and top goal, list available `/music-*` commands
3. If not set up → run onboarding below

## Onboarding (4 questions only)

Ask these together in a natural way:

1. **Name** — artist/project name
2. **Genre** — what kind of music
3. **Country** — where you're based (needed for PRO registration, currency, platforms)
4. **One goal right now** — what's the most important thing you're working on? (e.g. "release a single", "book shows", "grow on TikTok", "figure out royalties")

Optional bonus (only if the artist seems chatty):
- Distributor (or "none yet")
- DAW they use

## Save

Write answers to `artist-profile.json`. Set:
- `onboarding_complete: true`
- `explain_simply: true`
- `updated_at: [current timestamp]`

## After saving

Say: "You're set up. Here's what I'd suggest based on your goal:"

Then map their goal to the right command:
- Release a single/EP/album → "Run `/music-releases` to build your release plan"
- Book shows / tour → "Run `/music-live` to start booking"
- Grow on TikTok / Instagram / content → "Run `/music-content` for platform-specific ideas"
- Figure out royalties / money → "Run `/music-finances` to make sure you're collecting everything"
- Get press / blog coverage → "Run `/music-press` to build your press kit"
- Sync / TV placements → "Run `/music-sync` to prep your catalog"
- General "I don't know where to start" → "Run `/music-weekly-review` and I'll help you prioritize"

Also mention: "Your artist identity will build up naturally as you use different commands. Or run `/music-identity` anytime to set it up all at once."

## Do NOT

- Ask more than 4–5 questions
- Run full identity setup here
- Overwhelm with all available features
- Block on missing info — save what you have, fill in the rest later
