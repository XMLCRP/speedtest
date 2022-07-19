#!/bin/bash
# 用于测试网络速度
# by XMLCRP
if [ -f /root/speedtest/speedtest ]
then
	exec 1> /root/speedtest/out.log
	date
	for val1 in 5396 45170 30852 24447 3633 17320 5317 26352 17145 26404
	do
		/root/speedtest/speedtest -s $val1 >> /root/speedtest/out.log
	done
else
	echo "speedtest文件不存在,开始安装...."
	mkdir /root/speedtest
	cd speedtest
	wget https://install.speedtest.net/app/cli/ookla-speedtest-1.1.1-linux-x86_64.tgz
	tar -zvxf ookla-speedtest-1.1.1-linux-x86_64.tgz
	echo " 添加每日任务：
	crontab -e
	复制下面代码，并添加到末尾。
	10 20 * * * bash /root/speedtest/spd.sh
	10 21 * * * bash /root/speedtest/spd.sh
	10 22 * * * bash /root/speedtest/spd.sh
	10 23 * * * bash /root/speedtest/spd.sh
	"
fi

