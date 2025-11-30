#!/bin/bash
set -euxo pipefail

gh extension install --force seachicken/gh-poi
gh extension install --force KoheiKanagu/gh-comment
gh extension install --force actions/gh-actions-cache
gh extension install --force github/gh-copilot
