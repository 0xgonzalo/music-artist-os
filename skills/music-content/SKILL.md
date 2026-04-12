---
name: music-content
description: Generate platform-specific content ideas, captions, and calendars for musicians. Covers TikTok, Instagram, YouTube, Spotify, Bandcamp, Reddit, X/Threads. Handles faceless/camera-shy content, release campaigns, viral mechanics, and 30-day content calendars. Use when a musician asks about social media, content ideas, what to post, faceless content, viral strategy, or EPK.
---

# Music Content

Generate content ideas shaped by who the artist is. Every output is adapted to the artist's identity, voice, and camera comfort level.

## Profile
Read `~/.claude/skills/music/artist-profile.json` first.

## Before any generation

1. Read `identity` block from profile
2. If `archetype` is empty → ask 2–3 identity questions (references, camera comfort, tone of voice), save to profile, then proceed
3. Prepend archetype, voice guide, do/don't list to all generation
4. Filter platform suggestions by `platform_fit` scores
5. If `camera_comfort` is "faceless" → never suggest face-to-camera formats

## Modes

- **Release mode**: content tied to release timeline (teaser → announcement → release week → sustain)
- **Standalone**: ongoing content not tied to a release
- **Both**: parallel faceless channel + artist account

Infer from context or ask.

## Platforms

### TikTok
Web search trending audio in genre + trending formats before generating.
Formats: faceless DAW footage, sound-on challenges, "make a beat in 60s", trending audio hijack, lyric reveals, POV narratives, mystery teasers, BTS loops.
Output: concept, hook (first 2 seconds), caption, hashtags (web-searched), posting time.

### Instagram
Formats: Reels (adapted TikTok), carousels (visual world, process), Stories (polls, countdowns), collab posts, aesthetic grid plans, Close Friends strategy, link-in-bio strategy.

### YouTube
Formats: music video pre-production, visualizer/lyric video specs, studio sessions, live sessions, Shorts, artist playlists, Community posts.

### X / Threads
Formats: release threads, micro-essays, stem drops, reply-bait, show day scripts. Tone adapted to voice guide.

### Reddit
Web search top subreddits for genre. Formats: r/WeAreTheMusicMakers process posts, r/listentothis submissions, genre subreddits, AMAs, feedback posts.

### Spotify
Web search editorial pitch deadline + Canvas spec + Clips format. Actions: curated playlists, Canvas concepts, Clips, Artist Pick, bio refresh, editorial pitch copy, Wrapped priming.

### Apple Music / Bandcamp / SoundCloud
Apple: bio, artist playlist, Shazam optimization. Bandcamp: release page copy, Bandcamp Friday strategy, tags (web-searched), subscriber content. SoundCloud: private links, stem drops, repost outreach.

## Faceless / viral module

### Format library
DAW footage, abstract visuals (Runway, Kaiber, TouchDesigner), AI visual prompts, b-roll, text-on-screen, hands-only instrument, mystery series.

### Viral mechanics
Per release: audio hook for challenge/duet (15s), "use this sound" caption, split-screen concepts, genre-twist on trending format, 5-post mystery series. Web search current trends first.

### 30-day content calendar
Daily: format, hook, caption (tone-adapted), hashtags (web-searched), posting time.
Week 4: measurement checklist.

## After generating
Suggest: `/music-analytics` to track what's working, `/music-fans` to convert viewers to subscribers.
