## What this skill does
Manages persistence of artist data across sessions via `artist-profile.json`.

---

## Rules

1. Read `artist-profile.json` at session start using file system tools
2. If file is missing → create it from the default schema and run quick-start onboarding (see SKILL.md)
3. If `updated_at` is more than 30 days ago → ask: "A few things may have changed since we last talked. Want to do a quick update?"
4. Never ask for info that's already in the file unless checking staleness
5. Write new `updated_at` timestamp after every update to the file

## Schema versioning

The profile includes a `schema_version` field (integer). The current version is **1**.

### On session start

1. Read the profile
2. If `schema_version` is missing → set it to `1` and add any missing fields from the default schema
3. If `schema_version` < current version → run migrations in order

### Migration instructions

#### Version 0 → 1 (profiles created before schema_version existed)
- Add `"schema_version": 1`
- Add `"last_archive": ""` if missing
- Ensure all top-level keys from the default schema exist (add with empty/default values if missing)
- Do NOT overwrite existing populated fields

When a new schema version is released, append a new migration block here. Always migrate incrementally (0→1→2, not 0→2).

## When to update the profile

- After quick-start onboarding completes
- After identity setup (full or progressive)
- After a new release is set as active
- After a show is added or completed
- After a collaborator is added
- After a goal is achieved or changed
- After a new press contact is added
- After sync catalog is updated
- After a creative session is logged
- After an active collaboration status changes
- After sustainability preferences are set or changed

## Offline queue

If MCP tools are unavailable and the artist generates content that needs sending/scheduling:
- Save to `offline_queue` array with: type, content, recipient (if applicable), intended_date
- On next session with MCP available: "You have {{n}} queued items from offline sessions. Want to send/schedule them?"

## Data hygiene

- Don't duplicate entries — check before adding
- When a release is no longer active, move to `catalog`
- When a show has passed, keep in `shows` with a `completed: true` flag
- When an active collaboration is done, move to `collaborators` and remove from `active_collaborations`

## Archiving

Arrays in `artist-profile.json` are archived when they exceed these thresholds:

| Array | Threshold | Archive file |
|-------|-----------|-------------|
| `creative_log` | 50 entries | `~/.claude/skills/music/archive/creative_log.json` |
| `shows` | 30 entries (completed only) | `~/.claude/skills/music/archive/shows.json` |
| `catalog` | 100 entries | `~/.claude/skills/music/archive/catalog.json` |
| `press_contacts` | 50 entries | `~/.claude/skills/music/archive/press_contacts.json` |
| `offline_queue` | 20 entries (processed only) | `~/.claude/skills/music/archive/offline_queue.json` |

### Archive process

1. When an array exceeds its threshold, move the oldest entries (keeping the most recent half) to the archive file
2. Archive files are append-only JSON arrays — read the existing archive, concat new entries, write back
3. If the archive file doesn't exist, create it with the moved entries
4. After archiving, update `last_archive` in the profile with the current date
5. When a skill needs to search historical data (e.g., "what did I work on in January?"), read the archive file if the profile doesn't have matching entries

### Never archive
- `active_release` (single object, not an array)
- `active_goals` (small, current)
- `active_collaborations` (current work)
- `identity` (single object)
- `sustainability` (single object)
