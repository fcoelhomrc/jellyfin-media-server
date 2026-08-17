#!/usr/bin/env bash

sudo kubectl port-forward service/radarr 7878:7878 -n media
echo "Radarr Dashboard available at http://localhost:7878"
