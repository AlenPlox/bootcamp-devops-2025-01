#!/bin/bash

cd /var/log
ls -lhS | tail -n +2 | head -n 5 | awk '{print $9, $5}' 
