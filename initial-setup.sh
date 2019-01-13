#!/bin/bash

set -e 

echo $PWD

docker version

docker pull jenkins/jenkins:lts

docker volume create jenkins 

set +e
docker stop jenkins-container
set -e

docker run --rm -p 49001:8080 \
    -v /var/run/docker.sock:/var/run/docker.sock \
    -v jenkins:/var/jenkins_home:z \
    --name jenkins-container jenkins:latest 