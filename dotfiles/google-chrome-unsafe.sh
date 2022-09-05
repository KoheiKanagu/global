#!/bin/bash
set -euxo pipefail

/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome --disable-web-security $*
