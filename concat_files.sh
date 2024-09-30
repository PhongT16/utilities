#!/bin/bash

directory=$1

# checks if path exist
if [ ! -d "$directory" ]; then
  echo "${directory} doesn't exist"
  exit 1
fi 


for file in "$directory"*; do
  cat "$file" >> output
  echo "" >> output
  echo "==================================" >> output
  echo "" >> output
done
