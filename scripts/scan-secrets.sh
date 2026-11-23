#!/usr/bin/env bash
set -euo pipefail

failed=0
tracked=$(git ls-files)
[ -n "$tracked" ] || exit 0

while IFS= read -r file; do
  [ -f "$file" ] || continue
  if grep -En -I 'AKIA[0-9A-Z]{16}|gh[pousr]_[A-Za-z0-9]{36,}|-----BEGIN [A-Z ]*PRIVATE KEY-----|(password|passwd|secret|token|api[_-]?key)[[:space:]]*[:=][[:space:]]*["'"'][^"'"']+["'"']' "$file" >/dev/null 2>&1; then
    printf 'Potential secret pattern found in: %s\n' "$file" >&2
    failed=1
  fi
done <<< "$tracked"
exit "$failed"
