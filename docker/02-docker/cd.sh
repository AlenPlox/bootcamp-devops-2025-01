#!/bin/bash
docker images --format "{{.Repository}}:{{.Tag}} {{.Size}}" | sort -rh -k2

