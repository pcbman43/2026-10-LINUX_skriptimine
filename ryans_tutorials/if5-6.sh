#!/bin/bash

name="Mari"
if [ $name = "Mari" ]; then
    echo "Tere, $name!"
fi

name=
if [ -n $name ]; then
    echo "Muutuja name ei ole tühi, tema väärtus on $name"
fi

if [ -z $name ]; then
    echo "Muutuja name on tühi"
fi
