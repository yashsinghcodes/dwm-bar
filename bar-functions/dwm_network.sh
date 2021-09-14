#!/bin/bash


dwm_network(){
    ip=$(nmcli -a | grep 'inet4' | awk '{print $2}')
    export _DWM_BAR_NETWORK_="${SEP1}  ${ip} ${SEP2}"
}

dwm_network
