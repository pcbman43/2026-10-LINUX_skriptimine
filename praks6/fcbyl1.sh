#!/bin/bash

# Kirjuta for-tsükkel, mis loendab 1 kuni 10 ja katkeb break abil kohe, kui väärtus jõuab 7-ni.
for (( i=1; i<=10; i++ )) do
    
    if [ $i -eq 7 ]; then
	echo "Katkestan tsükli, kuna i=7"
	break;
    fi
    
    echo $i;

done

