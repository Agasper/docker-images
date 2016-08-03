FROM agasper/ubuntu-base

MAINTAINER Agasper

RUN apt-get update && apt-get install -q -y build-essential cmake git libgtk2.0-dev pkg-config libavcodec-dev libavformat-dev libswscale-dev \
        python-dev python-numpy libtbb2 libtbb-dev libjpeg-dev libpng-dev libtiff-dev libjasper-dev libdc1394-22-dev && \
        apt-get clean && \
        rm -rf /tmp/* /var/lib/apt/lists/* /var/tmp/*

WORKDIR /tmp
RUN curl -s https://codeload.github.com/Itseez/opencv/zip/3.1.0 > ./opencv.zip && \
    unzip opencv.zip && \
    rm opencv.zip && \
    cd ./opencv-3.1.0/ && \
    mkdir release && \
    cd release/ && \
    cmake -D CMAKE_BUILD_TYPE=RELEASE -D CMAKE_INSTALL_PREFIX=/usr/local .. && \
    make && \
    make install && \
    rm -rf /tmp/opencv-3.1.0
