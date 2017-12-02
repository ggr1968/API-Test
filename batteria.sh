#!/bin/bash
batteria=$(/usr/bin/inxi -B | awk '{print $7}')

#Questo comando rimuove le ultime tre lettere dalla variabile $batteria
batteria=${batteria::-3}
echo $batteria
