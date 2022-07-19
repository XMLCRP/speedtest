# speedtest
speedtest your vps 
用于测试网络延迟，配合cron 每日定时检测效果会更好哦！
默认 安装目录 /root/speedtest/
需自行添加cron定时任务:
crontab -e
将下面代码添加到末尾。
10 20 * * * bash /root/speedtest/spd.sh #20点10分执行一次脚本
10 21 * * * bash /root/speedtest/spd.sh #21点10分执行一次脚本
10 22 * * * bash /root/speedtest/spd.sh #22点10分执行一次脚本
10 23 * * * bash /root/speedtest/spd.sh #23点10分执行一次脚本
