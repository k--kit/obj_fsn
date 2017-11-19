function [mwr_t, mwr_x, mwr_y, mwr_vx, mwr_vy,...
   mcm_t, mcm_x, mcm_y, mcm_vx, mcm_vy,...
   fsn1_t,fsn1_id,fsn1_x,fsn1_y,fsn1_vx,fsn1_vy]=data_gen(t)
% generate data
%t = [0:0.16:20];

% mwr time, id, x, y, vx, vy
mwr_t = t;
mwr_x = cos(0.3*t);
mwr_y = sin(0.1*t);
mwr_vx = cos(0.3*t);
mwr_vy = sin(0.1*t);
% camera time, id, x, y, vx, vy, width
mcm_t = t;
mcm_x = cos(0.5*t+0.3*pi);
mcm_y = sin(0.1*t+0.3*pi);
mcm_vx = cos(0.5*t+0.3*pi);
mcm_vy = sin(0.1*t+0.3*pi);
% fsn1 time, id, x, y, vx, vy, ex, width,
fsn1_t = [];
fsn1_id=[];
fsn1_x = [];
fsn1_y = [];
fsn1_vx = [];
fsn1_vy = [];
for i=1:10
  fsn1_t = [fsn1_t t];
  fsn1_id=[fsn1_id i*ones(size(t))];
  fsn1_x = [fsn1_x cos(0.1*i*t+0.2*pi)];
  fsn1_y = [fsn1_y sin(0.2*t+0.2*i*pi)];
  fsn1_vx = [fsn1_vx cos(0.5*i*t+0.1*i*pi)];
  fsn1_vy = [fsn1_vy sin(0.2*i*t+0.1*i*pi)];
end
end