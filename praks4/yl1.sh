#!/bin/bash

## Skript kontrollib kas arv on paaris või paaritu

read -p "Sisesta arv mis vajab kontrollimist: " arv

jaak=$(( $arv % 2 ))

if [ $jaak -eq 0 ]; then
    echo "Arv $arv on paaris!"
else
    echo "Arv $arv on paaritu!"
fi
