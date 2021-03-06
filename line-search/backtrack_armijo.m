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
## @deftypefn {} {@var{a} =} backtrack_armijo (@var{f}, @var{a_init}, @var{x}, @var{p}, @var{b}, @var{t}, @var{g})
##
## @seealso{}
## @end deftypefn

## Author: Yudhistira Erlandinata <yerlandinata@yerlandinata-ideapad700>
## Created: 2018-04-29

function [a] = backtrack_armijo (f, a_init, x, p, b, t, g)
  tol = 1e-12;
  a = a_init;
  gt = g';
  #printf("a = %.6e; f(x + ap) = %.6e > f(x) + ab g^T p = %.6e\n", a, f(x + a * p), f(x) + (a * b * (gt * p)) );
  while f(x + a * p) > f(x) + (a * b * (gt * p))
    a = t * a;
    #printf("a = %.6e; f(x + ap) = %.6e > f(x) + ab g^T p = %.6e\n", a, f(x + a * p), f(x) + (a * b * (gt * p)) );
    if a < tol
      return
    endif
  endwhile
endfunction
