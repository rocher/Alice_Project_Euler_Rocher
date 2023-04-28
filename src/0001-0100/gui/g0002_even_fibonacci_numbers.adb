-------------------------------------------------------------------------------
--
--  ALICE - Adventures for Learning and Inspiring Coding Excellence
--  Copyright (c) 2023 Francesc Rocher <francesc.rocher@gmail.com>
--  SPDX-License-Identifier: MIT
--
-------------------------------------------------------------------------------

with P0002_Even_Fibonacci_Numbers;

with Project_Euler.GUI.Runner.Gnoga_Impl;
with Project_Euler.GUI.Factory;

use Project_Euler.GUI.Runner.Gnoga_Impl;
use Project_Euler.GUI.Factory;

procedure G0002_Even_Fibonacci_Numbers is
   Runner : Project_Euler.GUI.Runner.Gnoga_Impl.Gnoga_Runner_Type;

   function P0002_Factory is new Problem_Factory
     (P0002_Even_Fibonacci_Numbers.Problem_Type);
begin

   Runner.Run (P0002_Factory'Unrestricted_Access);

end G0002_Even_Fibonacci_Numbers;
