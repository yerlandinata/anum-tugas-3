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
## @deftypefn {} {@var{g} =} g1c (@var{x})
##
## @seealso{}
## @end deftypefn

## Author: Yudhistira Erlandinata <yerlandinata@yerlandinata-ideapad700>
## Created: 2018-05-08

function [g] = g1c (x)
    g = 1:size(x)(1);
    for i = 1:size(x)(1)
        sqrti = sqrt(i);
        g(i) = sin(x(i) / sqrti) / sqrti;
        for j = 1:size(x)(1)
            if j != i
                g(i) = g(i) * cos(x(j)/sqrt(j));
            endif
        endfor
        g(i) = g(i) + x(i)/2000;
    endfor
    g = g';
endfunction
