#!/bin/bash
BASEDIR=$(dirname "$0")
BREWFILE="$BASEDIR/BrewFile"
rm -f "$BREWFILE"
brew bundle dump --file "$BREWFILE"
cd "$BASEDIR" && git add . # Git won't add the specific file?
git commit -m "Update brewfile"
git push origin