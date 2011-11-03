#!/bin/sh

# 40m rows takes up about 17 gigs of datafiles
# took about 30 minutes
time sysbench --test=oltp  --db-driver=mysql --mysql-host=domU-12-31-39-05-14-A1.compute-1.internal  --oltp-table-size=40000000 prepare
