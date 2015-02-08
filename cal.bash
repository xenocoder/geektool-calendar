#!/bin/bash
# Credit where credit is due for this function, slightly modified.
# http://forums.macrumors.com/showpost.php?p=11804868&postcount=2735
_cal() {
	# Append leading and trailing space to each line; nuke
	# the last (empty) line as well.
	cal $(date -v"$1"m '+%m %Y') | sed -e 's/^/ /;s/$/ /;$d'
}
# previous month
_cal '-1'
echo

# this month
day=`date +%e`
esc_day="[00;33m${day}[00m"
_cal '+0' | sed -e "s/ $day / $esc_day /"
echo

# next month
_cal '+1'
