# Humidity Sensor Solution

A basic wireless humidity sensor solution.  A work in progress.  Get your PCBs at https://www.pcbway.com/project/shareproject/W04152ASD12_humxmit_v2.html

Check out the writeup here:
https://skullspace.ca/2017/12/23/wireless-humidity-sensor-part-1-hardware-design/

## Hardware

Check out the KiCAD design files for the transmitter/sensor in 'tx\_pcb'

## Software


### Receiver

The receiver is based on an arduino mega (due to what I had laying around) and an nRF24L01+ module.  The sketch can be fond in 'hum\_sw/humrx'

### Transmitter

The transmitter is based on an attiny87, si7006, and nrf24L01+.  You can find it's source code in 'hum\_sw/humtx'.  It requires avrlibc and GNU make.  the 'prog' subdirectory contains a scrip that will flash the transmitter PCB via avrdude.  The included copy of avrdude is for my convenience, it is compiled for linux amd64
