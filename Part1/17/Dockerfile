FROM ubuntu:latest
WORKDIR /esp
# Environment vars required by install.sh and entry.sh
ENV IDF_PATH=/esp/esp-idf IDF_TOOLS_PATH=/esp/.espressif TZ="Etc/UTC" LANG="C.UTF-8" TERM="xterm-256color"
# Prerequisites for ESP_IDF installation
# https://docs.espressif.com/projects/esp-idf/en/latest/esp32/get-started/linux-setup.html#install-prerequisites
ARG DEBIAN_FRONTEND=noninteractive 
RUN apt-get update -q &&\
    apt-get install -y --no-install-recommends -q\
        bison \
        ccache \
        cmake \
        dfu-util \
        flex \
        git \
        gosu \
        gperf \
        libffi-dev \
        libssl-dev \
        ninja-build \
        python-is-python3 \
        python3-pip \
        python3-setuptools \
        wget &&\
        rm -rf /var/lib/apt/lists/*
# Download and install latest ESP-IDF
RUN git clone --recursive https://github.com/espressif/esp-idf.git \
    && cd ${IDF_PATH} \
    && ./install.sh
# Entrypoint script sets up the environment for ESP-IDF
COPY entry.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/entry.sh
WORKDIR /esp/src
ENTRYPOINT [ "/usr/local/bin/entry.sh" ]
CMD [ "/bin/bash", "--login" ]