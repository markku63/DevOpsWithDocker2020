FROM ubuntu:20.04
COPY my_builder.sh /usr/local/bin
RUN apt-get update && \
    apt-get install -q -y --no-install-recommends \
        apt-transport-https \
        ca-certificates \
        curl \
        gnupg-agent \
        software-properties-common && \
    curl -fsSL https://download.docker.com/linux/ubuntu/gpg > /tmp/dkey; apt-key add /tmp/dkey && \
    add-apt-repository \
        "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
        $(lsb_release -cs) \
        stable" && \
    apt-get update && \
    apt-get install -q -y docker-ce && \
    apt-get purge -q -y --auto-remove curl && \ 
    rm -rf /var/lib/apt/lists/* && \
    chmod a+x /usr/local/bin/my_builder.sh

WORKDIR /app
ENTRYPOINT ["/usr/local/bin/my_builder.sh"]