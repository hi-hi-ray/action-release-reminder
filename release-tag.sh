#!/bin/bash
set -e

echo "Running Reminder"

MESSAGE_STYLE="${MESSAGE_STYLE:-corporative}"
BASE_PATH="${BASE_PATH}"
MESSAGE_PATH="${BASE_PATH}/tag-reminder-txt/${MESSAGE_STYLE}.txt"

OUTPUT=""
while IFS= read -r line || [ -n "$line" ]; do
  echo "$line"
  OUTPUT+="$line"$'\n'
done < "$MESSAGE_PATH"

if [ -n "$GITHUB_STEP_SUMMARY" ]; then
  {
    echo "### 🎨 Tag Reminder: \`$MESSAGE_STYLE\`"
    echo ''
    echo '```'
    echo "$OUTPUT"
    echo '```'
  } >> "$GITHUB_STEP_SUMMARY"
fi
