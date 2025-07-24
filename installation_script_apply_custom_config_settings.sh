#!/bin/bash

echo "Here now the custom configuration of my xfce os will be work."

# Set destination path
DEST="$HOME/.config/xfce4"

# Force delete everything inside the destination directory
rm -rfv "${DEST:?}/"*

# Copy all files and folders from current working directory to destination
cp -rv ./* "$DEST/"


echo "✅ XFCE4 config successfully applied to $DEST"
