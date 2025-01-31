#!/bin/bash
grep "host" archivo.conf | awk '{gsub(/}$/, "", $2); gsub(/;}$/, "", $7); print $2, $7}'
