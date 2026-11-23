# Contributing

Keep documentation exact, reproducible, and secret-free. Use placeholders for domains, usernames, hostnames, IP addresses, and credentials.

Before committing:

```bash
./scripts/scan-secrets.sh
git diff --check
git diff --stat
git status --short
```
