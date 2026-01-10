# Raycast

このコードベースは、Raycast の Script Command で呼び出す Dart のコマンドラインツールです。

## ディレクトリ構成

- `bin/`: Script Command のエントリーポイント。Raycast は `.sh` のみを参照します
- `lib/`: ツールの Dart による実装
- `test/`: ツールのテストコード

## 実装方針

Raycast は`bin/*.sh` のメタデータを取得し、実行できます。
`bin/*.sh` は Dart のコードを呼び出して実行するのみであり、複雑な処理は Dart で実装します。

ただし、ワンライナーで完結するような簡単な処理は `bin/*.sh` に直接実装しても構いません。

### Raycast メタデータ

`bin/*.sh` に実装する Raycast のメタデータは以下の形式で記述します。
`argument[1...]` は必要に応じて追加してください。

```sh
# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title {{ 英語でのコマンド名 }}
# @raycast.mode fullOutput

# Optional parameters:
# @raycast.icon {{ 任意の絵文字1文字 }}
# @raycast.description {{ 日本語でのコマンド説明 }}
# @raycast.argument1 { "type": "text", "placeholder": "FIXME"}
```
