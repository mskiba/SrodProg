#!/bin/bash

echo -n "Ile jest 2+2 w systemie dziesiętnym? "
read WYNIK

if [ "$WYNIK" = '4' ]; then
	echo "Dobrze"
else
	echo "Źle"
fi
