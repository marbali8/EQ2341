mc = MarkovChain([0.75;0.25],[0.99,0.01;0.03,0.97]);
b1 = GaussD('Mean',0,'StDev',1);
b2 = GaussD('Mean',3,'StDev',2);
h = HMM(mc,[b1,b2]);
x = rand(h,500);
figure(1);clf;
plot(1:500,x);

b2.Mean = 0;
h = HMM(mc,[b1,b2]);
x = rand(h,500);
figure(2);clf;
plot(1:500,x);