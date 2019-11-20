#!/bin/bash

KNR="$1"
KNRFile="$KNR.dat"
SALDO=$(tail -1 "$KNRFile")
BETRAG="$2"

SALDO=$(( "SALDO" - "BETRAG" ))
echo "$SALDO" >> "$KNRFile" || exit

echo "Konto wurde bearbeitet"
