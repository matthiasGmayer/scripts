#!/bin/bash

#this script maps the writing tablet to a specific monitor($1)
device=$(xrandr | grep -o "$1\S*")
penpre=$(xinput | grep -o "GAOMON Gaomon Tablet Pen \S.*id=\S*")
pen=${penpre##*=}
xinput map-to-output $pen $device
