#!/bin/bash
set -euo pipefail

\. "$NVM_BREW_DIR/nvm.sh" # This loads nvm

nvm install --latest-npm v20
nvm alias default node

npm install --global firebase-tools
npm install --global gts
