FROM alpine:latest
LABEL maintainer="custa@126.com"

ENV REFRESHED_AT 2020-02-06

RUN apk update && \
    apk add --no-cache python3 libsodium && \
    pip3 install --upgrade --no-cache-dir pip && \
    pip3 install --no-cache-dir https://github.com/shadowsocks/shadowsocks/archive/master.zip

EXPOSE 8388

ENTRYPOINT ["ssserver"]
