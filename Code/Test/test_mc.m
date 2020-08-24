T = 10000;
mc = MarkovChain([0.75; 0.25], [0.99, 0.01; 0.03, 0.97]);
x = rand(mc, T);
p1 = sum(x == 1) / T;
p2 = sum(x == 2) / T;
