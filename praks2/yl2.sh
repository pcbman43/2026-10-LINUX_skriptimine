#!/bin/bash
# Skript, mis väljastab kasutajale ajaga seotud info ja selle kuu kalendri

echo
date +"Today is %A, %B %d, %Y"
date +"Time is %H:%M"
echo
date +"Calendar of %B %Y"
ncal -bh | tail -7
