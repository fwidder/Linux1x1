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
    exit 1
    ;;
esac