# Aktuální stav cybersecurity (3.1)
### Současný stav (Current State)
- Narušení bezpečnosti sítě může mít na následky ztrátu dat, ztrátu soukromí, ohrožení integrity dat
- Důležité pojmy
	- #### Assets (Aktivum)
		- Cokoliv co má pro společnost hodnotu. *(Zaměstnanci, vybavení, zdroje, data)*
	- #### Vulnerability (Zranitelnost)
		- Slabina v systému, nebo jeho designu, která by mohla být využita hrozbou
	- #### Threat (Hrozba)
		- Potencionální nebezpečí pro zdroje *(Assets)* společnosti, data, nebo funkčnost sítě
	- #### Exploit (Využití)
		- Způsob který využívá zranitelnosti
	- #### Mitigation (Opatření)
		- Protiopatření které snižuje pravděpodobnost nebo naléhavost hrozby
	- #### Risk (Riziko)
		- Je pravděpodobnost, že hrozba zneužije zranitelnosti aktiva *(assetu)*. Riziko se měří pomocí pravděpodobnosti výskytu událostí a jejich důsledků
### Vektory síťových útoků (Vectors of Network Attacks)
- *attack vector* je cesta kterou útočník může získat přístup k serveru, hostu, nebo celé síti
- Vektory můžou začínat uvnitř sítě nebo venku
- *(obrázek)*
- #### Interní hrozby
	- Uživatel uvnitř sítě může, ať už to omylem, nebo vědomě:
		- **Ukrást** kopii důvěrných dat
		- **Komprimovat** interní servery nebo zařízení síťové struktury
		- odpojit kritické síťové připojení a **způsobit výpadek sítě**
		- **Připojit infikované USB** do firemního PC
	- Interní hrozby mají potenciál způsobit větší poškození než hrozby vnější
### Ztráta data (Data Loss)
- Data jsou to nejcennější co společnost vlastní
- Ztráta dat může mít za důsledky:
	- Poškození reputace společnosti
	- Ztráta výhody nad ostatními společnostmi
	- Ztráta zákazníků
	- Ztráta výdělku
	- …
- Vektory ztráty dat:
	- Email/Social Networking
	- Nešifrovaná zařízení
	- Cloudové uložiště
	- USB
	- Hard Copy
	- Nesprávný Access Control 
### Test znalostí
> [!QUESTION] Otestuj své znalosti
> 1. Který termín se používá pro označení čehokoli, co má pro organizaci hodnotu? Zahrnuje lidi, vybavení, zdroje a data.
> 2. Který termín se používá k popisu slabého místa v systému nebo jeho konstrukci, které by mohlo být zneužito hrozbou?
> 3. Který termín se používá k popisu potenciálního nebezpečí pro aktiva (assets), data nebo funkčnost sítě společnosti?
> 4. Který termín se používá k popisu mechanismu, který využívá zranitelnosti?
> 5. Který termín se používá pro popis protiopatření proti potenciální hrozbě nebo riziku?
> 6. Který termín se používá k popisu pravděpodobnosti, že hrozba zneužije zranitelnost aktiva s cílem negativně ovlivnit organizaci?

> [!SUCCESS]- Odpověď - Otázka 1.
> - Asset

> [!SUCCESS]- Odpověď -  Otázka 2.
> - Vulnerability

> [!SUCCESS]- Odpověď -  Otázka 3.
> - Threat

> [!SUCCESS]- Odpověď -  Otázka 4.
> - Exploit

> [!SUCCESS]- Odpověď -  Otázka 5.
> - Mitigation

> [!SUCCESS]- Odpověď -  Otázka 6.
> - Risk
## Threat Actors (3.2)
- Threat Actors neboli hackeři *(tento termín původně označoval někoho kdo byl zkušený počítačový odborník - programátor, HACK byl termín pro chytré řešení problému)*
- Pojem Threat Actors nezahrnuje pouze osoby ale také zařízení, skupinu, nebo stát.
- Důležité pojmy
	- #### White Hat Hackers
		- Jedná se o etické hackery, ti používají své programovací zkušenosti k legální činnosti - pen. testing.
	- #### Gray Hat Hackers
		- Hranice mezi nelegální a legální činností, jedná se o hackery kteří po odhalení zranitelnosti postiženého systému oznámí tuto skutečnost společnosti kterou napadli.
	- #### Black Hat Hackers
		- Jedná se neetické hackery, ti používají své programovací zkušenosti k nelegální činnost a k osobnímu zisku.
### Evoluce hackerů
- Pojmy
	- #### Script Kiddies
		- nezkušení hackeři, kteří používají existující skripty, nástroje a exploity, obvykle ne za účelem zisku
	- #### Vulnerability Broker
		- Gray Hat Hackeři kteří se snaží objevit slabiny a nahlásit je společnosti za určitou odměnu *(Bug Bounty Program)*
	- #### Hacktivists
		- Jedná se o Gray Hat Hackery kteří veřejně protestují proti organizacím nebo vládám tím, že zveřejňují jejich data
	- #### Cyber criminals
		- Black Hat Hackeři kteří pracují na sebe nebo pro velké hackerské organizace za účelem zisku
	- #### State-Sponsored
		- Jsou buď White Hat Hackeři nebo Black Hat Hackeři kteříž kradou vládní tajemství, jejich cílem jsou teroristické skupiny, zahraniční vlády. Většina zemí na světě do určité míry podílí na státem sponzorovaných útocích.
