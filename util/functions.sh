#!/bin/bash

HELLO="Здравствуйте, уважаемые программисты. ь пойдет $ABOUT"
SUMMARY="Подведем итоги. "
GOODBYE="Спасибо за внимание. До новых встреч на js-invite!"

function message {
    dialog --msgbox "$1" 12 50
    clear
}

function hello {
    message "Здравствуйте, уважаемые программисты. Тема этого скринкаста - \"`pwd | sed -E 's/.*\. ([^0-9]+$)/\1/'`\"."
}

function goodbye {
    message "Подведем итоги. `cat README.md`"
    message "Исходный код подкаста вы можете найти по ссылке в описании.\n\nСпасибо за внимание. До новых встреч на js-invite!"
}

function intro {
    clear
    echo -e "\e[1m"
    echo -e "\e[5m"
    echo -e "\e[32m"
    cat ../util/logo.txt
    echo -e "\e[0m"
    echo
    echo
    echo
    sleep 5
    sl -l
    clear
}

function links {
    clear
    echo
    echo "Ссылка на исходники (см. в описании к видео): `cat .git/config | egrep -o 'http.*$'`"
    echo "Записаться на занятия по JavaScript: https://www.avito.ru/821481317"
    read
}
