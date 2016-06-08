#!/bin/bash

if [ "x$VNC_HOST" != "x" ]; then
  cd /root/noVNC && ./utils/launch.sh --vnc $VNC_HOST
else
  echo "Usage: docker run --detach --publish 6080:6080 --env VNC_HOST=<vnc-host.example.com:5900> ysks/novnc"
fi
