#!/bin/bash

dwm_date(){
    printf "%s" "$SEP1"
    printf " %s" "$(date "+%a %d-%m-%y %T")"
    printf "%s\n" "$SEP2"
}

dwm_date
