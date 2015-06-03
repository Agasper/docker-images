FROM ubuntu:14.04
MAINTAINER Agasper
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update && \
      apt-get install -q -y build-essential curl unzip python-dev python-pip python-virtualenv libmysqlclient-dev \
      git mercurial && \
    adduser --disabled-password --gecos '' agasper && adduser agasper sudo && echo '%sudo ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers && \
    apt-get clean && \
    rm -rf /tmp/* /var/lib/apt/lists/* /var/tmp/* /download/directory
