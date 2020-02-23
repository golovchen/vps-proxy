#!/usr/bin/env bash

docker network create proxy-net

docker container run --name mindmap --network proxy-net --detach golovchen/mindmap:latest
docker container run --name golovchen --network proxy-net --detach golovchen/golovchen.com:latest
docker container run --name vps-proxy --network proxy-net --detach --publish 80:80 golovchen/vps-proxy
