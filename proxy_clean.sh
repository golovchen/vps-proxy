#!/usr/bin/env bash

docker container stop mindmap
docker container rm mindmap

docker container stop golovchen
docker container rm golovchen

docker network rm proxy-net