#!/bin/bash

#实时监控本机内存剩余和磁盘剩余空间，剩余内存小于500m& 根分区剩余空间小于1024m（1G）时，发送报警邮件给root管理员

#提取根分区剩余空间
disk_size=$(df / |  awk'/\//{print $4}')

#提取内存剩余空间
mem_size=$(free | awk '/Mem/{print $4}')
while : 
do
if [ $disk_size -le 512000 -a $mem_size -le 1024000 ]
then
    mail -s "warning" root <<EOF
        Inssufficient resources,资源不足
EOF
fi
done
