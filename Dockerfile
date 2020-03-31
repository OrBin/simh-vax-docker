FROM ubuntu:18.04

COPY src/ /usr/local/vax/src/

RUN mkdir -p /usr/local/vax/bin /usr/local/vax/data \
    && apt-get update \
    && apt-get install -y git gcc make libpcap-dev bridge-utils uml-utilities net-tools \
    && cd /usr/local/vax/src/ \
    && make vax \
    && cd .. \
    && cp src/BIN/vax bin/vax \
    && cp src/VAX/ka655x.bin data/ka655x.bin \
    && rm -rf src/

COPY data/ /usr/local/vax/data/

