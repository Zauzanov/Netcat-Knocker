#!/bin/sh

TARGET="10.10.186.98"
PORTS="42 1337 10420 6969 63000"

echo "$PORTS" | tr ' ' '\n' | while read -r i
do 
    echo "Knocking on port $i"
    /usr/bin/nc -z -w1 "$TARGET" "$i"
    sleep 1
done