### Test znalostí
> [!QUESTION] Otestuj své znalosti
> 1. Který typ hackera je popsán ve scénáři: Poté, co jsem se pomocí notebooku na dálku naboural do bankomatů, jsem pracoval s výrobci bankomatů, aby vyřešili bezpečnostní chyby, které jsem objevil.
> 2. Který typ hackera je popsán ve scénáři: Ze svého notebooku jsem převedl 10 milionů dolarů na svůj bankovní účet pomocí nástroje čísel účtů obětí a kódů PIN der prohlížení nahrávek obětí, které čísla zadávají.
> 3. Který typ hackera je popsán ve scénáři:Mým úkolem je identifikovat slabá místa v síti mé společnosti
> 4. Který typ hackera je popsán ve scénáři: Použil jsem malware ke kompromitaci několika firemních systémů, abych ukradl informací o kreditních kartách. Tyto informace jsem pak prodal tomu, kdo nabídl nejvíc.
> 5. Který typ hackera je popsán ve scénáři: Během svého výzkumu bezpečnostních exploitů jsem narazil na na bezpečnostní zranitelnost v podnikové síti, ke které mám oprávněný přístup.
> 6. Který typ hackera je popsán ve scénáři: Je mým úkolem pracovat s technologickými společnostmi na opravě chyb v DNS.

> [!SUCCESS]- Odpověď - Otázka 1.
> - Black Hat

> [!SUCCESS]- Odpověď -  Otázka 2.
> - Vulnerability

> [!SUCCESS]- Odpověď -  Otázka 3.
> - White Hat

> [!SUCCESS]- Odpověď -  Otázka 4.
> - Black Hat

> [!SUCCESS]- Odpověď -  Otázka 5.
> - White Hat

> [!SUCCESS]- Odpověď -  Otázka 6.
> - White Hat
## Threat Actor Tools (3.3)
### Nástroje
- #### Password cracker  
  - Nástroje na prolomení hesel slouží k obnovení nebo prolomení hesel. Toho lze dosáhnout odstraněním původního hesla po obejití šifrování dat, nebo přímo odhalením hesla. Používají se opakované pokusy o uhodnutí hesla.  
  - ##### Příklady
	  - John the Ripper, Ophcrack, LOphtCrack, THC Hydra, RainbowCrack, Medusa  
- #### Wireless hacking tools  
  - Tyto nástroje slouží k záměrnému hacknutí bezdrátové sítě za účelem detekce bezpečnostních zranitelností.  
  - ##### Příklady
	  - Aircrack-ng, Kismet, lnSSIDer, KisMAC, Firesheep, NetStumbler  
- #### Network scanning and hacking tools  
  - Nástroje pro skenování sítí slouží k prohledávání síťových zařízení, serverů a hostitelů za účelem detekce otevřených TCP nebo UDP portů.  
  - ##### Příklady
	  - Nmap, SuperScan, Angry IP Scanner, NetScanTools  
- #### Packet crafting tools  
  - Tyto nástroje slouží k testování robustnosti firewallu pomocí speciálně vytvořených paketů.  
  - ##### Příklady
	  - Hping, Scapy, Socat, Yersinia, Netcat, Nping, Nemesis  
- #### Packet sniffers  
  - Nástroje pro zachytávání a analýzu paketů v tradičních Ethernet LAN nebo WLAN sítích.  
  - ##### Příklady
	  - Wireshark, Tcpdump, Ettercap, Dsniff, EtherApe, Paros, Fiddler, Ratproxy, SSLstrip  
- #### Rootkit detectors  
  - Nástroje na detekci nainstalovaných rootkitů kontrolují integritu adresářů a souborů.
  - ##### Příklady
	  - AIDE, Netfilter, PF: OpenBSD Packet Filter  
- #### Fuzzers to search vulnerabilities  
  - Fuzzery slouží k objevování bezpečnostních zranitelností v počítačích.  
  - ##### Příklady
	  - Skipfish, Wapiti, W3af  
- #### Forensic tools  
  - Nástroje používané k vyhledání jakýchkoli stop důkazů v počítači.  
  - ##### Příklady
	  - Sleuth Kit, Helix, Maltego, Encase  
- #### Debuggers  
  - Nástroje pro reverzní inženýrství binárních souborů při psaní exploitů nebo analýze malware.  
  - ##### Příklady
	  - GDB, WinDbg, IDA Pro, Immunity Debugger  
- #### Hacking operating systems  
  - Speciálně navržené operační systémy s předinstalovanými nástroji optimalizovanými pro hacking.  
  - ##### Příklady
	  - Kali Linux, Knoppix, BackBox Linux  
- #### Encryption tools  
  - Šifrovací nástroje používají algoritmy k zakódování dat a zabránění neoprávněnému přístupu.  
  - ##### Příklady
	  - VeraCrypt, CipherShed, OpenSSH, OpenSSL, Tor, OpenVPN, Stunnel  
- #### Vulnerability exploitation tools  
  - Nástroje identifikující, zda je vzdálený hostitel zranitelný vůči bezpečnostním útokům. 
  - ##### Příklady
	  - Metasploit, Core Impact, Sqlmap, Social Engineer Toolkit, Netsparker  
- #### Vulnerability scanners  
  - Nástroje pro skenování sítě nebo systému za účelem identifikace otevřených portů a známých zranitelností.  
  - ##### Příklady
	  - Nipper, Secunia PSI, Core Impact, Nessus v6, SAINT, OpenVAS  
