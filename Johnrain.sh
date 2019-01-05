default_color white
double_buffer yes
no_buffers yes
update_interval 1.0
total_run_times 0
own_window yes
own_window_type normal
own_window_transparent yes
own_window_hints undecorated,below,sticky,skip_taskbar,skip_pager

own_window_colour 111111
own_window_argb_visual yes
own_window_argb_value 0

double_buffer yes
draw_shades yes
draw_outline no
draw_borders no
draw_graph_borders n0
default_bar_size -1 5 
minimum_size 296 5
maximum_width 406
default_color ffffff
default_shade_color 000000
default_outline_color 000000
alignment top_right
gap_x -1300
gap_y 30
cpu_avg_samples 2
override_utf8_locale no
uppercase no # set to yes if you want all text to be in uppercase
use_spacer no
use_xft yes
xftfont WenQuanYi Zen Hei:pixelsize=12
override_utf8_locale yes
use_spacer no
minimum_size 300 5
TEXT
${font LCD:style=Bold:pixelsize=40}${alignc}${time %H:%M:%S}
${font WenQuanYi Zen Hei:pixelsize=13}${color #98c2c7}主机名: ${color}$alignr$nodename
${color #98c2c7}内核:  ${color}$alignr$kernel
${color #98c2c7}已开机: ${color}$alignr$uptime
${color #98c2c7}CPU使用率: $alignr${color}$cpu%
${cpubar}
${color #98c2c7}物理内存：${color}${alignr}$mem / $memmax
${membar}

${color #98c2c7}一号机GPU：
${color}GPU 0：$alignr${exec python getsergpu.py 1 0 0}
${execbar python getsergpu.py 1 0}
${color}GPU 1：$alignr${exec python getsergpu.py 1 1 0}
${execbar python getsergpu.py 1 1}
${color #98c2c7}二号机GPU：
${color}GPU 0：$alignr${exec python getsergpu.py 2 0 0}
${execbar python getsergpu.py 2 0}
${color}GPU 1：$alignr${exec python getsergpu.py 2 1 0}
${execbar python getsergpu.py 2 1}
${color #98c2c7}三号机GPU：
${color}GPU 0：$alignr${exec python getsergpu.py 3 0 0}
${execbar python getsergpu.py 3 0}

${color #98c2c7}网络使用:${color}
下载速度:$alignr${downspeed enp1s0}/s
上传速度:$alignr${upspeed enp1s0}/s