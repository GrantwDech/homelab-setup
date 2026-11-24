# Operations Runbook

## Daily health

Run the read-only health check:

```bash
./check-health.sh
```

Review:

- Mount availability
- Filesystem capacity
- Container state
- Container restart counts
- Application HTTP responses

## Disk warning thresholds

- Warning: 80% or higher
- Critical: 90% or higher
- Investigate mounting, logs, and incomplete staging files before deleting data

## Storage incident

1. Stop further downloads if mount I/O errors appear.
2. Verify disks and mount targets.
3. Confirm the original mount configuration from `/etc/fstab`.
4. Mount through systemd or `mount` units before restarting applications.
5. Restart affected containers after mount verification.
6. Verify container reads and writes.
7. Review application logs for remaining I/O errors.
8. Record the incident and recovery time.

## Backup rules

- Keep source data during migration or restoration testing.
- Verify archive checksums.
- Test restores on an empty directory or isolated VM.
- Do not modify Cloudflare, DNS, or reverse-proxy routing during recovery.
