#!/bin/bash

docker run --rm -d -p 49001:8080 \
    -v /var/run/docker.sock:/var/run/docker.sock \
    -v jenkins:/var/jenkins_home:z \
    --name jenkins-container jenkins:latest 