## MCP tools
None required.

## Web search triggers
Artist Spotify page, Instagram profile, TikTok profile, YouTube channel — to read bio, visual style, recent content.

## What this skill does
Builds and maintains the artist's creative identity — the lens through which all content, pitches, and communications are shaped. Can run as a full setup or progressively through individual questions as other modules need identity data.

---

## Progressive mode (default)

When another module needs identity data that isn't set yet, it calls into this file for just the relevant questions:

| Missing field | Ask |
|--------------|-----|
| `archetype` | "In one phrase, how would you describe yourself as an artist to a stranger? e.g. 'bedroom producer who makes ambient stuff' or 'indie singer-songwriter'" |
| `camera_comfort` | "How do you feel about being on camera? Fully faceless / sometimes visible / fully visible" |
| `tone_of_voice` | "How do you talk to your audience? Minimal and mysterious / warm and personal / ironic / educational / raw — or describe it" |
| `mood_words` | "Give me 5 words that describe the world of your music — not genre labels, more like feelings and textures" |
| `visual_world` | "What does your music look like? Colors, textures, film references, photography, anything visual that feels like your sound" |
| `audience` | "Describe your ideal listener — what do they do, what else do they listen to, how do they find new music?" |
| `references` | "Name 3 artists you admire — and what specifically resonates: their sound, visual, strategy, or how they communicate" |

Save each answer to `artist-profile.json` under `identity` immediately after asking.

After gathering 3+ fields progressively, Claude can generate a partial archetype and do/don't lists. After all 7 fields are populated, run full synthesis.

---

## Full setup mode (on demand)

Triggered by: "set up my identity", "let's do the full identity thing", or when Claude suggests it after 3+ modules used.

### Conversational sequence — 2 questions at a time

**Round 1**
- References: 3 artists you admire — what specifically resonates (sound, visual, strategy, communication)?
- Mood words: 5 adjectives describing the world of your music — not genre labels, feelings and textures

**Round 2**
- Visual world: colors, textures, film references, photography style, fashion, images that feel like your music
- Audience: lifestyle portrait of your listener — what they do, what else they listen to, how they discover music

**Round 3**
- Camera comfort: fully faceless / sometimes visible / fully visible
- Tone of voice: minimal and mysterious / warm and personal / ironic / educational / raw — or describe it

**Round 4**
- Links: Spotify, Instagram, TikTok, YouTube, website
- Claude fetches each via web search to read bio, recent posts, visual style, existing content patterns

### Synthesis output

After gathering all inputs and fetching links, Claude generates and saves to `artist-profile.json`:

- **Archetype label**: short phrase capturing content identity (e.g. "faceless ambient producer", "raw confessional songwriter", "genre-bending visual maximalist")
- **Platform fit score**: high / medium / low per platform based on camera comfort, tone, genre, audience
- **Content do list**: 5–8 content approaches authentic to this identity
- **Content don't list**: 3–5 things that would feel off-brand
- **Voice guide**: 3–4 sentences describing how to write captions, pitches, and communications for this artist

Present the synthesis to the artist and ask: "Does this feel right? Anything to adjust?"

---

## Identity refresh

Triggered when `updated_at` > 30 days, or when artist says "things have changed", "I want to update my identity", "my sound is evolving".

Ask: "What's changed since we last set this up?" — update only the relevant fields and re-run synthesis on the changed inputs. Don't make them redo everything.

---

## Suggested next steps
- `/music-content` — generate content shaped by the new identity
- `/music-comms` — write pitches in the artist's voice
- `/music-press` — update EPK with new bio and archetype
