#!/bin/sh

vnc4server :0 < /config/vnc/password &>>/dev/null&
/config/vnc/noVNC/utils/launch.sh --listen 8080 &>>/dev/null&

echo VNC Server is now running at port 8080, visit localhost:8080 in the browser to view gui applications.