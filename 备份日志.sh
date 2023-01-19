#!/bin/bash
#每周5使用tar命令备份/var/log 下所有日志文件
#vim  /root/logbak.sh
#编写备份脚本，备份后的文件名包含日期标签，防止后面的备份数据覆盖
#注意 date 命令需要使用反引号括起来，反引号在键<tab>上边

tar   -czf log-`date +%Y%m%d`.tar.gz

#crontab -e #编写计划任务，执行备份脚本
00    03    *    *    5    /root/logbak