### Typy útoků
- #### Eavesdropping attack  
  - Útok, při kterém útočník odposlouchává komunikaci mezi dvěma stranami bez jejich vědomí.  
  - ##### Cíl
	  - Získat citlivé informace, jako jsou hesla nebo finanční údaje.  
- #### Data modification attack  
  - Útok, při kterém útočník zachytí data a následně je upraví před jejich odesláním cíli.  
  - ##### Cíl
	  - Změnit obsah zprávy nebo dat bez povšimnutí.  
- #### IP Address spoofing attack  
  - Útok spočívající v podvržení IP adresy za účelem předstírání identity důvěryhodného zařízení.  
  - ##### Cíl
	  - Obcházet bezpečnostní kontroly nebo se maskovat jako jiný uživatel.  
- #### Password-Based attacks  
  - Útoky zaměřené na získání hesel prostřednictvím metod, jako je brute force, slovníkové útoky nebo phishing.  
  - ##### Cíl
	  - Získat přístup k zabezpečeným systémům nebo účtům.  
- #### DoS (Denial of Service)  
  - Útok, který zahltí cílový systém nebo síť nadměrným množstvím požadavků, čímž je vyřadí z provozu.  
  - ##### Cíl
	  - Způsobit nedostupnost služby pro legitimní uživatele.  
- #### MITM (Man-In-The-Middle)  
  - Útok, při kterém útočník zachytí a manipuluje komunikaci mezi dvěma stranami.  
  - ##### Cíl
	  - Získat citlivé informace nebo změnit komunikaci bez povšimnutí.  
- #### Compromised key attack  
  - Útok, při kterém útočník získá přístup k šifrovacím klíčům používaným k zabezpečení dat.  
  - ##### Cíl
	  - Obejití šifrování a přístup k citlivým informacím.  
- #### Sniffer attack  
  - Útok využívající nástroje pro zachytávání síťového provozu, aby odhalil citlivé informace, jako jsou přihlašovací údaje nebo obsah zpráv.  
  - ##### Cíl
	  - Odposlech síťového provozu a získání dat.  
### Test znalostí
> [!QUESTION] Otestuj své znalosti
> 1. Který nástroj pro penetrační testování používá k zakódování dat algoritmická schémata, která pak brání přístupu k datům?
> 2. Který nástroj pro penetrační testování používají Black Hat hackeři k reverznímu inženýrství binárních souborů při psaní exploitů?
> 3. Který nástroj pro penetrační testování se používá k prozkoumání a otestování odolnosti firewallu?
> 4. Který nástroj penetračního testování používají White Hat hackeři k odhalení jakýchkoli stop existujících v počítači?
> 5. Který nástroj penetračního testování zjišťuje, zda je vzdálený hostitel náchylný k bezpečnostnímu útoku?

> [!SUCCESS]- Odpověď - Otázka 1.
> - Encryption tools

> [!SUCCESS]- Odpověď -  Otázka 2.
> - Debuggers

> [!SUCCESS]- Odpověď -  Otázka 3.
> - Packet crafting tools

> [!SUCCESS]- Odpověď -  Otázka 4.
> - Forensic tools

> [!SUCCESS]- Odpověď -  Otázka 5.
> - Vulnerability exploitation tools
## Malware (3.4)
- Malware je jakýkoli škodlivý program
- Threat actors jsou závislí na uživateli, který si nainstaloval malware s jehož pomocí můžou exploitnout bezpečnostní díry.
- Typy malware
- #### Virus
	- Virus se "schovává" tak že je "součástí" kódu programu, když je otevřen virus se spustí a infikuje PC
	- Virus může:
		- Měnit, poškozovat, mazat data
		- poškozovat aplikace
		- získávat soukromé informace
		- využívat email na šíření
		- "schovávat" se dokud není použit threat actorem
	- Typy virů:
		- ##### Boot sector virus
			- Útočí na boot sector, partition tabulku, nebo souborový systém
		- ##### Firmware virus
			- Útočí na firmware
		- ##### Macro virus
			- Virus využívá makra _(sady instrukcí automatizujících úkoly)_ v aplikacích, jako je MS Office, k provádění škodlivých operací.
		- ##### Program virus
			- Virus se vloží do jiného programu 
		- ##### Script virus
			- Virus útočí na interpret OS, který je používán pro spouštění scritů.
- #### Trojský kůň
	- Podáván součásti programu který stáhneme na internetu zdarma, program v sobe nese nebezpečný kód.
	- Typy trojských koňů
		- ##### Remote-access
			- Trojský kůň povolí remote access
		- ##### Data-sending
			- Trojský kůň posílá soukromá data threat actoru
		- ##### Destructive
			- Trojský kůň poškodí nebo smaže soubory
		- ##### Proxy
			- Trojský kůň použije počítač oběti jako zdroj pro jiné útoky *(často nelegální)*
		- ##### FTP
			- Trojský kůň povolí FTP službu na koncovém zařízení
		- ##### Security software disabler
			- Trojský kůň zastaví antivirus 
		- ##### DoS
			- Trojský kůň zpomaluje síť
		- ##### Keylogger
			- Trojský kůň zaznamenává vstupy z klávesnice, tím sbírá, hesla, informace o kreditní kartě, … 
- #### Ostatní typy malware
	- Adware
		- Zobrazuje reklamy
	- Ransomware
		- Šifruje soubory an zařízení, podmínkou pro odšifrování je poslání nějakého úplatku *(ransom)*
	- Rootkit
		- Jsou používány threat actory pro získání administrátorských práv
	- Spyware
		- podobný adware, rozdílem je, že sbírá informace o uživateli a posílá je there actorovi
	- Worm
		- Je sebe-klonující program který se šíří automaticky pomocí exploitace slabin v ostatních programech
