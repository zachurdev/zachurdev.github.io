#!/bin/bash

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PROJ_DIR="$(dirname "$SCRIPT_DIR")"
MDBOOK_DIR="$PROJ_DIR/mdbook"
BUILD_DIR="$MDBOOK_DIR/book"
SITE_DIR="$PROJ_DIR/src"
DEST_DIR="$SITE_DIR/docs" # Current book location, destination for new book

cd "$PROJ_DIR/mdbook" && mdbook build

if [ -d "$DEST_DIR" ]; then
    echo "Removing old book.  $DEST_DIR"
    rm -r "$DEST_DIR"
    echo "New book created.   $BUILD_DIR"
else
    echo "No old book detected. Creating new."
fi

mv "$BUILD_DIR" "$DEST_DIR" && echo "New book moved to:  $DEST_DIR"
