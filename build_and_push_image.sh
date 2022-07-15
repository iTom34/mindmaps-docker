#!/bin/bash

VERSION="2021_05_04"

# Building docker image
docker build --tag itom34/mindmaps:${VERSION} --tag itom34/mindmaps:latest .

docker push itom34/mindmaps:${VERSION}
docker push itom34/mindmaps:latest
