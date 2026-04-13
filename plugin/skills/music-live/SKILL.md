---
name: music-live
description: Manage live shows for musicians — booking outreach, tech riders, hospitality riders, tour budgets, show-day mode, merch at shows, festival applications, and post-show debriefs. Use when a musician asks about shows, gigs, booking, touring, riders, festivals, or has an upcoming show.
---

# Music Live

Everything around live performance.

## Profile
Read `~/.claude/skills/music/artist-profile.json` first. Check `shows` for upcoming dates.

## MCP tools
gcal (show events + rider notes), gmail (booking inquiry), gdrive (save riders). Fallback: output as text.

## Show mode
If a show is within 7 days, proactively suggest: "You have a show at {{venue}} in {{days}} days. Want to run through the checklist?"

Surfaces: tech rider sent?, hospitality rider sent?, merch prepped?, setlist finalized?, load-in/soundcheck/doors/set times, day-of posting script, post-show debrief prompt.

## Show checklist
Tech rider, hospitality rider, backline, soundcheck, merch packed, float ready, setlist, guest list, social content queued.

## Tech rider template
PA, monitors, inputs, DI boxes, mics, stage plot — all with {{placeholders}}.

## Hospitality rider template
Meals, drinks, accommodation, transport, green room — {{placeholders}}.

## Booking outreach
Identity-adapted pitch email. See `/music-comms` for templates.

## Tour budget calculator
Transport, accommodation, per diem, merch float, equipment rental, insurance per show and per tour.

## Settlement
Door deal vs guarantee vs vs-deal explained. Settlement sheet template.

## Post-show debrief
Triggered day after: audience size, merch sales, contacts made, what went well, what to improve, follow-ups.

## Merch at shows
What to bring, Square/SumUp setup, cash float, sales tracking, end-of-night settlement, fan email capture via QR code.

## Festival applications
Tracker (festival, deadline, genre fit, fee, capacity, status). Application copy template — identity-adapted. After confirmed → gcal event.

## After generating
Suggest: `/music-content` for show content, `/music-finances` for tour P&L, `/music-fans` for capturing new fans.
