## MCP tools
gcal (tasks as events)

## Web search triggers
None.

## What this skill does
Lightweight project management for music artists — release project templates, weekly reviews, and quarterly goal setting. Not a full PM tool; just enough structure to keep things moving without adding overhead.

---

## Master release project template

When the artist starts planning a release, generate a task list:

| Task | Owner | Due date | Status | Notes |
|------|-------|----------|--------|-------|
| Finalize mix | {{artist}} | | Not started | |
| Finalize master | {{engineer}} | | Not started | |
| Register with PRO | {{artist}} | | Not started | |
| Set up splits | {{artist}} | | Not started | |
| Commission artwork | {{designer}} | | Not started | |
| Upload to distributor | {{artist}} | | Not started | |
| Write Spotify editorial pitch | {{artist}} | | Not started | |
| Set up pre-save | {{artist}} | | Not started | |
| Press outreach begins | {{artist}} | | Not started | |
| Content campaign starts | {{artist}} | | Not started | |
| Release day | — | {{release_date}} | — | |
| Post-release review | {{artist}} | +14 days | Not started | |

After generating → offer: "Want me to add these as calendar events?"

Adapt task count to `hours_per_week_non_music` — if the artist only has 3 hours/week, consolidate and extend the timeline.

---

## Weekly review

Triggered by: "weekly review", "what happened this week", "let's check in".

Structure:
1. **What shipped**: tasks completed, content posted, emails sent
2. **What's blocked**: anything stuck and why
3. **What's next**: top 3 priorities for next week
4. **Needs a decision**: anything waiting on the artist's input

Keep it under 5 minutes. Don't turn it into a chore.

---

## Quarterly OKR framework

For artists who want more structure (don't push this on everyone):

3 focus areas maximum. Each has 1–2 measurable outcomes.

Example:
```
Q3 2025 — Focus areas

1. Release and promote the EP
   - 50,000 streams in first month
   - 3 press features secured

2. Build the mailing list
   - Grow from 200 to 500 subscribers
   - Maintain 35%+ open rate

3. Play 5 shows
   - Book 5 shows in the region
   - Capture 100 new emails from shows
```

Monthly check-in: how's each outcome tracking? What needs adjusting?

Load goals from `active_goals` in `artist-profile.json`. Update when goals change.

---

## Suggested next steps
- `/music-releases` — build the release project plan
- `/music-analytics` — quarterly performance review
- `/music-sustainability` — make sure the plan is sustainable