## Běžné síťové útoky (3.5)
### Reconnaissance Attacks
- shromažďování informací 
- Např. Zloděj chodí od domu k domu a předstírá, že něco prodává, ale při tom hledá domy, které jsou zranitelné a prozkoumává okolí domu (kamery, dveře. okna)
- **Reconnaissance Attacks** se tedy používají k objevování a mapování zranitelnosti systémů a služeb. 
- Tento typ útoků předchází útokům jako jsou např. **DoS attacks** nebo **Access attacks**. 
- #### Techniky k provádění  Reconnaissance Attacks ####
	- ##### Perform an information query of a target (informační dotaz cíle)
		- Hacker hledá informace o cíli. 
		- Lze požít různé nástroje jako jsou např. Google, whois, web stránky organizací 
	- ##### Prohledávání cílové sítě pomocí příkazu ping 
		- Nyní hacker může zahájit ping sweep, aby zjistil, které IP adresy jsou aktivní
	- ##### Skenování portů aktivních adres
		- Používá se k určení, které porty nebo služby jsou k dispozici
		- **Nástroje:** Nipper, Secuna PSI, Core impact, OPEN VAS
	- ##### Spuštění skenerů zranitelnosti
		- Poté co jsme identifikovali porty spustíme tyto skenery pro zjištění typu a verze aplikace či OS.
		- **Nástroje:** Nipper, Secuna PSI, Core impact, OPEN VAS
	- ##### Spuštění nástrojů pro zneužití zranitelnosti  
		- Hacker se nyní snaží objevit zranitelné služby, které může zneužít.
		- **Nástoje:** Core impact, Social Engineer Toolkit, Netsparker 
### Access Attacks
- Útoky, které využívají známe zranitelnosti ve službách *(FTP, webové služby)* 
- Účelem je získat přístup k webovým účtům, databázím a dalším citlivým informacím 
- Hackeři využívají tyto útoky na síťová zařízení a počítače k načítaní dat, získání přístupu atd.
- #### Typy access útoků: 
	- #####  Password attacks
		- Hacker se pokouší odhalit kritická systémová hesla
	- ##### Spoofing attacks 
		- Zařízení hackera se snaží chovat jako další zařízení pomocí falšování dat
		- **typy:** IP spoofing, MAC spoofing, DHCP spoofing
	- ##### Trust exploitations
		- Hacker používá neoprávněná oprávnění k přístupu k systému 
	- #####  Port redirections 
		- Používá komprimovaný systém jako základnu pro útoky proti jiným cílům
	- ##### Man in the middle attack 
		- Hacker je umístěn mezi dvěma strany, odkud může číst nebo upravovat data , která mezi těmito stranami přecházejí. 
	- ##### Buffer overflow attack 
		- Hacker zneužije vyrovnávací paměť k přehlcení neočekávanými hodnotami. 
		- Vytvoří to nefunkčnost systému a DoS útok
### Social Engineering Attacks 
- Social Engineering je access útok, který se pokouší manipulovat jednotlivce, aby provedli akce nebo vyzradili důvěrné informace.
- některé techniky se provádějí osobně, nebo jiné mohou používat telefon či internet
- Prostě lidi co volají důchodcům, aby ji poslali peníze
- #### Techniky Social Engineering útoků ####
	- ##### Pretexting #####
		- Aktér předstírá, že potřebuje osobní nebo finanční údaje k potvrzení identity příjemce 
	- ##### Phishing #####
		- Aktér pošle podvodný e-mail, aby příjemce přiměl k instalaci malwaru nebo aby sdílel osobní či finanční údaje 
	- ##### Spear phishing #####
		- Aktér pošle vytvoří cílový phishing útok konkrétnímu jednotlivci nebo organizaci
	- ##### Spam #####
		- Nevyžádaná pošta, která může obsahovat malware nebo klamavý obsah
	- ##### Something for Something #####
		-  Aktér vyžaduje osobní údaje výměnou za něco (tajné službičky)
	- ##### Baiting (You got Jebaited)#####
		- Aktér nechá flash disk s malwarem na veřejném místě. Oběť přijde vezme disk a dá ho do svého zařízení a tak si ho nechá infikovat. 
		- Jaká opice by tohle udělala 
	- ##### Impersonation (předstíraní identity) #####
		- Aktér se vydává za někoho kdo není, aby získal důvěru oběti 
		- Můj vzdálený příbuzný africký princ, který zemřel a já zdědil jeho majetek 
	- ##### Tailgating #####
		- Aktér následuje oprávněnou osobu do zabezpečené lokace, aby získal přístup do zabezpečeného místa
	- ##### Shoulder surfing #####
		-  Aktér se kouká přes rameno osoby, aby získal jeho osobní údaje (heslo)
	- ##### Dumpster driving #####
		- Místo, kde se aktér prohrabává v odpadkových koších, aby získal důvěrné dokumenty
		- Takže pobodej každého homelesáka 
	- #### Ochrana před Social Engineering Attacks ####
		- Nikdy nikomu nesdělujte své uživatelské jméno / heslo.
		- Nikdy nenechávejte své přihlašovací údaje k uživatelskému jménu/heslu tam, kde je snadno najít.
		- Nikdy neotevírejte e-maily z nedůvěryhodných zdrojů.
		- Nikdy nezveřejňujte informace související s prací na sociálních sítích.
		- Nikdy znovu nepoužívejte hesla související s prací.
		- Vždy zamkněte nebo odhlašte svůj počítač, když jej ponecháte bez dozoru.
		- Vždy nahlaste podezřelé osoby.
		- Důvěrné informace vždy zničte v souladu se zásadami organizace.
