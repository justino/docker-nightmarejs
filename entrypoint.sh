#!/usr/bin/env bash
set -e

# Start Xvfb
Xvfb -ac -screen scrn 1280x2000x24 :99.0 &

export DISPLAY=:99.0
export NODE_PATH=$(npm root --quiet -g)

if [ -f package.json ]; then
    npm install
fi

exec "$@"
