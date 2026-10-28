#!/bin/bash

DICT_FILE="/usr/share/dict/words"

if [ $# -gt 0 ]; then
    WORDS=$(grep -E "^.{$1}$" "$DICT_FILE")
    
    echo "$WORDS" | shuf -n 1
else
    shuf -n 1 "$DICT_FILE"
fi

