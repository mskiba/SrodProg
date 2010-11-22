#!/bin/bash

if [ $# != 1 ]; then
	echo "Błędna liczba argumentów, przykład: $0 2"
	exit 1
elif [ ! -x genlogs.sh ]; then
	echo "Nie ma pliku genlogs.sh albo nie mogę go wykonać."
	exit 1
else
	./genlogs.sh "$1" | grep "ACTION: Make transfer for amount:" | sed 's/.*amount:\s\([0-9]*\.[0-9]*\)\s.*$/\1/g' | sort -n | tail -1
fi
