#!/bin/sh

for I in 1 2 3 4 5; do sysbench --num-threads=32 --max-requests=0 --max-time=120 --test=oltp --db-driver=mysql --mysql-host=domU-12-31-39-05-14-A1.compute-1.internal  --oltp-table-size=40000000 run | tee ec2-galera/standalone/2min_run_no_$I.out; done
