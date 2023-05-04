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
--                 https://projecteuler.net/problem=16
--
--  Power digit sum
--  ---------------
--
--  2¹⁵ = 32768 and the sum of its digits is 3 + 2 + 7 + 6 + 8 = 26.
--
--  What is the sum of the digits of the number 2¹⁰⁰⁰?
--
-------------------------------------------------------------------------------

with Ada.Strings.Unbounded;     use Ada.Strings.Unbounded;
with Project_Euler.CLI.Problem; use Project_Euler.CLI.Problem;

package P0016_Power_Digit_Sum is

   Problem_Number : constant Natural := 16;
   Title_Text     : constant String  := "Power digit sum";
   Brief_Text     : constant String  :=
     "What is the sum of the digits of the number 2^1000?";

   type Problem_Type is new CLI_Problem_Type with null record;

   overriding function Number (Problem : Problem_Type) return Natural is
     (Problem_Number);

   overriding function Title (Problem : Problem_Type) return String is
     (Title_Text);

   overriding function Brief (Problem : Problem_Type) return String is
     (Brief_Text);

   overriding function Answer
     (Problem : in out Problem_Type; Notes : in out Unbounded_String)
      return String;

end P0016_Power_Digit_Sum;
