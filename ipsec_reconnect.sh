#!/bin/ash

while [ 1 ]; do

    sleep 5 

    ping 189.195.142.74 -c 3 -q >/dev/null

    ret=$? 

    if [ $ret -ne 0 ]; then 

        logger "State: Disconnected" 

        /etc/init.d/ipsec restart 

    else 

        logger "State: Connected"  

    fi

done