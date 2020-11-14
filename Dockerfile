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
        apt install -y default-jdk; \
        apt install -y libswt-gtk-3-java; \
        apt install -y zip unzip; \
        mkdir vnc; \
        cd vnc; \
        touch ./password; \
        echo $PASSWORD >> ./password; \
        echo $PASSWORD >> ./password; \
        sudo git clone https://github.com/novnc/noVNC.git; \
        cd /config; \
        mkdir libraries; \
        cd libraries; \
        curl -X GET "https://download2.gluonhq.com/openjfx/11.0.2/openjfx-11.0.2_linux-x64_bin-sdk.zip" --output openjfx-11.02_linux-z64_bin-sdk.zip; \
        unzip openjfx-11.02_linux-z64_bin-sdk.zip -d /config/libraries/; \
        rm openjfx-11.02_linux-z64_bin-sdk.zip; \
        code-server --install-extension vscjava.vscode-java-pack;




