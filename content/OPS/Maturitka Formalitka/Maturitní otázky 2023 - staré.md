
> [!todo] Upravit/Rozšířit
> - Správa paměti
> 	- Proč potřebujeme řešit ochranu paměti? Vysvětli princip, jak ochrana paměti funguje.
> - Přidělování paměti 
> 	- Metody přidělování paměti
> 	- Virtuální paměť

## Funkce a typy operačních systémů

>[!question] Otázka
>### Definice a funkce operačních systémů
>- Definuj operační systém výpočetního systému s využitím pojmů
>	- Výpočetní systém
>	- Fyzické prostředky výpočetního systému
>	- Logické prostředky výpočetního systému

> [!success]- Odpověď
> - **Výpočetní systém**
> 	- Skládá se z hardware *(fyz. prostředků)* a softwaru *(log. prostředků)*, tyto společně umožňují provádění výpočtů, zpracování dat atd.
> - **Fyzické prostředky výpočetního systému**
> 	- Zahrnují veškerý HW, který tvoří výpočetní systém. *(RAM, CPU, SSD disk, HDD disk)*, dále zde také patří I/O *(klávesnice, myš, monitor, tiskárna)*
> - **Logické prostředky výpočetního systému**
> 	- Zde spadá veškerý software který tvoří výpočetní systém. Mezi hlavní prostředky patří samotný operační systém, ten zajišťuje správu paměti, řízení procesů, správu souborů, I/Os. Dále zde spadají uživatelské programy, pro jejichž fungování je potřeba OS.

>[!question] Otázka
>### Definice a funkce operačních systémů
>- Vysvětli funkce operačního systému
>	- Z hlediska hardware
>	- Z hlediska aplikací
>	- Z hlediska programátora
>	- Z hlediska uživatele

> [!success]- Odpověď
> - **Zjednodušeně**
> 	- správa paměti
> 	- správa procesů
> 	- správa uživatelů
> 	- správa periferií
> 	- správa systému
> 	- správa souborů
> 	- poskytuje uživatelské rozhraní
> 	- poskytuje aplikační rozhraní
> - **Z hlediska hardware**
> 	- Operační systém spravuje
> 		- #### procesy
> 			- monitoruje procesy
> 			- určuje prioritu procesům
> 			- přiděluje/odebírá zdroje procesům
> 			- umožňuje mezi-procesovou komunikaci
> 			- eviduje procesy
> 		- #### paměť
> 			- defragmentuje paměť
> 			- přiřazuje/odebírá procesům paměť
> 			- spravuje virtuální paměť
> 			- spravuje vnitřní paměť
> 			- zabezpečuje paměť
> 			- umožňuje procesům sdílet paměť
> 		- #### periferie
> 			- přiřazuje/odebírá procesům přístup k I/Os
> 			- spravuje I/Os
> 			- řeší kolize
> 			- řeší přerušení
> 			- monitoruje stavy periferii
> 		- #### uložiště
> 			- spravuje soubory a souborové systémy
> 			- organizuje data
> - **Z hlediska aplikací**
> 	- Operační sytému spravuje
> 		- #### API
> 			- slouží aplikacím pro komunikaci s HW výpočetního systému *(práce s uložištěm, pamětí, vytváření dceřiných procesů,...)*
> 		- #### uživatelské rozhraní
> 			- GUI
> 			- CLI
> - **Z hlediska programátora**
> 	- Operační sytému spravuje
> 		- #### knihovny a API
> 			- slouží pro jednoduššímu přístup k HW výpočetního systému a správě systémových prostředků
> - **Z hlediska uživatele**
> 	- Operační sytému spravuje
> 		- #### uživatelské účty
> 		- #### uživatelské soubory
> 		- #### uživatelem spuštěné procesy

>[!question] Otázka
>### Typy operačních sytému
>- Rozděl operační systém podle následujících kritérii a uváděj konkrétní příklady operačních sytémů
>	- Podle počtu procesorů
>	- Podle počtu uživatelů
>	- Podle počtu spuštěných programů
>	- Podle uživatelského rozraní
>	- Podle role v počítačové síti
>	- Realtime operační systémy

