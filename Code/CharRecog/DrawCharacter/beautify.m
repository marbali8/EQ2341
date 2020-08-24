hline = findobj(gcf, 'type', 'line');
set(hline,'LineWidth',3)



grid on

set(gca,'FontWeight','bold','FontSize',12);

a = get(gca,'title');
set(a,'FontSize',15);

% legend1 = legend(gca);
% set(legend1,'FontSize',14);
% set(legend1,'FontSize',14);

xlhand = get(gca,'xlabel');
set(xlhand,'fontsize',16);
set(xlhand,'fontsize',16);

ylhand = get(gca,'ylabel');
set(ylhand,'fontsize',16);
set(ylhand,'fontsize',16);
% 
% set(gcf, 'Position',  [100, 100, 2000, 800])
set(gcf, 'Position',  [100, 100, 700, 600])
