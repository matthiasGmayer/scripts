#!/bin/bash

#To circumvent a bug this script reconnect the bluetooth headset and switches the audio output
bluetoothctl disconnect 20:10:10:07:2B:6E
bluetoothctl connect 20:10:10:07:2B:6E
sleep 3
pactl set-default-sink bluez_sink.20_10_10_07_2B_6E.a2dp_sink