> [!success]- Odpověď
> - **Podle počtu procesorů**
> 	- #### Jednoprocesorové
> 		- všechny procesy běží na jednom procesoru
> 		- vždy může běžet pouze jeden proces
> 	- #### Víceprocesorové
> 		- ##### SMP *(symetrický multiprocessing)*
> 			- procesy můžou běžet na jakémkoli procesoru. protože mají stejná práva přístupu k systémovým prostředkům
> 			- procesy jsou dynamicky přidělovány procesorům, tak aby se zátěž rozdělila na všechny procesory *(grafické zpracování - GPU, složité výpočty - CPU)*
> 		- ##### ASMP *(asymetrický multiprocessing)*
> 			- využívá se zde více procesorů, které mají různé odpovědnosti
> 			- jeden procesor je vyhrazen pouze na systémové procesy *(master procesor)*
> 			- další procesor může být vyhrazen na uživatelské procesy *(slave procesor)*
> 		- ##### NUMA (non uniform memory access)
> 			- paměť je rozdělena na uzly 
> 				- uzel je paměťovou sběrnicí pro jeden nebo více procesorů
> 			- Smyslem je škálovatelnost, zefektivnění komunikaci procesu a paměti
> - **Podle počtu uživatelů**
> 	- #### Jednouživatelské
> 		- DOS
> 		- WIN s DOS jádrem
> 	- #### Víceuživatelské
> 		- UNIX
> 		- LINUX
> 		- WIN s NT jádrem
> - **Podle počtu spuštěných programů**
> 	- #### Jedno úlohové
> 		- DOS
> 		- WIN s DOS jádrem
> 	- #### Víceúlohové
> 		- UNIX
> 		- LINUX
> 		- WIN s NT jádrem
> - **Podle uživatelského rozraní**
> - **Podle role v počítačové síti**
> 	- #### Desktopové OS
> 	- #### Serverové OS
> - **Realtime operační systémy**

---
## Struktura operačních systémů

> [!question] Otázka
> ### Architektura operačních systémů
> - Charakterizuj architektury operačních systémů, popisuj rozdíly, aplikuj na architekturu Windows 10 nebo GNU/Linux
> 	- Monolitická
> 	- Mikrokernel
> 	- Hybridní
> 	- Vrstvená
> 	- *Modulární (není v otázkách, ale je v mind mapě)*

> [!success]- Odpověď
> - **Monolitická**
> 	- Je nejjednodušší struktura
> 	- Skládá se z jádra a rozhraní, které zprostředkovává komunikaci mezi jádrem a okolím
> 	- Samotné jádro je představováno **jedním souborem**, funkcionalita je dále rozšířena pomocí knihoven
> 	- všechno běží v **režimu jádra** *(kernelu)*
> 	- nevýhodou je **nestabilnost**, jakákoli chyba může způsobit pád celého OS
> 	- výhodou je **rychlost**
> 	- ##### Příklady OS
> 		- MS DOS
> 		- původní UNIX
> - **Mikrokernel**
> 	- Jádro obsahuje pouze některé základní funkce, ostatní komponenty běží v **user modu**
> 	- **nevýhodou** je nutnost používání API, toto systém výrazně zpomaluje
> 	- výhodou je **vyšší stabilita** *(v porovnání s monolitickým)*, vyskytne-li se chyba nemusí to nutně znamenat selhání celého OS
> 	- architektura má také menší náklady na programátorské schopnosti, kvůli její stabilitě
> 	- ##### Příklady OS
> 		- HURD
> 		- MACH
> 		- *OS X (není tak úplně správně, ale je to v mind mapě -_-)*
> - **Hybridní**
> 	- kombinace monolitické a microkernel architektury
> 	- využívá se nejvíce
> 	- ##### Příklady OS
> 		- WIN s NT jádrem
> 		- GNU/Linux
> - **Vrstvená**
> 	- části sytému jsou uspořádány do vrstev
> 	- jednotlivé vrstvy využívají služeb nižších vrstev ne naopak
> 	- Systém je budován od vnitřních vrstev k vnějším *(vnitřní vrstvy jsou nejdůležitější)*
> 	- ##### Příklady OS
> - Modulární
> 	- Jádro poskytuje **základní** služby
> 	- **výhodou** oproti mikrokernelu je že rozšiřující knihovny *(moduly)* se stávají součástí jádra
> 	- Knihovny *(moduly)* jsou do jádra načteny po startu nebo při běhu
> 	- ##### Příklady OS
> 		- Solaris
> 		- Linux
> 		- MAC OS X
> 		- WIN

