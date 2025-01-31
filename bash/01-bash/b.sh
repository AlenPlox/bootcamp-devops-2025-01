#!/bin/bash

cd /var/log
 
ls -lt | head -6 | awk '{print $9, " - " $7, $6}' 
