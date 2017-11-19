function [mwr_t, mwr_x, mwr_y, mwr_vx, mwr_vy, ...
  mcm_t, mcm_x, mcm_y, mcm_vx, mcm_vy,...
  fsn1_t,fsn1_id,fsn1_x,fsn1_y,fsn1_vx,fsn1_vy]...
  = data_filt(mwr_t_, mwr_x_, mwr_y_, mwr_vx_, mwr_vy_,...
  mcm_t_, mcm_x_, mcm_y_, mcm_vx_, mcm_vy_,...
  fsn1_t_,fsn1_id_,fsn1_x_,fsn1_y_,fsn1_vx_,fsn1_vy_,...
  t_min, t_max)
  
  idx_floor = (mwr_t_ >= t_min);
  idx_ceil = (mwr_t_ < t_max);
  idx = idx_floor & idx_ceil;
  mwr_t = mwr_t_(idx);
  mwr_x = mwr_x_(idx);
  mwr_y = mwr_y_(idx);
  mwr_vx = mwr_vx_(idx);
  mwr_vy = mwr_vy_(idx);
  idx_floor = (mcm_t_ >= t_min);
  idx_ceil = (mcm_t_ < t_max);
  idx = idx_floor & idx_ceil;
  mcm_t = mcm_t_(idx);
  mcm_x = mcm_x_(idx);
  mcm_y = mcm_y_(idx);
  mcm_vx = mcm_vx_(idx);
  mcm_vy = mcm_vy_(idx);
  idx_floor = (fsn1_t_ >= t_min);
  idx_ceil = (fsn1_t_ < t_max);
  idx = idx_floor & idx_ceil;
  fsn1_t = fsn1_t_(idx);
  fsn1_id = fsn1_id_(idx);
  fsn1_x = fsn1_x_(idx);
  fsn1_y = fsn1_y_(idx);
  fsn1_vx = fsn1_vx_(idx);
  fsn1_vy = fsn1_vy_(idx);
end