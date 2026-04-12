---
name: music-releases
description: Plan and manage music releases from 16 weeks out through post-release review. Covers release timelines, metadata, pre-save strategy, DSP pitching, distribution, playlist pitching, and post-release analytics triggers. Use when a musician wants to release a single, EP, or album, or asks about Spotify pitching, distribution, pre-saves, or release strategy.
---

# Music Releases

Plan the full lifecycle of a release.

## Profile
Read `~/.claude/skills/music/artist-profile.json` first.

## MCP tools
- gcal: create 16-week timeline as calendar events
- gmail: draft pitch emails
- gdrive: save release plan document

Fallback: output as markdown if MCP unavailable.

## 16-week pre-release timeline

After artist confirms release date, generate task list:
- **Weeks 16–12**: finalize mix/master, register PRO, set up splits, choose distributor, plan artwork
- **Weeks 12–8**: artwork, press kit, pre-save setup, pitch to press (magazines, radio)
- **Weeks 8–4**: Spotify editorial pitch, blog pitches, content campaign starts, playlist curator outreach
- **Weeks 4–1**: pre-save push, teaser content, email list announcement, last press follow-ups
- **Release week**: launch content, social push, playlist monitoring, thank supporters
- **Weeks +1–4**: sustain content, analytics review, retrospective content

Check `hours_per_week_non_music` — adapt timeline density to available hours.
Offer to create milestones as gcal events.
Save `active_release` to profile.

## Metadata standards
Field-by-field: ISRC (unique code per recording), UPC (barcode per release), genre/mood tags, credits, lyrics. Plain language if `explain_simply` is true.

## Pre-save strategy
What pre-saves are, tools (Feature.fm, ToneDen, SubmitHub), promotion, measurement. Save `presave_url` to profile.

## DSP strategies
- Spotify editorial pitch: web search deadline → identity-adapted copy, mood tags, playlist fit
- Apple Music: editorial notes
- Bandcamp Friday: web search next date → strategy
- SoundCloud: private links for press/curators

## Distribution checklist
Web search current pricing: DistroKid, TuneCore, CD Baby, Amuse, AWAL.

## Single vs EP vs album
Decision framework based on catalog size, audience size, marketing capacity, goals.

## Playlist pitching tracker
| Curator | Genre | Followers | Contact | Status | Date |

## Post-release
After 2 weeks: "It's been 2 weeks since {{title}}. Run `/music-analytics` for a performance review?"

## After generating
Suggest: `/music-content` for campaign, `/music-finances` for budget, `/music-press` for outreach.