> [!question] Otázka
> ### Bezpečnostní okruhy procesoru a struktura operačního systému
> - Vysvětli bezpečnostní okruhy procesoru a souvislosti s architekturou operačních systémů
> 	- Kernel mód operačního systému
> 	- User mód operačního systému
> 	- Bezpečnostní okruhy procesoru, hypervisor a operační systémy v případě virtualizace

> [!success]- Odpověď
> - **Režimy běhu procesů**
> 	- Toto dělení je z důvodu bezpečnosti OS, procesy běžící v uživatelské režimu nemají možnost jakkoliv zasahovat do privilegované části
> 	- #### Kernel mód operačního systému *(privilegovaný režim)*
> 		- v tomto režimu běží procesy jádra OS
> 	- #### User mód operačního systému *(uživatelský režim)*
> 		- v tomto režimu běží uživatelské procesy *(aplikace)*
> - **Bezpečnostní okruhy procesoru, hypervisor a operační systémy v případě virtualizace**
> 	- rozeznáváme **4 bezpečnostní okruhy** *(RING 0-3)*, každý proces běží v režimu některého z těchto okruhů a určuje, zda má nějaký proces přístup k jinému okruhu.
> 	- #### RING 0
> 		- Slouží pro jádro systému a systémové procesy
> 		- Běží zde hypervisor který slouží pro virtualizaci
> 	- #### RING 1-2
> 		- Slouží pro virtualizaci, zde běží jádro virtualizovaného OS
> 	- #### RING 3
> 		- Slouží pro user mode

---
## Správa paměti

> [!question]
> ### Správa paměti
> - Proč potřebujeme spravovat paměť
> - Vysvětli začlenění správce paměti do architektury operačního systému a vysvětli funkce správce paměti.
> - Jak správce paměti adresuje paměť? K vysvětlení použij pojmy LAP, FAP, překlad adres.
> - Proč potřebujeme řešit ochranu paměti? Vysvětli princip, jak ochrana paměti funguje.

