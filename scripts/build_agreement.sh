#!/usr/bin/env bash

set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
SOURCE_FILE="${1:-$ROOT_DIR/agreements/aiwa-starisian/src/master-governance-infrastructure-ai-processing-agreement.md}"
OUTPUT_DIR="${2:-$ROOT_DIR/build/agreements/aiwa-starisian}"
BASENAME="$(basename "${SOURCE_FILE%.*}")"

if ! command -v pandoc >/dev/null 2>&1; then
  echo "pandoc is required to build agreement artifacts." >&2
  exit 1
fi

if ! command -v wkhtmltopdf >/dev/null 2>&1; then
  echo "wkhtmltopdf is required to build PDF agreement artifacts." >&2
  exit 1
fi

mkdir -p "$OUTPUT_DIR"

pandoc "$SOURCE_FILE" \
  --from=gfm \
  --standalone \
  --output "$OUTPUT_DIR/$BASENAME.docx"

pandoc "$SOURCE_FILE" \
  --from=gfm \
  --standalone \
  --pdf-engine=wkhtmltopdf \
  --output "$OUTPUT_DIR/$BASENAME.pdf"

printf 'Generated artifacts:\n- %s\n- %s\n' \
  "$OUTPUT_DIR/$BASENAME.docx" \
  "$OUTPUT_DIR/$BASENAME.pdf"
