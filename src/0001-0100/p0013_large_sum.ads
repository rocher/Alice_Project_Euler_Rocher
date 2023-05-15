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
--                 https://projecteuler.net/problem=13
--
--  Large sum
--  ---------
--
--  Work out the first ten digits of the sum of the following one-hundred
--  50-digit numbers.
--
-------------------------------------------------------------------------------

with Ada.Strings.Unbounded;      use Ada.Strings.Unbounded;
with Project_Euler.CLI.Problems; use Project_Euler.CLI.Problems;

package P0013_Large_Sum is

   Problem_Number : constant Natural := 13;
   Title_Text     : constant String  := "Large sum";
   Brief_Text     : constant String  :=
     "Work out the first ten digits of the sum of the following " &
     "one-hundred 50-digit numbers.";

   type Problem_Type is new Problem_Interface with null record;

   overriding function Number (Problem : Problem_Type) return Natural is
     (Problem_Number);

   overriding function Title (Problem : Problem_Type) return String is
     (Title_Text);

   overriding function Brief (Problem : Problem_Type) return String is
     (Brief_Text);

   overriding function Answer
     (Problem : Problem_Type; Notes : in out Unbounded_String) return String;

end P0013_Large_Sum;
