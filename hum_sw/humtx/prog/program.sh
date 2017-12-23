#!/bin/bash
echo "Programming binary image..."
./avrdude -C ./avrdude.conf -p attiny87 -c avrisp2 -P usb -U flash:w:../main.hex:a


echo "All done!"
