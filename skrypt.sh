#!/bin/bash

case "$1" in

--date|-d)
    date
    ;;

--logs|-l)

    count=${2:-100}

    for ((i=1;i<=count;i++))
    do
        file="log$i.txt"

        echo "Nazwa pliku: $file" > "$file"
        echo "Skrypt: skrypt.sh" >> "$file"
        echo "Data: $(date)" >> "$file"
    done

    ;;

--help|-h)

    echo "Dostępne opcje:"
    echo "--date  -d"
    echo "--logs  -l"
    echo "--help  -h"

    ;;

*)

    echo "Nieznana opcja"

    ;;

esac