#!/bin/bash
set -e

WIKI_DIR="wiki"
DOCS_DIR="docs"
BASE_URL="https://masterplanner25.github.io/Masterplanner25"

echo "=== Syncing wiki/ → docs/ ==="

# Copy all markdown files preserving structure
cp -r $WIKI_DIR/*.md $DOCS_DIR/ 2>/dev/null || true
cp -r $WIKI_DIR/entities/*.md $DOCS_DIR/entities/ 2>/dev/null || true
cp -r $WIKI_DIR/relationships/*.md $DOCS_DIR/relationships/ 2>/dev/null || true
cp -r $WIKI_DIR/case-studies/*.md $DOCS_DIR/case-studies/ 2>/dev/null || true

# Rename README to index
mv $DOCS_DIR/README.md $DOCS_DIR/index.md 2>/dev/null || true

echo "=== Sync complete ==="
ls -la $DOCS_DIR/
