FROM alpine:latest
LABEL maintainer="custa@126.com"

ENV REFRESHED_AT 2020-02-06

RUN apk update && \
    apk add py-pip && \
    pip install --upgrade pip && \
    pip install https://github.com/shadowsocks/shadowsocks/archive/master.zip

EXPOSE 8388

ENTRYPOINT ["ssserver"]
