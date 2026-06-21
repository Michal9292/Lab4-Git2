#!/bin/bash

case "$1" in

--date)
    date
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