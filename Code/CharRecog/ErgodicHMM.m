function [h_init] = ErgodicHMM(nStates)
mc = initErgodic(MarkovChain,nStates);
pD_array(nStates,1) = DiscreteD;
for idx = 1:nStates
    distr = ones(1,49);
    pD_array(idx) = DiscreteD(distr);
end
h_init = HMM(mc,pD_array);
end