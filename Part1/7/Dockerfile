FROM ubuntu:16.04
WORKDIR /usr/local/bin
COPY curler.sh .
RUN apt-get update && apt-get install -y curl
RUN chmod +x ./curler.sh
CMD ["./curler.sh"]