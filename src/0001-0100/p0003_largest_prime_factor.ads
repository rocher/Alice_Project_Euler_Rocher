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
--                 https://projecteuler.net/problem=3
--
--  Largest prime factor
--  --------------------
--
--  The prime factors of 13195 are 5, 7, 13 and 29.

--  What is the largest prime factor of the number 600851475143?
--
-------------------------------------------------------------------------------

with Ada.Strings.Unbounded;      use Ada.Strings.Unbounded;
with Project_Euler.CLI.Problems; use Project_Euler.CLI.Problems;

package P0003_Largest_Prime_Factor is

   Problem_Number : constant Natural := 3;
   Title_Text     : constant String  := "Largest primer factor";
   Brief_Text     : constant String  :=
     "What is the largest prime factor of the number 600851475143?";

   type Problem_Type is new Problem_Interface with null record;

   overriding function Number (Problem : Problem_Type) return Natural is
     (Problem_Number);

   overriding function Title (Problem : Problem_Type) return String is
     (Title_Text);

   overriding function Brief (Problem : Problem_Type) return String is
     (Brief_Text);

   overriding function Answer
     (Problem : Problem_Type; Notes : in out Unbounded_String) return String;

end P0003_Largest_Prime_Factor;
