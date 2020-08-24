function S=rand(mc,T)
%S=rand(mc,T) returns a random state sequence from given MarkovChain object.
%
%Input:
%mc=    a single MarkovChain object
%T= scalar defining maximum length of desired state sequence.
%   An infinite-duration MarkovChain always generates sequence of length=T
%   A finite-duration MarkovChain may return shorter sequence,
%   if END state was reached before T samples.
%
%Result:
%S= integer row vector with random state sequence,
%   NOT INCLUDING the END state,
%   even if encountered within T samples
%If mc has INFINITE duration,
%   length(S) == T
%If mc has FINITE duration,
%   length(S) <= T
%
%---------------------------------------------
%Code Authors:
%---------------------------------------------

S=zeros(1,T);%space for resulting row vector
nS=mc.nStates;

i = 1;
pD = DiscreteD(mc.InitialProb);
s = rand(pD, 1);
while ( (i <= T) && (s ~= nS + 1) )
    S(i) = s;
    i = i + 1;
    pD = DiscreteD(mc.TransitionProb(s,:));
    s = rand(pD, 1);
end

S = S(1:i-1);
%continue code from here, and erase the error message........


