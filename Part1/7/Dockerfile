FROM ubuntu:16.04
WORKDIR /usr/local/bin
COPY curler.sh .
RUN apt-get update -q && apt-get install -y -q --no-install-recommends curl
RUN chmod +x ./curler.sh
CMD ["./curler.sh"]