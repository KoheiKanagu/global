#!/bin/sh

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Translate
# @raycast.mode compact

# Optional parameters:
# @raycast.icon 🌐
# @raycast.description クリップボードの内容を英語に翻訳してクリップボードに保存します

# Documentation:
# @raycast.author KoheiKanagu
# @raycast.authorURL https://raycast.com/KoheiKanagu

. ../global-private/dotfiles/private.sh

TEXT=$(pbpaste)

if [ -z "$TEXT" ]; then
  echo "クリップボードにテキストがありません。"
  exit 1
fi

result=$(gemini --model gemini-2.5-flash-lite --output-format json "次の文章を英語に翻訳してください。翻訳結果のみをレスポンスしてください。\"$TEXT\"")

echo "$result" | jq -r '.response' | pbcopy

echo "翻訳がクリップボードに保存されました。"
