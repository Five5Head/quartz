- ## Disk formatting 
	- ### Low level formatting / physical formatting 
		- dělá výrobce 
		- výrobce na disku vytvoří
			- jednotlivé cylindry
			- sektory
			- tracky
		- velikost sektoru -> 512 bytů
			- header | data | tailor 
	- ### Logické formátování 
		- dělá uživatel 
		- vytváření souborových systému 
		- vytváření diskových oddílu (partition)
	- ### Error code correction 
		- kontrolní součet v každém logickém adresovém bloku 
	- ### Raw partition / raw disk
		- je partition bez souborového systému
		- dobrý pro *swapování* paměti (Linux)
		- výhodou oproti windowsu tím že Windows swapuje do souboru
	- ### Partition
		- skupiny cylindrů
	- ### Soft error 
		- nastává když nesedí kontrolní součet v logické bloku 
	- ### Hard error 
		- nastává při fyzickém poškození disku
	- ### Cluster 
		- Více logických bloků spojených dohromady 
		- | header | data | tailor || header | data | tailor | ->| header | data data | tailor |
- ## Boot block 
	- ![[Boot Block.svg|]]
	- Na logickém bloku 0 je umístěn Master boot record (MBR) nebo GUID partition table (GPT)
	- MBR obsahuje 
		- tabulku s partitionami a vlajku která indikuje partitionu s OS
		- boot code
	- ### bootstrap
		- jednoduchý program který spouští operační systém
		- ==bootstrap loader== uložen na ==ROM==, ten volá hlavní bootstrap program
		- Samotný ==bootstrap== je uložen na specifickém místě na disku, přesněji v ==boot bloku== , bootovacímu disku říkáme: boot disk, system disk
		- Zjednodušený bootstrap v ROM říká, že se má do paměti načíst ==boot block== a začít vykonávat jeho ==boot code== který se nachází v MBR
		- Po úspěšném nalezení bootovací partitiony, přečte systém první sektor v této partitioně, ten se nazývá ==boot sector== a pokračuje s načtením OS
- ## Bad blocks 
	- vadné logické block 
	- ### Sector sparing 
		- náhradní sektory
		- #### Sector forwarding 
			- při poškozené sektoru se přesměruje adresa poškozeného sektoru na náhradní sektor
		- #### Sector sleeping 
			- Při poškozeném sektoru posune všechny sektory za ním o jeden dál, vadný sektor se vynechá
- ## RAID
- Redundancy arrays of independent disks
	- ### redundace 
		- RAID 1
	- ### parita
		- RAID 0