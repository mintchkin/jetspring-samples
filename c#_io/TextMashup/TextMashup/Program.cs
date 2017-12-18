using System;
using System.Text;

namespace TextMashup
{
    class Program
    {
        // Convert a string to its rot-13 version
        static string Rot13ify(string input)
        {
            StringBuilder output = new StringBuilder(input.Length);
            foreach (char c in input)
            {
                char next;
                // `c` is in the first half of the alphabet
                if ('A' <= c && c <= 'M' || 'a' <= c && c <= 'm')
                {
                    next = (char)(c + 13);
                }
                // `c` is in the last half of the alphabet
                else if ('N' <= c && c <= 'Z' || 'n' <= c && c <= 'z')
                {
                    next = (char)(c - 13);
                }
                else
                {
                    next = c;
                }

                output.Append(next);
            }
            return output.ToString();
        }

        static void Main(string[] args)
        {
            Console.WriteLine("Input a string");
            string input = Console.ReadLine();
            Console.WriteLine("Choose mashup (number):\n1. Rot13ify");


            int n;
            while (!int.TryParse(Console.ReadLine(), out n))
            {
                Console.WriteLine("Invalid choice, try again");
            }

            string output;
            if (n == 1)
            {
                output = Rot13ify(input);
            }
            else
            {
                output = input;
            }

            Console.WriteLine("Input: " + input);
            Console.WriteLine("Output: " + output);
        }
    }
}
