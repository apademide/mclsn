#!/bin/bash

# source is the real physical file
# link is the fake reference, as in the plugin folder
# ln -s full/qualified/path/to/source full/qualified/path/to/link

# Plugins to globally symlink
PLUGINS=("denizen" "depenizen" "ddbot" "citizens" "luckperms" "spark" "sentinel" "coreprotect" "vault")
# Servers where to symlink
SERVERS=("lobby" "survival")

# Root directory containing all servers' folders + global folder
ROOT="/Users/aurianaubert/Desktop/APADEMIDE/LOUSONNA/SERVER.nosync"

# Loop through each server
for SERVER in "${SERVERS[@]}";
do 
  # Symlink the server jar
  ln -s "$ROOT/imports/server.jar" "$ROOT/$SERVER/server.jar"
  # Symlink the global scripts
  ln -s "$ROOT/imports/scripts/global/" "$ROOT/$SERVER/plugins/Denizen/scripts/"
  # Symlink the server-specific scripts
  ln -s "$ROOT/imports/scripts/servers/$SERVER/" "$ROOT/$SERVER/plugins/Denizen/scripts/"
  
  # rm -i "$ROOT/$SERVER/server.jar"

  # Loop through each plugins
  for PLUGIN in "${PLUGINS[@]}";
  do
    # Symlink the plugins
    ln -s "$ROOT/imports/plugins/$PLUGIN.jar" "$ROOT/$SERVER/plugins/$PLUGIN.jar"
    # rm -i "$ROOT/$SERVER/plugins/$PLUGIN.jar"
  done
done
