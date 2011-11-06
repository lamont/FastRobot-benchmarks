#!/bin/sh

while true
do
echo -n `date +%s`
mysql -h domU-12-31-39-16-9C-F9.compute-1.internal -u root -e 'show slave status\G' |grep Seconds
sleep 1
done
