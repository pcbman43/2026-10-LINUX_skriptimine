#!/bin/bash

read -p "Kui vana oled? " vanus

if test $vanus -gt 0 -a $vanus -lt 11
then 
        echo "Oled laps."
elif test $vanus -ge 11 -a $vanus -lt 18
then
        echo "Oled nooruk."
elif test $vanus -ge 18 -a $vanus -lt 63
then
        echo "Oled täiskasvanu."
elif test $vanus -ge 63 -a lt 111
then
        echo "Oled senioor."
elif test $vanus -ge 111; then
	echo "Oled väga vana!"
else
        echo "Vigane sisend. Kas sisestasite enda vanuse täisarvuna?"
fi
