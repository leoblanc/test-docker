#!/bin/bash

set -e

DOCKER_IMAGE=leoblanc/wordpress:v${CIRCLE_BUILD_NUM}

docker build -t ${DOCKER_IMAGE} .

docker login -u ${DOCKER_USER} -p ${DOCKER_PASS} hub.docker.com

docker push ${DOCKER_IMAGE}
