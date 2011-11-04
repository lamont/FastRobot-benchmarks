#!/bin/sh

for I in 1 2 3 4 5; do sysbench --num-threads=32 --max-requests=0 --max-time=120 --test=oltp --db-driver=mysql --mysql-host=ip-10-110-66-14.ec2.internal --oltp-table-size=40000000 run | tee ec2-galera/percona-standalone/2min_run_no_$I.out; done
