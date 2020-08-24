T = 10000;

g1 = GaussD('Mean',[3;2],'Covariance',[2 1;1 4]);
g2 = GaussD('Mean',[-2;-3],'Covariance',[4 -1;-1 2]);
mc = MarkovChain([0.75;0.25],[0.99,0.01;0.03,0.97]);
h = HMM(mc,[g1,g2]);
x = rand(h,T);

mu_x = mean(x')
cov_x = cov(x')

