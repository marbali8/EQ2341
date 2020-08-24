% after test

% to see true labels and predicted labels of wrongly classified
w = [];
for i = 1: length(wrong)
    w = [w, te_data{3, wrong(i)}];
end
w = [w; predicted(wrong)];

c = load('tdcells_a2h.mat');

plot(te_data{2, wrong(1)}, 'lineWidth', 2)
hold on, plot(c.td_r_ft{1, 11}, 'lineWidth', 1)
hold on, plot(c.td_n_ft{1, 11}, 'lineWidth', 1)
xlabel('time'), ylabel('index'), title('feature comparison')
legend('predicted wrong', '''r'' from train', '''n'' from train')

plot(te_data{2, wrong(2)}, 'lineWidth', 2)
hold on, plot(c.td_u_ft{1, 2}, 'lineWidth', 1)
hold on, plot(c.td_a_ft{1, 2}, 'lineWidth', 1)
xlabel('time'), ylabel('index'), title('feature comparison')
legend('predicted wrong', '''u'' from train', '''a'' from train')

plot(te_data{2, wrong(3)}, 'lineWidth', 2)
hold on, plot(c.td_w_ft{1, 2}, 'lineWidth', 1)
xlabel('time'), ylabel('index'), title('feature comparison')
legend('predicted wrong', '''w'' from train')


AnimateCharacter(te_data{1, wrong(1)})
AnimateCharacter(te_data{1, wrong(2)})
AnimateCharacter(te_data{1, wrong(3)})