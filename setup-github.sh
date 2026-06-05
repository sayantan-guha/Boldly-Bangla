#!/bin/bash
# Run this once from Terminal to set up the GitHub repo.
# Prerequisites: gh CLI installed (brew install gh) and authenticated (gh auth login)

set -e

REPO_NAME="boldly-bangla"
ORG="hoichoi"  # Change to your GitHub org or username

cd "$(dirname "$0")"

echo "→ Initializing git repo..."
git init
git branch -m main
git config user.email "sayantan.guha@hoichoi.tv"
git config user.name "Sayantan Guha"

echo "→ Adding files..."
git add -A
git commit -m "Initial commit: boldly-bangla plugin"

echo "→ Creating private GitHub repo at $ORG/$REPO_NAME..."
gh repo create "$ORG/$REPO_NAME" --private --source=. --remote=origin --push

echo "→ Creating first release with .plugin file..."
gh release create v1.0.0 boldly-bangla.plugin \
  --title "v1.0.0" \
  --notes "Initial release of Boldly Bangla plugin."

echo ""
echo "✓ Done! Share this install URL with the team:"
echo "  https://github.com/$ORG/$REPO_NAME/releases/latest/download/boldly-bangla.plugin"
