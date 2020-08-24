function plot_matrix(ft)
% this script plots images that were 
% used in such as Figure 3, 4, 5.

% make sure to change the figure numbers
% if you want to compare multiple plots
figure(1);

% the quatization number
q = 7;

% plotting
C = zeros(q+1,q+1);
pcolor(C)
colormap(gray(2))
for k = 1:(q^2)
    idx = find(ft==k);
    if length(idx)==1
        y = ceil(k/q);
        x = k - (y-1)*q;
        text(x+0.1,y+0.5,sprintf('%d',idx),'FontSize',18);
    elseif length(idx)==2
        y = ceil(k/q);
        x = k - (y-1)*q;
        text(x+0.1,y+0.5,sprintf('%d,%d',idx(1),idx(2)),'FontSize',15); 
    elseif length(idx)==3
        y = ceil(k/q);
        x = k - (y-1)*q;
        text(x+0.1,y+0.5,sprintf('%d,%d,%d',idx(1),idx(2),idx(3)),'FontSize',12);
    elseif length(idx)==4
        y = ceil(k/q);
        x = k - (y-1)*q;
        text(x+0.1,y+0.5,sprintf('%d,%d,%d,%d',idx(1),idx(2),idx(3),idx(4)),'FontSize',10);
    elseif length(idx)==5
        y = ceil(k/q);
        x = k - (y-1)*q;
        text(x+0.1,y+0.5,sprintf('%d,%d,%d,%d.%d',idx(1),idx(2),idx(3),idx(4),idx(5)),'FontSize',8);
    end
end

end