- ### DoS attacks and DDoS attacks ###
	- útok **Denial of Service (DoS)** vytváří  určitý druh přerušení síťových služeb pro uživatele, zařízení nebo aplikace
	- #### Dva typy útoků DoS ####
		- ##### Overwhelming Quantity of Traffic #####
			- Hacker odesílá obrovské množství dat rychlostí, kterou síť, hostitel nebo aplikace nezvládnou.
		- ##### Maliciously Formatted Packets #####
			- Hacker odešle škodlivě naformátovaný paket hostiteli nebo aplikaci a příjemce jej nedokáže zpracovat
	- #### DDoS útoky
		- podobný útoku DoS, ale pochází z více koordinovaných zdrojů.
			- Například aktér hrozby vytváří síť infikovaných hostitelů, známých jako zombie
- ### Test znalostí ###
> [!QUESTION] Otestuj své znalosti
> 1. Jaký typ útoku je tailgating?
> 2. Jaký typ útoku je password attack?
> 3. Jaký typ útoku je skenování portů?
> 4. Jaký typ útoku je man-in-the-middle?
> 5. Jaký typ útoku je address spoofing?

> [!SUCCESS]- Odpověď - Otázka 1.
> - Social Engineering

> [!SUCCESS]- Odpověď -  Otázka 2.
> - Access

> [!SUCCESS]- Odpověď -  Otázka 3.
> - Reconnaissance

> [!SUCCESS]- Odpověď -  Otázka 4.
> - Access

> [!SUCCESS]- Odpověď -  Otázka 5.
> - Access

## IP zranitelnosti a hrozby
- Útoky, které se specificky zaměřují na zranitelnosti IP
### IPv4 and IPv6
- IP neověřuje, zda zdrojová IP adresa obsažená v paketu skutečně pochází z tohoto zdroje. 
- Z tohoto důvodu mohou hackeři odesílat pakety pomocí podvržené zdrojové IP adresy.
- Hackeři mohou také manipulovat s ostatními poli v hlavičce IP, aby provedli své útoky. 
- #### IP attack techniques
	- ##### ICMP Attacks
		- Hackeři používají pingy protokolu ICMP k odhalení podsítí a hostitelů v chráněné síti, ke generování útoků Dos Flood a ke změně ip routing tabulek
	- ##### Amplification and reflection attacks
		- Hackeři se snaží zabránit oprávněným už. v přístupu k informacím nebo službám pomocí DoS a DDoS útokům 
	- #####  Address spoofing attacks
		- Hackeři zfalšují zdrojovou IP adresu v paketu IP, aby provedli blind spoofing nebo non-blind spoofing
	- #####  Man-in-the-middle attack
		- Hacker je umístěn mezi dvěma strany, odkud může číst nebo upravovat data , která mezi těmito stranami přecházejí. 
### ICMP attacks
- Hackeři  používají ICMP pro průzkumné a skenovací útoky. 
- Mohou spouštět útoky na shromažďování informací za účelem zmapování topologie sítě, zjištění, kteří hostitelé jsou aktivní, identifikovat hostitelský operační systém a určit stav brány firewall. 
- Sítě by měly mít  ACL na okraji sítě, aby se zabránilo vyhledávání ICMP z internetu
- #### ICMP Messages
	- ##### ICMP echo request and echo reply
		- K ověření hostitele a útokům DoS
	- ##### ICMP unreachable
		- K provádění průzkumu sítě a skenování útoků
	- ##### ICMP mask reply 
		- používá se k mapování vnitřní IP sítě
	- ##### ICMP redirects 
		- K nalákání cílového hostitele, aby odeslal provoz přes komprimované zařízení a vytvoření MITM útoku. 
	- #####  ICMP router discovery
		- Používá se k vložení falešných záznamů cest do routovací tabulky cílového hostitele 
### Amplification and Reflection Attacks
- Hackeři často používají techniky zesílení a reflexe k vytvoření DoS útoků.
- #### Amplification
	- Hacker předává zprávy s žádostmi o echo ICMP mnoha hostitelům. Tyto zprávy obsahují zdrojovou IP adresu oběti.
- #### Reflection 
	-  Všichni tito hostitelé odpovídají na podvrženou IP adresu oběti, aby ji přemohli
### Address spoofing attacks
- K útokům spoofing IP address dochází, když hacker vytvoří pakety s falešnými informacemi o zdrojové IP adrese, aby buď skryl identitu odesílatele, nebo aby se vydával za jiného uživatele.
- #### Typy spoofing útoků 
	- ##### Non-blind spoofing
		- Hacker vidí provoz, který je posílán mezi hostitelem a cílem
		- Hacker používá non-blind spoofing ke kontrole paketu odpovědi od cílové oběti. Non-blind  spoofing určuje stav brány firewall.
	 - ##### Blind spoofing  
		 - Hacker nevidí provoz, který je posílán mezi hostitelem a cílem. 
		 - Blind spoofing se používá při DoS útocích.
## TCP a UDP zranitelnosti
- útoky cílené na TCP a UDP
- šest řídicích bitů segmentu TCP:
	- **URG** - Naléhavé pole ukazatele významné
	- **ACK** - Pole potvrzení významné
	- **PSH** - funkce Push
	- **RST** - Resetujte připojení
	- **SYN** - Synchronizace pořadových čísel
	- **FIN** – Žádné další údaje od odesílatele
