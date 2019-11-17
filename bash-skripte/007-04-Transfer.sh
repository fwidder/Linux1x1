#!/bin/bash
WRKDIR=$1
KNRSender=$2
KNREmpfaenger=$3
BETRAG=$4

pushd $WRKDIR
if ! test -f "$KNRSender"; then
  echo "Konto $KNRSender existiert nicht!"
  exit 2
fi
if ! test -f "$KNREmpfaenger"; then
  echo "Konto $KNREmpfaenger existiert nicht!"
  exit 2
fi

NAMESender="$(cat $KNRSender | head -n1)"
NAMEEmpfaenger="$(cat $KNREmpfaenger | head -n1)"

popd

echo "Möchten sie $BETRAG € auf von $NAMESender (KNR $KNRSender) an $NAMEEmpfaenger (KNR $KNREmpfaenger) überweisen? (ja/nein)"
read choise
if [ "$choise" = "ja" ]; then

  ./007-06-Auszahlen.sh $WRKDIR $KNRSender $BETRAG
  ./007-05-Einzahlen.sh $WRKDIR $KNREmpfaenger $BETRAG
  exit 0
fi
echo "Vorgang abgebrochen!"
