# Objective
To create an environment for java development that is a one click install and pull up.

---

## Code-Server Info:

[Link to Code-Server Repo](https://github.com/cdr/code-server)

Necessary Code Command:

`curl -fsSL https://code-server.dev/install.sh | sh`

## NOVNC Info:

[Link to NOVNC Repo](https://github.com/novnc/noVNC)

Necessary Code Command:

`git clone https://github.com/novnc/noVNC.git`

Besure port is correct number

`./utils/launch.sh --vnc localhost:5901`

## Window Manager Possibility:
[Xephyr](http://blog.csicar.de/docker/window-manger/2016/05/24/docker-wm.html)

## Docker Info:
- You can commit docker containers to kind-of save their progress
- Look [HERE](https://docs.docker.com/engine/reference/commandline/commit/) to view more information on commiting docker containers

