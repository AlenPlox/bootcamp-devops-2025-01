#!/bin/bash

image_name=$1
#the dot indicates the dockerfile is in the actual directory
docker build $image_name .
