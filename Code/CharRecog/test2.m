function [accuracy,correct,wrong] = test(hmmlist,te_data)

N = size(te_data,2);
count = 0;
correct = [];
wrong = [];
for idx = 1:N
    output = pass(hmmlist,te_data{1,idx});
    if (output == te_data{3,idx})
        count = count + 1;
        correct(end+1) = idx;
    else
        wrong(end+1) = idx;
    end
end

accuracy = count / N;

end