using System;

class Program
{
    static void Main()
    {
        Console.Write("Zadejte číslo: ");
        int cislo;
        
        // Načtení čísla od uživatele a ověření správnosti vstupu
        if (int.TryParse(Console.ReadLine(), out cislo) && cislo > 0)
        {
            // Převod čísla na římské číslo
            string rimskeCislo = PrevedNaRimske(cislo);
            Console.WriteLine($"Římské číslo: {rimskeCislo}");
        }
        else
        {
            Console.WriteLine("Zadané číslo není platné.");
        }
    }

    static string PrevedNaRimske(int cislo)
    {
        string[] rimskaCisla = { "M", "CM", "D", "CD", "C", "XC", "L", "XL", "X", "IX", "V", "IV", "I" };
        int[] hodnoty = { 1000, 900, 500, 400, 100, 90, 50, 40, 10, 9, 5, 4, 1 };

        string vysledek = "";

        for (int i = 0; i < hodnoty.Length; i++)
        {
            while (cislo >= hodnoty[i])
            {
                vysledek += rimskaCisla[i];
                cislo -= hodnoty[i];
            }
        }

        return vysledek;
    }
}