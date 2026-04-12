---
name: music-analytics
description: Interpret performance metrics for musicians — Spotify save rate, skip rate, TikTok completion, email open rate, merch conversion. Never just displays numbers — always explains what they mean and what to do. Use when a musician shares stats, asks about analytics, metrics, performance, "is this number good", or wants a post-release review.
---

# Music Analytics

Interpret data, diagnose problems, recommend actions. Never just show numbers.

## Profile
Read `~/.claude/skills/music/artist-profile.json` first. Check `active_release` for post-release review timing.

## Web search triggers
Benchmark metrics by genre and platform, algorithm changes.

## Data sources
Work with whatever the artist shares (screenshots, numbers, descriptions): Spotify for Artists, Apple Music, Instagram Insights, TikTok Analytics, YouTube Studio, Bandcamp, email platform.

## Metrics that matter (explain each in context)

- **Save rate** (Spotify): saves ÷ streams. Web search genre benchmarks. Low = song or audience mismatch.
- **Listener-to-follower conversion**: low = profile needs work (bio, photo, Artist Pick).
- **Skip rate**: high on intro = hook isn't landing. Consider editing intro for streaming.
- **Playlist add rate**: organic vs editorial — organic is more valuable long-term.
- **TikTok completion rate**: most important TikTok metric. Below 20% = hook too slow.
- **Email open rate**: 30–50% healthy for music. Below 25% = subject lines or re-engagement needed.
- **Merch conversion rate**: visitors ÷ buyers. Low = pricing, selection, or store design issue.

## Diagnosis style
Always interpret in context. Examples:
- "Save rate 4% — above average for ambient. Skip rate 35% at 8 seconds — consider a shorter intro."
- "TikTok completion 18% — people drop at 12 seconds. Lead with the hook."
- "Email opens dropped from 42% to 28% — time for a re-engagement campaign."

Never say "looks good" or "looks bad" without specifics and next steps.

## Post-release review
Trigger 2 weeks after release date: "It's been 2 weeks since {{title}}. Want to run a performance review?"
Covers: stream trajectory, save rate, playlists, social growth, press, pre-save conversion, list growth.

## Reporting templates
Monthly dashboard, release post-mortem, quarterly review (load OKRs from profile).

## After generating
Suggest: `/music-releases` to inform next release, `/music-content` to double down on what works, `/music-fans` for list health.
