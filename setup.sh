#!/bin/bash

print_color() {
    local color=$1
    local text=$2
    case $color in
        "red") echo -e "\e[31m$text\e[0m" ;;
        "green") echo -e "\e[32m$text\e[0m" ;;
        "yellow") echo -e "\e[33m$text\e[0m" ;;
        "blue") echo -e "\e[34m$text\e[0m" ;;
        *) echo "$text" ;;
    esac
}

print_color "blue" "Aggiornamento dei pacchetti..."
pkg update -y
print_color "green" "Aggiornamento dei pacchetti completato."

print_color "blue" "Upgrade dei pacchetti..."
pkg upgrade -y
print_color "green" "Upgrade dei pacchetti completato."

print_color "blue" "Installazione di git..."
pkg install git -y
print_color "green" "Installazione di git completata."

print_color "blue" "Installazione di Python..."
pkg install python -y
print_color "green" "Installazione di Python completata."
