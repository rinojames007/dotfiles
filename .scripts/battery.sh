#!/bin/bash

batteryLevelPath="/sys/class/power_supply/BAT0/capacity"
batteryStatusPath="/sys/class/power_supply/BAT0/status"

batteryStatus="$(cat $batteryStatusPath)"

batteryLowReached=0
batteryCritReached=0

while true; do
	batteryLevel="$(cat $batteryLevelPath)"
	batteryStatusCurr="$(cat $batteryStatusPath)"

	if [[ "$batteryStatus" != "$batteryStatusCurr" ]]; then
		batteryStatus="$batteryStatusCurr"
		$HOME/.scripts/battery_display.sh
	fi
	if (( $batteryLowReached == 0 && $batteryLevel <= 20 )); then
		batteryLowReached=1
		dunstify -h "int:value:$batteryLevel" "Low Battery Level"
	elif (( $batteryLevel > 20 )); then
		batteryLowReached=0
	fi

	if (( $batteryCritReached == 0 && $batteryLevel <= 10 )); then
		batteryCritReached=1
		dunstify -h "int:value:$batteryLevel" "Critical Battery Level"
	elif (( $batteryLevel > 10 )); then
		batteryCritReached=0
	fi
done
