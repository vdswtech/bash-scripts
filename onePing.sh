#!/bin/bash
#

if [ $# -eq 1 ]
then
	ping -c 1 $1
else
	echo "Usage: $0 <address>"
fi

exit 0
