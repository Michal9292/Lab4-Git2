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

--error|-e)

    count=${2:-100}

    for ((i=1;i<=count;i++))
    do
        mkdir -p "error$i"

        echo "Error file $i" > "error$i/error$i.txt"
    done

    ;;

--init)

    git clone $(git config --get remote.origin.url)

    ;;

--help|-h)

    echo "Dostępne opcje:"
    echo "--date  (-d)"
    echo "--logs  (-l) [liczba]"
    echo "--error (-e) [liczba]"
    echo "--init"
    echo "--help  (-h)"

    ;;

*)

    echo "Nieznana opcja"

    ;;

esac