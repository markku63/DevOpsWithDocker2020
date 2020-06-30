FROM ubuntu:latest
WORKDIR /esp
ENV IDF_PATH=/esp/esp-idf IDF_TOOLS_PATH=/esp/.espressif TZ="Etc/UTC"
RUN apt-get update \
    && DEBIAN_FRONTEND=noninteractive apt-get install -y git wget flex bison gperf python-is-python3 python3-pip python3-setuptools cmake ninja-build ccache libffi-dev libssl-dev dfu-util
RUN git clone --depth 1 --recursive https://github.com/espressif/esp-idf.git \
    && cd ${IDF_PATH} \
    && ./install.sh
COPY entry.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/entry.sh
ENTRYPOINT [ "/usr/local/bin/entry.sh" ]