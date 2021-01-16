#!/bin/bash
while :
do
        date
        cat -t /etc/hosts | tr -s " " | cut -d " " -f1 | xargs -n1 ping -c4 | grep -i 'stati\|packe' | sed 'N;s/\n/ /' | grep -v '0\%'
        sleep 1
done
