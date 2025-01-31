#!/bin/bash

echo "1. Nginx"
echo "2. Nginx Alpine"
read -p "Select Nginx version to pull: " sel

case $sel in
    1)
        docker pull nginx
        ;;
    2)
        #Alpine means the image weights less than default one, also it uses less resources.
        docker pull nginx:alpine
        ;;
    *)
        echo "No te hagas el vivo"
        ;;
esac
