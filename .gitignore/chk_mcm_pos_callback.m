function chk_mcm_pos_callback(src,event)
  global hp_mcm;
  vis = get(src,'Value');
  val = 'on';
  if vis ~= 1
    val = 'off';
  end
  set(hp_mcm(1), 'Visible', val);
  drawnow();
end
