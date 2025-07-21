#!/bin/sh

TARGET="192.168.204.129"
PORTS="42 1337 10420 6969 63000"

echo "$PORTS" | tr ' ' '\n' | while read -r i
do 
    echo "Knocking on port $i"
    /usr/bin/nc -z -w1 "$TARGET" "$i"
    sleep 1
done
