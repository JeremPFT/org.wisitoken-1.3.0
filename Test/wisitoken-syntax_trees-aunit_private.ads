--  Abstract :
--
--  Private AUnit checks for parent
--
--  Copyright (C) 2018 Stephen Leake All Rights Reserved.
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

with AUnit.Checks;
with SAL.Gen_Unbounded_Definite_Vectors.Gen_AUnit;
with WisiToken.Syntax_Trees.AUnit_Public;
private package WisiToken.Syntax_Trees.AUnit_Private is

   procedure Check is new Standard.AUnit.Checks.Gen_Check_Discrete (Node_Label);

   procedure Check
     (Label    : in String;
      Computed : in Node;
      Expected : in Node);

   package Node_Arrays_AUnit is new Node_Arrays.Gen_AUnit (AUnit_Public.Check, Check);

   procedure Check
     (Label    : in String;
      Computed : in Tree;
      Expected : in Tree);

end WisiToken.Syntax_Trees.AUnit_Private;
