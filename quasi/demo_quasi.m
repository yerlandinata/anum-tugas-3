1;

function demo_quasi_newton(f, g, x_init, a_init, bheta, tau, b_update,
                            quasi_newton_tol, func_desc, b_update_desc)
    puts(func_desc);
    start = time;
    [x, iter, err] = quasi(f, g, x_init, @(f, xi, gi, p)(backtrack_armijo(f, a_init, xi, p, bheta, tau, gi)), b_update, quasi_newton_tol);
    printf("\t\t<Quasi-Newton: quasi/quasi.m>\n");
    printf("\t\tx* = [");
    for i = x
        printf("%15.6f ", i);
    endfor
    printf("]\n");
    printf("\t\terror: %15.6f  <Gradient norm>\n", err);
    printf("\t\texecution time: %.5f s\n", time - start);
    if err > quasi_newton_tol
        iter = iter - 8;
    endif
    printf("\t\t%d iterasi\n", iter);
    printf("\t\tB matrix updating method: %s\n", b_update_desc);
    printf("\t\tLine search method: Backtracking-Armijo (line-search/backtrack_armijo.m)\n\n\n");
endfunction

demo_quasi_newton(@f1a, @g1a, [5, 1]', 1, 0.1, 0.5, @sr1, 1e-5, 
    "Soal 1a)\tTitik x yang merupakan titik optimum f(x, y) = 0.5 x^2 + 2.5 y^2\n",
    "SR-1 (line-search/sr1.m)");

demo_quasi_newton(@f1b, @g1b, [1, 1, -0.5]', 1e-3, 1e-3, 0.5, @dfp, 1e-10,
    "Soal 1b)\tLuas permukaan tabung minimum dengan syarat volumenya 400 satuan isi\n",
    "DFP (line-search/dfp.m)");

demo_quasi_newton(@f1c, @g1c, [-400 -200 200 400 -400 -200 200 400]', 0.9, 1e-2, 0.5, @dfp, 1e-10,
    "Soal 1c)\tGriewank Function n = 8\n",
    "DFP (line-search/dfp.m)");

demo_quasi_newton(@f1c, @g1c, f1c_domain(2), 0.9, 1e-2, 0.5, @dfp, 1e-10,
    "Soal 1c)\tGriewank Function n = 64\n",
    "DFP (line-search/dfp.m)");

demo_quasi_newton(@f1c, @g1c, f1c_domain(3), 0.9, 1e-2, 0.5, @dfp, 1e-10,
    "Soal 1c)\tGriewank Function n = 8^3\n",
    "DFP (line-search/dfp.m)");

demo_quasi_newton(@f1c, @g1c, f1c_domain(4), 0.9, 1e-2, 0.5, @dfp, 1e-10,
    "Soal 1c)\tGriewank Function n = 8^4\n",
    "DFP (line-search/dfp.m)");

demo_quasi_newton(@f1c, @g1c, f1c_domain(5), 0.9, 1e-2, 0.5, @dfp, 1e-10,
    "Soal 1c)\tGriewank Function n = 8^5\n",
    "DFP (line-search/dfp.m)");
