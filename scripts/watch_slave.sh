#!/bin/sh

while true
do
echo -n `date +%s`
mysql -h rep2 -u root -e 'show slave status\G' |grep Seconds
sleep 1
done
