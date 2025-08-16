#!/bin/bash
set -euo pipefail

\. "$NVM_BREW_DIR/nvm.sh" # This loads nvm

nvm install v22
nvm alias default node

npm install --global firebase-tools
npm install --global gts
