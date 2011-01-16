#!/bin/bash

rm -fr zadanie_14.html

echo "Zawartość katalogu `pwd`" | markdown >> zadanie_14.html 
ls | cat -b | sed 's/ *\([0-9]\+\)\t/\1. /' | markdown >> zadanie_14.html
