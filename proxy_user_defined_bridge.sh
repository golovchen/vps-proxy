#!/usr/bin/env bash

docker network create proxy-net

docker container run --name mindmap --network proxy-net --detach golovchen/mindmap:latest
docker container run --name golovchen --network proxy-net --detach golovchen/golovchen.com:latest

cp apache-proxy.conf /tmp/proxy-conf
docker run --name apache-proxy  -it --rm --volume /tmp/proxy-conf:/opt/proxy-conf --network proxy-net -p 80:80 diouxx/apache-proxy
