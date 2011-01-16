#!/bin/bash

rm -fr zadanie_15.html

echo "Zawartość katalogu `pwd`" | markdown >> zadanie_15.html
ls -p | cat -b | sed 's/ *\([0-9]\+\)\t/\1. /;s/^\(.*\) \(.*\)\//\1 **\2**/' | markdown >> zadanie_15.html
