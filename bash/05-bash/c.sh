#!/bin/bash

file=docker_config_file.txt
sed -n '316p' "$file" > temp.txt
sed -i '316d' "$file"
sed -i '518r temp.txt' "$file"

echo "Move line 316 to 519, the content of that line is: $(<temp.txt )"

rm temp.txt
