#!/bin/bash

cd /var/log
folder=system_files 
mkdir -p ~/$folder
find . -type f -exec grep -l "system" {} \; -exec cp -v {} ~/$folder/ \;
