#!/usr/bin/env bash

set -euo pipefail

echo "Radarr Dashboard available at http://localhost:7878"
echo "Sonarr Dashboard available at http://localhost:8989"
echo "Prowlarr Dashboard available at http://localhost:9696"

sudo -v
sudo kubectl port-forward service/radarr 7878:7878 -n media &
radarr_pid=$!
sudo kubectl port-forward service/sonarr 8989:8989 -n media &
sonarr_pid=$!
sudo kubectl port-forward service/prowlarr 9696:9696 -n media &
prowlarr_pid=$!

cleanup() {
  kill "$radarr_pid" "$sonarr_pid" "$prowlarr_pid" 2>/dev/null || true
  wait "$radarr_pid" "$sonarr_pid" "$prowlarr_pid" 2>/dev/null || true
}

trap cleanup EXIT
wait -n "$radarr_pid" "$sonarr_pid" "$prowlarr_pid"
