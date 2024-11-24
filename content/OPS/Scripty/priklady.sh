#!/bin/bash

# Název souboru se vstupními příklady
input_file="priklady.txt"
temp_file="temp_priklady.txt"

# Vytvoříme dočasný soubor pro zápis výsledků
cat "$input_file" > "$temp_file"

# Přečteme každý řádek ze souboru
printf  "\nVypočítané příklady\n" >> "$input_file"
while IFS= read -r line
do
    # Použijeme bc (basic calculator) pro výpočet výsledku
    result=$(echo "$line" | bc)
    
    # Vytiskneme celý příklad s výsledkem
    echo "$line=$result"
    
    # Uložíme výsledek do dočasného souboru
    echo "$line=$result" >> "$input_file"
done < "$temp_file"

# Odstraníme dočasný soubor
rm "$temp_file"
