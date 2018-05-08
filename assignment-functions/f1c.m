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
## @deftypefn {} {@var{y} =} f1c (@var{x})
##
## @seealso{}
## @end deftypefn

## Author: Yudhistira Erlandinata <yerlandinata@yerlandinata-ideapad700>
## Created: 2018-05-08

function [y] = f1c (x)
    y = 1;
    # sum
    for i = size(x)(1)
        y = y + ((x(i)*x(i))/4000);
    endfor
    # product
    p = 1;
    for i = size(x)(1)
        p = p * cos(x(i)/sqrt(i));
    endfor
    y = y - p;
endfunction
