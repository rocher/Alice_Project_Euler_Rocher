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
--                 https://projecteuler.net/problem=24
--
--  Lexicographic permutations
--  --------------------------
--
--  A permutation is an ordered arrangement of objects. For example, 3124 is
--  one possible permutation of the digits 1, 2, 3 and 4. If all of the
--  permutations are listed numerically or alphabetically, we call it
--  lexicographic order. The lexicographic permutations of 0, 1 and 2 are:
--
--                 012   021   102   120   201   210
--
--  What is the millionth lexicographic permutation of the digits 0, 1, 2, 3,
--  4, 5, 6, 7, 8 and 9?
--
-------------------------------------------------------------------------------

with Ada.Strings.Unbounded;      use Ada.Strings.Unbounded;
with Project_Euler.CLI.Problems; use Project_Euler.CLI.Problems;

package P0024_Lexicographic_Permutations is

   Problem_Number : constant Natural := 24;
   Title_Text     : constant String  := "Lexicographic permutations";
   Brief_Text     : constant String  :=
     "What is the millionth lexicographic permutation of the digits 0, 1, " &
     "2, 3, 4, 5, 6, 7, 8 and 9?";

   type Problem_Type is new Problem_Interface with null record;

   overriding function Number (Problem : Problem_Type) return Natural is
     (Problem_Number);

   overriding function Title (Problem : Problem_Type) return String is
     (Title_Text);

   overriding function Brief (Problem : Problem_Type) return String is
     (Brief_Text);

   overriding function Answer
     (Problem : in out Problem_Type; Notes : in out Unbounded_String)
      return String;

end P0024_Lexicographic_Permutations;
