#!/bin/bash
set -euxo pipefail

gem install fastlane
gem install cocoapods

gem update
gem update --system
