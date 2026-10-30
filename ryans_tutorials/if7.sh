#!/bin/bash

muutujaX=001 # see on arv
muutujaY=1
if [ $muutujaX == $muutujaY ]; then
    echo "Esimene IF (sõnede võrdlemiseks) ütleb, et $muutujaX on võrdne $muutujaY"
fi

if [ $muutujaX -eq $muutujaY ]; then
    echo "Teine IF (numbrite võrdlemiseks) ütleb, et $muutujaX on võrdne $muutujaY"
fi
