#!/bin/bash

echo "Starting Firefox..."
nohup firefox https://www.disneyplus.com/home >/dev/null 2>$1 &
echo "Firefox Successfully Opened"
