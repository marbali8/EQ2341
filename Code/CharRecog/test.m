load('test_data.mat');
N = size(te_data, 2);
count = 0;
predicted = zeros(1, N);
true = zeros(1, N);
wrong = [];
for idx = 1:N
    output = pass(hmmlist, te_data{1,idx});
    if (output == te_data{3,idx})
        count = count + 1;
    else
        wrong(end+1) = idx;
    end
    if length(output) > 1 % idk
        predicted(idx) = 0;
    else
        predicted(idx) = output;
    end
    true(idx) = te_data{3, idx};
end

accuracy = count / N;

confusion = confusionmat(true, predicted);
cc = confusionchart(confusion);