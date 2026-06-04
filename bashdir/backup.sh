#!/bin/bash

SOURCE_DIR="manual-folder"

DEST_DIR="new-folder"

mkdir -p "$DEST_DIR"

mv "$SOURCE_DIR"/* "$DEST_DIR"/

echo "Files have been moved to $DEST_DIR"