### Služby TCP
- **TCP poskytuje tyto služby:**
	- Spolehlivé doručení
	- Flow control
	- Stateful communication
		-  Stateful komunikace TCP mezi dvěma stranami probíhá během třícestného handshake TCP
### Útoky TCP
- Hackeři provádějí skenování portů cílových zařízení, aby zjistili, které služby nabízejí.
- #### Typy TCP útoků:
	- ##### TCP SYN Flood attack
		- využívá třícestný handshake TCP
		-  Hacker neustále posílá pakety požadavků relace TCP SYN s náhodně podvrženou zdrojovou IP adresou do cíle. 
		- Cílové zařízení odpoví paketem TCP SYN-ACK na podvrženou IP adresu a čeká na paket TCP ACK.
		- Tyto odpovědi nikdy nepřijdou. Nakonec je cílový hostitel zahlcen napůl otevřenými TCP spojeními a služby TCP jsou odepřeny legitimním uživatelům.
	- ##### TCP Reset Attack
		- Může být použit k ukončení TCP komunikace mezi dvěma hostiteli. TCP může ukončit spojení **normálním způsobem** nebo  **náhlým způsobem**
		- **Normální způsob**
			- Způsob, kdy TCP používá k uzavření TCP spojení čtyřcestnou výměnu sestávající z páru FIN a ACK segmentů z každého koncového bodu TCP.
		- **Náhlý způsob**
			- hostitel přijme segment TCP s nastaveným bitem RST. Toto je náhlý způsob, jak přerušit připojení TCP a informovat přijímajícího hostitele, aby okamžitě přestal používat připojení TCP.
	- ##### TCP Session Hijacking
		- Hacker převezme již ověřený hostitel, když komunikuje s cílem. 
		- Hacker musí podvrhnout IP adresu jednoho hostitele, předpovědět další pořadové číslo a poslat ACK druhému hostiteli. 
		- V případě úspěchu by hacker mohl odesílat, ale ne přijímat, data z cílového zařízení.
### Hlavička a provoz segmentu UDP
- UDP běžně používají DNS, TFTP, NFS a SNMP. Používá se také s aplikacemi v reálném čase.
- UDP je protokol transportní vrstvy bez spojení.
- Má mnohem nižší režii než TCP, protože neobsahuje sekvencování a řízení toku, které zajišťují spolehlivost
- #### Útoky UDP
	- UDP není chráněno žádným šifrováním
	- kdokoli může vidět provoz, změnit jej a odeslat na místo určení
	- ##### UDP flood attacks 
		- Hacker musí použít nástroj jako UDP Unicorn nebo Low Orbit Ion Cannon. 
		- Tyto nástroje odesílají záplavu paketů UDP, často z podvrženého hostitele, na server v podsíti. 
		- Program projde všechny známé porty a pokusí se najít uzavřené porty. 
		- To způsobí, že server odpoví zprávou o nedostupnosti portu ICMP. 
		- Výsledek je velmi podobný útoku DoS. 
## IP služby
### ARP Vulnerabilities
- Hosté vysílají  ARP request  na ostatní hosty v segmentu, aby zjistili MAC adresu hosta s konkrétní IP adresou. 
- Všichni hosté v podsíti přijímají a zpracovávají ARP request.
- Hostitel s odpovídající IP adresou v  ARP requestu odešle ARP reply.
- Hacker může otrávit mezipaměť ARP zařízení v místní síti a vytvořit útok MITM k přesměrování provozu.
- Cílem je zaměřit se na hostitele oběti a nechat jej změnit svou výchozí bránu do zařízení hackera. To umístí hackera mezi oběť a všechny ostatní systémy mimo místní podsíť.
- ####  ARP Cache Poisoning 
	- může být použita ke spuštění různých útoků typu man-in-the-middle.
	- Hacker odešle dvě falešné odpovědi ARP pomocí vlastní MAC adresy 
	- PC aktualizuje svou mezipaměť ARP pomocí výchozí brány, která nyní ukazuje na hostitelskou MAC adresu hackera.
	- R1 také aktualizuje svou mezipaměť ARP pomocí IP adresy PC ukazující na MAC adresu hackera.
	- ARP Cache Poisoning může být **pasivní** nebo **aktivní**
	- **Pasivní** 
		- Situace, kdy hackeři kradou důvěrné informace. 
	- **Aktivní** 
		- situace, kdy hackeři upravují přenášená data nebo vkládají škodlivá data.
### DNS Attacks
- #### DNS Open Resolver Attacks
	- DNS Open Resolver odpovídá na dotazy klientů mimo jeho administrativní doménu
	- ##### DNS cache poisoning attacks 
		- Hackeři odesílají falešné informace o zdroji záznamů (Record Resource) do DNS resolveru, aby přesměrovali uživatele z důvěryhodných stránek na škodlivé stránky
	- ##### DNS apmplification and reflections attacks
		- Hackeři používají útoky DoS nebo DDoS na otevřené resolvery DNS ke zvýšení objemu útoků a ke skrytí skutečného zdroje útoků. 
		- Hackeři odesílají zprávy DNS do Open Resolver pomocí IP adresy cílového hostitele. 
	- ##### DNS resource utilization attacks
		- Útok DoS, který spotřebovává zdroje DNS Open Resolver
		- **Dopad**
			- Může se vyžadovat restartování DNS Open Resolver nebo zastavení a restartování služby.
