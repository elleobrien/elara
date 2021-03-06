#!/bin/bash

# User-supplied values
PORT=$1
VOLUME=$2
NAME=$3

docker run \
  --rm \
  -p ${PORT}:8888 \
  -v ${VOLUME}:/home/jovyan/work \
  -e JUPYTER_ENABLE_LAB=yes \
  --name ${NAME} elara