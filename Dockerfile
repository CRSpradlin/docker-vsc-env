FROM linuxserver/code-server
ENV abc=hello
ENV abc=bye def=$abc
ENV ghi=$abc
ENV PUID=1000
ENV PGID=1000
ENV TZ=Europe/London
ENV PASSWORD=password
ENV SUDO_PASSWORD=password
ENV DISPLAY :0
WORKDIR /config
RUN set -eux; \
        apt upgrade -y; \
        apt update -y; \
        apt install -y git; \
        apt install -y vnc4server; \
        mkdir vnc; \
        cd vnc; \
        touch ./password; \
        echo $PASSWORD >> ./password; \
        echo $PASSWORD >> ./password; \
        sudo git clone https://github.com/novnc/noVNC.git;


