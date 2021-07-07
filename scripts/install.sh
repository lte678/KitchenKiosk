#!/bin/bash

ln -sf $(dirname $PWD)/scripts/kiosk.service /lib/systemd/system/kiosk.service

mkdir -p /home/pi/.local/bin/
ln -sf $(dirname $PWD)/scripts/kiosk.sh /home/pi/.local/bin/kiosk.sh

systemctl enable kiosk.service
