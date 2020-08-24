addpath('./DrawCharacter');

clist = {};
cftlist = {};
for i = 1:20
    c = DrawCharacter;
    c_ft = ftEx6(c);
    clist{end+1} = c;
    cftlist{end+1} = c_ft;
end

% append to appropriate cell by
% td_?_label = {td_?_label{:},charlist{:}}
% td_?_ft = {td_?_ft{:},char_ft_list{:}}