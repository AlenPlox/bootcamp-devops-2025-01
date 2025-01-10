#!/bin/bash

cd /var/log
#ls will sort by file size starting from the bigger file and head will return the first 5 results
ls -S | head -5
