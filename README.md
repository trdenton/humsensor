# Humidity Sensor Solution

A basic wireless humidity sensor solution

## Hardware

Check out the KiCAD design files for the transmitter/sensor in 'tx\_pcb'

## Software


### Receiver

The receiver is based on an arduino mega (due to what I had laying around) and an nRF24L01+ module.  The sketch can be fond in 'hum\_sw/humrx'

### Transmitter

The transmitter is based on an attiny87, si7006, and nrf24L01+.  You can find it's source code in 'hum\_sw/humtx'.  It requires avrlibc and GNU make.  the 'prog' subdirectory contains a scrip that will flash the transmitter PCB via avrdude.  The included copy of avrdude is for my convenience, it is compiled for linux amd64
