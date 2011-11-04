#!/bin/sh

# deadline is probably the best IO scheduler for databases, although noop might be reasonable for xen

# ok, try noop, deadline sucked

echo noop > /sys/block/xvdf/queue/scheduler
echo noop > /sys/block/xvdg/queue/scheduler
echo noop > /sys/block/xvdh/queue/scheduler
echo noop > /sys/block/xvdi/queue/scheduler

