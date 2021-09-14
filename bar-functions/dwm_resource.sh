#!/bin/bash

dirloc='/'

dwm_resources(){
    free_output=$(free -h| grep Mem)
    dirloc=$(df -h $dirloc | tail -n 1)

    MEMUSED=$(echo $free_output | awk '{print $3}')
    MEMTOTAL=$(echo $free_output | awk '{print $2}')

    CPU=$(top -bn1 | grep Cpu | awk '{print $2}')%
    
    STORUSED=$(echo $dirloc | awk '{print $3}')
    STORTOT=$(echo $dirloc | awk '{print $2}')
    STORPER=$(echo $dirloc | awk '{print $4}')
    printf "%s" "$SEP1"
    printf " MEM %s/%s |  CPU %s |  STO %s/%s: %s" "$MEMUSED" "$MEMTOTAL" "$CPU" "$STORUSED" "$STORTOT" "$STORPER"
    printf "%s\n" "$SEP2"

}

dwm_resources
