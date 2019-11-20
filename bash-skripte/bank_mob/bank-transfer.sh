#!/bin/bash

KNR1="$1"
KNR1File="$KNR1.dat"
SALDO1="$(tail -1 $KNR1File)"
BETRAG="$2"
KNR2="$3"
KNR2File="$KNR2.dat"
SALDO2="$(tail -1 $KNR2File)"

SALDO2=$(( "SALDO2" + "BETRAG" ))
SALDO1=$(( "SALDO1" - "BETRAG" ))

echo "$SALDO2" >> "$KNR2File" || exit
echo "$SALDO1" >> "$KNR1File" || exit

echo "Es wurden $BETRAG Euro von $KNR1 auf $KNR2 transferiert"
