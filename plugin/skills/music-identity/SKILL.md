---
name: music-identity
description: Build and maintain a musician's creative identity — archetype, voice guide, visual world, platform fit, content do/don't lists. Run this for full identity setup, or it builds progressively as other music commands are used. Use when a musician asks about branding, identity, aesthetic, "who am I as an artist", or platform strategy.
---

# Music Identity

Build the lens through which all content, pitches, and communications are shaped.

## Profile
Read and write to `~/.claude/skills/music/artist-profile.json` under the `identity` key.

## Full setup mode

Run the complete identity setup — conversational, 2 questions at a time:

**Round 1**: References (3 artists admired — what resonates) + mood words (5 adjectives, feelings and textures, not genre labels)
**Round 2**: Visual world (colors, textures, film refs, photography, fashion) + audience (lifestyle portrait of the listener)
**Round 3**: Camera comfort (faceless / sometimes / fully visible) + tone of voice (minimal / warm / ironic / educational / raw / describe)
**Round 4**: Links (Spotify, Instagram, TikTok, YouTube, website) → Claude fetches each via web search to read bio, visual style, content patterns

### Synthesis output
Generate and save:
- **Archetype label**: short phrase (e.g. "faceless ambient producer", "raw confessional songwriter")
- **Platform fit score**: high/medium/low per platform
- **Content do list**: 5–8 authentic approaches
- **Content don't list**: 3–5 things that would feel off-brand
- **Voice guide**: 3–4 sentences on how to write for this artist

Present and ask: "Does this feel right? Anything to adjust?"

## Progressive mode

When another `/music-*` command needs identity data that's missing, ask only the relevant question(s):
- Missing `archetype` → "In one phrase, how would you describe yourself as an artist?"
- Missing `camera_comfort` → "How do you feel about being on camera?"
- Missing `tone_of_voice` → "How do you talk to your audience?"
- Missing `mood_words` → "Give me 5 words that describe the world of your music"

Save each answer immediately. After 3+ fields → generate partial synthesis.

## Identity refresh
"What's changed since we last set this up?" — update only relevant fields, re-run synthesis.

## After generating
Suggest: `/music-content` for identity-shaped content, `/music-comms` for voice-adapted pitches, `/music-press` for updated EPK.
