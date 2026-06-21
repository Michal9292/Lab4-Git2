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

    echo "--date"
    echo "--logs"
    echo "--help"

    ;;

*)

    echo "Nieznana opcja"

    ;;
esac