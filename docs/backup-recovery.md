# Backup and Recovery Runbook

## Protect first

- Jellyfin database and configuration
- Docker named volumes and Compose files
- Arr application configurations
- Ollama model storage and Open WebUI data
- Wazuh configuration and important indices
- Minecraft world data
- Media libraries and evidence of source media

## Recovery sequence

1. Verify the latest backup before starting recovery.
2. Stop only the affected services.
3. Restore configuration into the expected path or volume.
4. Restore database and application data.
5. Start dependencies before the application.
6. Verify health checks and application login.
7. Test Jellyfin playback locally and through the existing domain.
8. Record the result, backup version, and restore time.

## Test schedule

- Container configuration: each release
- Application restore: monthly
- Full-host recovery: quarterly
- Offsite restore: at least annually
