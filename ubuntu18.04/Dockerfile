FROM ubuntu:bionic

#LABEL com.nvidia.volumes.needed="nvidia_driver"
#ENV PATH /usr/local/nvidia/bin:${PATH}
#ENV LD_LIBRARY_PATH /usr/local/nvidia/lib:/usr/local/nvidia/lib64:${LD_LIBRARY_PATH}

# To remove blocking of wating for interactive input
ENV DEBIAN_FRONTEND=noninteractive

MAINTAINER Shunichi.Homma <Shunichi.Homma@sony.com>

#ARG uid=4205
#ARG gid=3000
#ARG usr=homma

RUN apt update && \
    apt install -y --no-install-recommends \
    cifs-utils \
    build-essential \
    make \
    git \
    locales \
    locales-all \
    libeigen3-dev \
    zlib1g-dev \
    libsqlite3-dev \
    libssl-dev \
    openssl \
    python3-numpy \
    python3-scipy \
    python3-matplotlib \
    python3-pandas \
    python3-seaborn \
    python3-pyqtgraph \
    python3-pil \
    python3-pygraphviz \
    python3-opencv \
    python3-opengl \
    python3-tk \
    python3-dev \
    python3-setuptools \
    python3-cffi \
    python3-pyqt5 \
    python3-pyqt5.qsci \
    python3-pyqt5.qtmultimedia \
    python3-pyqt5.qtopengl \
    python3-pyqt5.qtpositioning \
    python3-pyqt5.qtquick \
    python3-pyqt5.qtsensors \
    python3-pyqt5.qtserialport \
    python3-pyqt5.qtsql \
    python3-pyqt5.qtsvg \
    python3-pyqt5.qtwebkit \
    python3-pyqt5.qtwebsockets \
    python3-pyqt5.qtx11extras \
    python3-pyqt5.qtxmlpatterns \
	python3-wxgtk4.0 \
	python3-vtk7 \
	python3-imageio \
    python-tqdm \
    qttools5-dev-tools \
    libqt5designer5 \
    qt5-default \
    pybind11-dev \ 
    firefox \
    freeglut3-dev \
    libxtst6 \
    libv4l-dev \
    libz-dev \
    libavformat-dev \
    libswscale-dev \
    libopencv-dev \
    emacs \
    emacs-goodies-el \
    wget \
    cmake \
    sed \
    eog \
    meld \
    parallel \
    sqlitebrowser \
    python3-pip \
    sqlite3 \
    git-lfs \
    libgraphviz-dev \
    curl \
    apt-transport-https \
    xvfb && \
    rm -rf /var/lib/apt/lists/*

# faro visualizer
#RUN pip3 install imageio && \
#    pip3 install wheel && \
#    pip3 install numba && \
#    pip3 install vispy && \
#    pip3 install parse

# create user
#RUN groupadd -g ${gid} usr && \
#    useradd --uid ${uid} --gid ${gid} -m ${usr}
