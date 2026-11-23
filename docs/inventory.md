# Sanitized System Inventory

## Host

| Item | Value |
|---|---|
| OS | Ubuntu 24.04.5 LTS |
| Hostname | Device1 |
| CPU | AMD Ryzen 5 5500, 12 threads |
| Memory | 23 GB RAM |
| GPU | NVIDIA GTX 1650 SUPER, 4 GB |
| LAN | 10.0.0.90 |
| Root disk | 116 GB, initially 93% full |
| Media disk | 1.8 TB at `/mnt/oldmedia` |

## Container groups

| Group | Services |
|---|---|
| Media | Jellyfin, Jellyseerr, Komga |
| Arr stack | Sonarr, Radarr, Prowlarr, NZBGet, Issuarr, Listenarr |
| AI | Ollama, Open WebUI, MCPO Docker MCP |
| Monitoring | Beszel, Beszel NVIDIA agent |
| Security | Wazuh manager, indexer, dashboard |
| Operations | Portainer, Sun Panel, HomeLabArr, HomeLable, Miner Sentinel |
| Gaming | Minecraft server, Playit agent |

Container names and published ports should be reviewed before making this repository public. This inventory intentionally avoids exact internal paths and exposed endpoints.
