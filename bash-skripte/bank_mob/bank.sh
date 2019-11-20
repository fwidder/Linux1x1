#!/bin/bash

case "$1" in
	"anlegen")
		shift
		./bank-anlegen.sh "$@"
	  ;;
	"aufloesen")
		shift
		./bank-aufloesen.sh "$@"
	  ;;
	"transfer")
		shift
		./bank-transfer.sh "$@"
	  ;;
	"einzahlen")
		shift
		./bank-einzahlen.sh "$@"
	  ;;
	"auszahlen")
		shift
		./bank-auszahlen.sh "$@"
	  ;;
	"info")
		shift
		./bank-info.sh "$@"
	  ;;
	*)
		echo "FEHLER $1 Ungueltig"
	  ;;
esac


