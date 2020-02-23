#!/usr/bin/env bash

docker container stop mindmap
docker container rm mindmap

docker container stop golovchen
docker container rm golovchen

docker container stop vps-proxy
docker container rm vps-proxy

docker network rm proxy-net