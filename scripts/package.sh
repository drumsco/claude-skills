#!/usr/bin/env bash
# skill フォルダを dist/<name>.skill（zip）にまとめる
set -euo pipefail
if [ $# -ne 1 ]; then
  echo "usage: $0 skills/<skill-name>" >&2
  exit 1
fi
SRC="${1%/}"
NAME="$(basename "$SRC")"
[ -f "$SRC/SKILL.md" ] || { echo "SKILL.md not found in $SRC" >&2; exit 1; }
mkdir -p dist
rm -f "dist/$NAME.skill"
(cd "$(dirname "$SRC")" && zip -qr "$OLDPWD/dist/$NAME.skill" "$NAME")
echo "created dist/$NAME.skill"
