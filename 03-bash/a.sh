#!/bin/bash

du -h / | sort -rh | head -2 | tail -1
#tail is used to exclude root directory itself 
