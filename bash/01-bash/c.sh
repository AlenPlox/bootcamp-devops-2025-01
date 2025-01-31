#!/bin/bash

cd /var/log
tail -n 20 -f syslog 
