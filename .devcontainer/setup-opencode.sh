#!/usr/bin/env bash
set -euo pipefail

if ! command -v opencode >/dev/null 2>&1; then
  curl -fsSL https://opencode.ai/install | bash
fi

if ! command -v opencode >/dev/null 2>&1; then
  export PATH="$HOME/.opencode/bin:$HOME/.local/bin:$PATH"
fi

echo "OpenCode is ready."
echo "Run: ./scripts/start-opencode-server.sh"
