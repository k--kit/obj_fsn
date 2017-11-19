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
%----
% init data
gen_t_min = 0;
gen_t_span=0.16;
gen_t_max = 60;
t = [gen_t_min:gen_t_span:gen_t_max];
[mwr_t, mwr_x, mwr_y, mwr_vx, mwr_vy, ...
mcm_t, mcm_x, mcm_y, mcm_vx, mcm_vy,...
fsn1_t,fsn1_id,fsn1_x,fsn1_y,fsn1_vx,fsn1_vy] = data_gen(t);

%----
% init plot fig
f = figure();
ax = axes('Units','pixels');
ylim(1.1*[min([mwr_y mcm_y fsn1_y]);max([mwr_y mcm_y fsn1_y])]);
xlim(1.1*[min([mwr_x mcm_x fsn1_x]);max([mwr_x mcm_x fsn1_x])]);
axis square;
hp_mwr = [];
hp_mcm = [];
hp_fsn1 = [];
grid on;

%----
% init control fig
figure();
% Create slider
uicontrol('Style', 'text','String','tick','Position', [0 0 50 20]);
sld_time = uicontrol('Style', 'slider',...
    'Min',gen_t_min,'Max',gen_t_max,'Value',gen_t_max,...
    'SliderStep',gen_t_span/(gen_t_max-gen_t_min)*[1 10],...
    'Position', [50 0 100 20],...
    'Callback', @sld_time_callback); 
uicontrol('Style', 'text','String','span','Position', [150 0 50 20]);
sld_span = uicontrol('Style', 'slider',...
    'Min',gen_t_span,'Max',gen_t_max,'Value',gen_t_max,...
    'SliderStep',gen_t_span/(gen_t_max-gen_t_span)*[1 10],...
    'Position', [200 0 100 20],...
    'Callback', @sld_span_callback);
uicontrol('Style', 'text','String','mwr_p','Position', [0 30 50 20]);
chk_mwr_pos = uicontrol('Style', 'checkbox',...
    'Value',1,...
    'Position', [50 30 20 20],...
    'Callback', @chk_mwr_pos_callback);
uicontrol('Style', 'text','String','mwr_v','Position', [100 30 50 20]);
chk_mwr_vel = uicontrol('Style', 'checkbox',...
    'Value',1,...
    'Position', [150 30 20 20],...
    'Callback', @chk_mwr_vel_callback);
uicontrol('Style', 'text','String','mcm_p','Position', [0 60 50 20]);
chk_mcm_pos = uicontrol('Style', 'checkbox',...
    'Value',1,...
    'Position', [50 60 20 20],...
    'Callback', @chk_mcm_pos_callback);
uicontrol('Style', 'text','String','mwr_v','Position', [100 60 50 20]);
chk_mcm_vel = uicontrol('Style', 'checkbox',...
    'Value',1,...
    'Position', [150 60 20 20],...
    'Callback', @chk_mcm_vel_callback);
sel_time = gen_t_max;
sel_timespan = gen_t_max;

%----
% start
update_plot();
% Make figure visble after adding all components