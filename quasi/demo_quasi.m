1;
puts("Soal 1a)\tTitik x yang merupakan titik optimum f(x, y) = 0.5 x^2 + 2.5 y^2 = \n");
start = time;
[x, iter] = quasi(@f1a, @g1a, [5, 1]', @(f, x, g, p)(backtrack_armijo(f, 1, x, p, 0.1, 0.5, g)), @sr1, 1e-10);
printf("\t\t<Quasi-Newton: quasi/quasi.m>\n");
printf("\t\tx = [%15.6f %15.6f]^T\n", x(1), x(2));
printf("\t\texecution time: %.5f s\n", time - start);
printf("\t\t%d iterasi\n", iter);
printf("\t\tB matrix updating method: SR-1 (quasi/sr-1.m)\n");
printf("\t\tLine search method: Backtracking-Armijo (line-search/backtrack_armijo.m)\n");