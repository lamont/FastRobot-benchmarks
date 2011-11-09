#!/usr/bin/env python

__author__ = 'lamont'

import sys, re

# input looks like
# 111107  8:38:36 INNODB MONITOR OUTPUT
# ...
# 132.79 inserts/s, 398.36 updates/s, 132.79 deletes/s, 55604.94 reads/s
# ...
# END OF INNODB MONITOR OUTPUT

# I want the time and each of those 4 variables

f=open('../../ec2-galera/percona-replicate/innodb.out','r')

a_timestamp = 0
inserts = 0
updates = 0
deletes = 0
reads = 0

for line in f:
    if (line.find("INNODB MONITOR OUTPUT") > 0):
        a_timestamp = line.split()[1]
        print a_timestamp