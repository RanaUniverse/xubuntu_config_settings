#!/bin/bash

echo "Here now the custom configuration of my xfce os will be work."

# Set destination path
DEST="$HOME/.config/xfce4"

# Force delete everything inside the destination directory
rm -rfv "${DEST:?}/"*



echo "📸 Updating screenshot save path to use the current username in the screenshooter-16.rc file"
sed -i "s/RANA_UNIVERSE/$(whoami)/g" panel/screenshooter-16.rc


echo "🖼️ Setting the desktop wallpaper path with the current username in xfce4-desktop.xml"
sed -i "s/RANA_UNIVERSE/$(whoami)/g" xfconf/xfce-perchannel-xml/xfce4-desktop.xml


echo "🧩 Updating panel configuration to reflect the current username in xfce4-panel.xml" 
sed -i "s/RANA_UNIVERSE/$(whoami)/g" xfconf/xfce-perchannel-xml/xfce4-panel.xml


echo "Updating username in the scripts for shortcuts so that i can use my custom keybinding in my own scripts easily."
sed -i "s/RANA_UNIVERSE/$(whoami)/g" xfconf/xfce-perchannel-xml/xfce4-keyboard-shortcuts.xml 


echo "✅ All username replacements completed successfully!"



# Copy all files and folders from current working directory to destination
cp -rv ./* "$DEST/"


echo "✅ XFCE4 config successfully applied to $DEST"
