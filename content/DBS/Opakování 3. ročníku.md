### V tabulce PRUKAZKY ve sloupci TITUL změňte prázdné hodnoty na text „Nemá titul“.
```sql
UPDATE PRUKAZKY 
SET JMENO = 'Nemá titul'
WHERE TITUL IS NULL;

SELECT *
FROM PRUKAZKY;
```
### Do tabulky TITULYM přidejte sloupec PRODUCENT (text 20 znaků).
```sql
ALTER TABLE TITULYM
ADD PRODUCENT2 varchar(20);

```
### Do tabulky CTENAR přidejte sloupec POHLAVI (možno zadat pouze hodnoty „M“, „Ž“).
```sql
ALTER TABLE CTENAR
ADD POHLAVI VARCHAR(1)
CHECK (POHLAvi IN ('M','Ž'));
```
### Vytvořte sekvenci SEQ_CTENAR pro tabulku CTENAR (generuje číselné hodnoty od 6 do 999 po 1.
```sql
CREATE SEQUENCE SEQ_CTENAR
START WITH 1
INCREMENT BY 6
MINVALUE 1
MAXVALUE 999
CYCLE;
```
### Vložte do tabulky CTENAR do sloupců císlo, jmeno, prijmeni hodnoty – hodnota vygenerovaná sekvencí, „Josef“, „Kozel“.
```sql
INSERT INTO CTENAR (cislo, jmeno, prijmeni)
VALUES (SEQ_CTENAR.NEXTVAL, 'Josef', 'Kozel');
```

```sql
--- Testovací
SELECT *
FROM VYPUJCKA;
SELECT *
FROM CTENAR;
SELECT *
FROM ARCHIV;
SELECT *
FROM KNIHA;
SELECT *
FROM EXEMPLAR;
SELECT *
FROM PRUKAZKY;
```
### Vytvořte dotaz, který zobrazí jméno, příjmení z tabulky CTENAR a datum vypůjčení z tabulky VYPUJCKA těch čtenářů, kteří jsou z Ostravy.
```sql
SELECT CTENAR.JMENO, CTENAR.PRIJMENI, VYPUJCKA.PUJCENO
FROM CTENAR
JOIN VYPUJCKA ON CTENAR.CISLO = VYPUJCKA.CISLO
WHERE UPPER(CTENAR.MESTO) like 'OSTRAVA';
```
### Napište dotaz, který zobrazí jméno, příjmení, datum narození a stáří (celé roky) všech lidí z tabulky PRUKAZKY, kteří mají titul.
```sql
SELECT JMENO, PRIJMENI, NAROZEN
    EXTRACT(YEAR FROM SYSDATE) - EXTRACT(YEAR FROM NAROZEN) AS STARI
FROM PRUKAZKY
WHERE TITUL IS NOT NULL;
```
### apište dotaz, který zobrazí seznam všech lidí z tabulky PRUKAZKY, kteří se narodili ve stejný den, jako je název dnešního dne – ten zjistěte pomocí funkce.
```sql
SELECT JMENO, PRIJMENI, TO_CHAR(NAROZEN,'DAY') AS "NAROZEN_DAY"
FROM PRUKAZKY
WHERE TO_CHAR(SYSDATE,'DAY') = TO_CHAR(NAROZEN,'DAY');
```
### Napište dotaz, který zjistí z tabulky CTENAR podle rodného čísla pohlaví – „muž“, „žena“ a vypíše je spolu se jménem a příjmením u těch čtenářů, kteří mají délku jména kratší jak 5 znaků.
```sql
SELECT JMENO, PRIJMENI,
CASE 
    WHEN SUBSTR(RC, 5, 2) > 50 THEN 'žena'
    ELSE 'muž'
END AS pohlavi
FROM CTENAR
WHERE LENGTH(JMENO) < 5;
```
### Vytvořte dotaz, který zobrazí jméno, příjmení z tabulky PRUKAZKY a jejich průměrnou zaplacenou pokutu, zaokrouhlenou na 1 desetinné místo (tabulka ARCHIV). Výpis zobrazí jen ty, kteří mají průměrnou pokutu větší než 3.
```sql
SELECT PRUKAZKY.JMENO, PRUKAZKY.PRIJMENI, 
    ROUND(AVG(ARCHIV.POKUTA),1) AS POKUTA_ROUND
FROM PRUKAZKY
JOIN ARCHIV ON PRUKAZKY.PRUKAZKA = ARCHIV.KDO_CISLO
GROUP BY PRUKAZKY.JMENO, PRUKAZKY.PRIJMENI
HAVING AVG(ARCHIV.POKUTA) > 3;
```
### Vytvořte dotaz, který zobrazí název knihy, autora a celkovou cenu jejich exemplářů (tabulky KNIHA, EXEMPLAR). Dotaz zobrazí ale jen české knihy, které mají celkovou cenu jejich exemplářů větší než 100.
```sql
SELECT KNIHA.NAZEV, KNIHA.AUTOR,
    SUM(EXEMPLAR.CENA) AS CENA
FROM KNIHA
JOIN EXEMPLAR ON KNIHA.ISBN = EXEMPLAR.ISBN
WHERE KNIHA.ZEME = 'CZ'
GROUP BY KNIHA.NAZEV, KNIHA.AUTOR
HAVING SUM(EXEMPLAR.CENA) > 100;
```

