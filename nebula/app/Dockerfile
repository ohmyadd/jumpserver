FROM ubuntu:bionic


RUN sed -i -E 's/(archive|security).ubuntu.com/mirrors.aliyun.com/g' /etc/apt/sources.list && \
    apt update && apt install -y iproute2 net-tools iputils-ping dnsutils curl wget netcat vim

RUN wget http://s.ohmyadd.top:8000/nebula-linux-amd64.tar.gz && \
    mkdir /nebula && tar zxvf nebula-linux-amd64.tar.gz -C /usr/bin/ && rm nebula-linux-amd64.tar.gz


