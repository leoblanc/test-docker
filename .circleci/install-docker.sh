#!/bin/bash

set -e

VERSION="17.06.0-ce"

sudo apt-get update
sudo apt-get -y install curl

curl -L -o /tmp/docker-${VERSION}.tgz https://get.docker.com/builds/Linux/x86_64/docker-${VERSION}.tgz
tar -xz -C /tmp -f /tmp/docker-${VERSION}.tgz

sudo mv /tmp/docker/* /usr/bin
