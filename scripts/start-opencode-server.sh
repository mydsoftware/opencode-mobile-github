#!/usr/bin/env bash
set -euo pipefail

# اجرای مستقیم با bash به chmod اجرایی وابسته نیست.
export PATH="$HOME/.opencode/bin:$HOME/.local/bin:$PATH"

PORT="${OPENCODE_PORT:-4096}"
HOST="${OPENCODE_HOST:-0.0.0.0}"

if ! command -v opencode >/dev/null 2>&1; then
  echo "OpenCode is not installed. Run: bash .devcontainer/setup-opencode.sh" >&2
  exit 1
fi

echo "Starting OpenCode Server on ${HOST}:${PORT}..."
exec opencode serve --hostname "$HOST" --port "$PORT"
