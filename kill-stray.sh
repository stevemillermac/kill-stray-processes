#!/bin/sh
# Tested on 10.9.3+

# Who is currently logged in
l_user=`ps -o user= -p $$ | awk '{print $1}'`

# Kill the stray launchd's and all their subprocesses
for stray in `ps aux | grep -E -v "$l_user|root|_a*" | awk '{print $2}'`; do
    kill -9 "$stray"
done
