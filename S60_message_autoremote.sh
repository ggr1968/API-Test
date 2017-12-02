#!/bin/bash

urlencode() {
    # urlencode <string>
    old_lc_collate=$LC_COLLATE
    LC_COLLATE=C

    local length="${#1}"
    for (( i = 0; i < length; i++ )); do
        local c="${1:i:1}"
        case $c in
            [a-zA-Z0-9.~_-]) printf "$c" ;;
            *) printf '%%%02X' "'$c" ;;
        esac
    done

    LC_COLLATE=$old_lc_collate
}


urldecode() {
    # urldecode <string>

    local url_encoded="${1//+/ }"
    printf '%b' "${url_encoded//%/\\x}"
}


baseurl="https://autoremotejoaomgcd.appspot.com/sendmessage?key=APA91bHafxk3S4vkgKV7l_KN-G7RXODTjKmHolVBzNu9wGgp7iDzqy3W8WOJQyO2MJ2RrJqeISvVX8n_mWf1h8Jp7SKwECaSEBVFeSZ0YOtfkEALSfgVK3NNCUcLZHi2wF468Yszyvpj&message="
testo=$(urlencode "$1")
echo $testo
curl $baseurl$testo
