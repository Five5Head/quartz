#!/bin/bash

read -p "Napište cestou k souboru: " OUTPUT_FILE

echo "Aktuální datum a čas: $(date)" > "$OUTPUT_FILE"

# Informace o přihlášeném uživateli
echo -e "\nInformace o přihlášeném uživateli:" >> "$OUTPUT_FILE"
echo "Uživatel: $(whoami)" >> "$OUTPUT_FILE"
echo "Přihlášeno: $(who)" >> "$OUTPUT_FILE"

# Systémové informace
echo -e "\nSystémové informace:" >> "$OUTPUT_FILE"
echo "Název systému: $(uname -s)" >> "$OUTPUT_FILE"
echo "Verze jádra: $(uname -r)" >> "$OUTPUT_FILE"
echo "Architektura: $(uname -m)" >> "$OUTPUT_FILE"
echo "Distro: $(lsb_release -a 2>/dev/null | grep 'Description' | awk -F: '{print $2}' | xargs)" >> "$OUTPUT_FILE"
echo "CPU: $(lscpu | grep 'Název modelu' | awk -F: '{print $2}' | xargs)" >> "$OUTPUT_FILE"
echo "RAM: $(free -h | grep 'Mem' | awk '{print $2}')" >> "$OUTPUT_FILE"

# Seznam vyhledávacích cest (PATH)
echo -e "\nSeznam vyhledávacích cest:" >> "$OUTPUT_FILE"
echo "$PATH" >> "$OUTPUT_FILE"

# Seznam a hodnoty systémových proměnných
echo -e "\nSystémové proměnné:" >> "$OUTPUT_FILE"
printenv >> "$OUTPUT_FILE"
