using System;

class Program
{
    static void Main(string[] args)
    {
        Console.WriteLine("Fibonacciho čísla od 1 do 13:");

        for (int i = 1; i <= 7; i++)
        {
            Console.WriteLine($"F({i}) = {Fibonacci(i)}");
        }

        int digitCount = CountDigits(10);
        Console.WriteLine($"Počet cifer čísla {10} je: {digitCount}");
    }

    static int Fibonacci(int n)
    {
        if (n <= 0)
        {
            return 0; // Nulté Fibonacciho číslo
        }
        else if (n == 1)
        {
            return 1; // První Fibonacciho číslo
        }
        else
        {
            return Fibonacci(n - 1) + Fibonacci(n - 2);
        }
    }

    static int CountDigits(int n)
    {
        // Ujistíme se, že pracujeme s kladným číslem
        n = Math.Abs(n);

        // Základní případ: číslo má pouze jednu cifru
        if (n < 10)
        {
            return 1;
        }

        // Rekurze: odstraníme poslední cifru (n / 10) a přičteme 1
        return 1 + CountDigits(n / 10);
    }
}
