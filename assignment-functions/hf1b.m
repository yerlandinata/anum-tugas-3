function [g] = hf1b(x)
   r = x(1); t = x(2); lambda = x(3);
   g = [0 2*pi*r*t pi*r^2;
   2*pi*r*t 2*pi*lambda*t+4*pi 2*pi*lambda*r+2*pi;
    pi*r^2 2*pi*lambda*r + 2*pi 0];
endfunction