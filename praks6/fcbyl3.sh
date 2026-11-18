#!/bin/bash

# Lisa pesastatud tsüklid: kui sisemine tsükkel jõuab väärtuseni 5, katkesta mõlemad tsüklid käsuga break 2.

for i in {1..5}; do
    echo "Välimise tsükli i=$i"
    for i in {1..5}; do
	
	if [ $i -eq 5 ]; then
	    echo "Sisemise tsükli i=$i, katkestan tsüklid" 
	    break 2
	fi
	echo "Sisemise tsükli i=$i"

    done

done
