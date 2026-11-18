#!/bin/bash

# A simple menu system
names='Kyle Cartman Stan Kenny Quit'
PS3='Select character: '

select name in $names; do

    if [ $name == 'Quit' ]; then
	break
    fi

    echo Hello $name
done

echo Bye
