function h = mysigstar(pval,x,y,varargin)
% plots a sig star at position x,y
% MGC 5/12/2022

FontSize = 14;
HorizAlign = 'center';
Rotation = 0;
process_varargin(varargin);

if pval<10^-6
    h = text(x,y,'****','FontSize',FontSize,'HorizontalAlignment',HorizAlign,'Rotation',Rotation);
elseif pval<0.001
    h = text(x,y,'***','FontSize',FontSize,'HorizontalAlignment',HorizAlign,'Rotation',Rotation);
elseif pval<0.01
    h = text(x,y,'**','FontSize',FontSize,'HorizontalAlignment',HorizAlign,'Rotation',Rotation);
elseif pval<0.05
    h = text(x,y,'*','FontSize',FontSize,'HorizontalAlignment',HorizAlign,'Rotation',Rotation);
else
    h = text(x,y,'n.s.','FontSize',FontSize,'HorizontalAlignment',HorizAlign,'Rotation',Rotation);
end

end