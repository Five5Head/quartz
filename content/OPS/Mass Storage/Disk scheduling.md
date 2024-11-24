## [[Mass Storage Structure|Random access time]]
## FCFS (FIFO) scheduling 
- Požadavky v I/O queue jsou zpracovány *(hlavička se hýbe)* tak jak došly v pořadí -> ==FIFO==
## SSFT scheduling 
- Požadavky v I/O queue jsou zpracovány *(hlavička se hýbe)* podle toho který žádá na nejnižší sektor-> ==Shortest Seek Time First== 
## Scan scheduling 
- Hlavička jezdí po disku od kraje ke kraji když narazí na sektor který je ve frontě zapíše do něj 
## Look scheduling 
- Hlavička jezdí po disku od nejmenšího sektoru po největší, po cestě k největšímu zpracuje požadavky mezi, na největším sektoru se otočí a vrací se zpět, po cestě zpracovává zase všechny požadavky, až dojde k nejmenšímu sektoru. Zase se otočí...