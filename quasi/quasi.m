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
## @deftypefn {} {@var{op} =} quasi (@var{f}, @var{g}, @var{x_init}, @var{line_seach}, @var{b_update}, @var{tol})
##
## @seealso{}
## @end deftypefn

## Author: Yudhistira Erlandinata <yerlandinata@yerlandinata-ideapad700>
## Created: 2018-04-29

function [x, iter_count, normg] = quasi (f, g, x_init, line_search, b_update, tol)
  iter_count = 0;
  B = eye(size(x_init)(1));
  x = x_init;
  gk = g(x);
  fx = f(x);
  normg = norm(gk);
  converg = [1:8]';
  c = 0;
  while !convergence_check(converg, tol) &&  normg > tol
    iter_count = iter_count + 1;
    c = c + 1;
    if c > 8
      c = 1;
    endif
    converg(c) = normg;
    p = -B * gk;
    a = line_search(f, x, gk, p);
    x1 = x + a * p;
    dx = x1 - x;
    gk1 = g(x1);
    dg = gk1 - gk;
    B = b_update(B, dx, dg);
    x = x1;
    gk = gk1;
    normg = norm(gk);
    printf("norm g = %.11f\n", normg);
    fx = f(x);
  endwhile
endfunction
