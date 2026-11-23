# Security and Secrets

## Secret storage

- Use Docker secrets or an external secret manager.
- Store Compose values in `.env` files that are untracked.
- Use a separate `.env.example` containing names and placeholders only.
- Rotate credentials after suspected exposure.
- Never paste secrets into GitHub issues or documentation.

## Pre-push checks

Run:

```bash
./scripts/scan-secrets.sh
```

Review `.gitignore`, staged file names, and staged file contents before pushing.
