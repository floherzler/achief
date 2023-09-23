#!/bin/bash
set -e

FLUTTER_VERSION=${FLUTTER_VERSION:-"stable"}
FLUTTER_CHANNEL=${FLUTTER_CHANNEL:-"stable"}

echo "Installing Flutter..."
git clone https://github.com/flutter/flutter.git -b $FLUTTER_CHANNEL --depth 1
export PATH="$PWD/flutter/bin:$PATH"

flutter --version
