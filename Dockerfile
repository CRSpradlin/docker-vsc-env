FROM linuxserver/code-server
ENV code_server=test
ENV code_server=bye def=$code_server
ENV ghi=$code_server
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
        apt install -y wmaker; \
        mkdir vnc; \
        cd vnc; \
        touch ./password; \
        echo $PASSWORD >> ./password; \
        echo $PASSWORD >> ./password; \
        sudo git clone https://github.com/novnc/noVNC.git;


