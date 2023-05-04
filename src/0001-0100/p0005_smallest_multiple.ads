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
--                 https://projecteuler.net/problem=5
--
--  Smallest multiple
--  -----------------
--
--  2520 is the smallest number that can be divided by each of the numbers
--  from 1 to 10 without any remainder.
--
--  What is the smallest positive number that is evenly divisible by all of
--  the numbers from 1 to 20?
--
-------------------------------------------------------------------------------

with Ada.Strings.Unbounded;     use Ada.Strings.Unbounded;
with Project_Euler.CLI.Problem; use Project_Euler.CLI.Problem;

package P0005_Smallest_Multiple is

   Problem_Number : constant Natural := 5;
   Title_Text     : constant String  := "Smallest multiple";
   Brief_Text     : constant String  :=
     "What is the smallest positive number that is evenly divisible by " &
     "all of the numbers from 1 to 20?";

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

end P0005_Smallest_Multiple;
