# Jellyfin Home Server

## Learning plan

1. Run Jellyfin in rootless Podman with persistent storage.
2. Learn `kubectl get`, `describe`, `logs`, `exec`, and `apply`.
3. Deploy a basic web server to k3s.
4. Add a Kubernetes Service.
5. Add persistent storage.
6. Replace the basic web server with Jellyfin.
7. Add health probes and resource requests.
8. Expose Jellyfin through Tailscale.
9. Back up and restore the Jellyfin configuration.
10. Build a separate downloader that uses Proton VPN.
11. Test the VPN kill switch.
12. Build the media organizer.
13. Build the custom API and UI.

## Jellyfin

- Use the official Jellyfin image.
- Deploy Jellyfin with k3s.
- Store configuration and media persistently.
- Add managed health checks.
- Make Jellyfin available only through Tailscale.

## Anime downloader

- Build a wrapper around `ani-cli`.
- Browse and download episodes from a web UI.
- Organize completed files under `/media/anime`.

## Movie downloader

- Run qBittorrent through Proton VPN.
- Block all qBittorrent traffic if the VPN fails.
- Stop torrents after downloads finish.
- Organize completed files under `/media/movies`.

## Custom application

- Add an anime tab for browsing and downloading episodes.
- Add a movie tab with bookmarks and torrent submission.
- Show download progress and errors.
- Keep download services private.
