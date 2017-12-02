#!/bin/bash
host=$(hostname -s)
memoria=$(free -m -h | grep Mem | awk '{ print $7}')
data=`date '+%d-%m %H:%M:%S'`
titolo="Msg da $host. $data"
/home/ggranata/Script/S60_notification_autoremote.sh "$titolo" "Totale memoria disponibile: $memoria"
