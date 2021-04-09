#!/bin/bash

PROXY=http://proxy.kanto.sony.co.jp:10080
TAG=ros-melodic
docker build \
       --build-arg http_proxy=$PROXY \
       --build-arg HTTP_PROXY=$PROXY \
       --build-arg https_proxy=$PROXY \
       --build-arg HTTPS_PROXY=$PROXY \
       --tag $TAG \
       .
