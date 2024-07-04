#!/bin/bash

case "$1" in
  --date | -d)
    date
    ;;
  --logs | -l)
    num_files=${2:-100}
    for ((i=1; i<=num_files; i++)); do
      echo "Log file $i, created by $0 on $(date)" > "log$i.txt"
    done
    ;;
  --help | -h)
    echo "--date (-d): wyswietla dzisiejsza date"
    echo "--logs (-l)  [ilosc]: tworzy x liczbe plików log"
    echo "--help (-h): wyświetla pomoc"
    ;;
  *)
    echo "Nieznana opcja. Uzyj --help lub -h aby zobaczyc dostepne opcje."
    ;;
esac
