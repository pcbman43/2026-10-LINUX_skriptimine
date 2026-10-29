#!/bin/bash

if [ $# -lt 2 ]; then
    echo "Skript nõuab kahte argumenti: sinu nimi ja lemmik värv"
    echo "Usage: $0 nimi värv" >&2
    exit 1;
fi

nimi=$1
varv=$2

echo "Tere, $nimi! Sinu lemmik värv on $varv."
echo "Oled sisseloginud kasutajana $USER masinal $(hostname)."
echo "See skript oli aktiveeritud kataloogis: $PWD"

