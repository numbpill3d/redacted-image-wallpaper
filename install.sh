#!/usr/bin/env bash
# Redacted — Wallpaper (still) — install.  ./install.sh
set -euo pipefail
HERE=$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)
DST=${XDG_DATA_HOME:-$HOME/.local/share}/wallpapers/Redacted
rm -rf "$DST"; mkdir -p "$DST"
cp -r "$HERE"/{metadata.json,contents} "$DST"/
plasma-apply-wallpaperimage "$DST" 2>/dev/null || echo "Pick Redacted under Desktop and Wallpaper."
