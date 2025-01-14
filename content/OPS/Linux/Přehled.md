## Historie
- ### 1970
	- UNIX *(Multics-Unics-Unix)*
		- Bell Laboratories
		- AT&T
		- Jazyk C (Dennis Ritchie, Ken Thompson)
## UNIX
- ### UNIX like
	- splňují standard POSIX *(Portable Operating System Interface)*
		- [POSIX webpage](https://posix.opengroup.org/)
	- větev BSD UNIX
		- FreeBSD
		- SunOS
		- MAC OS X
		- LINUX
		- NeXTStep
- ### UNIX
	- splňují standard SUS *(Single Unix Specification)*
		- [SUS webpage](https://unix.org/version3/)
	- větev System v UNIX
		- Novell
		- HP UIX
		- AIX
		- Solaris
		- SCO UNIX
## Architektura Linux a jeho distribuce
- ### Linuxová distribuce obsahuje
	- **Linux *(jádro)***
	- **Instalátor**
	- **Detektor HW**
	- **Systémové knihovny**
	- **Konfigurační nástroje**
	- **Grafické prostředí**
		- Skládá se z
			- #### X Window system *(X11)*
				- vytváří GUI
				- má za úkol zobrazovat prvky na obrazovce
			- #### Widget toolkit
				- sada nástrojů pro tvorbu GUI
				- Zahrnuje prvky jako tlačítka, okna, nabídky, textová pole,...
			- Window manager
		- Existují 2D před konfigurovaná GUI
			- CDE
			- KDE
			- GNOME
			- CINNAMON
			- MATE
			- LXDE
			- XFCE
		- Existují 3D před konfigurovaná GUI
			- Compiz Fusion
			- Looking Glass
			- Croquet
	- **Aplikace**
	- **Dokumentaci**
- ### Linuxové distribuce
	- **Komerční**
		- RedHat
		- SuSe
		- RedHat Enterprise 
	- **Komunitní**
		- Debian
		- Ubuntu
		- Fedora
		- Mint
		- Manjaro
		- OpenSuSe
		- Arch
		- Kali
## Charakteristika Linuxu
- Unix like
- GNU/GPL licence
- Linux = jádro
- GNU/Linux = celý OS, jádro + všechno ostatní
- Linux Torvalds
- Vlastnosti
	- Linux tvoří malé, nenáročné programy příkazy, složitější úlohy se skládají z více jednoduchých
	- Propracovaná komunikace mezi procesy
	- Všechno je soubor
	- Běží na jakémkoli HW
	- Nenáročný na zdroje
	- Stabilní
## Boot systému
- ### GRUB *(Grand Unified Bootloader)*
	- #### Boot manager
		- Spravuje více operačních systémů.
		- Umožňuje uživateli vybrat jaký OS chce spustit
	- #### Boot loader
		- Zajišťuje načtení jádra operačního systému do paměti a předání řízení operačnímu systému při startu
## Souborový systém
- ### Typy souborových systémů
	- EXT2, EXT3, EXT4
		- Rodina souborových systému používána výhradně v Linuxu. EXT4 podporuje větší soubory a diskové oddíly, má lepší výkon a žurnálování
	- XFS
		- Výkonný žurnálovací souborový systém
	- JFS
		- vyvinut firmou IBM, optimalizovaný pro velké soubory a stabilitu
	- SMB
		- síťový souborový systém používaný k sdílení souborů a tiskáren přes sítě, nalezneme jej také ve Window prostředí
- ### Souborová struktura
	- Všechno v Linuxu je soubor
	- Linux má **stromovou strukturu** *(hierarchický sytém)*
		- Všem nadřazený je **adresář** root `/`, z něj se větví **podadresáře**, v těchto **adresářích** můžeme nalézt soubory
## Instalace SW
- SW se instaluje pomocí balíčků
- ### Balíček
	- soubor obsahující software a jeho náležitosti
	- Příkladem jsou balíčky s příponou `.deb` pro Debian nebo `.rpm` pro RedHat
- ### Repository
	- Je úložiště, kde jsou balíčky uložené a odkud si je může uživatel stáhnout
- ### Správce balíčků
	- Nástroj který automatizuje proces instalace, aktualizace, konfigurace a odstraňování softwarových balíčku
	- Příkladem je třeba `apt` pro Ubuntu, `dnf` pro Fedoru a `pacman` pro Arch.
- ### Správce software
	- Je uživatelský přívětivý software s GUI rozhraním který slouží k vyhledávání, instalaci, aktualizaci a odinstalaci aplikací balíčků.
	- Příkladem je třeba *GNOME Software* nebo *Ubuntu Software Center* 
## Shell
- Jedná se o interpret příkazů pro ovládání OS pomocí příkazů
- ### Příklady textových shellů
	- sh
	- csh
	- tcsh
	- ksh
	- bash
	- dash
	- zsh
- ### Příklady CLI aplikací
	- #### Midnight commander
		- Průzkumníku souborů s  rozhraním podobným "GUI"
	- #### Vim
		- Textový editor
	- #### curl
		- Nástroj pro přenos dat z nebo na server pomocí různých protokolů *(HTTP, FTP,...)*
	- #### wget
		- Nástroj pro stahování souborů z internetu