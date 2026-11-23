# Sanitized System Inventory

## Host profile

| Category | Specification |
|---|---|
| Operating system | Ubuntu 24.04 LTS |
| CPU | AMD Ryzen 5 5500, 12 logical threads |
| Memory | 23 GB |
| GPU | NVIDIA GeForce GTX 1650 SUPER, 4 GB |
| Container platform | Docker Engine and Docker Compose |
| Primary storage | 116 GB operating-system volume |
| Media storage | 1.8 TB dedicated media volume |

Private mount paths, hostnames, IP addresses, interface names, and disk identifiers are omitted.

## Service groups

| Functional group | Responsibilities |
|---|---|
| Media | Video streaming and comics delivery |
| Discovery and metadata | Media discovery, metadata, requests, and indexing |
| Download management | Downloading and library lifecycle automation |
| AI platform | Local models, chat interface, tool integration |
| Monitoring | Host, container, GPU, and service telemetry |
| Security | Centralized log ingestion, event management, and dashboards |
| Operations | Infrastructure management and custom homelab tooling |
| Gaming | Minecraft hosting and remote access |

## Containerized workloads

- Jellyfin, Jellyseerr, Komga
- Sonarr, Radarr, Prowlarr, NZBGet
- Issuarr and Listenarr
- Ollama and Open WebUI
- Docker MCP proxy
- Beszel and NVIDIA agent
- Wazuh manager, indexer, and dashboard
- Portainer
- Sun Panel
- HomeLabArr and HomeLable
- Miner Sentinel
- Minecraft server and Playit agent

This document describes responsibility boundaries rather than publishing routable details.
