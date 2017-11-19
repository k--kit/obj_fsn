function surfzlim(src,event)
  global ax;
%        val = 51 - source.Value;
    % For R2014a and earlier:
    % val = 51 - get(source,'Value');
    val = 51 - get(src,'Value');

    zlim(ax,[-val val]);
end