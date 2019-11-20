#!/bin/bash

KNR="$1"
KNRFile="$KNR.dat"

NAME=$(head -1 "$KNRFile") || exit
SALDO=$(tail -1 "$KNRFile") || exit

echo "Das Konto mit der Nummer $KNR gehört $NAME und hat das Saldo $SALDO"
