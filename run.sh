#!/usr/bin/env bash

docker network create proxy-net

docker pull golovchen/mindmap
docker container run --name mindmap --network proxy-net --detach golovchen/mindmap
docker container run --name golovchen --network proxy-net --detach golovchen/golovchen.com
docker container run --name vps-proxy --network proxy-net --detach --publish 80:80 golovchen/vps-proxy
