#!/bin/bash
#一键部署LNMP(RPM包版本)
# yum 源，否则该版本会失效
#此脚本使用 centos7.2 或 RHEL7.2

yum -y install httpd
yun -y install mariadb mariadb-devel mariadb-server
yum -y install php php-mysql

systemctl start httpd mariadb
systemctl enable httpd mariadb