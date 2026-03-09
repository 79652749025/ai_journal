#!/bin/bash
set -euo pipefail

BASE="https://<логин>.github.io/ai_journal"

URLS=(
"$BASE/"
"$BASE/site/ru/is-pentagon-ai-surveillance.html"
"$BASE/site/en/is-pentagon-ai-surveillance.html"
"$BASE/site/add-review.html"
)

echo "Running HTTP HEAD checks..."
for u in "${URLS[@]}"; do
printf "\nChecking %s\n" "$u"
curl -I --max-time 10 -s "$u" | head -n 5
done

echo
echo "Checking GitHub Actions (optional):"
echo "Open: https://github.com/<логин>/ai_journal/actions"
echo "Look for 'Deploy AI Journal to GitHub Pages' workflow and status (success/pending/failed)."
