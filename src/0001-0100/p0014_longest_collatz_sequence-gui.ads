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

with Project_Euler.GUI.Problems;
with Project_Euler.GUI.Plotters;

package P0014_Longest_Collatz_Sequence.GUI is

   use Project_Euler.GUI;

   task type Problem_Task is new Problems.Problem_Task with
      overriding entry Initialize
        (P : not null Plotters.Pointer_To_Plotter_Class);
      overriding entry Start;
      overriding entry Continue;
      overriding entry Stop;
      --  overriding entry Get_Options;
   end Problem_Task;

   function P0014_Factory return Problems.Pointer_To_Problem_Task;
   procedure P0014_Configure_Options;

   overriding function Number (Problem : Problem_Task) return Natural is
     (Problem_Number);

   overriding function Title (Problem : Problem_Task) return String is
     (Title_Text);

   overriding function Brief (Problem : Problem_Task) return String is
     (Brief_Text);

   overriding function Answer
     (Problem : Problem_Task; Notes : in out Unbounded_String) return String is
     ("Use CLI implementation");

end P0014_Longest_Collatz_Sequence.GUI;
