FROM ubuntu:artful
MAINTAINER Jonas Gröger <jonas@huntun.de>
RUN apt-get update \
    && apt-get upgrade -y \
    && apt-get install -y \
    python \
    python-pip \
    debhelper \
    ubuntu-dev-tools \
    && apt-get autoremove \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*
RUN pip install launchpadlib
COPY . /data
WORKDIR /data