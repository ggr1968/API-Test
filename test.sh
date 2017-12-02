#!/bin/bash


originale='https://autoremotejoaomgcd.appspot.com/sendnotification?key=APA91bHafxk3S4vkgKV7l_KN-G7RXODTjKmHolVBzNu9wGgp7iDzqy3W8WOJQyO2MJ2RrJqeISvVX8n_mWf1h8Jp7SKwECaSEBVFeSZ0YOtfkEALSfgVK3NNCUcLZHi2wF468Yszyvpj&title=Prova&text=Questo%20%C3%A8%20il%20testo%20della%20notifica'

url='https://autoremotejoaomgcd.appspot.com/sendnotification?key=APA91bHafxk3S4vkgKV7l_KN-G7RXODTjKmHolVBzNu9wGgp7iDzqy3W8WOJQyO2MJ2RrJqeISvVX8n_mWf1h8Jp7SKwECaSEBVFeSZ0YOtfkEALSfgVK3NNCUcLZHi2wF468Yszyvpj'

titolo='&title='$1
titolo=$(php -r 'echo urlencode("'$titolo'");')
echo $titolo
text=$2




