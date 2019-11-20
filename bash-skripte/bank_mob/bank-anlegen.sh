#!/bin/bash

KNR="$1"
KNRFile="$KNR.dat"
Name="$2"
Saldo="$3"

echo "$Name" > "$KNRFile" || exit
echo "$Saldo" >> "$KNRFile" || exit

echo "Neues Konto mit Nummer $KNR für $Name mit $Saldo € wurde angelegt."