> [!success]- Odpověď
> - **Proč potřebujeme spravovat paměť**
> 	- #### Ideální paměť by měla mít tyto vlastnosti
> 		- nekonečně velká
> 		- rychlá
> 		- levná
> 		- persistentní
> 	- #### Paměti bohužel ideální nejsou a proto potřebujeme paměť spravovat
> 		- ##### Procesy potřebují paměť
> 		- ##### OS potřebuje paměť
> 		- ##### Paměť potřebuje ochranu
> 			- Jádra Os před procesy
> 			- Paměti procesu před ostatními procesy
> 			- Sdílení paměti mezi vlákny
> 			- Sdílení paměti mezi procesy
> - **Vysvětli začlenění správce paměti do architektury operačního systému a vysvětli funkce správce paměti.**
> 	- #### správce paměti *(MMU - memory management unit)* má za úkol
> 		- ##### Přidělovat operační paměť jednotlivým procesům
> 		- ##### Udržovat informace o paměti, o tom, které část je volná a která přidělená
> 		- ##### Zařezovat paměť, kterou procesy uvolní, opět do volné části.
> 		- ##### Odebírat paměť procesům *(je-li to zapotřebí)*
> 		- ##### Zajistit ochranu paměti
> 			- **Žádný** procesy by neměl mít přístup k paměti jestliže mu to vlastník paměti nepovolí
> 		- ##### Relokaci paměti
> 			- Dynamicky přiděluje procesu jinou oblast paměti*(swapping)*
> 			- Překládá adresu LAP *(logický adresový prostor)* na FAP *(fyzický adresový prostor)*
> - **Jak správce paměti adresuje paměť? K vysvětlení použij pojmy LAP, FAP, překlad adres.**
> 	- K adresování paměti se využívá tzv. **překlad adres / stránkování paměti**
> 	- #### Lineární paměť (LAP)
> 		- Je rozdělena na **stránky** o velikosti **4KB**, tomu odpovídá o velikost **rámce** *(frame)* v FAPu
> 		- Adresa ***(0x00004AC6)*** v této paměti se skládá z
> 			- čísla stránky ***(0x00004)***
> 			- offsetu ***(velikost 12 bitů pro 4KB stránku, 0xAC6= 2758 bytů)***
> 	- #### Fyzická paměť (FAP)
> 		- Je rozdělena na **rámce** *(frame)* o stejné velikosti jako **stránky**, tedy **4KB**
> 		- Existuje stránkovací tabulka která se používá k překladu **čísla stránky** na **číslo rámce** *(WIN - pagefile.sys, LINUX - swap partition)*
> 	- při překladu adres zůstává offset stejný, mění se pouze číslo stránky *(stránkovací tabulka)*
> 	- důležitou roli zde hraje také řídící bity
> 		- ##### Bit přítomnosti *(Present bit)*
> 		- ##### Bit pro čtení/zápis *(Read/Write bit)*
> 		- ##### Bit uživatele/systému *(User/Supervisor bit)*
> 		- ##### Bit přístupnosti *(Access bit)*
> 		- ##### Bit špinavé stránky *(Dirty bit)*
> 		- ##### Bit stránkovacího vyrovnávacího zámku *(Page Cache Disable bit)*
> 		- ##### Bit pro psaní *(Write Through bit)*
> 	-  #### Ilustrační obrázek
> - **Proč potřebujeme řešit ochranu paměti? Vysvětli princip, jak ochrana paměti funguje.**
> 	- #### Paměť potřebujeme chránit z těchto důvodů
> 		- ##### Izolace procesů 
> 			- procesy nemají přistup do paměti jiných procesů bez povolení
> 		- ##### Zabezpečení 
> 			- uživatelské procesy nemají přístup k systémovým procesům
> 		- ##### Stabilita systému
> 			- přístup k neexistující adrese neovlivní stabilitu systému
> 	- #### Jak ochrana paměti funguje
> 		- Ochrana paměti je realizována pomocí několika mechanismů
> 		- ##### Stránkovací tabulka a řídící bity
> 		- ##### Segmentace
> 		- ##### AAA *(Authentication Authorization Accounting)*
> 		- ##### Výpadky stránek (Page Fault Handling)

> [!question]
> ### Paměť výpočetního sytému
> - Co všechno je vy výpočetním systému paměť?
> - Rozděl paměti podle rychlosti přístupu, kapacity, ceny, energetické závislosti

> [!success]- Odpověď
> - **Co všechno je vy výpočetním systému paměť?**
> 	- #### Registry
> 	- #### Cache
> 	- #### Hlavní paměť *(RAM)*
> 	- #### SSD, HDD
> 	- #### vnější paměť *(disk, flash disk)*
> 	- #### zálohovací paměť (CD, DVD, magnetické pásky)
> - **Rozděl paměti podle rychlosti přístupu, kapacity, ceny, energetické závislosti**
> 	- #### Ilustrační obrázek![[OPS/Memory Management/Attachments/Memory pyramid.png]]

---
## Správa procesů

> [!question] Otázka
> ### Procesy v operačním systému
> - Vysvětli, co je to proces a jak se liší od programu.
> - Jakými stavy prochází proces v rámci svého životního cyklu a které události způsobují změnu stavu procesu? V jakých frontách může proces čekat na své další zpracování?
> - Jakou datovou strukturu o procesech udržuje OS? Co tato datová struktura obsahuje a k čemu všemu se používá?
> - Jak se liší CPU Bound, I/O Bound procesy?
> - Jaké typy plánovačů jsou použity pro plánování procesů a co je jejich úkolem?

