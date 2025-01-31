#!/bin/bash

cd /var/log
folder=4k_files
mkdir -p ~/$folder
find ~ -type f -size +4k -exec cp -v {} ~/$folder/ \; 
