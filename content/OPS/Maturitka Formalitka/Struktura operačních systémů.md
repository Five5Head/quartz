#hidden 
## Architektura operačních systémů
- Charakterizuj architektury operačních systémů, popisuj rozdíly, aplikuj na architekturu Windows 10 nebo GNU/Linux
	- Monolitická
	- Mikrokernel
	- Hybridní
	- Vrstvená
	- _Modulární (není v otázkách, ale je v mind mapě)_
## Odpověď
- ### **Monolitická**
    - Je nejjednodušší struktura
    - Skládá se z jádra a rozhraní, které zprostředkovává komunikaci mezi jádrem a okolím
    - Samotné jádro je představováno **jedním souborem**, funkcionalita je dále rozšířena pomocí knihoven
    - všechno běží v **režimu jádra** _(kernelu)_
    - nevýhodou je **nestabilnost**, jakákoli chyba může způsobit pád celého OS
    - výhodou je **rychlost**
    - ##### Příklady OS
        - MS DOS
        - původní UNIX
- ### **Mikrokernel**
    - Jádro obsahuje pouze některé základní funkce, ostatní komponenty běží v **user modu**
    - **nevýhodou** je nutnost používání API, toto systém výrazně zpomaluje
    - výhodou je **vyšší stabilita** _(v porovnání s monolitickým)_, vyskytne-li se chyba nemusí to nutně znamenat selhání celého OS
    - architektura má také menší náklady na programátorské schopnosti, kvůli její stabilitě
    - ##### Příklady OS
        - HURD
        - MACH
        - _OS X (není tak úplně správně, ale je to v mind mapě -_-)_
- ### **Hybridní**
    - kombinace monolitické a microkernel architektury
    - využívá se nejvíce
    - ##### Příklady OS
        - WIN s NT jádrem
        - GNU/Linux
- ### **Vrstvená**
    - části sytému jsou uspořádány do vrstev
    - jednotlivé vrstvy využívají služeb nižších vrstev ne naopak
    - Systém je budován od vnitřních vrstev k vnějším _(vnitřní vrstvy jsou nejdůležitější)_
    - ##### Příklady OS
- ### Modulární
    - Jádro poskytuje **základní** služby
    - **výhodou** oproti mikrokernelu je že rozšiřující knihovny _(moduly)_ se stávají součástí jádra
    - Knihovny _(moduly)_ jsou do jádra načteny po startu nebo při běhu
    - ##### Příklady OS
        - Solaris
        - Linux
        - MAC OS X
        - WIN
---
## Bezpečnostní okruhy procesoru a struktura operačního systému
- Vysvětli bezpečnostní okruhy procesoru a souvislosti s architekturou operačních systémů
    - Kernel mód operačního systému
    - User mód operačního systému
    - Bezpečnostní okruhy procesoru, hypervisor a operační systémy v případě virtualizace
## Odpověď
- **Režimy běhu procesů**
    - Toto dělení je z důvodu bezpečnosti OS, procesy běžící v uživatelské režimu nemají možnost jakkoliv zasahovat do privilegované části
    - #### Kernel mód operačního systému _(privilegovaný režim)_
        
        - v tomto režimu běží procesy jádra OS
    - #### User mód operačního systému _(uživatelský režim)_
        
        - v tomto režimu běží uživatelské procesy _(aplikace)_
- **Bezpečnostní okruhy procesoru, hypervisor a operační systémy v případě virtualizace**
    - rozeznáváme **4 bezpečnostní okruhy** _(RING 0-3)_, každý proces běží v režimu některého z těchto okruhů a určuje, zda má nějaký proces přístup k jinému okruhu.
    - #### RING 0
        
        - Slouží pro jádro systému a systémové procesy
        - Běží zde hypervisor který slouží pro virtualizaci
    - #### RING 1-2
        
        - Slouží pro virtualizaci, zde běží jádro virtualizovaného OS
    - #### RING 3
        
        - Slouží pro user mode
---