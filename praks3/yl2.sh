#!/bin/bash
# Skript küsib koka käest aluskandiku ja küpsise suurust, mitme kihilist torti nad soovivad teha ja mitu küpsist on ühes pakis ning annab kokale teada, mitu küpsise pakki neil oleks vaja tordi tegemiseks.

read -p "Sisesta aluskandiku pikkus sentimeetrites (näiteks 35) " kandiku_pikkus
read -p "Sisesta aluskandiku laius sentimeetrites (näiteks 35) " kandiku_laius
read -p "Sisesta küpsiste pikkus sentimeetrites (näiteks 3) " kupsise_pikkus
read -p "Sisesta küpsiste laius sentimeetrites (näiteks 3) " kupsise_laius
read -p "Mitme kihilist torti soovid? (näiteks 4) " tordi_kihid
read -p "Mitu küpsist on ühes pakis? (näiteks 20) " kupsised_pakis

echo "Kandik on $kandiku_laius x $kandiku_pikkus cm, üks küpsis on $kupsise_laius x $kupsise_laius cm, soovid $tordi_kihid kihti. Ühes küpsise pakis on $kupsised_pakis küpsist."

# Mitu küpsist mahub tordi sisse? 
kandiku_pindala=$( expr $kandiku_pikkus \* $kandiku_laius )
kupsise_pindala=$( expr $kupsise_pikkus \* $kupsise_laius )
tordi_pindala=$( expr $kandiku_pindala \* $tordi_kihid )

kupsiste_arv_tordis=$( expr $tordi_pindala / $kupsise_pindala)
echo "Küpsiseid läheb kokku $kupsiste_arv_tordis"
pakkide_arv=$( expr $kupsiste_arv_tordis / $kupsised_pakis )

jaak=$( expr $kupsiste_arv_tordis % $kupsised_pakis )

# Siin kontrollime, kas küpsiseid jääb üle (mitte terve pakk)
if [ $jaak -ne 0 ]; then
    pakkide_arv=$( expr $pakkide_arv + 1 )
fi

sleep 2
echo "Lõpp tulemus: Selle tordi valmistamiseks on vaja kokku $pakkide_arv pakki!"
