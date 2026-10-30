#!/bin/bash

path="$HOME/skriptimine/"

if [ -e $path ]
then
    echo "Asi $path eksisteerib."
fi

if [ -d $path ]
then
    echo "..ja ta on kataloog!"
fi

if [ ! -d $path ]
then
    echo "..ja ta on fail!"
fi

if [ -r $path ]
then
    echo "Temal on olemas lugemisõigus."
fi

if [ -w $path ]
then
    echo "Temal on olemas kirjutamisõigus."
fi

if [ -x $path ]
then
    echo "Temal on olemas käivitamisõigus."
fi

if [ -s $path ]
then
    echo "Täpsustatud fail/kataloog ei ole tühi!"
fi

# Kausta ma ei hakka tühjendama kasutades `"" > path` käsku.
