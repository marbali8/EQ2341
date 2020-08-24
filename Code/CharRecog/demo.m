addpath('./DrawCharacter');
c = DrawCharacter;
result = logprob(hmmlist,ftEx6(c));
idx = find(result == max(result));
if (length(idx) ~= 1)
    fprintf('idk\n');
else
    fprintf('%c\n',char(96+idx));
end