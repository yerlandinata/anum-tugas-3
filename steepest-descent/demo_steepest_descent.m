1;

function demo_steepest_descent_method(f, g, x_init, tol, func_desc, fid)

  fprintf(fid, func_desc);
  start = time;
  [x, iter] = steepest_descent(f, g, x_init, @direct_line_search, 10^tol);

  fprintf(fid, "\t\t<Steepest-Descent: steepest_descent/steepest_descent.m>\n");
  fprintf(fid, "\t\tx* = [");
  for i = x
      fprintf(fid, "%15.6f ", i);
  endfor
  fprintf(fid, "]\n");

  fprintf(fid, "\t\ttol : 10^%d \n", tol);
  fprintf(fid, "\t\texecution time: %.5f s\n", time - start);
  fprintf(fid, "\t\t%d iterasi\n", iter);
  fprintf(fid, "\t\tLine search method: Direct-Line-Search (line-search/direct_line_search.m)\n");

endfunction

fid = fopen ("output.txt", "w");
for t = [-4 -6 -8 -10 -12]
  demo_steepest_descent_method(@f1a, @g1a, [1, 2]', t,
  "Soal 1a)\tTitik x yang merupakan titik optimum f(x, y) = 0.5 x^2 + 2.5 y^2\n", fid);

  demo_steepest_descent_method(@f1b, @g1b, [1, 2, -0.5]', t,
  "Soal 1b)\tLuas permukaan tabung minimum dengan syarat volumenya 400 satuan isi\n", fid);

  demo_steepest_descent_method(@f1c, @g1c, f1c_domain(1), t,
  "Soal 1c)\tGriewank Function n = 8^1\n", fid);

  demo_steepest_descent_method(@f1c, @g1c, f1c_domain(2), t,
  "Soal 1c)\tGriewank Function n = 8^2\n", fid);

  demo_steepest_descent_method(@f1c, @g1c, f1c_domain(3), t,
  "Soal 1c)\tGriewank Function n = 8^3\n", fid);

  demo_steepest_descent_method(@f1c, @g1c, f1c_domain(4), t,
  "Soal 1c)\tGriewank Function n = 8^4\n", fid);

  demo_steepest_descent_method(@f1c, @g1c, f1c_domain(5), t,
  "Soal 1c)\tGriewank Function n = 8^5\n", fid);

endfor
fclose (fid);
