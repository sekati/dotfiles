#!/bin/bash

#echo "Memory"
top -l 1 | awk '/PhysMem/ {print "Used: " $8}'
top -l 1 | awk '/PhysMem/ {print "Inactive:  " $6+$10"M"}'
