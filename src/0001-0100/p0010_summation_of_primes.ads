-------------------------------------------------------------------------------
--
--  ALICE - Adventures for Learning and Inspiring Coding Excellence
--  Copyright (c) 2023 Francesc Rocher <francesc.rocher@gmail.com>
--  SPDX-License-Identifier: MIT
--
--  ---------------------------------------------------------------------------
--
--  The following problem is taken from Project Euler:
--
--                 https://projecteuler.net/problem=10
--
--  Summation of primes
--  -------------------
--
--  The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
--
--  Find the sum of all the primes below two million.
--
-------------------------------------------------------------------------------

with Ada.Strings.Unbounded;      use Ada.Strings.Unbounded;
with Project_Euler.CLI.Problems; use Project_Euler.CLI.Problems;

package P0010_Summation_Of_Primes is

   Problem_Number : constant Natural := 10;
   Title_Text     : constant String  := "Sum of primes";
   Brief_Text     : constant String  :=
     "Find the sum of all the primes below two million.";

   type Problem_Type is new Problem_Interface with null record;

   overriding function Number (Problem : Problem_Type) return Natural is
     (Problem_Number);

   overriding function Title (Problem : Problem_Type) return String is
     (Title_Text);

   overriding function Brief (Problem : Problem_Type) return String is
     (Brief_Text);

   overriding function Answer
     (Problem : Problem_Type; Notes : in out Unbounded_String) return String;

end P0010_Summation_Of_Primes;
