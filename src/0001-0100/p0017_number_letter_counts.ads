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
--                 https://projecteuler.net/problem=17
--
--  Number letter counts
--  --------------------
--
--  If the numbers 1 to 5 are written out in words: one, two, three, four,
--  five, then there are 3 + 3 + 5 + 4 + 4 = 19 letters used in total.
--
--  If all the numbers from 1 to 1000 (one thousand) inclusive were written
--  out in words, how many letters would be used?
--
--  NOTE: Do not count spaces or hyphens. For example, 342 (three hundred and
--  forty-two) contains 23 letters and 115 (one hundred and fifteen) contains
--  20 letters. The use of "and" when writing out numbers is in compliance
--  with British usage.
--
-------------------------------------------------------------------------------

with Ada.Strings.Unbounded;      use Ada.Strings.Unbounded;
with Project_Euler.CLI.Problems; use Project_Euler.CLI.Problems;

package P0017_Number_Letter_Counts is

   Problem_Number : constant Natural := 17;
   Title_Text     : constant String  := "Number letter counts";
   Brief_Text     : constant String  :=
     "If all the numbers from 1 to 1000 (one thousand) inclusive were " &
     "written out in words, how many letters would be used?";

   type Problem_Type is new Problem_Interface with null record;

   overriding function Number (Problem : Problem_Type) return Natural is
     (Problem_Number);

   overriding function Title (Problem : Problem_Type) return String is
     (Title_Text);

   overriding function Brief (Problem : Problem_Type) return String is
     (Brief_Text);

   overriding function Answer
     (Problem : Problem_Type; Notes : in out Unbounded_String) return String;

end P0017_Number_Letter_Counts;
