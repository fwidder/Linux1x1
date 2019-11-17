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

echo "Konto mit der Nummer $KNR von $NAME löschen? (ja/nein)"
read choise
if [ "$choise" = "ja" ]
then
  if [ $SALDO -eq 0 ]
  then
    echo "Lösche Konto $KNR!"
    rm $KNR
    exit 0
  fi
  echo "Konto kann nicht gelöscht werden! Es befinden sich noch $SALDO € auf dem Konto!"
  exit 2
fi
echo "Vorgang abgebrochen!"
