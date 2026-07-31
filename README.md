# n8n-railway

Build source for the n8n service on Railway
(project `fortunate-achievement`, service `n8n`,
public URL `https://n8n-production-a477e.up.railway.app`).

Replaces the previous third-party source `Shinyduo/n8n-railway-updated`.

## Upgrading n8n

1. Back up first: Postgres snapshot in Railway + export of the workflows.
2. Edit the tag in [`Dockerfile`](./Dockerfile), e.g. `n8nio/n8n:2.33.0`.
   Use the `stable` channel version, not `beta` / `next` / `nightly`.
3. Commit to `main`. Railway rebuilds and redeploys automatically.
4. Watch the deploy logs for the DB migration lines, then check
   `/healthz` and the version in the n8n UI (Help / About).

Rolling back the image is a revert of this file. Rolling back the
**database schema** is not automatic, so the snapshot from step 1 matters.

## History

| Date | Version | Note |
|------|---------|------|
| 2026-04-21 | 2.18.0 | via `Shinyduo/n8n-railway-updated`, `FROM n8nio/n8n:latest` |
| 2026-07-30 | 2.32.6 | moved to this repo, version pinned |