- #### DNS Stealth Attacks
	- slouží pro skrytí identity útočníka 
	- ##### Techniky DNS stealth
		- ###### Fast Lux
			- Používá se ke skrytí phishingových a malwarových serverů za rychle se měnící komprimovaných hostitelů DNS.
		- ###### Double IP Lux
			- Rychlá změna názvu hostitele
			- změna autoritativního jmenného serveru
		- ###### Domain Generation Algorithms  
			- Používají se pro random generování doménových jmen 
- #### DNS Domain Shadowing Attacks
	-  Hacker shromažďuje přihlašovací údaje k účtu domény, aby v tichosti vytvořil více   subdomén, které lze použít během útoků.
	- subdomény obvykle odkazují na škodlivé servery
### DNS Tunneling
- Hackeři umísťují do provozu DNS provoz bez DNS. 
- Tato metoda často obchází bezpečnostní řešení, když si hacker  přeje komunikovat s roboty v chráněné síti nebo exfiltrovat data z organizace, jako je databáze hesel. 
### DHCP
- Servery DHCP dynamicky poskytují informace o konfiguraci IP klientům.-
### DHCP Attacks
- #### DHCP spoofing attack
	- K síti připojen podvodný server DHCP a poskytuje falešné parametry konfigurace IP klientům
	- ##### Může poskytovat:
		- **Nesprávnou výchozí bránu**
			- pro vytvoření MITM
		- **Chybný DNS server**
			- uživatele nasměruje na škodlivý web
		-  **Chybná IP adresa**
			- Hacker pak vytvoří útok DoS na klienta DHCP
## Network Sec Best Practise
### Confidentiality, Integrity, and Availability
- #### CIA information security triad:
	- **Confidentiality**
		-  k citlivým informacím mají přístup pouze oprávněné osoby, subjekty nebo procesy
	-  **Integrity**
		- Vyžaduje použití kryptografických hashovacích algoritmů
	-  **Availability**
		- Oprávnění uživatelé musí mít nepřetržitý přístup k důležitým zdrojům a datům
### The Defense-in-Depth Approach
- vrstvený přístup
-  kombinace síťových zařízení a služeb, které spolupracují pro ochranu sítě.
- např. **VPN, ASA firewall, IPS, ESA/WSA, AAA Server**
### Firewall 
- systém nebo skupina systémů, která zabezpečuje řízení přístupu mezi sítěmi tím, že uplatňuje nastavené bezpečnostní zásady
- #### společné vlastnosti firewallu:
	-  odolné vůči síťovým útokům
	- jedinými tranzitními body mezi interními podnikovými sítěmi a externími sítěmi
	- vynucují zásady řízení přístupu
 - #### Výhody 
	 - Zabraňují vystavení citlivých hostitelů atd. nedůvěryhodným uživatelům
	 - zabraňují zneužití chyb protokolu
	 - Blokují škodlivá data ze serverů a klientů.
	 - Snižují složitost správy zabezpečení
- #### Omezení 
	- Špatně nakonfigurovaný firewall může mít vážné důsledky pro síť
	- Data z mnoha aplikací nelze bezpečně předat přes firewall
	- Výkon sítě se může zpomalit.
### IPS 
- intrusion detection systems (IDS) a   prevention systems (IPS)
- systémy detekce a prevence
- IDS a IPS jsou nasazeny jako senzory
- IDS a IPS detekují vzory v síťovém provozu pomocí **signatur**
- **Signatura** je sada pravidel, které IDS nebo IPS používá k detekci škodlivé aktivity
### Content Security Appliances
- zahrnují kontrolu nad e-mailem a procházením webu pro uživatele organizace
- ####  Cisco Email Security Appliance (ESA)
	- speciální zařízení určené ke sledování SMTP (Simple Mail Transfer Protocol)
- ####  Cisco Web Security Appliance (WSA)
	-  technologie pro zmírnění webových hrozeb
	- Pomáhá organizacím řešit problémy se zabezpečením a kontrolou webového provozu

## Kryptografie
### Securing Communications
- Organizace musí poskytovat podporu pro zabezpečení dat při jejich přenosu přes odkazy.
- #### Prvky zabezpečené komunikace
	- **Integrita dat**
		- zaručuje, že zpráva nebyla změněna
	- **Ověření původu**
		-  zaručuje, že zpráva není padělkem a skutečně pochází od toho, od koho je uvedena
	- **Důvěrnost dat**
		- zaručuje, že zprávu mohou číst pouze oprávnění uživatelé
	- **Data Non-Repudiation**
		- Zaručuje, že odesílatel nemůže popřít nebo vyvrátit platnost odeslané zprávy
### Integrita dat
- Hashovací funkce se používají k zajištění integrity zprávy
- Zaručují, že se data zprávy náhodně nezměnila
- nelze jej použít k ochraně před záměrnými změnami provedenými hackery
### Hashovací funkce
- #### MD5 se 128bitovým přehledem
	- jednosměrná funkce, která vytváří 128bitovou hashovanou zprávu
	- starý algoritmus. Existují lepší alternativy 
	- používal se v internetových aplikacích
- #### SHA hashovací algoritmus
	- podobný hashovacím funkcím MD5
	- Existuje několik verzí. SHA-1 vytváří 160bitovou hashovanou zprávu 
	-  má známé nedostatky a je to starší algoritmus
