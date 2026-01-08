#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Markdown Image Table
# @raycast.mode compact

# Optional parameters:
# @raycast.icon 🖼️
# @raycast.description GitHubのIssueなどにアップロードした画像をMarkdown形式のテーブルに変換してクリップボードに保存します
# @raycast.argument1 { "type": "text", "placeholder": "カラム数"}

# Documentation:
# @raycast.author KoheiKanagu
# @raycast.authorURL https://raycast.com/KoheiKanagu

TEXT=$(pbpaste)
COLUMN_COUNT=${1}

if [ -z "$TEXT" ]; then
  echo "クリップボードにテキストがありません。"
  exit 1
fi

if ! [[ "$COLUMN_COUNT" =~ ^[0-9]+$ ]] || [ "$COLUMN_COUNT" -le 0 ]; then
  echo "有効なカラム数を指定してください。"
  exit 1
fi

IMAGE_URLS=$(echo "$TEXT" | grep -o 'https://[^"]*' | tr '\n' ' ')
IFS=' ' read -r -a URL_ARRAY <<<"$IMAGE_URLS"
TOTAL_IMAGES=${#URL_ARRAY[@]}
ROWS=$(((TOTAL_IMAGES + COLUMN_COUNT - 1) / COLUMN_COUNT))
MARKDOWN=""

# Header
HEADER="|"
SEPARATOR="|"
for ((j = 0; j < COLUMN_COUNT; j++)); do
  HEADER+=" |"
  SEPARATOR+=" - |"
done
MARKDOWN+="$HEADER\n$SEPARATOR\n"

for ((i = 0; i < ROWS; i++)); do
  ROW="|"
  for ((j = 0; j < COLUMN_COUNT; j++)); do
    INDEX=$((i * COLUMN_COUNT + j))
    if [ $INDEX -lt "$TOTAL_IMAGES" ]; then
      IMAGE_URL=${URL_ARRAY[$INDEX]}
      ROW+=" <img src=\"$IMAGE_URL\" /> |"
    else
      ROW+=" |"
    fi
  done
  MARKDOWN+="$ROW\n"
done

echo -e "$MARKDOWN" | pbcopy
