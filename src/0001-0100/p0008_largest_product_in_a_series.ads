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
--                 https://projecteuler.net/problem=8
--
--  Largest product in a series
--  ---------------------------
--
--  The four adjacent digits in the 1000-digit number that have the greatest
--  product are 9 × 9 × 8 × 9 = 5832.
--
--  Find the thirteen adjacent digits in the 1000-digit number that have the
--  greatest product. What is the value of this product?
--
-------------------------------------------------------------------------------

with Ada.Strings.Unbounded;     use Ada.Strings.Unbounded;
with Project_Euler.CLI.Problem; use Project_Euler.CLI.Problem;

package P0008_Largest_Product_In_A_Series is

   Problem_Number : constant Natural := 8;
   Title_Text     : constant String  := "Largest product in a series";
   Brief_Text     : constant String  :=
     "Find the thirteen adjacent digits in the 1000-digit number that " &
     "have the greatest product. What is the value of this product?";

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

end P0008_Largest_Product_In_A_Series;
