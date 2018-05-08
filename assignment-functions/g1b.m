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
## @deftypefn {} {@var{g} =} g1b (@var{x})
##
## @seealso{}
## @end deftypefn

## Author: Yudhistira Erlandinata <yerlandinata@yerlandinata-ideapad700>
## Created: 2018-05-07

function [g] = g1b (x)
  r = x(1); t = x(2); lambda = x(3);
  g = [
    4*pi*r + 2*pi*t + 2*lambda*pi*r*t;
    2*pi*r + lambda*pi*r*r;
    pi*r*r*t - 400
  ];
endfunction
