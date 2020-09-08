FROM alpine:3.12
COPY my_builder.sh /usr/local/bin
RUN apk --no-cache add bash git docker && \
    chmod a+x /usr/local/bin/my_builder.sh

WORKDIR /app
ENTRYPOINT ["/usr/local/bin/my_builder.sh"]