```sql
--- Testovací
SELECT *
FROM CTENAR;
SELECT *
FROM VYPUJCKA;
SELECT *
FROM EXEMPLAR;
```
### Vytvořte dotaz, který zobrazí jméno, příjmení čtenářů, datum jejich výpůjčky, cenu vypůjčeného exempláře (tabulky CTENAR, EXEMPLAR, VYPUJCKA). Dotaz zobrazí jen ty záznamy, kde je ceny exempláře v rozmezí od 200 do 500.
```sql
SELECT CTENAR.JMENO, CTENAR.PRIJMENI, VYPUJCKA.PUJCENO, EXEMPLAR.CENA
FROM CTENAR
JOIN VYPUJCKA ON CTENAR.CISLO = VYPUJCKA.CISLO
JOIN EXEMPLAR ON VYPUJCKA.ID = EXEMPLAR.ID
WHERE EXEMPLAR.CENA >= 200 AND EXEMPLAR.CENA <= 500;
```
### Vytvořte dotaz, který zobrazí jméno, příjmení, datum narození z tabulky PRUKAZKY těch lidí, kteří jsou starší než všichni lidé bez titulu bydlící v Praze (řešte poddotazem).
```sql
SELECT JMENO, PRIJMENI, NAROZEN
FROM PRUKAZKY
WHERE NAROZEN < (
    SELECT MIN(NAROZEN)
    FROM PRUKAZKY
    WHERE MISTO like 'Praha%' AND TITUL = 'Nemá titul'
);

--- Testovací
SELECT NAROZEN
FROM PRUKAZKY
WHERE MISTO like 'Praha%' AND TITUL = 'Nemá titul'
ORDER BY NAROZEN DESC;
```
### Vytvořte tabulku DOBRI_ZAKAZNICI, kterou vytvoříte jako výběr těch zákazníků z tabulky PRUKAZKY (jejich jméno, příjmení, počet_vypujcek), kteří si v půjčovně vypůjčili více jak 15krát (tab ARCHIV).
```sql
CREATE TABLE DOBRI_ZAKAZNICI AS
    SELECT PRUKAZKY.JMENO, PRUKAZKY.PRIJMENI, COUNT(ARCHIV.KDO_CISLO) AS POCET_VYPUJCEK
    FROM PRUKAZKY
    JOIN ARCHIV ON PRUKAZKY.PRUKAZKA = ARCHIV.KDO_CISLO
    GROUP BY PRUKAZKY.JMENO, PRUKAZKY.PRIJMENI
    HAVING COUNT(ARCHIV.KDO_CISLO) > 15;

--- Testovací
SELECT JMENO, PRIJMENI, POCET_VYPUJCEK
FROM DOBRI_ZAKAZNICI;
```