> [!success]- Odpověď
> - **Vysvětli, co je to proces a jak se liší od programu.**
> 	- #### Proces
> 		- jakýkoliv program který je aktuálně vykonáván operačním systémem
> 	- #### Program
> 		- je soubor instrukcí uložený na disku, ten obsahuje kód, data a další informace potřebné k vykonání úkolu
> 	- Program je na rozdíl od procesu **pasivní**, samotný nevykonává žádnou činnost, dokud není načten a spuštěn operačním systémem jako proces
> - **Jakými stavy prochází proces v rámci svého životního cyklu a které události stavu procesu?**
> 	- #### NEW
> 		- do tohoto stavu se proces dostane při vytvoření
> 	- #### READY
> 		- do tohoto stavu se proces dostane po vytvoření (**NEW**), při ukončení čekání na I/O, tedy ze stavu **WAITING**, nebo při přerušení ze stavu **RUNNING**
> 		- je-li proces v tomto stavu, nachází se **načtený** v paměti RAM
> 		- event který je volán při přesunu procesu do stavu **NEW** ze stavu **READY** je: **admitted**
> 	- #### RUNNING
> 		- do tohoto stavu se proces dostane jakmile prošel stavem **READY**
> 		- je-li proces v tomto stavu, je mu přiděleno místo na CPU a proces je **vykonáván**
> 		- event který je volán při přesunu procesu do stavu **RUNNING** ze stavu **READY** je: **preempted *(scheduler dispatch)***
> 		- event který je volán při přesunu procesu ze stavu **RUNNING** do stavu **READY** je: **interrupt**
> 	- #### WAITING
> 		- do tohoto stavu se proces dostane požádá-li o přístup k I/O nebo jinému eventu, jeho výchozí stav je **RUNNING**
> 		- Jakmile je jeho žádost vyřešena vrací se do stavu **READY**
> 		- event který je volán při přesunu procesu ze stavu **RUNNING** do stavu **WAITING** je: **I/O or event wait**
> 		- event který je volán při přesunu procesu ze stavu **WAITING** do stavu **READY** je: **I/O or event completion**
> 	- #### TERMINATED
> 		- do tohoto stavu se proces dostane je-li dokončen, jeho výchozí stav je **RUNNING**
> 		- event který je volán při přesunu procesu ze stavu **RUNNING** do stavu **TERMINIATED** je: **exit**
> 	- #### ilustrační obrázek![[Stavy procesů]]
> - **V jakých frontách může proces čekat na své další zpracování?**
> 	- #### Job Queue
> 		- Procesy v této frontě čekají na přidělení místa v paměti RAM
> 		- Jsou to úlohy, které byly zadány do systému, ale ještě nebyly načteny do paměti.
> 		- **Přechod do této fronty**: Procesy vstupují do job queue, když jsou vytvořeny nebo zadány do systému. Zůstávají zde, dokud nejsou načteny do paměti.
> 	- #### Ready Queue
> 		- Procesy v této frontě čekají na přidělení CPU. Jsou připravené k vykonávání, ale momentálně nemají přidělené místo na procesoru
> 		- **Přechod do této fronty**: Proces přechází do této fronty ze stavu NEW po vytvoření nebo po návratu z čekání na I/O nebo jiné události.
> 		- tyto procesy jsou načteny v paměti RAM
> 	- #### I/O / Device Queue
> 		- Procesy v této frontě čekají na, dokončení I/O operace nebo jiného typu události.
> 		- **Přechod do této fronty**: Proces se dostane do této fronty, když žádá o I/O operaci nebo jinou událost a nemůže pokračovat, dokud tato operace není dokončena.
> - **Jakou datovou strukturu o procesech udržuje OS? Co tato datová struktura obsahuje a k čemu všemu se používá?**
> 	- #### PCB (Process Control Block)
> 		- Každý proces je v operačním systému reprezentován takto
> 		- Skládá se z několika částí které obsahují informace o procesu
> 		- ##### Process state
> 			- Obsahuje stav procesu jako: NEW, READY, RUNNING, WAITING a TERMINATED
> 		- ##### Program counter
> 			- Obsahuje adresu další instrukce, kterou má proces vykonat
> 		- ##### CPU Register
> 			- Obsah registrů procesoru při posledním kontext switchi
> 		- ##### CPU-scheduling information
> 			- Obsahuje prioritu procesu a další informace potřebné pro scheduling jako CPU time *(čas který proces strávil na CPU)*
> 		- ##### Memory-management information
> 			- Obsahuje informace o alokovaném paměťovém prostoru procesu, jako jsou adresy zásobníku, hromadné paměti a segmentů.
> 		- ##### Accounting information
> 			- Uchovává informace o využití systémových prostředků, jako je celkový čas běhu, počet CPU cyklů,...
> 		- ##### I/O status information
> 			- Obsahuje informace o aktuálně používaných I/O zařízeních a jejich stavu
> 	- #### Context switching
> 		- Je způsob kterým OS, přepíná mezi více procesy, při přepínání procesů se do paměti RAM ukládá PCB aktuálně běžícího procesu a zároveň je načteno PCB procesu, na který OS přepíná.
> - **Jak se liší CPU Bound, I/O Bound procesy?**
> 	- #### CPU Bound procesy
> 		- Tyto procesy tráví většinu svého času prováděním výpočtů a méně času na I/O operacích
> 		- **Delší** doba využití CPU s nízkou frekvencí opakování *(Long CPU bursts)*
> 	- #### I/O Bound procesy
> 		- Tyto procesy tráví většinu svého času prováděním I/O operací a méně času výpočty
> 		- **Kratší** doba využití CPU s vysokou frekvencí opakování *(Short CPU bursts)*
> - **Jaké typy plánovačů jsou použity pro plánování procesů a co je jejich úkolem?**
> 	- #### Long-Term scheduler (job scheduler)
> 		- Hlavní úkolem je spravovat počet procesů které jsou povoleny v paměti v daný okamžik
> 		- Udržuje rovnováhu mezi CPU bound a I/O bound procesy
> 		- vybírá jaký proces by měl přejí do ready queue
> 		- pracuje pomaleji, je volán v řádech minut, sekund
> 	- #### Medium-Term scheduler
> 		- Hlavním úkolem je odstraňovat procesy z paměti, ukládat je na disk a později je znovu načítat *(swapping)*.
> 		- zasahuje v situaci když je v ready queue moc procesů
> 	- #### Short-Term scheduler (CPU scheduler)
> 		- Hlavním úkolem je pravidelně vybírat nový proces pro provedení na CPU
> 		- vybírá jakému procesu by mělo být přidělené místo na CPU
> 		- pracuje rychle, je volán v řádech milisekund

