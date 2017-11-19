function update_plot()
  global sel_time;
  global sel_timespan;
  global f;
  global ax;
  global mwr_t;
  global mwr_x;
  global mwr_y;
  global mwr_vx;
  global mwr_vy;
  global mcm_t;
  global mcm_x;
  global mcm_y;
  global mcm_vx;
  global mcm_vy;
  global fsn1_t;
  global fsn1_id;
  global fsn1_x;
  global fsn1_y;
  global fsn1_vx;
  global fsn1_vy;
  global hp_mwr;
  global hp_mcm;
  global hp_fsn1;
  figure(f);
  xlim = get(ax, 'xlim');
  ylim = get(ax, 'ylim');
  cla;
  max_time = sel_time;
  min_time = max_time - sel_timespan;
  disp(min_time);
  disp(max_time);
  [mwr_t_, mwr_x_, mwr_y_, mwr_vx_, mwr_vy_,...
    mcm_t_, mcm_x_, mcm_y_, mcm_vx_, mcm_vy_,...
    fsn1_t_,fsn1_id_,fsn1_x_,fsn1_y_,fsn1_vx_,fsn1_vy_] ...
    = data_filt(mwr_t, mwr_x, mwr_y, mwr_vx, mwr_vy,...
    mcm_t, mcm_x, mcm_y, mcm_vx, mcm_vy,...
    fsn1_t,fsn1_id,fsn1_x,fsn1_y,fsn1_vx,fsn1_vy,...
    min_time,max_time);

  hold on;
  set(ax, 'xlim', xlim);
  set(ax, 'ylim', ylim);
  hp_mwr(1)=plot(mwr_x_, mwr_y_, 'co');
  hp_mwr(2)=quiver(mwr_x_, mwr_y_, mwr_vx_, mwr_vy_, 'c');
  hp_mcm(1)=plot(mcm_x_, mcm_y_, 'g^');
  hp_mcm(2)=quiver(mcm_x_, mcm_y_, mcm_vx_, mcm_vy_, 'g');
  hp_fsn1(1)=plot(fsn1_x_, fsn1_y_, 'rs');
  hp_fsn1(2)=quiver(fsn1_x_, fsn1_y_, fsn1_vx_, fsn1_vy_, 'r');
end