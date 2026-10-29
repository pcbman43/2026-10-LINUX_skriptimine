#!/bin/bash
# Skript väljastab `ls -l` käsu faili nime ja omaniku

# NR > 1 kustutab esimese rea
ls -l | awk 'NR > 1 {
    # $9 failinime algus
    name = $9
    for (i = 10; i <= NF; i++) {
        name = name " " $i
    }
    # $3 on faili omanik
    printf "Owner: %-12s Name: %s\n", $3, name
}'

