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
--                 https://projecteuler.net/problem=4
--
--  Largest palindrome product
--  --------------------------
--
--  A palindromic number reads the same both ways. The largest palindrome
--  made from the product of two 2-digit numbers is 9009 = 91 × 99.
--
--  Find the largest palindrome made from the product of two 3-digit numbers.
--
-------------------------------------------------------------------------------

with Ada.Strings.Unbounded;      use Ada.Strings.Unbounded;
with Project_Euler.CLI.Problems; use Project_Euler.CLI.Problems;

package P0004_Largest_Palindrome_Product is

   Problem_Number : constant Natural := 4;
   Title_Text     : constant String  := "Largest palindrome product";
   Brief_Text     : constant String  :=
     "Find the largest palindrome made from the product of two " &
     "3-digit numbers.";

   type Problem_Type is new Problem_Interface with null record;

   overriding function Number (Problem : Problem_Type) return Natural is
     (Problem_Number);

   overriding function Title (Problem : Problem_Type) return String is
     (Title_Text);

   overriding function Brief (Problem : Problem_Type) return String is
     (Brief_Text);

   overriding function Answer
     (Problem : Problem_Type; Notes : in out Unbounded_String) return String;

end P0004_Largest_Palindrome_Product;
