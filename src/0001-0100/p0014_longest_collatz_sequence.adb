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
--                 https://projecteuler.net/problem=14
--
--  Longest Collatz sequence
--  ------------------------
--
--  The following iterative sequence is defined for the set of positive
--  integers:
--
--                 n → n/2 (n is even)
--                 n → 3n + 1 (n is odd)
--
--  Using the rule above and starting with 13, we generate the following
--  sequence:
--
--                 13 → 40 → 20 → 10 → 5 → 16 → 8 → 4 → 2 → 1
--
--  It can be seen that this sequence (starting at 13 and finishing at 1)
--  contains 10 terms. Although it has not been proved yet (Collatz Problem),
--  it is thought that all starting numbers finish at 1.
--
--  Which starting number, under one million, produces the longest chain?
--
--  NOTE: Once the chain starts the terms are allowed to go above one
--  million.
--
-------------------------------------------------------------------------------

with Simple_Logging; use Simple_Logging;

package body P0014_Longest_Collatz_Sequence is

   -----------------------
   -- Configure_Options --
   -----------------------

   overriding procedure Configure_Options
     (Problem : Problem_Type; Parser : in out Parse_Args.Argument_Parser)
   is
   begin
      Parser.Add_Option
        (Make_Boolean_Option (False), Name => "REVERSE", Short_Option => 'r',
         Long_Option                       => "reverse",
         Usage => "Traverse search space in reverse order");
   end Configure_Options;

   -------------------
   -- Parse_Options --
   -------------------

   overriding procedure Parse_Options
     (Problem : in out Problem_Type; Parser : Parse_Args.Argument_Parser)
   is
   begin
      Problem.Option_Reverse := Parser.Boolean_Value ("REVERSE");
      Simple_Logging.Debug ("Reverse = " & Problem.Option_Reverse'Image);
   end Parse_Options;

   ------------
   -- Answer --
   ------------

   overriding function Answer
     (Problem : in out Problem_Type; Notes : in out Unbounded_String)
      return String
   is
      Start   : Integer_Type;
      Δ_Start : Integer_Type;
      Last    : Integer_Type;
      Number  : Integer_Type;

      Length : Integer_Type := 0;
      Answer : Integer_Type := 0;
   begin

      Start   := (if Problem.Option_Reverse then 999_999 else 1);
      Δ_Start := (if Problem.Option_Reverse then -1 else 1);
      Last    := (if Problem.Option_Reverse then 1 else 999_999);

      Problem.Max_Length := 0;
      Problem.Max_Count  := 0;

      loop
         Number := Collatz_Next (Start);
         Length := 1;

         loop
            Number := Collatz_Next (Number);
            Length := @ + 1;
            exit when Number = 1;
         end loop;

         if Length > Problem.Max_Length then
            Problem.Max_Length := Length;
            Problem.Max_Count  := @ + 1;
            Answer             := Start;
         end if;

         exit when Start = Last;
         Start := @ + Δ_Start;
      end loop;

      Notes :=
        To_Unbounded_String
          ("The chain contains" & Problem.Max_Length'Image &
           " numbers; Max changed" & Problem.Max_Count'Image & " times");

      return To_String (Answer);
   end Answer;

end P0014_Longest_Collatz_Sequence;
