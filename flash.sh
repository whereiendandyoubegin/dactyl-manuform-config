#!/bin/bash
echo "Reset your Pro Micro NOW!"
while true; do
  if [ -e /dev/ttyACM0 ]; then
    sleep 0.2
    sudo avrdude -p atmega32u4 -c avr109 -P /dev/ttyACM0 -F -D -U flash:w:/home/dan/qmk_firmware/handwired_dactyl_manuform_5x6_6_dan.hex:i
    break
  fi
  sleep 0.1
done
