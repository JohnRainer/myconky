default_color white
double_buffer yes
no_buffers yes
update_interval 1.0
total_run_times 0
own_window yes
own_window_type normal
own_window_transparent yes
own_window_hints undecorated,below,sticky,skip_taskbar,skip_pager

own_window_colour 000000
own_window_argb_visual yes
own_window_argb_value 0

double_buffer yes
draw_shades yes
draw_outline no
draw_borders no
draw_graph_borders n0
minimum_size 296 5
maximum_width 406
default_color ffffff
default_shade_color 000000
default_outline_color 000000
alignment top_right
gap_x 10
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
${font LCD:style=Bold:pixelsize=50}${alignc}${time %H:%M:%S}
${font WenQuanYi Zen Hei:pixelsize=18}${time %Y年%b%d日 星期%a}${alignc}
${font WenQuanYi Zen Hei:pixelsize=12}

${color #98c2c7}主机名: ${color}$alignr$nodename
${color #98c2c7}内核:  ${color}$alignr$kernel
${color #98c2c7}已开机: ${color}$alignr$uptime


${color #98c2c7}CPU使用率: ${color}$cpu%

$cpubar

 CPU1 温度: $alignr${exec sensors | grep 'Core 0' | cut -c17-25}
 CPU2 温度: $alignr${exec sensors | grep 'Core 1' | cut -c17-25}

${color #98c2c7}CPU占用:${color}

 ${top name 1} ${alignr}${top cpu 1} 
 ${top name 2} ${alignr}${top cpu 2} 
 ${top name 3} ${alignr}${top cpu 3} 
 ${top name 4} ${alignr}${top cpu 4} 
 ${top name 5} ${alignr}${top cpu 5} 
 ${top name 6} ${alignr}${top cpu 6} 
 ${top name 7} ${alignr}${top cpu 7} 
 ${top name 8} ${alignr}${top cpu 8} 

${color #98c2c7}物理内存：${color}${alignr}$mem / $memmax

${membar}

${color #98c2c7}根分区: ${color}${alignr}${fs_free /} / ${fs_size /}

${fs_bar 4 /}

${color #98c2c7}Home分区: ${color}${alignr}${fs_free /home} / ${fs_size /home}

${fs_bar 4 /home}

${color #98c2c7}网络使用:${color}

下载速度:$alignr${downspeed enp4s0f2} k/s
上传速度:$alignr${upspeed enp4s0f2} k/s
${downspeedgraph enp4s0f2 324D23 77B753}
