#!/bin/bash
set -euxo pipefail

brew install \
warp \
grok-bot \
grok-build \
google-chrome \
coteditor \
fork \
handbrake-app \
zoom \
slack \
keka \
devcleaner \
appcleaner \
visual-studio-code@insiders \
siliconscope \
android-studio

rm -rf /opt/homebrew/Caskroom/
brew doctor
brew cleanup

brew install \
gcloud-cli
