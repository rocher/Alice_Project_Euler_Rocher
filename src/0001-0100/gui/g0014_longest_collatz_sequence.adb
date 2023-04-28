-------------------------------------------------------------------------------
--
--  ALICE - Adventures for Learning and Inspiring Coding Excellence
--  Copyright (c) 2023 Francesc Rocher <francesc.rocher@gmail.com>
--  SPDX-License-Identifier: MIT
--
-------------------------------------------------------------------------------

with Project_Euler.GUI.Runner.Gnoga_Impl;
with Project_Euler.GUI.Factory;

use Project_Euler.GUI.Runner.Gnoga_Impl;
use Project_Euler.GUI.Factory;

with P0014_Longest_Collatz_Sequence; use P0014_Longest_Collatz_Sequence;

procedure G0014_Longest_Collatz_Sequence is

   Runner : Gnoga_Runner_Type;
   function P0014_Factory is new Problem_Factory (Problem_Type);

begin

   Runner.Run (P0014_Factory'Unrestricted_Access);

end G0014_Longest_Collatz_Sequence;
