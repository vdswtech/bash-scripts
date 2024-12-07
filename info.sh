#!/bin/bash
#
echo "Hostname: `hostname`"
echo "Uptime: `uptime | cut -d ' ' -f2 | sed 's/^\([0-9][0-9]:[0-9][0-9]\):[0-9]*/\1/'`"
echo ""
for ip in `ip addr | cut -d ' ' -f2 | grep -v '^$' | sed 's/://g'`
do
	echo "$ip has the address of `ifdata -pa $ip`"
done

exit 0