> [!question] Otázka
> ### Plánování procesoru
> - Vysvětli, účel komponent CPU Scheduler a Dispatcher
> - Z následujících čtyř algoritmů pro plánování procesoru si vyber dva a stručně vysvětli, jak fungují a jaké jsou jejich výhody, nevýhody.
> 	- First Come First Served *(FCFS)*
> 	- Shortest Job First *(SJF)*
> 	- Priority Scheduling *(PS)*
> 	- Round Robin Scheduling *(RR)*

> [!success]- Odpověď
> - **Vysvětli, účel komponent CPU Scheduler a Dispatcher**
> 	- #### CPU Scheduler *(short-term scheduler)*
> 		- Vybírá procesy z paměti RAM *(Ready queue)* kterým bude přiděleno místo na CPU
> 		- Snaží se aby CPU bylo so nejvíce vytížené a minimalizuje dobu kdy je CPU nečinné
> 	- #### CPU Dispatcher
> 		- Přepíná kontext CPU na vybraný proces *(context switch)*. 
> 			- Nejprve uloží PCB aktuálního procesu, poté načte PCB procesu vybraného CPU schedulerem
> 		- Musí pracovat rychle, čas který mu trvá k ukončení a zapnutí dalšího procesu se nazývá **dispatcher latency**
> - **Z následujících čtyř algoritmů pro plánování procesoru si vyber dva a stručně vysvětli, jak fungují a jaké jsou jejich výhody, nevýhody.**
> 	- #### First Come First Served _(FCFS)_
> 		- Je nejjednodušší na implementaci a porozumění ze všech
> 		- **Nevýhodou** je, že proces, který vyžaduje delší práci CPU, může zdržet celou frontu. *(convoy effect)*
> 		- **Výhodou** je, že procesy, kterým jsou v ready queue jako **první**, jsou vyřešeny jako **první**
> 	- #### Shortest Job First _(SJF)_
> 		- Funguje na principu priority podle jejich času strávených na CPU *(CPU time/burst time)*, procesy které na CPU stráví nejméně času mají přednost
> 		- **Nevýhodou** je, že pokud se na procesor dostává hodně procesů které jsou krátké *(I/O bound procesy)* může dojít k vyhladovění *(starvation)* tím, že se na něj nedostanou procesy delší *(CPU bound procesy)*
> 		- **Výhodou** může být zvýšení throughput *(u)*, tím že se vykonávají první krátké procesy, dále snižuje průměrnou čekací dobu
> 	- #### Priority Scheduling _(PS)_
> 		- Funguje na principu velikosti priority procesu. Čím větší priorita procesu tím vyšší přednost.
> 		- Pokud mají dva procesy stejnou prioritu použije se FCFS
> 		- **Nevýhodou** je možnost vyhladovění *(starvation)*, kdy, pokud se v ready queue vyskytují procesy s obecně větší prioritou, nemusí se dostat na procesy s prioritou menší
> 	- #### Round Robin Scheduling _(RR)_
> 		- Funguje na principu přiřazování časového limit *(time quantum)* který může proces strávit na CPU.
> 		- Ready queue funguje jako kruh, algoritmus přiřazuje jednotlivým procesům časové quantum, jeden proces je poslán na CPU, pokud je jeho *(burst time)* větší než časové quantum CPU dispatcher provede **context switch** a vrací se do **ready queue**.
> 		- Je-li časové quantum moc **velké**, funguje stejně jako FCFS argotismus
> 		- Je-li časové quantum moc **malé**, nastane **overhead**, vzhledem k tomu, že pořád nastává **context switch**

