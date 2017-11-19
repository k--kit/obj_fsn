function setmap(src,event)
%        val = source.Value;
%        maps = source.String;
    % For R2014a and earlier: 
    val = get(src,'Value');
    maps = get(src,'String'); 

    newmap = maps{val};
    colormap(newmap);
end
