#!/bin/bash

file_ips=$(grep -oP '192\.168\.88\.\d+' archivo.conf)

ips=$(seq 1 254 | awk '{print "192.168.88." $1}')

for ip in $ips; do
  if ! echo "$file_ips" | grep -q "$ip"; then
    echo "$ip"
  fi
done
