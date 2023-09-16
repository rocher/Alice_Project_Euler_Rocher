-------------------------------------------------------------------------------
--
--  ALICE - Adventures for Learning and Inspiring Coding Excellence
--  Copyright (c) 2023 Francesc Rocher <francesc.rocher@gmail.com>
--  SPDX-License-Identifier: MIT
--
-------------------------------------------------------------------------------

with Project_Euler.GUI.Runners.Gnoga; use Project_Euler.GUI.Runners.Gnoga;

with P0014_Longest_Collatz_Sequence.GUI;
use P0014_Longest_Collatz_Sequence.GUI;

procedure G0014_Longest_Collatz_Sequence is

   Runner : Runner_Gnoga_Type;

begin

   Runner.Run (P0014_Factory'Access, P0014_Configure_Options'Access);

end G0014_Longest_Collatz_Sequence;
