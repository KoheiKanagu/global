#!/bin/bash
set -euxo pipefail

dart pub global activate cider
dart pub global activate flutter_gen
dart pub global activate flutterfire_cli 0.3.0-dev.20 --overwrite
dart pub global activate grinder
dart pub global activate melos
