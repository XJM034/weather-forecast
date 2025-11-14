#!/usr/bin/env bash
set -euo pipefail
PORT="${1:-8000}"
HOST="${2:-0.0.0.0}"
cat <<MSG
Serving weather dashboard
URL: http://${HOST}:${PORT}/index.html
Press Ctrl+C to stop.
MSG
python3 -m http.server "$PORT" --bind "$HOST"
