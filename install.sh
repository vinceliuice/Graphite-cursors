#! /usr/bin/env bash

ROOT_UID=0
DEST_DIR=

# Destination directory
if [ "$UID" -eq "$ROOT_UID" ]; then
  DEST_DIR="/usr/share/icons"
else
  DEST_DIR="$HOME/.local/share/icons"
  mkdir -p "${DEST_DIR}"
fi

rm -rf $DEST_DIR/Graphite-light-cursors
rm -rf $DEST_DIR/Graphite-dark-cursors
rm -rf $DEST_DIR/Graphite-light-nord-cursors
rm -rf $DEST_DIR/Graphite-dark-nord-cursors

cp -r dist-light $DEST_DIR/Graphite-light-cursors
cp -r dist-dark $DEST_DIR/Graphite-dark-cursors
cp -r dist-light-nord $DEST_DIR/Graphite-light-nord-cursors
cp -r dist-dark-nord $DEST_DIR/Graphite-dark-nord-cursors

echo "Finished..."

