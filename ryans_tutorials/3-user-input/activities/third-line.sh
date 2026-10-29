#!/bin/bash

# Kontrollib, kas käsk on pipeis kasutatud
if [ -t 0 ]; then
    echo 'Väljastab antud käsu kolmanda rea'
    echo "Usage: <command> | $0" >&2
    exit 1
fi

sed -n '3p'

