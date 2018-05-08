% simple newton methods
% input:
% f = function, g = gradient function
% x0 = initial guess, TOL = tolerance

function [x,iters] = newton (f,g,x0,TOL)
  x=x0; 
  iters = 0;
  maxiter = 10000;
  while abs(f(x)) > TOL && iters < maxiter
    iters += 1;
    f0 = f(x);
    g0 = g(x);
    x = x - f0/g0;
   end
 endfunction