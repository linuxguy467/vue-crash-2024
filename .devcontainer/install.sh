#!/bin/sh
set -e

if [ -z "$1" ]; then
    echo "Usage: $0 <file-name>"
    exit 1
fi

while IFS= read -r extension; do
    code --install-extension "$extension" --force
done <"$1"

npm install
