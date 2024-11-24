# Základní pojmy
- ## Ideální paměť
	- nekonečně velká
	- rychlá
	- levná
	- persistentní
- ## Správa paměti
	- Procesy potřebují paměť
	- OS potřebuje paměť
	- Paměť potřebuje ochranu:
		- Jádra OS před procesy
		- paměti procesů před ostatními procesy
		- Sdílení paměti mezi vlákny
		- Sdílení paměti mezi procesy (aniž by byla "vypnuta" ochrana paměti
- ## Typy paměti (obrázek)
	 ![[OPS/Memory Management/Attachments/Memory pyramid.png]]
# Logický a Fyzický adresní prostor
- ## Logický adresní prostor (LAS)
	- Generovaná CPU
	- = virtuální
	- Je množina všech logických adres generovaných programem.
- ## Fyzický adresní prostor (FAS)
	- Vlastní adresa paměťové jednotkou
	- Je množina všech fyzických adres generovaných programem.
- Logická (virtuální) adresa se ==váže== na fyzickou adresu
- Mapování LAS na FAS provádí hardwarové zařízení zvané jednotka pro správu paměti (MMU).
# Ochrana paměti
- Chrání jeden proces před druhým procesem
- Poskytována ==hardwarově==
- Zajištění paměťového prostoru každému procesu
	- Definuje se dvěma registry (obrázek): 
		1. **Base** - Obsahuje hodnotu ==nejmenší volné adresy fyzického prostoru==  ^d5c184
		2. **Limit** - Obsahuje celkovou velikost (limit) jak může být proces velký
	 ![[Memory Security.png]] ^aa8e64
- CPU porovnává každou adresu vygenerovanou v user modu s registry
	- Toto zabraňuje přístupu do ==paměti OS== nebo ==paměti ostatních uživatelů==
- Base a Limit adresy mohou být načteny pouze OS pomocí **speciální privilegovanou instrukcí**
# Kontinuální přidělování paměti
- Načte se proces, za něj se načítají další
- Když se proces ukončí -> vznikne díra, další proces se načte podle těchto pravidel:
- ## Memory allocation
	- Alokace paměti může být provedena rozdělením paměti na pevně dané oddíly. Procesy jsou zařazeny do fronty a přidělena jim je paměť v závislosti na jejich požadavcích a dostupném prostoru.
	- OS udržuje informace o dírách a alokovaných partitionech
	- ### First fit
		- OS načte proces do první díry co najde
	- ### Best fit
		- OS hledá díru v paměti co nejblíže velikost procesu
	- ### Worst fit
		- OS hledá díru v paměti která je největší
- ## Fragmentace (obrázek)
	- ### Externí fragmentace 
		- Nastává při odebraní procesu z paměti
		- Fragmentace **mezi** alokovanými oblastmi
		- Místa pro proces je dostatek, procesy ale nejsou kontinuální takže musí dojít ke [[#^519732|Kompakce]] nebo [[#Paging|Pagingu]]
	- ### Interní fragmentace 
		- Nastává, pokud je proces menší jak alokovaná oblast
		- Fragmentace **uvnitř** alokovaných oblastí
		- Předem definované alokované oblasti
	![[Memory fragmentation.png]]

- ## Kompakce ^519732
	- Spojuje všechny nealokované oblasti paměti do jednoho velkého bloku
# Segmentace
- Logický adresový prostor je kolekcí segmentů. Každý segment má název a délku. Adresy specifikují jak název segmentu, tak i offset v rámci segmentu. Programátor proto specifikuje každou adresu pomocí dvou veličin: názvu segmentu, respektive čísla a offsetu. 
- Logická adresa může tedy vypadat takto *<segment-number, offset>*
- *Překladač jazyka C může vytvářet samostatné segmenty pro následující:*
    1. Kód
    2. Globální proměnné
    3. Haldu, ze které je alokována paměť
    4. Zásobníky používané každým vláknem
    5. Standardní knihovnu jazyka C Knihovny, které jsou propojeny během překladu, mohou být přiřazeny samostatným segmentům. Nakladač pak vezme všechny tyto segmenty a přiřadí jim čísla segmentů.
- ## Segmentační hardware
	- Fyzická paměť je jednorozměrná na rozdíl od dvourozměrné virtuální *<segment-number, offset>*
	- Je potřeba mapovat LAP na FAP
	- Mapovaní se provádí pomocí segmentové tabulky
		- Každá položka v tabulce obsahuje *[[#^d5c184|base]]* a *[[#^aa8e64|limit]]*
		- Segmentové číslo slouží jako index tabulky, offset musí ==být v rozsahu 0 až limitu segmentu== -> není-li tak dojde k zachycení
# Paging
- Logická paměť je rozdělena na stránky stejné velikost
- Fyzická paměť je rozdělená na framy(rámce) ve stejné velikost jako stránky
- Page table obsahuje číslo stránky, číslo framu(rámce), valid/invalid bit
	- valid/invalid bit
- ## Paging hardware
	- Adresa generovaná CPU je rozdělená do dvou částí
		- číslo stránky - v tabulce jako index - váže se na frame
		- offset - offset ve stránce *(kde budou začínat data ve stránce)*
![[Paging - Příklad.png]]

# Demand Paging
- Stránky jsou načteny pouze tehdy, ==jsou-li zapotřebí==
- Lazy Swapper *(Pager)*
	- *Pokud se Swapper zabývá swapováním stránek tak se nazývá: Pager*
	- Swapuje stránky do paměti ==jsou-li zapotřebí==
	- Neswapuje stránky když nejsou potřeba
- ![[Demand Paging.png]]
- ## Page Fault
	- Nastává, když se proces snaží přistoupit ke stránce která není momentálně v paměti
	- ### Proces Page Faultu
		1. Proces se snaží přistoupit ke stránce která není načtená
		2. V page tabulce je stránka označena jako invalid
		3. Nastává page fault
		4. OS se snaží načíst stránku z *backing paměti* (disku) do paměti
		5. Najde se volný frame, do něj se data z page načtou
		6. Aktualizuje se page table (bit se změní na valid)
		7. Restartuje se instrukce která byla přerušena, proces můžu přistoupit ke stránce
	- ![[Page Fault.png]]

