#!/bin/bash
# Skript küsib ekskursiooni korraldajalt mitu reisijat on grupis ja kohtade arv bussis. Väljastab mitu bussi saaks täielikult täidetud ja mitu inimest jääks maha.

echo "Tere!"
sleep 1

read -p "Mitu reisijat tuleb ekskursioonile? " reisija_arv
read -p "Mitu kohta on bussis? " istmete_arv
sleep 0.5
echo -e "\nReisijaid on $reisija_arv ja kohti bussis $istmete_arv\n"

sleep 0.5
echo -ne "Arvutan...\r"
taidetud_busside_arv=$( expr $reisija_arv / $istmete_arv )
mahajaetud_reisijate_arv=$( expr $reisija_arv % $istmete_arv )
sleep 2

if [ $mahajaetud_reisijate_arv -lt 1 ]; then
    echo "Hurraa! Ühtegi reisijat ei jää maha ja täidetud saab $taidetud_busside_arv bussi"
    exit 1
fi

echo "$taidetud_busside_arv bussi saaks täielikult täidetud, $mahajaetud_reisijate_arv reisijat jääks maha."
