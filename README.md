# Homelab Documentation

Local, sanitized documentation for an Ubuntu Docker homelab.

## Current host

- Ubuntu 24.04.5 LTS
- AMD Ryzen 5 5500, 12 logical CPUs
- 23 GB RAM
- NVIDIA GeForce GTX 1650 SUPER, 4 GB
- Docker Engine 29.1.3 and Docker Compose 2.40.3
- Root filesystem: 116 GB
- 1.8 TB media disk mounted at `/mnt/oldmedia`

## Networking and access

- LAN address: `10.0.0.90`
- Jellyfin remains the public-media service and uses Cloudflare/domain routing
- Do not expose management dashboards to the public Internet
- Prefer Cloudflare or private network access with MFA
- Record firewall and proxy changes only after explicit review

## Core systems

- Docker services, Portainer, Jellyfin, Jellyseerr, Sonarr, Radarr, Prowlarr, NZBGet, Komga
- Ollama and Open WebUI
- Beszel monitoring
- Wazuh manager, indexer, and dashboard
- HomeLabArr, HomeLable, and Miner Sentinel custom services
- Minecraft server and Playit agent

## Repository policy

This repository must contain no passwords, API keys, tokens, recovery codes, private keys, cookies, session data, or internal secrets. Use environment variable names and placeholders in examples.

Before any GitHub push:

1. Review `git diff --cached` for accidental secrets.
2. Run `./scripts/scan-secrets.sh`.
3. Create a private GitHub repository first.
4. Add an SSH or HTTPS remote only after confirming the repository is private.
5. Push `main` only after a final review.

## Local GitHub setup

```bash
git remote add origin git@github.com:YOUR-USER/homelab-docs.git
git push -u origin main
```

Replace `YOUR-USER` and the repository name before running it.
