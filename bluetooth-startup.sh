#To circumvent a bug this script reconnect the bluetooth headset and switches the audio output
#bluetoothctl disconnect F4:4E:FD:00:92:03
bluetoothctl connect F4:4E:FD:00:92:03
#sleep 3
#pactl set-default-sink bluez_sink.F4:4E:FD:00:92:03.a2dp_sink
