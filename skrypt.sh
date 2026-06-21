#!/bin/bash

case "$1" in

--date)
    date
    ;;

--logs)

    count=${2:-100}

    for ((i=1;i<=count;i++))
    do
        file="log$i.txt"

        echo "Nazwa pliku: $file" > "$file"
        echo "Skrypt: skrypt.sh" >> "$file"
        echo "Data: $(date)" >> "$file"
    done

    ;;

--help)

    echo "Dostępne opcje:"
    echo "--date  - wyświetla aktualną datę"
    echo "--logs  - tworzy 100 plików log"
    echo "--logs X - tworzy X plików log"
    echo "--help  - wyświetla pomoc"

    ;;

*)

    echo "Nieznana opcja"

    ;;

esac