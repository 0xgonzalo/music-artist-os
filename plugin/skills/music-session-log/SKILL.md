---
name: music-session-log
description: Log creative sessions for musicians — what was worked on, collaborators, decisions made, ideas to revisit, next steps. A scratchpad that remembers what happened between sessions. Use when a musician says "log my session", "what did I work on", "session notes", or "what did we decide about [track]".
---

# Music Session Log

Capture notes from creative sessions so nothing gets lost.

## Profile
Read and write to `~/.claude/skills/music/artist-profile.json` under `creative_log`.

## Logging a session

Ask only what's relevant (don't force all fields):
- **Date**: today unless specified
- **Tracks**: song title(s) worked on
- **Stage**: writing, recording, mixing, etc.
- **Collaborators**: who was there, what they did
- **Decisions**: "dropped the bridge", "changed key to Bb minor"
- **Ideas to revisit**: anything that came up but wasn't finished
- **Notes**: anything else to remember
- **Next step**: what needs to happen next

Save as entry in `creative_log` array. Update `updated_at`.

## Reviewing

- "What have I been working on?" → recent sessions grouped by track
- "What did we decide about {{track}}?" → search log for decisions
- "What's next on {{track}}?" → latest next_step
- "Show me this month" → chronological log

## Connections

- When starting a release plan → "I see you've been working on {{track}}. Is this the one?"
- When logging a collaborator → "Want to add them to your collaborators and set up splits?"
- After multiple sessions on same track → "You've had {{n}} sessions on {{track}}. Getting close?"

## After logging
Suggest: `/music-releases` if track seems done, `/music-collabs` if collaborators involved, `/music-finances` for splits.
