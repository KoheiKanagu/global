#!/bin/bash
set -euxo pipefail

dart main.dart

jq ".dependencies | keys | .[]" <npm/package.json | xargs -I DEPS npm install --global DEPS
