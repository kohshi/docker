#!/bin/bash
set -xe

DOCKER_IMAGE=ros-melodic

docker run -it --rm \
       --user $(id --user):$(id --group) \
       --runtime=nvidia \
       --env="DISPLAY" \
       --env=QT_X11_NO_MITSHM=1 \
       --volume="/tmp/.X11-unix:/tmp/.X11-unix:rw" \
       --volume="$HOME/.Xauthority:/root/.Xauthority:rw" \
       -w ${PWD} \
       -v ${HOME}:${HOME} \
       -v /etc/group:/etc/group:ro \
       -v /etc/passwd:/etc/passwd:ro \
       -v /etc/shadow:/etc/shadow:ro \
       -v /etc/sudoers.d:/etc/sudoers.d:ro \
       -v /mnt:/mnt \
       -e "http_proxy=${PROXY}" \
       -e "https_proxy=${PROXY}" \
       -e "HTTP_PROXY=${PROXY}" \
       -e "HTTPS_PROXY=${PROXY}" \
       --net=host \
       ${DOCKER_IMAGE} \
       zsh
