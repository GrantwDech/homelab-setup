# Network and Access Policy

## Existing routing

- Jellyfin is intentionally preserved.
- Cloudflare/domain routing for Jellyfin must not be modified casually.
- Host ports should be inventoried, but not published in public documentation without need.

## Recommended access boundaries

- Management dashboards: private network or authenticated tunnel only
- Wazuh: private network, MFA where available
- Ollama/Open WebUI: private network or authenticated tunnel
- Portainer: private network, not public Internet
- Arr services: private network
- Jellyfin: existing Cloudflare/domain arrangement only

## Safety rules

- Back up reverse-proxy configuration before edits.
- Change one routing rule at a time.
- Verify Jellyfin locally and through the existing domain after network changes.
- Never include Cloudflare tokens, tunnel IDs with credentials, or origin certificates.
