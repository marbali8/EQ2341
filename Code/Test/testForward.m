addpath('../');

% initialize mc
q = [1;0];
A = [0.9 0.1 0;0 0.9 0.1];
mc = MarkovChain(q,A);

% initialize HMM
b1 = GaussD('Mean',0,'StDev',1);
b2 = GaussD('Mean',3,'StDev',2);
B = [b1;b2];
h = HMM(mc,B);

% observed output
x = [-0.2, 2.6, 1.3];

pX = prob(B,x);

% forward variable
[alfaHat, c] = forward(h.StateGen,pX);

% log probability
logP = logprob(h,x);

% backward variable
betaHat = backward(mc,pX,c);

pX
alfaHat
c
logP
betaHat
