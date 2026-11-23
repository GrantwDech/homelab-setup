# Homelab Platform

[![Ubuntu](https://img.shields.io/badge/Ubuntu-24.04-E95420?logo=ubuntu&logoColor=white)](https://ubuntu.com/)
[![Docker](https://img.shields.io/badge/Docker-Compose-2496ED?logo=docker&logoColor=white)](https://docs.docker.com/compose/)
[![Security](https://img.shields.io/badge/Security-Wazuh-005EB8)](https://wazuh.com/)
[![AI](https://img.shields.io/badge/AI-Ollama%20%7C%20Open%20WebUI-8A2BE2)](https://ollama.com/)

A documented, container-based homelab for operating media services, automation, monitoring, security telemetry, local AI, and gaming infrastructure.

## Overview

This repository presents the homelab as an infrastructure project: architecture, operating procedures, recovery practices, security boundaries, and an evidence-based implementation plan.

## Platform highlights

| Area | Implementation |
|---|---|
| Operating system | Ubuntu Server/Desktop 24.04 LTS |
| Compute | AMD Ryzen 5 5500, 12 logical CPUs |
| Memory | 23 GB RAM |
| GPU | NVIDIA GeForce GTX 1650 SUPER, 4 GB |
| Containers | Docker Engine and Docker Compose |
| Media | Jellyfin, Jellyseerr, Komga |
| Automation | Sonarr, Radarr, Prowlarr, NZBGet, and related workflows |
| AI | Ollama and Open WebUI with a local GPU |
| Monitoring | Beszel with host and NVIDIA telemetry |
| Security | Wazuh manager, indexer, and dashboard |
| Management | Portainer and private administrative dashboards |

## Architecture

```text
                    Authenticated users
                            |
                     Reverse proxy / tunnel
                            |
          +-----------------+-----------------+
          |                 |                 |
       Media stack      Management stack   AI stack
       Jellyfin         Portainer         Ollama
       Arr apps         Beszel            Open WebUI
          |                 |                 |
          +-----------------+-----------------+
                            |
                      Docker networks
                            |
                   Ubuntu host and GPU
```

Infrastructure details intentionally omit private IP addresses, hostnames, domains, exposed ports, credentials, and tokens.

## Skills demonstrated

- Linux system administration
- Docker and container lifecycle management
- GPU-enabled container workloads
- Infrastructure documentation
- Monitoring and security operations
- Backup and recovery planning
- Secret-safe Git workflows
- Local AI deployment
- Network boundary and reverse-proxy design
- Incident-ready runbook development

## Security principles

- Keep management interfaces private or authenticated.
- Separate public media access from administrative systems.
- Store secrets outside Git and Compose definitions.
- Review every infrastructure change.
- Preserve existing production routing until a change is tested.
- Run secret scanning before every push.

## Repository

| Document | Purpose |
|---|---|
| [System inventory](docs/inventory.md) | Sanitized host and service inventory |
| [Network policy](docs/network.md) | Access boundaries and routing safety |
| [Backup and recovery](docs/backup-recovery.md) | Restoration and verification procedures |
| [AI operations](docs/ai-operations.md) | Local model and assistant operations |
| [Security](docs/security.md) | Secret and credential handling |

## GitHub setup

This repository is published at:

```text
https://github.com/GrantwDech/homelab-setup
```

For future clones or contributions:

```bash
git clone https://github.com/GrantwDech/homelab-setup.git
cd homelab-setup
./scripts/scan-secrets.sh
```
