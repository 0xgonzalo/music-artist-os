---
name: music-collabs
description: Manage active music collaborations — producer briefs, stem exchange checklists, split tracking, status updates, and credit confirmation. Use when a musician says "I'm working with someone", "send stems", "collab status", "collaboration brief", or asks about working with producers, vocalists, or other artists.
---

# Music Collabs

Track collaborations from first brief through delivery and credits.

## Profile
Read and write to `~/.claude/skills/music/artist-profile.json` under `active_collaborations`.

## MCP tools
gmail (send briefs/stems links), gdrive (save collaboration docs), gcal (session scheduling). Fallback: output as text.

## Starting a collaboration

Ask:
1. **Who**: name, role (producer, songwriter, vocalist, mixer, etc.)
2. **What track**: title — or check `creative_log` for recent tracks
3. **What's needed**: stems, references, brief, timeline
4. **Splits discussed?** → if no, flag for later

Save to `active_collaborations`:
```json
{
  "collaborator": "name",
  "role": "producer",
  "track": "track name",
  "status": "in_progress",
  "splits_agreed": false,
  "stems_shared": false,
  "deadline": "",
  "notes": ""
}
```

## Producer/mixer brief template

```
BRIEF — {{track_name}}

Artist: {{artist_name}}
Track: {{track_name}}
Stage: {{what's needed}}
Tempo: {{bpm}} | Key: {{key}}
References: {{reference_tracks}}
Direction: {{what you're going for}}
Sending: {{stems/rough mix/project file}}
Format: {{wav/stems/project}}
Deadline: {{date}}
Notes: {{anything else}}
```

## Stem exchange checklist
- [ ] Stems exported and labeled: `TrackName_StemName_BPM_Key.wav`
- [ ] Session notes included (tempo, key, tempo changes)
- [ ] Reference mix included
- [ ] Delivery method agreed (Google Drive, WeTransfer, Dropbox)
- [ ] Splits discussed before work begins

## Managing collaborations

- "Show my active collabs" → table with status
- "Update collab with {{name}}" → update status, add notes
- "{{name}} delivered" → mark delivered, prompt splits and credits if not done

## Splits and credits

When collaboration reaches "delivered":
- If `splits_agreed` is false → "You haven't documented splits yet. Want to do that now?" → link to `/music-finances`
- Credit confirmation: name, role, how they want to be credited

## Etiquette reminders (when relevant)
- Agree on splits before work begins
- Confirm credit format
- Set and communicate timelines
- Send a reference mix with stems

## After generating
Suggest: `/music-finances` for split sheets, `/music-legal` for agreements, `/music-session-log` to log the session, `/music-releases` to release the finished track.
