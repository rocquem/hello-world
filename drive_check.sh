#!/bin/bash

# Get list of disks drives
for i in `parted -l | grep Disk | grep -v Flag | awk '{print $2}' | sed 's/://g'` \
; do smartctl -i $i | egrep "Model|Serial|Capacity|Version" ; done