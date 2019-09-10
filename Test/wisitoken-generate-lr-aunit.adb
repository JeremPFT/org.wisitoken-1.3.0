--  Abstract :
--
--  AUnit Checks for items in parent
--
--  Copyright (C) 2019 Stephen Leake All Rights Reserved.
--
--  This program is free software; you can redistribute it and/or
--  modify it under terms of the GNU General Public License as
--  published by the Free Software Foundation; either version 3, or (at
--  your option) any later version. This program is distributed in the
--  hope that it will be useful, but WITHOUT ANY WARRANTY; without even
--  the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR
--  PURPOSE. See the GNU General Public License for more details. You
--  should have received a copy of the GNU General Public License
--  distributed with this program; see file COPYING. If not, write to
--  the Free Software Foundation, 51 Franklin Street, Suite 500, Boston,
--  MA 02110-1335, USA.

pragma License (GPL);
package body WisiToken.Generate.LR.AUnit is

   procedure Check
     (Label    : in String;
      Computed : in RHS_Sequence;
      Expected : in RHS_Sequence)
   is
      use Standard.AUnit.Checks;
      use WisiToken.AUnit.Token_ID_Arrays_AUnit;
   begin
      Check (Label & ".Left_Recursive", Computed.Left_Recursive, Expected.Left_Recursive);
      Check (Label & ".Sequence", Computed.Sequence, Expected.Sequence);
   end Check;

end WisiToken.Generate.LR.AUnit;
