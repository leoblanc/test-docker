#!/bin/bash

set -e

DOCKER_IMAGE="leoblanc/wordpress:v${CIRCLE_BUILD_NUM}"

docker build -t "${DOCKER_IMAGE}" .

docker login --username="${DOCKER_USER}" --password="${DOCKER_PASS}"

docker push "${DOCKER_IMAGE}"
