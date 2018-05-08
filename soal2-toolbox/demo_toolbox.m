1;

function demo_steepest_descent_method(fgs, gfgs, x_init, tol, func_desc)
  start = time;
  out = ncg(@(x) toolbox(x,fgs,gfgs), x_init, 'RelFuncTol', 10^tol, 'Display', 'final')
  printf("<Soal 2. Poblano Toolbox>\n");
  disp(func_desc);
  printf("Value X: \n");
  disp(out.X);
  printf("execution time: %.5f s\n", time - start);
  printf("%d iterasi\n", out.Iters);
  printf("Nonlinear Conjugate Gradient\n");
endfunction

for t = [-4 -6 -8 -10 -12]
  demo_steepest_descent_method(@f1a, @g1a, [1, 2]', t,
  "Soal 1a)\tTitik x yang merupakan titik optimum f(x, y) = 0.5 x^2 + 2.5 y^2\n");

  demo_steepest_descent_method(@f1b, @g1b, [1, 2, -0.5]', t,
  "Soal 1b)\tLuas permukaan tabung minimum dengan syarat volumenya 400 satuan isi\n");

  demo_steepest_descent_method(@f1c, @g1c, f1c_domain(1), t,
  "Soal 1c)\tGriewank Function n = 8^1\n");

  demo_steepest_descent_method(@f1c, @g1c, f1c_domain(2), t,
  "Soal 1c)\tGriewank Function n = 8^2\n");

  demo_steepest_descent_method(@f1c, @g1c, f1c_domain(3), t,
  "Soal 1c)\tGriewank Function n = 8^3\n");

  demo_steepest_descent_method(@f1c, @g1c, f1c_domain(4), t,
  "Soal 1c)\tGriewank Function n = 8^4\n");

  demo_steepest_descent_method(@f1c, @g1c, f1c_domain(5), t,
  "Soal 1c)\tGriewank Function n = 8^5\n");

endfor