function sld_time_callback(src,event)
  global sel_time;
  global sel_timespan;
  sel_time = get(src,'Value');
  disp(sprintf("time:%g,span:%g", sel_time, sel_timespan));
  update_plot();
end
