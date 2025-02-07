#!/bin/bash

batteryLevelPath="/sys/class/power_supply/BAT0/capacity"
batteryStatusPath="/sys/class/power_supply/BAT0/status"

batteryStatus="$(cat $batteryStatusPath)"

batteryLevel="$(cat $batteryLevelPath)"
batteryStatusCurr="$(cat $batteryStatusPath)"

dunstify -h "int:value:${batteryLevel}" "${batteryStatus} | ${batteryLevel}%"
