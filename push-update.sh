#!/bin/bash
# Run this whenever you want to push updates and release a new plugin version.
# Usage: ./push-update.sh "v1.1.0" "Added sports personas"

set -e

VERSION=${1:-""}
NOTES=${2:-"Skill update"}
ORG="hoichoi"
REPO_NAME="boldly-bangla"

if [ -z "$VERSION" ]; then
  echo "Usage: ./push-update.sh <version> <release notes>"
  echo "  e.g. ./push-update.sh v1.2.0 'Added Bangladesh copywriting reference'"
  exit 1
fi

cd "$(dirname "$0")"

echo "→ Committing changes..."
git add -A
git commit -m "$NOTES" || echo "(nothing to commit)"
git push origin main

echo "→ Releasing $VERSION..."
gh release create "$VERSION" boldly-bangla.plugin \
  --title "$VERSION" \
  --notes "$NOTES"

echo ""
echo "✓ Released $VERSION. Team members can reinstall from:"
echo "  https://github.com/$ORG/$REPO_NAME/releases/latest/download/boldly-bangla.plugin"
