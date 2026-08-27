#!/usr/bin/env bash
set -euo pipefail

ROOT="$(cd "$(dirname "$0")/.." && pwd)"
TARGET="$ROOT/upstream-opencode-mobile"

if [ ! -d "$TARGET/.git" ]; then
  git clone --depth 1 https://github.com/alvarolorentedev/opencode-mobile.git "$TARGET"
else
  git -C "$TARGET" pull --ff-only
fi

cd "$TARGET"
npm install

echo ""
echo "OpenCode Mobile source is ready at: $TARGET"
echo "Run 'npm start' inside that directory to start Expo."