---
## Přidělování paměti 

> [!question] Otázka
> ### Metody přidělování paměti
> - Vysvětli metodu "Stránkování paměti" a porovnej ji s metodou "Segmentace paměti" a "Přidělování souvislé oblasti paměti".
> - Uváděj hlavní rozdíly, přínosy, rizika.

> [!success]- Odpověď
> - **Vysvětli metodu "Stránkování paměti" a porovnej ji s metodou "Segmentace paměti" a "Přidělování souvislé oblasti paměti".**
> 	- #### Stránkování paměti
> 		- Logická paměť je rozdělena na **stránky** stejné velikosti *(4KB)*
> 		- Fyzická paměť je rozdělena na **rámce** **stejné** velikosti jako stránky *(4KB)*
> 		- Existuje tzv. **page table**, tato tabulka obsahuje číslo stránky, číslo rámce, řídící bity a slouží pro překlad LAP adresy na FAP adresu.
> 		- Adresa paměti se skládá ze dvou částí
> 			- ##### číslo stránky
> 				- číslo stránky v LAP(u)
> 			- ##### offset
> 				- vzdálenost od začátku stránky
> 		- ilustrační obrázek ![[Překlad adres pomocí stránkovací tabulky.svg]]
> 	- #### Segmentace paměti
> 		- Logický adresový prostor je kolekcí segmentů. Každý segment má název a délku. Adresy specifikují jak název segmentu, tak i offset v rámci segmentu. Programátor proto specifikuje každou adresu pomocí dvou veličin: názvu segmentu, respektive čísla a offsetu. 
> 		- Pro segmentaci paměti se používá **segmentační tabulka** ta obsahuje
> 			- ##### Base
> 				- obsahuje adresu začátku segmentu ve fyzické paměti
> 			- ##### Limit
> 				- obsahuje offset segmentu *(délka segmentu)*
> 	- #### Přidělování souvislé oblasti paměti
> 		- Načte sae proces, za něj se načítají další,...
> 		- Když se proces ukončí, vznikne díra, další proces se načte podle těchto pravidel
> 			- ##### First Fit
> 				- Proces je načten do první díry která je dostupná
> 			- ##### Best Fit
> 				- Proces je načten do díry v paměti která je nejblíže jeho velikosti
> 			- ##### Worst Fit
> 				- Proces je načten do největší díry
> - **Uváděj hlavní rozdíly, přínosy, rizika.**
> 	- #### Stránkování paměti
> 		- ##### výhody
> 			- umožňuje efektivní využití paměti
> 		- ##### nevýhod
> 			- interní fragmentace
> 			- stránkovací tabulka zabírá místo v paměti
> 	- #### Segmentace paměti
> 		- ##### výhody
> 			- segmentační tabulka zabírá méně místa v paměti než stránkovací tabulka
> 			- umožňuje lepší ochranu paměti a sdílení mezi procesy
> 		- ##### nevýhod
> 			- externí fragmentace
> 	- #### Přidělování souvislé oblasti paměti
> 		- ##### výhody
> 			- jednoduchá implementace, nepotřebuje žádnou tabulku
> 			- rychlý přístup
> 		- ##### nevýhody
> 			- externí fragmentace
> 			- omezená flexibilita při správě paměti pro velké procesy