- #### SHA-2
	- Zahrnuje:
		- SHA-224 (224 bitů)
		- SHA-256 (256 bitů)
		- SHA-384 (384 bitů) 
		- SHA-512 (512 bitů)
 - #### SHA-3
	 - nejnovější hashovací algoritmus
	 - Zahrnuje:
		- SHA3-224 (224 bitů)
		- SHA3-256 (256 bitů)
		- SHA3-384 (384 bitů) 
		- SHA3-512 (512 bitů)
### Ověření původu
- HMAC (keyed-hash message authentication code)
- HMAC používá další tajný klíč jako vstup do hašovací funkce.
-  HMAC se vypočítá pomocí libovolného kryptografického algoritmu, který kombinuje kryptografickou hashovací funkci s tajným klíčem
- Tajný klíč znají pouze odesílatel a příjemce
### Důvěrnost údajů 
 - K zajištění důvěrnosti dat se **používají dvě třídy šifrování.** Tyto dvě třídy se liší v tom, jak používají klíče.
 - Symetrické šifrování a asymetrické šifrování 
### Symetrické šifrování
- Symetrické algoritmy používají k šifrování a dešifrování dat stejný předem sdílený klíč
- Předsdílený klíč, nazývaný také tajný klíč, zná odesílatel a příjemce dříve, než může proběhnout jakákoli šifrovaná komunikace.
- #### Symetrické šifrovací algoritmy spadají do dvou kategorií:
	- **Blokové šifry**
		- šifrují data v blocích pevné velikosti. 
		- Bloky jsou obvykle 64bitové nebo 128bitové
		- Příklady blokových šifer zahrnují DES a AES
	- **proudové šifry**
		- šifrují data po jednom bitu nebo bajtu v nepřetržitém řetězci.
		- Příklady proudových šifer zahrnují RC4 a SEAL.
- #### Symetrické šifrovací algoritmy 
	- ##### Data encryption standard (DES)
		- starý algoritmus
		- používá krátkou délku klíče
	- ##### 3DES 
		- náhrada za DES
		- třikrát opakuje proces algoritmu DES
	- ##### Advanced Encryption Standard (AES)
		- bezpečný a efektivnější než 3DES
		- nabízí 9 kombinací délky
	- ##### Software Optimized encryption algorithm (SEAL)
		- rychlejší než všechny před ním 
		- používá 160bitový šifrovací klíč
		- má menší dopad na CPU
	- #####  Rivest ciphers (RC) series algorithms
		- byla používaná pro zabezpečení webového provozu
		- je prolomen 
### Asymetrické šifrování
- Jsou navrženy tak, že klíč, který se používá pro šifrování, se liší od klíče, který se používá pro dešifrování
- Dešifrovací klíč nelze vypočítat z šifrovacího klíče a naopak
- Asymetrické algoritmy používají veřejný klíč a soukromý klíč. 
- Oba klíče jsou schopny procesu šifrování, ale pro dešifrování je vyžadován doplňkový párový klíč.
- Asymetrické algoritmy jsou  pomalejší než symetrické algoritmy.
- #### protokoly, které používají algoritmy asymetrického klíče
	-  **Internet Key Exchange (IKE)**
		- základní součást IPsec VPN
	- **Secure Socket Layer (SSL)**  
		- implementováno jako standard IETF Transport Layer Security (TLS).
	- **Secure Shell (SSH)** 
		- protokol poskytuje zabezpečené připojení vzdáleného přístupu k síťovým zařízením
	- **Pretty Good Privacy (PGP)** 
		- program poskytuje kryptografické soukromí a ověřování
- #### Symetrické šifrovací algoritmy 
	- ##### Diffie-Hellman (DH)
		- umožňuje dvěma stranám dohodnout se na klíči, který mohou použít k šifrování zpráv, které si chtějí poslat
		- **Klíče:** 512, 1024, 2048, 3072, 4096
	- ##### Digital signature Standard (DSS) a Digital Signature Algorithm (DSA)
		- DSA je algoritmus veřejného klíče založený na podpisovém schématu ElGamal.
		- rychlost vytváření podpisu je podobná RSA
		- **Klíče:** 512–1024
	- ##### Rivest, Shamir, and Adleman encryption algorithms (RSA)
		- je pro kryptografii s veřejným klíčem, která je založena na současné obtížnosti faktorizace velmi velkých čísel
		- **Klíče: 512 až 2048**
	- ##### ElGamal
		- Algoritmus asymetrického šifrování klíče pro šifrování s veřejným klíčem, který je založen na dohodě o klíči Diffie-Hellman
		- zašifrovaná zpráva je velmi velká, dvakrát větší než původní zpráva
		- **Klíče: 512–1024**
	- ##### Elliptic curve techniques
		- Kryptografii eliptických křivek lze použít k adaptaci mnoha kryptografických algoritmů, jako je Diffie-Hellman nebo ElGamal
		- klíče mohou být mnohem menší
		- **Klíče: 224**
### Asymetrické šifrování
- Asymetrický matematický algoritmus, kde dva počítače generují identický sdílený tajný klíč, aniž by spolu předtím komunikovaly
- Nový sdílený klíč se mezi odesílatelem a příjemcem nikdy nevymění.
-  Protože to však obě strany znají, klíč může být použit šifrovacím algoritmem k šifrování provozu mezi dvěma systémy.
- #### Tři příklady případů, kdy se běžně používá DH:
	- Výměna dat probíhá pomocí IPsec VPN.
	- Používá se při výměně dat pomocí SSL nebo TLS VPN.
	- Data SSH se vyměňují