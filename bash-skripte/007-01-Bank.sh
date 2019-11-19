#!/bin/bash

case "$1" in
"oeffnen")
  shift
  ./007-02-Öffnen.sh $*
  ;;
"schliessen")
  shift
  ./007-03-Schliessen.sh $*
  ;;
"transfer")
  shift
  ./007-04-Transfer.sh $*
  ;;
"einzahlen")
  shift
  ./007-05-Einzahlen.sh $*
  ;;
"auszahlen")
  shift
  ./007-06-Auszahlen.sh $*
  ;;
"info")
  shift
  ./007-07-Info.sh $*
  ;;
*)
  echo "Die gewählte Funktion $1 existiert nicht!"
  echo "Verfügbar sind:"
  echo '  oeffnen FOLDER KNR NAME SALDO'
  echo '  schliessen FOLDER KNR'
  echo '  transfer FOLDER KNRVON KNRNACH BETRAG'
  echo '  einzahlen FOLDER KNR BETRAG'
  echo '  auszahlen FOLDER KNR BETRAG'
  echo '  info FOLDER KNR'
  exit 1
  ;;
esac

