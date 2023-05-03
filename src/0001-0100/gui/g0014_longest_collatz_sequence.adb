-------------------------------------------------------------------------------
--
--  ALICE - Adventures for Learning and Inspiring Coding Excellence
--  Copyright (c) 2023 Francesc Rocher <francesc.rocher@gmail.com>
--  SPDX-License-Identifier: MIT
--
-------------------------------------------------------------------------------

with Project_Euler.GUI.Runner.Gnoga_Impl;
use Project_Euler.GUI.Runner.Gnoga_Impl;

with P0014_Longest_Collatz_Sequence.GUI;
use P0014_Longest_Collatz_Sequence.GUI;

procedure G0014_Longest_Collatz_Sequence is

   Runner : Gnoga_Runner_Type;

begin

   Runner.Run (P0014_Factory'Unrestricted_Access);

end G0014_Longest_Collatz_Sequence;
