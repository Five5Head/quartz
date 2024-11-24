#!/bin/bash

# Proměnné
USERNAME=$(whoami)
BASE_DIR="/home/scripts"
SCRIPT_DIR="$BASE_DIR/$USERNAME"

# Kontrola root práv a existence hlavního adresáře
if [[ $EUID -ne 0 ]]; then
    if [[ ! -d "$BASE_DIR" ]]; then
        echo "Chyba: Tento skript musí být spuštěn jako root, aby mohl vytvořit adresář $BASE_DIR."
        exit 1
    fi
else
    # Část pro root: Vytvoření adresáře a nastavení oprávnění
    echo "Spouštím část skriptu jako root..."
    mkdir -p "$BASE_DIR"
    chmod 777 "$BASE_DIR"
    echo "Adresář $BASE_DIR byl vytvořen a nastavena oprávnění RWX pro všechny."
    echo "Spusťte tento skript znovu jako běžný uživatel pro dokončení."
    exit 0
fi

# Část pro běžného uživatele
echo "Spouštím část skriptu jako běžný uživatel ($USERNAME)..."

# Kontrola, zda je nainstalován příkaz tree
if ! command -v tree &> /dev/null; then
    echo "Příkaz 'tree' není nainstalován. Chcete jej nainstalovat? (y/n)"
    read -r INSTALL_TREE
    if [[ "$INSTALL_TREE" == "y" || "$INSTALL_TREE" == "Y" ]]; then
        echo "Instaluji tree..."
        sudo apt-get install -y tree
        if [[ $? -eq 0 ]]; then
            echo "Program 'tree' byl úspěšně nainstalován."
        else
            echo "Instalace 'tree' selhala. Skript nebude pokračovat."
            exit 1
        fi
    else
        echo "Bez programu 'tree' nemůže skript pokračovat."
        exit 1
    fi
fi

# Vytvoření uživatelského podadresáře
mkdir -p "$SCRIPT_DIR"
chmod 700 "$SCRIPT_DIR"
echo "Adresář $SCRIPT_DIR byl vytvořen."

# Požádání o heslo pro sudo (ověření oprávnění)
echo "Pro výpis /etc adresáře je potřeba vyšších práv, zadejte heslo jste-li vyzvání"
sudo -v   # Požádá o heslo pro sudo, pokud není aktivní

# Pokud sudo nefunguje, ukončíme skript
if [[ $? -ne 0 ]]; then
    echo "Chyba: Tento skript vyžaduje sudo oprávnění pro přístup k některým souborům. Skript nebude pokračovat."
    exit 1
fi

# Vytvoření stromové struktury adresářů na disku /
echo "Vytvářím soubor tree.txt, tohle může chvíli trvat..."
sudo tree -d / > "$SCRIPT_DIR/tree.txt"  # Pouze adresáře

# Výpis skrytých souborů a jejich atributů
echo "Vytvářím soubor hidden.txt, tohle může chvíli trvat..."
HIDDEN_FILE="$SCRIPT_DIR/hidden.txt"
echo "== Strom adresářů (bez skrytých souborů) ==" > "$HIDDEN_FILE"
echo -e "\n== Skryté soubory ==" >> "$HIDDEN_FILE"
sudo find /etc -type f -name ".*" -exec ls -l {} \; >> "$HIDDEN_FILE"

echo "Soubory tree.txt a hidden.txt byly uloženy do $SCRIPT_DIR."