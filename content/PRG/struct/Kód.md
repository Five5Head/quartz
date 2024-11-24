```cs
﻿using System;
using System.Diagnostics;
using System.Text;

struct Otazka
{
    public string text_otazky;
    public string odpoved1;
    public string odpoved2;
    public string odpoved3;
    public int spravna_odpoved;
    public int pocet_bodu;
}

namespace Application
{
    class Program
    {
        static void Main(string[] args)
        {
            Otazka[] test = new Otazka[10];
            // GENERACE RANDOM POČETNÍCH OTÁZEK DO STRUCTU
            // for (int i = 0; i < 10; i++)
            // {
            //     Random rnd_cislo = new Random();
            //     int cislo_x = rnd_cislo.Next(-100,100);
            //     int cislo_y = rnd_cislo.Next(-100,100);
            //     int vysledek = cislo_x * cislo_y;
            //     int[] odpovedi = {vysledek, rnd_cislo.Next(-100,100) * rnd_cislo.Next(-100,100), rnd_cislo.Next(-100,100) * rnd_cislo.Next(-100,100)};
            //     for (int x = 0; x < 3; x++)
            //     {
            //         int rnd_number = rnd_cislo.Next(0,2);

            //         if (rnd_number != odpovedi[x])
            //         {
            //             int temp = odpovedi[x];
            //             odpovedi[x] = odpovedi[rnd_number];
            //             odpovedi[rnd_number] = temp;
            //         }
            //     }
            //     for (int x = 0; x < 3; x++)
            //     {
            //         if (odpovedi[x] == vysledek)
            //         {
            //             test[i].spravna_odpoved = vysledek;
            //         }
            //     }

            //     test[i].text_otazky = $"{cislo_x} x {cislo_y} je?";
            //     test[i].odpoved1 = odpovedi[0].ToString();
            //     test[i].odpoved2 = odpovedi[1].ToString();
            //     test[i].odpoved3 = odpovedi[2].ToString();
            //     test[i].pocet_bodu = 3;
            // }

            // VLOŽENÍ OTÁZEK DO STRUCTU Z SOUBORU
            // PROMĚNNOU "POCET_INFORMACI" NASTAVTE NA HODNOTU PODLE TOHO, KOLIK INFORMACÍ JE V OTÁZCE (TEXT_ODPOVEDI,ODPOVED1,ODPOVED2,ODPOVED3,SPRAVNA_ODPOVED,POCET_BODU) = 6,
            // POKUD BUDOU OTÁZKY ODĚLENÉ MEZEROU, TAK K PROMĚNNÉ NESMÍTE ZAPOMENOUT PŘIČÍST I TU MEZERU!
            // PROMĚNNÉ "RADKU" A "POCET_OTAZEK" NEMĚNIT, TY SE SPOČÍTAJÍ AUTOMATICKY
            int radku = 0;
            int pocet_otazek = 0;
            int pocet_informaci = 6;
            string[] soubor_otazek = File.ReadAllLines("soubor_otazek.txt");
            foreach (string x in soubor_otazek)
            {
                radku++;
            }
            if (pocet_informaci % 2 != 0)
            {
                radku += 1;
            }
            pocet_otazek = radku / pocet_informaci;

            System.Console.WriteLine(radku);
            System.Console.WriteLine(pocet_otazek);

            for (int i = 0; i < pocet_otazek; i++)
            {
                test[i].text_otazky = soubor_otazek[i*pocet_informaci];
                test[i].odpoved1 = soubor_otazek[i*pocet_informaci+1];
                test[i].odpoved2 = soubor_otazek[i*pocet_informaci+2];
                test[i].odpoved3 = soubor_otazek[i*pocet_informaci+3];
                test[i].spravna_odpoved = Int32.Parse(soubor_otazek[i*pocet_informaci+4]);
                test[i].pocet_bodu = Int32.Parse(soubor_otazek[i*pocet_informaci+5]);
            }
            
            // ZOBRAZÍ VŠECH 10 OTÁZEK A MOŽNOST ODPOVĚDĚT, NA KONCI ZOBRAZÍ SLOUČET BODŮ 
            // int skore = 0;
            // for (int i = 0; i < 10; i++)
            // {
            //     System.Console.WriteLine("");
            //     System.Console.WriteLine(test[i].text_otazky);
            //     System.Console.WriteLine($"A) {test[i].odpoved1}");
            //     System.Console.WriteLine($"B) {test[i].odpoved2}");
            //     System.Console.WriteLine($"C) {test[i].odpoved3}");
            //     System.Console.WriteLine($"pocet bodu: {test[i].pocet_bodu}");

            //     string input = Console.ReadLine();
            //     if (input == test[i].spravna_odpoved)
            //     {
            //         System.Console.WriteLine("Spravna odpoved!");
            //         skore += test[i].pocet_bodu;
            //     }
            //     else
            //     {
            //         System.Console.WriteLine("Spatna odpoved!");
            //     }
            // }
            // System.Console.WriteLine("Konec, vsechny odpovedi zodpovezene");
            // System.Console.WriteLine($"Skore je: {skore}");

            // ZAPÍŠE NÁHODNÝCH 8 OTÁZEK DO SOUBORU
            int[] vybrane_otazky = new int[8];
            int pocet_vybranych = 0;
            int vybrana_otazka = 0;
            bool opakovat = false;
            int soucet_bodu = 0;
            Random rnd = new Random();

            for (int i = 0; i < 8; i++)
            {
                do
                {
                    vybrana_otazka = rnd.Next(0,9);
                    if (i == 0)
                    {
                        break;
                    }
                    for (int x = 0; x < pocet_vybranych; x++)
                    {
                        if (vybrana_otazka == vybrane_otazky[x])
                        {
                            opakovat = true;
                            break;
                        }
                        else
                        {
                            opakovat = false;
                        }
                    }
                } while (opakovat);
                opakovat = true;
                pocet_vybranych++;
                vybrane_otazky[i] = vybrana_otazka;
            }
            for (int i = 0; i < 8; i++)
            {
                System.Console.Write($"{vybrane_otazky[i]},");
            }

            File.Create("otazky.txt").Close();

            for (int i = 0; i < 8; i++)
            {
                // DÁ DO SOUBORU VŠECHNY PRVKY STRUCTU
                string[] otazka_text = 
                {
                    "Otázka: " + test[vybrane_otazky[i]].text_otazky,
                    "A) " + test[vybrane_otazky[i]].odpoved1,
                    "B) " + test[vybrane_otazky[i]].odpoved2,
                    "C) " + test[vybrane_otazky[i]].odpoved3,
                    "Správná odpověď: " + test[vybrane_otazky[i]].spravna_odpoved.ToString(),
                    "Možný počet bodů: " + test[vybrane_otazky[i]].pocet_bodu.ToString(),
                    ""
                };
                // DÁ DO SOUBORU POUZE PLATNÉ OTÁZKY, RESP. TY, KTERÉ MAJÍ VŠECHNY HODNOTY PLATNÉ
                if (test[vybrane_otazky[i]].text_otazky != null)
                {
                    File.AppendAllLines("otazky.txt",otazka_text);
                }

                // DÁ DO SOUBORU POUZE TEXT_OTÁZKY
                // File.AppendAllText("otazky.txt",test[vybrane_otazky[i]].text_otazky + Environment.NewLine);

                soucet_bodu += test[vybrane_otazky[i]].pocet_bodu;
            }
            File.AppendAllText("otazky.txt",Environment.NewLine + soucet_bodu.ToString() + "bodů");
        }
    }
}
```