#!/bin/bash
ip=$(echo $1 | tr -d "x")
if [ "$1" == "" ]
then
    echo "You forget to enter an IP"
    echo "Syntax example : ./ip_sweep.sh 192.168.1.x"
else
    for x in `seq 1 254`;
    do
        ping -c 1 "$ip""$x" | grep "64 bytes" | cut -d " " -f 4 | tr -d ":"
    done
fi
