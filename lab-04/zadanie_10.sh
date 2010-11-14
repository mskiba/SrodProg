#!/bin/bash
echo -n "Podaj tekst do testowania: "
read TEKST

echo -n "Podaj wyrażenie regularne: "
read WYRAZENIE

echo -n "Podaj tekst zastępujący: "
read ZASTEPUJACY

echo Wynik: `echo "$TEKST" | sed -e "s/$WYRAZENIE/$ZASTEPUJACY/"`
