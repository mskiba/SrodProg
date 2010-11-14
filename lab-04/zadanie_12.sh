#!/bin/bash

WYLOSOWANA=`python -c "import random; print random.randrange(1,50);"`
echo "Losuję liczbę: $WYLOSOWANA"

echo -n "Podaj jakąś liczbę: "
read PODANA

if [ "$WYLOSOWANA" -gt "$PODANA" ]; then
	echo "Za mało."
elif [ "$WYLOSOWANA" -lt "$PODANA" ]; then
	echo "Za dużo."
else
	echo "Ok."
fi
