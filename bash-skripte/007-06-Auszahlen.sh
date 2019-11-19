#!/bin/bash
WRKDIR=$1
KNR=$2
BETRAG=$3

pushd $WRKDIR
if ! test -f "$KNR"; then
  echo "Konto $KNR existiert nicht!"
  exit 2
fi

NAME="$(cat $KNR | head -n1)"
SALDO="$(cat $KNR | tail -n1)"

if [ "$4" = "FORCE" ]; then
  SALDO=$(($SALDO - $BETRAG))
  echo $NAME >$KNR
  echo $SALDO >>$KNR
  exit 0
fi

echo "$BETRAG von Konto $KNR von $NAME auszahlen? (ja/nein)"
read choise
if [ "$choise" = "ja" ]; then
  SALDO=$(($SALDO - $BETRAG))
  echo $NAME >$KNR
  echo $SALDO >>$KNR
  echo Der neue Kontostand beträgt nun $SALDO!
  exit 0
fi
echo "Vorgang abgebrochen!"
