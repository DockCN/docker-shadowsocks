FROM ubuntu:16.04
MAINTAINER custa <custa@126.com>

ENV REFRESHED_AT 2017-01-25

RUN apt-get -y update && \
    apt-get -y upgrade && \
    apt-get -y install python-pip && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists

RUN pip install shadowsocks

ADD run.sh /run.sh
RUN chmod +x /run.sh

EXPOSE 8388

ENTRYPOINT ["/run.sh"]
