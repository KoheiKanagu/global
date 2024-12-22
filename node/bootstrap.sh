#!/bin/bash
set -euxo pipefail

nvm install --latest-npm v20
nvm alias default node

npm install --global firebase-tools
npm install --global gts
