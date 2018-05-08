1;
puts("Soal 1a)\tTitik x yang merupakan titik optimum f(x, y) = 0.5 x^2 + 2.5 y^2  \n");
start = time;
[x, iter] = newton(@g1a,@hf1a, [1, 2],1e-10);
printf("\t\t<Newton: newton/newton.m>\n");
printf("\t\tx* = [%15.6f %15.6f]^T\n", x(1), x(2));
printf("\t\texecution time: %.5f s\n", time - start);
printf("\t\t%d iterasi\n", iter);

puts("Soal 1b)");
start = time;
[x, iter] = newton(@g1b, @hf1b, [1,1,-0.5],1e-10);
printf("\t\t<Newton: newton/newton.m>\n");
printf("\t\tx* = [%15.6f %15.6f]^T\n", x(1), x(2));
printf("\t\texecution time: %.5f s\n", time - start);
printf("\t\t%d iterasi\n", iter);