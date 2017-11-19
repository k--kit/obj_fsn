function chk_mcm_vel_callback(src,event)
  global hp_mcm;
  vis = get(src,'Value');
  val = 'on';
  if vis ~= 1
    val = 'off';
  end
  set(hp_mcm(2), 'Visible', val);
  drawnow();
end
