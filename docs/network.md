# Network and Access Policy

## Design principles

- Public access is limited to services that require it.
- Management dashboards remain private or require authenticated access.
- MFA is preferred for external administrative access.
- Reverse-proxy and tunnel configuration are treated as production infrastructure.
- Routing changes are tested locally before public verification.

## Access tiers

| Tier | Example services | Access model |
|---|---|---|
| Public | Media streaming | Authenticated and proxied |
| Trusted | Arr stack, AI, monitoring | Private network or authenticated tunnel |
| Administrative | Docker, Wazuh, infrastructure dashboards | Private access, MFA where available |

## Change safety

1. Export or document the existing routing configuration.
2. Back up relevant application state.
3. Make one scoped change.
4. Verify local service health.
5. Verify public behavior only after local validation.
6. Revert immediately if health or authentication regresses.

## Secrets excluded from documentation

Private addresses, domains, tunnel identifiers, certificates, Cloudflare credentials, origin tokens, and application passwords are intentionally excluded.
