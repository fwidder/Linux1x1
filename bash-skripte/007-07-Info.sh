#!/bin/bash
WRKDIR=$1
KNR=$2

pushd $WRKDIR
if ! test -f "$KNR"; then
    echo "Konto $KNR existiert nicht!"
    exit 2
fi

NAME="$(cat $KNR | head -n1)"
SALDO="$(cat $KNR | tail -n1)"

echo "Das Konto $KNR gehört $NAME. Der Salo beträgt $SALDO."
