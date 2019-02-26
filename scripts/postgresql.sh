#!/bin/sh
yum install https://download.postgresql.org/pub/repos/yum/11/redhat/rhel-7-x86_64/pgdg-centos11-11-2.noarch.rpm
yum install postgresql11
yum install postgresql11-server
/usr/pgsql-11/bin/postgresql-11-setup initdb
systemctl enable postgresql-11
systemctl start postgresql-11

firewall-cmd --zone=public --add-port=5432/tcp --permanent
firewall-cmd --reload

systemctl restart postgresql-11
