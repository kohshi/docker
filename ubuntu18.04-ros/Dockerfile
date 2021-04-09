
FROM osrf/ros:melodic-desktop-full

# To remove blocking of wating for interactive input
ENV DEBIAN_FRONTEND=noninteractive

MAINTAINER Masasshi.Eshima <Masashi.Eshima@sony.com>

# nvidia-container-runtime
ENV NVIDIA_VISIBLE_DEVICES ${NVIDIA_VISIBLE_DEVICES:-all}
ENV NVIDIA_DRIVER_CAPABILITIES ${NVIDIA_DRIVER_CAPABILITIES:+$NVIDIA_DRIVER_CAPABILITIES,}graphics

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
    libeigen3-dev \
    libopencv-dev \
    libsqlite3-dev \
    libprotobuf-dev \
    libprotoc-dev \
    protobuf-compiler \
    python-catkin-tools \
    ros-melodic-jsk-visualization

RUN apt-get install -y \
    less \
    vim \
    zsh \
    percol \
    mesa-utils \
    gdb \
    iputils-ping && \
    rm -rf /var/lib/apt/lists/*