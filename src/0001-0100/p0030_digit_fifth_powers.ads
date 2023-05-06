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
--                 https://projecteuler.net/problem=30
--
--  Digit fifth powers
--  ------------------
--
--  Surprisingly there are only three numbers that can be written as the sum
--  of fourth powers of their digits:
--
--                 1634 = 1⁴ + 6⁴ + 3⁴ + 4⁴
--                 8208 = 8⁴ + 2⁴ + 0⁴ + 8⁴
--                 9474 = 9⁴ + 4⁴ + 7⁴ + 4⁴
--
--  As 1 = 14 is not a sum it is not included.
--
--  The sum of these numbers is 1634 + 8208 + 9474 = 19316.
--
--  Find the sum of all the numbers that can be written as the sum of fifth
--  powers of their digits.
--
-------------------------------------------------------------------------------

with Ada.Strings.Unbounded;      use Ada.Strings.Unbounded;
with Project_Euler.CLI.Problems; use Project_Euler.CLI.Problems;

package P0030_Digit_Fifth_Powers is

   Problem_Number : constant Natural := 30;
   Title_Text     : constant String  := "Digit fifth powers";
   Brief_Text     : constant String  :=
     "Find the sum of all the numbers that can be written as the sum of " &
     "fifth powers of their digits.";

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

end P0030_Digit_Fifth_Powers;
