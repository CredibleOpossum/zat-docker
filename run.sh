#!/usr/bin/env bash
git submodule update --init --recursive
docker build . -t zatikon -f docker/Dockerfile && \
docker run -p 6000:6000 -p 6001:6001 -v $(pwd)/resources:/app/resources -it zatikon
