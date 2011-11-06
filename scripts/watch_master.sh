#!/bin/sh

while true
do
echo -n `date +%s`
mysql -h domU-12-31-39-16-9C-F9.compute-1.internal -u root -e 'show engine innodb status\G'
sleep 10
done
