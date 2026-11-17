#!/bin/bash
text="eins;zwei;drei"
IFS=';'   # eraldajaks koma
for word in $text; do
    echo "Sõna: $word"
done

