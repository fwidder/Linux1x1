#!/bin/bash

KNR="$1"
KNRFile="$1.dat"

rm -- "$KNRFile" || exit

echo "Konto wurde gelöscht"
