#!/bin/bash

# Tee skript, mis küsib kasutajalt numbreid seni, kuni ta kirjutab 0. Kui number on negatiivne, jäta see samm continue abil vahele.
for (( i=1; i!=0; i )) do
    read -p "Sisestage number " i
done
