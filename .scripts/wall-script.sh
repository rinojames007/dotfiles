#!/bin/bash
echo "Starting script at $(date)" >> /home/rinojames007/MyFiles/script/wall.log 2>&1 && export DISPLAY=:0 && cd /home/rinojames007/MyFiles/script && /usr/bin/python3 updateWall.py >> /home/rinojames007/MyFiles/script/wall.log 2>&1 && /usr/bin/feh --bg-fill pywall.jpg >> /home/rinojames007/MyFiles/script/wall.log 2>&1 && echo "Script completed at $(date)" >> /home/rinojames007/MyFiles/script/wall.log 2>&1
wal -c
wal -i /home/rinojames007/MyFiles/script/pywall.jpg
