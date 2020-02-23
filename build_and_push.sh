#!/usr/bin/env bash

docker image build --tag=golovchen/vps-proxy .
docker push golovchen/vps-proxy