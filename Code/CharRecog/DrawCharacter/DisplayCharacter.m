%DisplayCharacter(xybpoints)
%or
%DisplayCharacter(xybpoints,ax)
%or
%DisplayCharacter(xybpoints,ax,style)
%or
%DisplayCharacter(xybpoints,ax,style,allxy)
%
%Visualizes drawn characters from pen trace data
%
%Usage:
%Recreates a character drawn using DrawCharacter from the corresponding
%mouse trace data series. The location and style of the plot can be set
%through optional arguments.
%
%Input:
%xybpoints= Mouse trace information matrix, as returned by DrawCharacter.
%ax=        (Optional) An axis in which to draw the character. Turn HOLD
%           on for best results. A new canvas is created if the ax
%           argument is absent or empty.
%style=     (Optional) A style string for the pen traces path. See the S
%           argument of PLOT for more information.
%allxy=     (Optional) If this argument is given and true, mouse trace
%           from when the pen was lifted will also be shown, dotted,
%           while traces while drawing are shown with solid lines. This
%           works best if the style argument does not specify a line style.
%
%Gustav Eje Henter 2010-08-21 tested
%Gustav Eje Henter 2012-10-22 tested

function DisplayCharacter(xybpoints,varargin)

if (nargin < 2) || isempty(varargin{1}),
    
    % Create canvas
    fh = figure();
    axis([0 1 0 1]);
    ah = gca;
    
    figpos = get(fh,'Position');
    figside = min(figpos(3:4));
    set(fh,'Position',[figpos(1:2),[1,1]*figside]);
    
    axis equal;
    set(ah,'XTick',[]);
    set(ah,'YTick',[]);
    box on;
    axis manual;
    hold on;
    
else
    ah = varargin{1};
end

if (nargin < 1) || isempty(xybpoints),
    return; % Nothing to plot (though axes may have been created)
end

if (nargin < 3),
    plotstyle = '';
else
    plotstyle = varargin{2};
end

prehold = ishold(ah); % Remember axis hold status
if ~prehold,
    cla(ah); % Clear canvas if hold is off
    hold(ah,'on'); % Turn hold on for drawing
end

if ((nargin > 3) && (varargin{3})),
    allstyle = '-';
    plot(ah,xybpoints(1,:),xybpoints(2,:),[':' plotstyle]);
else
    allstyle = '';
end

xybpoints(1:2,xybpoints(3,:) == 0) = NaN; % NaN-out non-drawing segements

plot(ah,xybpoints(1,:),xybpoints(2,:),[allstyle plotstyle],'LineWidth',5,'Color','black');

% Restore axis hold status
if prehold,
    hold(ah,'on');
else
    hold(ah,'off');
end