# coding: utf-8
import os
import re
import sys

if len(sys.argv)>1:
    cmd = "ssh JohnRain@server{} 'nvidia-smi.bak'".format(sys.argv[1])
else:
    cmd = "ssh JohnRain@server1 'nvidia-smi.bak'"
result = os.popen(cmd).read()
rs = re.findall(r"\s+(\d+)MiB\s+/\s+(\d+)MiB",result)
realvalue = ["{:.1f}GiB/{:.1f}GiB".format(float(k)/1024,float(v)/1024) for k,v in rs]

rate = [int(int(k)*100/int(v))+1 for k,v in rs]
if len(sys.argv)==3:
    print(rate[int(sys.argv[2])])
elif len(sys.argv)==4:
	print(realvalue[int(sys.argv[2])])
else:
    print(rate[0])