> [!question] Otázka
> ### Virtuální paměť
> - Vysvětli, co je a co umožňuje virtuální paměť
> - Převeď nastavení virtuální paměti v GNU/Linux nebo ve Windows 10.
> - Je výhodnější swapovat do souboru nebo na partition?

> [!success]- Odpověď
> - **Vysvětli, co je a co umožňuje virtuální paměť**
> 	- Virtuální paměť, jinak Logický adresový prostor *(LAS / LAP)*, je množina všech logických adres generovaných programem
> 	- Umožňuje
> 		- #### Udržovat více procesů v paměti
> 			- Některé stránky určitých procesů nemusí být do paměti načteny a můžou být uloženy na disk když nejsou potřeba. ***(swapping)***
> 		- #### Umožnit běh procesu který je větší než samotná fyzická paměť
> 			- Proces, který zabírá hodně místa v paměť může být spuštěn i když jeho velikost přesahuje velikost fyzické paměti. Toto je možné skrze **demand paging**
> 		- #### Umožňuje větší multiprogramming
> 			- kvůli ukládání nepoužívaných procesů na disk
> - **Je výhodnější swapovat do souboru nebo na partition?**
> 	- #### swapovací soubor
> 		- ##### Výhody
> 			- Rychlost přístupu
> 				- Přístup k partition bývá rychlejší než přístup k souboru
> 			- Stabilita
> 				- Swapování do partition(u) není ovlivněno dalšími souborovými operacemi
> 		- ##### Nevýhody
> 			- Pevně daná velikost
> 				- Při vytváření partition(u) je vytvořen s určitou velikostí, pro změnu velikosti by bylo nutné upravit partition, pokud ale vytvořil systém další partition(y) na adrese která následuje po swap(u) museli by se posunou všechny partition(y), toto by bylo časově náročné 
> 			- Vyžaduje správu diskových oddílů
> 				- K vytváření a správě jsou nutné speciální nástroje
> 	- #### swapovací partition
> 		- ##### Výhody
> 			- Flexibilita
> 				- Velikost souboru může být jednoduše změněna
> 			- Jednoduchost
> 				- Nevyžaduje speciální nástroje na správu, *(je to prostě soubor)*
> 		- ##### Nevýhody
> 			- Rychlost přístupu
> 			- Fragmentace souboru
> 				- Soubor může být fragmentován po disku, tím se sníží jeho rychlost přístupu

---
## Souborové systémy a fragmentace paměti