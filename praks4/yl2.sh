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

# Kui tuleb välja, et kõik reisijaid ei leia kohta bussidel, tellime ühe juurde.
if [ $mahajaetud_reisijate_arv -gt 0 ]; then
    taidetud_busside_arv=$( expr $taidetud_busside_arv + 1)
fi

echo "Kokku on vaja $taidetud_busside_arv bussi"
