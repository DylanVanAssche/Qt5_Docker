FROM ubuntu:14.04
MAINTAINER Ali Diouri <alidiouri@gmail.com>

RUN rm /bin/sh && ln -s /bin/bash /bin/sh

RUN apt update &&                  \
    apt upgrade -y &&              \
    apt install -y                 \
        git                        \
        wget                       \
        xvfb                       \
        flex                       \
        bison                      \
        libxcursor-dev             \
        libxcomposite-dev          \
        software-properties-common \
        build-essential            \
        libssl-dev                 \
        libxcb1-dev                \
        libx11-dev                 \
        libgl1-mesa-dev            \
        libudev-dev                \
        qt5-default                \
        qttools5-dev               \
        qtdeclarative5-dev         \
        qtpositioning5-dev         \
        qt5-default              &&\
    apt clean

WORKDIR /home/root/

CMD ["/bin/bash"]
