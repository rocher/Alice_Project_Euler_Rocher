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

with Euler_Tools; use Euler_Tools;

package body P0007_10001st_Prime.GUI is

   function P0007_Factory return Problems.Pointer_To_Problem_Task is
      Problem : constant Problems.Pointer_To_Problem_Task := new Problem_Task;
   begin
      return Problem;
   end P0007_Factory;

   -------------------
   -- Plotter_Setup --
   -------------------

   procedure Plotter_Setup
     (Plotter : Plotters.Pointer_To_Plotter_Class; Module : Natural)
   is
   begin
      Plotter.Set_Axes (Min => -10.0, Max => Float (Module));
      Plotter.Draw_Grid
        (X_Major => 100.0, X_Minor => 10.0, Y_Major => 100.0, Y_Minor => 10.0);
      Plotter.Draw_Axes ("", "");
   end Plotter_Setup;

   ------------------
   -- Problem_Task --
   ------------------

   task body Problem_Task is
      Plotter : Plotters.Pointer_To_Plotter_Class;

      Module : constant Natural := 329;
      Color  : String (1 .. 4)  := "#xxx";

      Cursor : Prime_Cursor_Type;
      Prime  : Integer_Type;
      Count  : Natural;
      X, Y   : Float;
   begin

      accept Initialize (P : not null Plotters.Pointer_To_Plotter_Class) do
         Plotter := P;
      end Initialize;

      Plotter_Setup (Plotter, Module);

      Infinite_Loop :
      loop

         accept Start;

         Plotter.Start;

         Prime := Prime_First (Cursor);
         Count := 1;

         Primes_Loop :
         loop
            X := 1.0 + Float (Prime mod Module);
            Y := 1.0 + Float (Prime / Module);
            case Units (Prime) is
               when 1 =>
                  Color := "#900";
               when 3 =>
                  Color := "#090";
               when 7 =>
                  Color := "#009";
               when others =>
                  Color := "#666";
            end case;
            Plotter.Stroke_color (Color);
            Plotter.Rectangle (X - 0.5, Y - 0.5, X + 0.5, Y + 0.5);

            select
               accept Continue;
            or
               accept Stop;
               exit Primes_Loop;
            or
               delay 0.000_1;
            end select;

            exit Primes_Loop when Count = 10_001;

            Prime := Prime_Next (Cursor);
            Count := @ + 1;

         end loop Primes_Loop;

         Plotter.Stop;
         Plotter.Answer (To_String (Prime));

      end loop Infinite_Loop;
   end Problem_Task;

end P0007_10001st_Prime.GUI;
