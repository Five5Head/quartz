using System;
using System.IO;

struct Student
{
    public string jmeno;
    public string trida;
    public int vek;
}

namespace Application
{
    class Program
    {
        static void Main(string[] args)
        {
            Student[] Skola = new Student[100];
            string[] soubor_zaku = File.ReadAllLines("skola.txt");

            for (int i = 0; i < 12; i++)
            {
                Skola[i].jmeno = soubor_zaku[i * 3];
                Skola[i].trida = soubor_zaku[i * 3 + 1];
                Skola[i].vek = Int32.Parse(soubor_zaku[i * 3 + 2]);
            }

            int[] plnoleti = new int[100];
            int pocet_plnoletych = 0;

            for (int i=0;i<12;i++)
            {
                if (Skola[i].vek >= 18)
                {
                    plnoleti[pocet_plnoletych] = i;
                    pocet_plnoletych++;  
                }
            }
            if (pocet_plnoletych == 0)
            {
                for (int i = 12; i < 14; i++)
                {
                    Skola[i].jmeno = Console.ReadLine();
                    Skola[i].trida = Console.ReadLine();
                    Skola[i].vek = Int32.Parse(Console.ReadLine());
                }
            }
            File.Create("plnoleti.txt").Close();
            Console.WriteLine($"Pocet plnoletych zaku je {pocet_plnoletych}.");
            Console.WriteLine("\nplnoleti zaci:");

            for (int i=0;i<pocet_plnoletych;i++)
            {
                Console.WriteLine($"{Skola[plnoleti[i]].jmeno} - {Skola[plnoleti[i]].vek}");
                String[] plnoleti_soubor = {
                    Skola[plnoleti[i]].jmeno,
                    Skola[plnoleti[i]].trida,
                    Skola[plnoleti[i]].vek.ToString()
                };
                File.AppendAllLines("plnoleti.txt", plnoleti_soubor);
            }
            Console.WriteLine("Plnoleti zaci byli uspesne ulozeni do souboru plnoleti.txt");
        }
    }
}