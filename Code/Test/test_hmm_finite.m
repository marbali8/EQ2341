T = 5;
K = 10000;

g1 = GaussD('Mean',0,'StDev',1);
g2 = GaussD('Mean',3,'StDev',2);
mc = MarkovChain([0.6;0.4],[0.6,0.2,0.2;0.1,0.7,0.2]);
h = HMM(mc,[g1,g2]);

X = zeros(K, T);
S = zeros(K,T);
for i = 1:K
    [x,s] = rand(h,T);
    X(i,:) = [x, zeros(1,T - length(x))];
    S(i,:) = [s, zeros(1,T - length(s))];
end

p1 = sum(S == 1) / K;
p2 = sum(S == 2) / K;
mu_x = mean(X);
var_x = var(X);
