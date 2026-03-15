#!/bin/bash
./export.sh
# Define the destination
DEST="../pautn.github.io/"

# Check if the directory exists
if [ -d "$DEST" ]; then
    echo "Destination found. Copying files..."
    cp -rf export/* "$DEST"
    echo "Copy complete."
else
    echo "Error: Destination directory '$DEST' does not exist."
    # Optional: exit with an error code
    # exit 1
fi