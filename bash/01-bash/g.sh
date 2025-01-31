#!/bin/bash

cd /var/log
folder=modified_files
mkdir -p ~/$folder
find ~ -type f -newermt "2025-01-08"  -exec cp -v {} ~/$folder/ \;

