#!/bin/bash
iwctl station wlan0 scan
iwctl station wlan0 get-networks
echo enter your network name
read networkName
iwctl station wlan0 connect $networkName
