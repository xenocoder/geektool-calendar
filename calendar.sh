#!/bin/bash

# Helper function to display a month in the past or future
Cal() { cal $(date -v$1m '+%m %Y') | sed 's/^/ /';}

#Last month
Cal -1
#this month
day=`date +%e`
esc_day="[00;33m${day}[00m"
Cal '+0' | sed -e "s/ $day / $esc_day /"
# Next month
Cal +1
