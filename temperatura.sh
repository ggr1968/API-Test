#!/bin/bash

# Imposta i valori che verranno utiizzati per l'invio messaggio
host=$(hostname -s)
data=`date '+%d-%m   %H:%M'`
titolo="Msg da $host. $data"


# Leggo le vecchia temperatura per evitare invii multipli
# Se la temperatura sarà uguale alle precedente non verrà
# inviato il messaggio al telefono.

read old_temp < old_temp.txt
#echo "La vecchia temperatura è $old_temp"
touch giroalle.semaforo


# Raccoglie la temperatura dal comando inxi e rimuove il primo
# carattere della stringa risultante che contiente "("
temperatura=$(inxi -w | awk '{print $6}')
temperatura=$(echo ${temperatura:1})

#echo "Temperatura attuale $temperatura"

if [ $temperatura -lt 5 ] && [ $temperatura -ne $old_temp ]
then
/home/ggranata/Script/S60_notification_autoremote.sh "$titolo" "Attenti al ghiaccio. Temperatura=$temperatura"
echo $temperatura > old_temp.txt
touch cambioalle.semaforo
fi
