#!/bin/bash

cd /var/log
#Both of these worked, find is returning the results faster
find . -type f -exec grep -l "DHCP" {} \; | awk -F '/' '{print $NF}'
#grep -rnw -e 'DHCP'
 
