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
--                 https://projecteuler.net/problem=25
--
--  1000-digit Fibonacci number
--  ---------------------------
--
--  The Fibonacci sequence is defined by the recurrence relation:
--
--                 Fn = Fn−1 + Fn−2, where F1 = 1 and F2 = 1.
--
--  Hence the first 12 terms will be:
--
--                 F1 = 1
--                 F2 = 1
--                 F3 = 2
--                 F4 = 3
--                 F5 = 5
--                 F6 = 8
--                 F7 = 13
--                 F8 = 21
--                 F9 = 34
--                 F10 = 55
--                 F11 = 89
--                 F12 = 144
--
--  The 12th term, F12, is the first term to contain three digits.
--
--  What is the index of the first term in the Fibonacci sequence to contain
--  1000 digits?
--
-------------------------------------------------------------------------------

with Ada.Strings.Unbounded;      use Ada.Strings.Unbounded;
with Project_Euler.CLI.Problems; use Project_Euler.CLI.Problems;

package P0025_1000_Digit_Fibonacci_Number is

   Problem_Number : constant Natural := 25;
   Title_Text     : constant String  := "1000-digit Fibonacci number";
   Brief_Text     : constant String  :=
     "What is the index of the first term in the Fibonacci sequence to " &
     "contain 1000 digits?";

   type Problem_Type is new Problem_Interface with null record;

   overriding function Number (Problem : Problem_Type) return Natural is
     (Problem_Number);

   overriding function Title (Problem : Problem_Type) return String is
     (Title_Text);

   overriding function Brief (Problem : Problem_Type) return String is
     (Brief_Text);

   overriding function Answer
     (Problem : Problem_Type; Notes : in out Unbounded_String) return String;

end P0025_1000_Digit_Fibonacci_Number;
