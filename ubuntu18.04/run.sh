#!/bin/bash
DOCKER_IMAGE=ubuntu18.04
CONTAINER_NAME=ubuntu18.04-1

xhost +local:

docker \
    run \
    -it \
    --rm \
    --user $(id --user):$(id --group) \
    --name $CONTAINER_NAME \
    -e DISPLAY=$DISPLAY \
    -e http_proxy=$http_proxy \
    -e HTTP_PROXY=$http_proxy \
    -e https_proxy=$https_proxy \
    -e HTTPS_PROXY=$https_proxy \
    -e no_proxy=$no_proxy \
	-v /etc/passwd:/etc/passwd \
	-v /etc/group:/etc/group \
	-v /dev/shm:/dev/shm \
	-v /tmp:/tmp \
    -v /tmp/.X11-unix/:/tmp/.X11-unix \
    -v /home/$(id --user --name)/.cache:/.cache \
    -v /home/$(id --user --name):/home/$(id --user --name) \
    -w /home/$(id --user --name) \
    $DOCKER_IMAGE \
    /bin/bash \
    --login \

xhost -local:
