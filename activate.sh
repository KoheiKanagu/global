#!/bin/bash
set -euxo pipefail

dart main.dart

cd npm && npm install --location=global
