#!/bin/bash

## Skript kontrollib kas arv on paaris või paaritu

## Kui argumenti ei ole antud, siis lõpeta skripti jooksutamine
if [ $# -ne 1 ]; then
    echo "Skripti jooksutamisel on vaja täpsustada ÜKS täisarv, mida kontrollitakse. (Näiteks: $0 44)"
    exit 0
fi

arv=$1
jaak=$(( $arv % 2 ))

## Kontrolli, kas skript on paaris või paaritu
if [ $jaak -eq 0 ]; then
    echo "Arv $arv on paaris!"
else
    echo "Arv $arv on paaritu!"
fi
