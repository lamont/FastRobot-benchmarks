#!/bin/sh

while true
do
echo -n `date +%s`
mysql -h rep1 -u root -e "SHOW STATUS LIKE \`wsrep_%\`\G"
sleep 10
done
