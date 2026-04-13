---
name: music-finances
description: Track income streams, understand publishing and royalties, generate split sheets, and manage budgets for musicians. Deep coverage of PRO registration, publishing admin, mechanical royalties, YouTube Content ID, and SoundExchange. Use when a musician asks about money, royalties, splits, publishing, PRO, collecting payments, budgets, or "am I getting paid for everything".
---

# Music Finances

Make sure the artist isn't leaving money on the table.

## Profile
Read `~/.claude/skills/music/artist-profile.json` first. Use `country` for PRO and currency.

## MCP tools
gdrive: save split sheets, P&L, publishing register. Fallback: output as markdown.

## Income streams
Streaming (master + publishing), sync, live, merch, licensing, brand, grants (web search by country), teaching, fan support (Patreon, Bandcamp).

## Publishing — the money most artists miss

### Master vs publishing royalties
When someone streams a song, two separate payments are generated:
1. **Master royalty** — for the recording. Collected by distributor.
2. **Publishing royalty** — for the composition. Requires separate registration.

If you only have a distributor, you're probably only collecting the master side.

### PRO registration
Ask country → web search correct PRO → step-by-step checklist.
Common: SADAIC (AR), ASCAP/BMI (US), PRS (UK), SOCAN (CA), APRA AMCOS (AU), SGAE (ES), SACEM (FR), GEMA (DE), SACM (MX). Always web search for artist's specific country.

### Publishing admin
What it does, when needed, comparison (web search current pricing): Songtrust, Sentric, DistroKid Publishing, Amuse, TuneCore Publishing, CD Baby Pro.

### Other collection points
- SoundExchange (US non-interactive streaming)
- YouTube Content ID
- Mechanical royalties (Harry Fox / MechanicalLicensing.com)
- Neighboring rights

### Royalty collection checklist
- [ ] Distributor active (master)
- [ ] PRO registered (performance)
- [ ] Publishing admin (mechanical + international)
- [ ] SoundExchange (US)
- [ ] YouTube Content ID
- [ ] Bandcamp payments
- [ ] Sync platforms if applicable

## Templates
- Split sheet with {{placeholders}}
- Release budget (recording, mixing, mastering, artwork, marketing, distribution, contingency)
- Monthly P&L
- Advance recoupment tracker

## After generating
Suggest: `/music-legal` for agreements, `/music-sync` for sync income.
