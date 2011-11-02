#!/bin/sh

# use the AWS tools to provision N EBS volues and attach them as /dev/sdX
# the turn the /dev/sdX EBS volumes into a raid0 stripe
# xfs formats them
# and mounts them under /data0

# set deadline scheduler on all underlying block devices

# - lal

a_vol_id=$(ec2-create-volume -s 8 -z us-east-1b | cut -f2)
ec2-describe-volumes $a_vol_id
ec2-attach-volume -d /dev/sdh -i i-IIII1111 vol-VVVV1111

