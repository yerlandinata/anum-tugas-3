## Copyright (C) 2018 Yudhistira Erlandinata
## 
## This program is free software; you can redistribute it and/or modify it
## under the terms of the GNU General Public License as published by
## the Free Software Foundation; either version 3 of the License, or
## (at your option) any later version.
## 
## This program is distributed in the hope that it will be useful,
## but WITHOUT ANY WARRANTY; without even the implied warranty of
## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
## GNU General Public License for more details.
## 
## You should have received a copy of the GNU General Public License
## along with this program.  If not, see <http://www.gnu.org/licenses/>.

## -*- texinfo -*- 
## @deftypefn {} {@var{B1} =} sr1 (@var{B}, @var{dx}, @var{dg})
##
## @seealso{}
## @end deftypefn

## Author: Yudhistira Erlandinata <yerlandinata@yerlandinata-ideapad700>
## Created: 2018-05-08

function [B1] = dfp (B, dx, dg)
  dxt = dx';
  dgt = dg';
  B1 = B;
  B1 = B1 + ((dx * dxt)/(dxt * dg));
  B1 = B1 - ((B * dg * dgt * B)/(dgt * B * dg));
endfunction
