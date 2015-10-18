# Slightly modified version of kubernetes.git/cluster/images/hyperkube/Dockerfile

FROM debian:jessie

MAINTAINER thesamet@gmail.com

RUN DEBIAN_FRONTEND=noninteractive apt-get update -y \
    && DEBIAN_FRONTEND=noninteractive apt-get -yy -q \
    install \
    iptables \
    ca-certificates \
    file \
    util-linux \
    && DEBIAN_FRONTEND=noninteractive apt-get autoremove -y \
    && DEBIAN_FRONTEND=noninteractive apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN cp /usr/bin/nsenter /nsenter

COPY ./hyperkube /hyperkube

