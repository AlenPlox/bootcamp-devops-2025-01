#!/bin/bash
read -p "Enter IP address, hostname or MAC address: " search

result=$(grep -i "$search" archivo.conf)
if [ -z "$result" ];
then
  echo "No matches for: $search"
else
  grep -Pi $search archivo.conf | awk '{gsub(/;$/, "", $5); gsub(/;}$/, "", $7); print $2, $5, $7}'
fi
