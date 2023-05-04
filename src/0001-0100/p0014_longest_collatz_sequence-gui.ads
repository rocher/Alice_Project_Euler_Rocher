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

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;

with Project_Euler.GUI.Problem; use Project_Euler.GUI.Problem;
with Project_Euler.GUI.Plotter; use Project_Euler.GUI.Plotter;

with Euler_Tools_Int1; use Euler_Tools_Int1;
with Parse_Args;       use Parse_Args;

--  with P0014_Longest_Collatz_Sequence;

package P0014_Longest_Collatz_Sequence.GUI is

   task type Problem_Task is new GUI_Problem_Task with
      overriding entry Initialize (P : not null Pointer_To_Plotter_Class);
      overriding entry Start;
      overriding entry Continue;
      overriding entry Stop;
   end Problem_Task;

   function P0014_Factory return Pointer_To_GUI_Problem_Class;

   overriding function Number (Problem : Problem_Task) return Natural is
     (Problem_Number);

   overriding function Title (Problem : Problem_Task) return String is
     (Title_Text);

   overriding function Brief (Problem : Problem_Task) return String is
     (Brief_Text);

   --  overriding procedure Configure_Options
   --    (Problem : Problem_Task; Parser : in out Parse_Args.Argument_Parser);

   --  overriding procedure Parse_Options
   --    (Problem : in out Problem_Task; Parser : Parse_Args.Argument_Parser);

   overriding function Answer
     (Problem : in out Problem_Task; Notes : in out Unbounded_String)
      return String is
     ("Use CLI implementation");

private

--  task type Problem_Task is new GUI_Problem_Task with
--     Max_Length : Integer_Type := 0;
--     Max_Count  : Natural      := 0;

--     Option_Reverse : Boolean := False;
--  end Problem_Task;

end P0014_Longest_Collatz_Sequence.GUI;
