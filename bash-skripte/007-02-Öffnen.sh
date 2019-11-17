#!/bin/bash
WRKDIR=$1
KNR=$2
NAME=$3
SALDO=$4

echo "Neues Konto für $NAME mit Kontonummer $KNR und folgendem Salso $SALDO € erstellen? (ja/nein)"
read choise
if [ "$choise" = "ja" ]; then
  pushd $WRKDIR
  if test -f "$KNR"; then
    echo "Konto $KNR existiert schon!"
    exit 2
  fi
  echo $NAME >$KNR
  echo $SALDO >>$KNR
  echo Konto erstellt!
  exit 0
fi
echo "Vorgang abgebrochen!"
