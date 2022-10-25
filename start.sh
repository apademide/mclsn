# Root directory containing all servers' folders + global folder
ROOT="/Users/aurianaubert/Desktop/APADEMIDE/LOUSONNA/SERVER.nosync"

# Servers where to symlink
SERVERS=("proxy" "lobby" "survival")

# Loop through each server
# for SERVER in $SERVERS
for SERVER in "${SERVERS[@]}";
do 

  # cd to the server's directory
  cd "$ROOT/$SERVER"
  # log directory for debug
  pwd
  # start 
  screen -dmS "mc_$SERVER" sh start.sh

done

screen -ls
