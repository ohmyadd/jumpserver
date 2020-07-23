FROM ubuntu:bionic

RUN sed -i -E 's/(archive|security).ubuntu.com/mirrors.aliyun.com/g' /etc/apt/sources.list && \
    apt update && apt install -y strongswan libcharon-extra-plugins lsof \
                                 vim iproute2 curl iputils-ping dnsutils kmod iptables tcpdump

ADD ipsec.conf /etc/
ADD ipsec.secrets /etc/

ADD entrypoint.sh /

CMD /entrypoint.sh
