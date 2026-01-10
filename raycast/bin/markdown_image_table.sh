#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Markdown Image Table
# @raycast.mode fullOutput

# Optional parameters:
# @raycast.icon 🖼️
# @raycast.description GitHubのIssueなどにアップロードした画像をMarkdown形式のテーブルに変換してクリップボードに保存します
# @raycast.argument1 { "type": "text", "placeholder": "カラム数"}

"${HOME}"/fvm/default/bin/dart run markdown_image_table.dart --column="${1}" | pbcopy
