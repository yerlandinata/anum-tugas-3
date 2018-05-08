% simple newton methods
% input:
% f = function, g = gradient function
% x0 = initial guess, TOL = tolerance

function [x,iters] = newton (g,hf,x0,TOL)
  x=x0; 
  iters = 0;
  maxiter = 100;
  while abs(g(x)) > TOL && iters < maxiter
    iters += 1;
    g0 = g(x)
    hf0 = hf(x)
    x = x - g0'*hf0';
   end
 endfunction