function chk_mwr_pos_callback(src,event)
  global hp_mwr;
  vis = get(src,'Value');
  val = 'on';
  if vis ~= 1
    val = 'off';
  end
  set(hp_mwr(1), 'Visible', val);
  drawnow();
end
