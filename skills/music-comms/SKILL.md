---
name: music-comms
description: Generate outreach emails and pitches for musicians — booking agents, venues, press, sync supervisors, brands, playlist curators, festival follow-ups, collaboration requests. All adapted to the artist's voice. Use when a musician needs to write an email, pitch, outreach message, or any professional communication.
---

# Music Comms

Write emails and pitches that sound like the artist, not like a template.

## Profile
Read `~/.claude/skills/music/artist-profile.json` first. Use `identity.voice_guide` for tone. If not set → ask tone of voice question, save, then proceed.

## MCP tools
gmail: send or save as draft after generation. Always offer: "Send via Gmail, save as draft, or copy?"
Fallback: output as formatted text.

## Web search triggers
Submission guidelines and current contacts for specific outlets or agencies.

## Templates (all adapted to artist voice)

- **Booking agent cold pitch**: subject, intro, what you bring (stats, draw, markets), links, ask
- **Venue / promoter inquiry**: subject, intro, proposed dates, draw estimate, tech requirements, links
- **Press / blog pitch**: subject line formula `[Name] — New [format] "[Title]" (out [date]) + hook`. Body: what's unique, who it's for, attachments (private link, one-sheet, photo)
- **Sync supervisor pitch**: short, professional, track-specific, one-sheet attached, specific fit reason
- **Brand partnership pitch**: what the artist offers, audience demographics, proposed format, rate
- **Interview response** (accepting/declining): availability, topics, gracious decline with alternative
- **Playlist curator outreach**: personalized per curator — reference their playlist, explain track fit
- **Festival application follow-up**: professional, brief, reference original application
- **Collaboration request**: what you admire, what you're proposing, no pressure
- **Thank you / follow-up**: after show, meeting, press coverage, collaboration

## After every email generated
Always offer: "Send via Gmail, save as draft, or copy to clipboard?"

## After generating
Suggest: `/music-press` for press strategy, `/music-live` for booking strategy, `/music-sync` for supervisor outreach.
