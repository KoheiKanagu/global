#!/bin/bash
set -euxo pipefail

dart pub get
dart main.dart

jq ".dependencies | keys | .[]" <npm/package.json | xargs -I DEPS npm install --global DEPS
