- sada vodičů po kterých se přenášejí informace
- základní parametry
	- šířka
	- taktovací frekvence
	- propustnost *(taktovací frekvence x šířka)*
## Typy portů
### AGP
- rozdíl oproti sběrnici je ten že, na sběrnici lze připojit více zařízení, na port pouze jedno
- šířka 32 bitů
- taktovací frekvence 66 MHz
- AGP 2x, 4x, 8x
- 5 V a 3,3 V varianta
## Typy sběrnic
### ISA
- šířka 8 bitů *(později 16 bitová)*
- taktovací frekvence 8 MHz
### MBA
- šířka 16 bitů
- pouze v PC od IBM
### eISA
- šířka 32 bitová
- dvoupatrová
- zpětně kompatibilní s ISA
### VESA
- šířka 16 bitů *(později 32 bitová)*
- taktovací frekvence 50 MHz
- rychlá
- přímo napájená na procesor *(max 3 karty = 25MHz)*
### MCA
- *(jaksi tu nic nemám napsané)*
### PCI
- šířka 22 bitová
- taktovací frekvence 33 MHz *(možnost zvýšení na 66 MHZ)*
- od firmy INTEL
- PCI bridge *(integrován do north bridge)*
- plug-and-play
### PCIe
- taktovací frekvence 2,5 GHz
- sériová sběrnice
- duplexní
- 16 linek vedle sebe *(všechny jsou duplexní)*
- Typy PCIe
	- #### PCIe 1.1
	- #### PCIe 2.0
	- #### PCIe 3.0
	- #### PCIe 4.0
### USB
- malý konektor
- automatická detekce
- možnost připojení a odpojení za chodu
- možnost napájení
- až 127 zařízení
- Rychlosti USB
	- #### USB1 low speed
		- 1,5 Mb/s
	- #### USB1 high speed
		- 12 Mb/s
	- #### USB2 high speed
		- 480 Mb/s
	- #### USB3 super speed
		- 4,8 Gb/s
	- #### USB3.1
		- 10Gb/s
- USB HUB
	- pasivní *(rozbočování)*
	- aktivní *(rozbočování + napájení)*
- provádí kontrolu chyb  (CRC kód)
- 4 vodiče
	- 2 - napájení
	- 2 - data
- USB C
	- standard
	- symetrické
	- lepší kontakty
	- umožňuje větší proudový odběr
- firewire
	- sloužilo pro připojení digitálních kamer k PC
	- dosah až 100 m
	- 800 Mb/s