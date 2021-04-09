FROM osrf/ros:kinetic-desktop-full

# To remove blocking of wating for interactive input
ENV DEBIAN_FRONTEND=noninteractive

MAINTAINER Masasshi.Eshima <Masashi.Eshima@sony.com>

ENV NVIDIA_VISIBLE_DEVICES=all \
    NVIDIA_DRIVER_CAPABILITIES=all

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    cifs-utils \
    build-essential \
    make \
    cmake \
    git \
    sudo \
    locales \
    locales-all \
    ssh \
    libeigen3-dev \
    libopencv-dev \
    libsqlite3-dev \
    python-numpy \
    python-opencv \
    python-catkin-tools \
    ros-kinetic-jsk-visualization \
    ros-kinetic-octomap \
    ros-kinetic-octomap-mapping \
    ros-kinetic-octomap-msgs \
    ros-kinetic-octomap-ros \
    ros-kinetic-octomap-rviz-plugins \
    ros-kinetic-octomap-server \
    ros-kinetic-hector-trajectory-server

RUN apt-get install -y \
    less \
    vim \
    mesa-utils \
    gdb \
    iputils-ping \
    zsh \
    python-pip \
    python-wheel \
    python-setuptools && \
    pip install percol && \
    rm -rf /var/lib/apt/lists/*
