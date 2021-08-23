#!/bin/bash

server_version=8.0.7
server_image=customized/seafile-mc:${server_version}


mkdir -p ./docker_build
cp -rf ./image/seafile_8.0/* ./docker_build/
cp -rf ./scripts_8.0 ./docker_build/
cd docker_build
sed -i "s/SEAFILE_VERSION=/SEAFILE_VERSION=${server_version}/" Dockerfile
docker build -t ${server_image} .
