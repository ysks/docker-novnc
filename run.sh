#!/bin/sh

VNC_HOST=$1
PORT=${2:-6080}

if [ $# -eq 0 ]; then
  echo 'Usage: ./run.sh <VNC-HOST> [] [<PORT>]'
  exit
fi

docker run -t -d -e VNC_HOST=$VNC_HOST -p 6080:$PORT ysks/novnc
