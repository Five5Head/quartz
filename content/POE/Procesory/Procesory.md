- programovatelný sekvenční obvod
- řídí počítač
## 1. Procesor
### Intel 4004
- 4-bitový
- cena 200$
## 16-bitové procesory
### Intel 8086
- 8 MHz
- 16-bitová sběrnice
- 640 KB operační paměti
- 1 MB adresovatelné paměti
- výkonná jednotka *(EU)*
- sběrnicová jednotka *(BU)*
### Intel 8080
- od 8086 se liší tím že má 8-bitovou sběrnici
### Intel 80266
- 12 MHz
- **mód chráněné virtuální paměti**
	- 1 GB virtuální paměti
	- procesy nemůžou přistupovat k jiným paměťovým segmentům než je jejich přidělený
	- překlad adres *(bázová adresa + offset = reálná adresa)*
- 16 MB operační paměti
- operační jednotka *(EU)*
- sběrnicová jednotka *(BU)*
- instrukční jednotka *(IU)*
- adresační jednotka *(AU)*
## 32-bitové procesory
### Intel 80386DX
- 32-bitová adresová sběrnice
- 32-bitová datová sběrnice
- 4 GB operační paměti
- **virtuální mód 8086/88**
	- speciální mód virtualizace pro programy napsané pro uP *(mikro program)* 8086/88
- **mód reálných adres** *(opak chráněné virtuální paměti)*
- **mód chráněné virtuální paměti**
- **stránkovací jednotka**
	- TLB - tabulka nejpoužívanějších stránek 
### Intel 80386BX
- oproti 80386 se liší v 16-bitová datová sběrnice
## Koprocesory
- jsou speciální procesory určené pro specifické úlohy
- Příklad
	- Matematický koprocesor *(pro výpočet v pohyblivé desetinné čárce)*
## Další procesory
### 80486DX
- 50 MHz
- 80386 s Integrovaný koprocesor a interní cache 8KB
### 80486DX2
- 2x násobič frekvence
### 80486X4
- **3x** násobič frekvence
## RISC / CISC jádro
| RISC                                   | CISC                                  |
| -------------------------------------- | ------------------------------------- |
| optimální pipelining                   | neoptimální pipelining                |
| 20 % instrukcí                         | 100 % instrukcí                       |
| HW řadič                               | uProgram                              |
| 100x registry *(větší počet registrů)* | 10x registry *(menší počet registrů)* |
| není zpětně kompatibilní               | je zpětně kompatibilní                |
## Intel Pentium procesory 
### Pentium
- 32-bitová adresová sběrnice
- 64-bitová datová sběrnice 
- 1. super-skalární procesor = dvě ALU = dvě instrukce
- univerzální jednotka *(U)*
- jednoduché instrukce *(V)*
- až 3 instrukce v jednom taktu
- 8KB instrukční cache
- 8KB datová cache
- **pipelining**
	- PF *(prefetch)* výběr instrukce
	- D1 *(decode1)* dekódování instrukce
	- D2 *(decode2)* výpočet adresy
	- EX *(execution)* provedení instrukce
	- WB *(write back)* zapsání výstupu
- jednotka předvídání skoků
### Pentium Pro
- **RISC jádro**
- 14 stupňový pipelining
- vykonávání instrukcí mimo počadí
- **spekulativní výpočty** - výpočty mimo pořadí za instrukcí podmíněného skoku
### Pentium MMX
- 576 nových instrukcí *(sada MMX - zvuk, video)*
- SIMP - single instruction multiple data
### Pentium II
- vychází z architektury Pentia PRO
- MMX instrukce
- Osobní PC
### Celeron (vychází z Pentia)
- na základě Pentia II
- liší se kapacitou cache *(polovina)*
- větší taktovací frekvence
- levnější
## Serverové procesory Intel
### Pentium II Xeon
## Procesory AMD
### AMD K5
- alternativa k Pentiu
### AMD K6
- RISC jádro
### AMD K7 ATHLON
- taktovací frekvence 700 MHz
- 10 stupňový pipelining
- 3DNOW! instrukční sada
### AMD ATHLON XP
- termální dioda *(měří teplotu procesoru, je zabudována vevnitř procesoru)*
- imaginární frekvence
	- marketingová strategie
	- místo skutečné frekvence *(např 1,67 GHz)* procesor používal označení *(Performance Rating)* odpovídající výkonu konkurenčních procesorů *(AMD ATHLON XP 2000+)*
- 3DNOW! instrukční sada
## Parametry procesoru
- architektura *(vnitřní uspořádání)*
- výrobní proces *(v nm, udává velikost nejmenšího tranzistoru)*
- počet jader
- podpora hyperthreadingu *(zdvojuje sadu registrů v procesoru, což umožňuje zpracovávat dvě vlákna na jedno jádro. Pokud jedno vlákno čeká, druhé může efektivně využít výpočetní kapacitu jádra.)*
- velikost cache *(L1 - nejrychlejší ,L2 a L3 - nejpomalejší)*
- TDP *(thermal design power, maximální vyzářený výkon)*
- socket
- instrukční sada
- podpora virtualizace
- turbo boost
- řízení spotřeby *(Intel - Intel speed step, AMD - cool and quite)*
- přítomnost integrovaného GPU