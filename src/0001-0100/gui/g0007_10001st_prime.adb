-------------------------------------------------------------------------------
--
--  ALICE - Adventures for Learning and Inspiring Coding Excellence
--  Copyright (c) 2023 Francesc Rocher <francesc.rocher@gmail.com>
--  SPDX-License-Identifier: MIT
--
-------------------------------------------------------------------------------

with Project_Euler.GUI.Runners.Gnoga;
use Project_Euler.GUI.Runners.Gnoga;

with P0007_10001st_Prime.GUI; use P0007_10001st_Prime.GUI;

procedure G0007_10001st_Prime is

   Runner : Gnoga_Runner_Type;

begin

   Runner.Run (P0007_Factory'Unrestricted_Access);

end G0007_10001st_Prime;
