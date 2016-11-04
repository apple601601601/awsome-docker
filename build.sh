#!/bin/bash

for img in python hyper kibana shadowsocks kubernetes-dev
do
  echo "########    Building Image $img    #########"
  docker build -t "$DOCKER_USERNAME/$img" $img
  docker push "$DOCKER_USERNAME/$img"
done
