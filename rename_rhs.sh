#!/bin/bash

DATA_DIR="/Users/wachiii/Workschii/brain-organoid/data"

for dir in "$DATA_DIR"/*/; do
  foldername=$(basename "$dir")
  rhsfile=$(find "$dir" -maxdepth 1 -type f -name "*.rhs" | head -n 1)
  if [[ -n "$rhsfile" ]]; then
    mv "$rhsfile" "$dir/$foldername.rhs"
    echo "Renamed $rhsfile to $dir/$foldername.rhs"
  fi
done