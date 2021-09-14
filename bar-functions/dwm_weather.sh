#!/bin/bash

#dwm-bar function for weather
# ________________________
#< change loc if required >
# ------------------------
#        \   ^__^
#         \  (oo)\_______
#            (__)\       )\/\
#                ||----w |
#                ||     ||


dwm_weather(){
    loc=$(timedatectl | awk 'FNR == 4 {s = $3;split(s,a,"/");print a[2]}')
    value=$(curl -s wttr.in/$loc?format=1 | grep -o ".[0-9].*")
    export _DWM_BAR_WEATHER_="${SEP1}  ${value} ${SEP2}"
}
dwm_weather
