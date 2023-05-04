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
--                 https://projecteuler.net/problem=20
--
--
--  Factorial digit sum
--
--  n! means n × (n − 1) × ... × 3 × 2 × 1
--
--  For example, 10! = 10 × 9 × ... × 3 × 2 × 1 = 3628800, and the sum of the
--  digits in the number 10! is 3 + 6 + 2 + 8 + 8 + 0 + 0 = 27.
--
--  Find the sum of the digits in the number 100!
--
-------------------------------------------------------------------------------

with Ada.Strings.Unbounded;     use Ada.Strings.Unbounded;
with Project_Euler.CLI.Problem; use Project_Euler.CLI.Problem;

package P0020_Factorial_Digit_Sum is

   Problem_Number : constant Natural := 20;
   Title_Text     : constant String  := "Factorial digit sum";
   Brief_Text     : constant String  :=
     "Find the sum of the digits in the number 100!";

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

end P0020_Factorial_Digit_Sum;
