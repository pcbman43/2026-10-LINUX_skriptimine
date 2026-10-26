#!/bin/bash

# Skript, mis väljastab käsureale tervituse "Tere, kasutaja!"

## Lihtsaim lahendus
echo "Tere, $USER!"

## Ülesande näite järgi tehtud lahendus
echo -n 'Tere, '
kasutajanimi=$USER
echo -n "$kasutajanimi"
echo '!'
