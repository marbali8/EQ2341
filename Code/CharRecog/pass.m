function [output] = pass(hmmlist,mouseTrack)
addpath('./DrawCharacter');
ft = ftEx6(mouseTrack);
result = logprob(hmmlist,ft);
idx = find(result == max(result));
if (length(idx) == 1)
    output = char(96+idx);
else
    output = 'idk';
end
end