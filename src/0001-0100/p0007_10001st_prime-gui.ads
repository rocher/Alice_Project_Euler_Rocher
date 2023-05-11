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
--                 https://projecteuler.net/problem=7
--
--  10001st prime
--  -------------
--
--  By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can
--  see that the 6th prime is 13.
--
--  What is the 10001st prime number?
--
-------------------------------------------------------------------------------

with Project_Euler.GUI.Problems;
with Project_Euler.GUI.Plotters; use Project_Euler.GUI;

package P0007_10001st_Prime.GUI is

   task type Problem_Task is new Problems.Problem_Task with
      overriding entry Initialize
        (P : not null Plotters.Pointer_To_Plotter_Class);
      overriding entry Start;
      overriding entry Continue;
      overriding entry Stop;
   end Problem_Task;

   function P0007_Factory return Problems.Pointer_To_Problem_Task;

   overriding function Number (Problem : Problem_Task) return Natural is
     (Problem_Number);

   overriding function Title (Problem : Problem_Task) return String is
     (Title_Text);

   overriding function Brief (Problem : Problem_Task) return String is
     (Brief_Text);

   overriding function Answer
     (Problem : in out Problem_Task; Notes : in out Unbounded_String)
      return String is
     ("Use CLI implementation");

end P0007_10001st_Prime.GUI;
