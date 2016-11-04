#!/bin/bash
set -x
set -e

for img in kubernetes-dev python kibana shadowsocks hyper
do
  echo "########    Building Image $img    #########"
  docker build -t "$DOCKER_USERNAME/$img" $img
  docker push "$DOCKER_USERNAME/$img"
done
