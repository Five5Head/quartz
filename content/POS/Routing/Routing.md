#  Router
- Path determination
	- Router vybírá nejlepší cestu k cíli (nejlevnější)
- Každá cesta má svůj [[#Cost]] 
- Static routes 
- Dynamic routing protocols 
- Default routes 
	- Specifikuje směr pro případ že router nemá záznam v routovací tabulce 
- Packet forwarding process 
1. Na router dorazí Frame
3. Router rozbalí frame, podívá se na dest. IP
4. Router najde nejdelší ==stejný== prefix v tabulce
5. Router změní dest. MAC *(adresa koncového zařízení/next-hop routeru)* a source MAC *(adresa routeru)* zabalí Packet do Framu a pošle jeji

# Cost
- IPv4
	- ... 
- IPv6
	- ... 

# Packet forwarding methods 
## Process switching 
- Pokaždé když dojde na router Packet, spočítá jej znovu, toto je zbytečné, pokud jdou další pakety do stejné sítě tak se i tak spočívají 
## Fast switching 
- Paket se vypočítá, uloží se jeho výstupní port do cashe, místo toho aby se další paket spočítal, router se první podívá do cashe jestli tam už záznam není.
## Cisco express forwarding
- Pakety se nepočítají
- Při zapnutí/změněni topologie sítě proběhne ==konvergence sítě==
	- Vytvoří se ==Forwarding Information Base (FIB)==, obsahuje informace o cílových prefixech a odpovídajících next-hop adresách. 
	- Vytvoří se ==Adjacency Tabulka== Udržuje informace o sousedních zařízeních (jejich MAC adresy) pro každý cílový prefix. 
## Routing table principles
- every router makes decisions alone based on tv informations it has in its own table 
- The information in a routing table of one router does not necessarily match the routing table of another router.
- Routing information about a path does not provide return routing information.
# 
## RIP
- Metrika
	- Používá *hop count* 
	- Každý router v cestě se přičítá k *hop count* 
## OSPF 
- Metrika 
	- Cumulative bandwidth
	- Je *cost* která je počítána ze součtu bandwidthu mez destinací a začátkem 
## Load balancing 
- Pokud jsou obě metriky stejné, cesty směřují do stejné sítě a routy jsou v tabulce -> pakety se posílají přes obě 