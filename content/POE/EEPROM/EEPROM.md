- energeticky ==nezávislá== paměť
- až 100 000 zápisů
- kapacita 4kB
- organizace 4k x 8B
- pro práci s pamětí slouží tři registry
	- ### Adresový registr
		- 12 bitů
	- ### Datový registr
	- ### Řídící registr![[EEPROM - Řídící registr.svg]]
		- #### 7-6. bit je nevyužitý
		- #### 5-4. bit EEPM1-EEPM0 
			- slouží pro výběr operace
				- 00 = výmaz a zápis
				- 01 = výmaz
				- 10 = zápis
				- 11 = není využita
		- #### 3. bit 3 EERIE
			- povolení přerušení
		- #### 2. bit EEMPE
			- master bit pro zápis
			- slouží jako ochrana proti nežádoucímu zápisu
			- musí být nastaven před žádostí o zápis
			- po 4 strojových cyklech se automaticky vymaže
		- #### 1. bit EEPE
			- žádost o zápis
		- #### 0. bit EERE
			- čtení z paměti EEPROM
			- při čtení z paměti se procesor na 4 strojovým cyklu zastaví





 

