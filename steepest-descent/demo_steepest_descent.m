1;
puts("Soal 1a)\tTitik x yang merupakan titik optimum f(x, y) = 0.5 x^2 + 2.5 y^2 = \n");
start = time;
[x, iter] = steepest_descent(@f1a, @g1a, [5, 1]', @fminsearch, 1e-10);

printf("\t\t<Steepest-Descent: steepest_descent/steepest_descent.m>\n");
printf("\t\tx = [%15.6f %15.6f]^T\n", x(1), x(2));
printf("\t\texecution time: %.5f s\n", time - start);
printf("\t\t%d iterasi\n", iter);
printf("\t\tLine search method: Direct-Line-Search (line-search/direct_line_search.m)\n");
