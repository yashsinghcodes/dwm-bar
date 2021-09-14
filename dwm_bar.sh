#!/bin/bash
# github:yashsinghcodes 

LOC=$(readlink -f "$0")
DIR=$(dirname "$LOC")

export SEP1=" [ "
export SEP2=" ] "

. "$DIR/bar-functions/dwm_weather.sh"
. "$DIR/bar-functions/dwm_network.sh"
. "$DIR/bar-functions/dwm_resource.sh"
. "$DIR/bar-functions/dwm_date.sh"

runs(){
    while true
    do
        dwm_weather &
        dwm_network &
        sleep 5
    done
}

runs &

while true
do
    upperbar=""
    upperbar="$upperbar${_DWM_BAR_WEATHER_}"
    upperbar="$upperbar${_DWM_BAR_NETWORK_}"
    upperbar="$upperbar$(dwm_resources)"
    upperbar="$upperbar$(dwm_date)"

    xsetroot -name "$upperbar"
    sleep 1
done
