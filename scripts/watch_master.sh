#!/bin/sh

while true
do
echo -n `date +%s`
mysql -h rep1 -u root -e 'show engine innodb status\G'
sleep 10
done
