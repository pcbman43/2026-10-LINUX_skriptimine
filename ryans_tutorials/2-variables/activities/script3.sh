#!/bin/bash
set -e

if [ $# -lt 1 ]; then
  echo "Peate täpsustama ühe või enama faili asukoha"
  echo "Usage: $0 FILE..." >&2
  exit 1
fi

today=$(date +%F)

for path in "$@"; do
  file=$(basename -- "$path")

  if [[ "$file" == *.* && "$file" != .* ]]; then
    name=${file%.*}
    extension=.${file##*.}
  else
    name=$file
    extension=
  fi

  cp -- "$path" "${name}_${today}${extension}"
done

