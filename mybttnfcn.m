function mybttnfcn(h,~)
hf = get(h,'parent');
b = get(hf,'selectiontype');
xy = get(gca,'CurrentPoint');
if strcmpi(b,'normal')
    text(xy(1,1),xy(1,2),'Left click')
elseif strcmpi(b,'alt')
    text(xy(1,1),xy(1,2),'Right click')
else
    text(xy(1,1),xy(1,2),'Careful there, crazy man!')
end