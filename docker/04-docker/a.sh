#!/bin/bash

#To verify docker is installed correctly
docker --version

#To check docker is working correctly and can run containers
docker run -d hello-world

#To verify containers are working correctly
docker ps -a
