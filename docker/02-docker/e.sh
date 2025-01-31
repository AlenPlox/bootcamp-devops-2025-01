#!/bin/bash
local_port=$1
container_port=$2
image=$3

docker run -d -p $1:$2 $3

