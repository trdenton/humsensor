
/*
* Getting Started example sketch for nRF24L01+ radios
* This is a very basic example of how to send data from one node to another
* Updated: Dec 2014 by TMRh20
*/

#include <SPI.h>
#include "RF24.h"

/****************** User Config ***************************/
/***      Set this radio as radio number 0 or 1         ***/

/* Hardware configuration: Set up nRF24L01 radio on SPI bus plus pins 7 & 8 */
RF24 radio(7,8);
/**********************************************************/

byte address[] = "abcde";
byte address2[] = "fucky";

// Used to control whether this node is sending or receiving

void setup() {
  Serial.begin(115200);
  Serial.println(F("Starting..."));
  
  radio.begin();

  // Set the PA Level low to prevent power supply related issues since this is a
 // getting_started sketch, and the likelihood of close proximity of the devices. RF24_PA_MAX is default.
  radio.setPALevel(RF24_PA_LOW);


  radio.setAutoAck(false);
  radio.setChannel(2);
  radio.setCRCLength(RF24_CRC_8);
  radio.setPayloadSize(16);
  radio.setDataRate(RF24_250KBPS);
  radio.openReadingPipe(0,address);
  radio.openReadingPipe(1,address2);
  radio.printDetails();
  // Start the radio listening for data
  Serial.println("Start listening...");
  radio.startListening();
}

void loop() {

    uint8_t dat[16];
    
    if( radio.available()){
      Serial.println("Read a thing!");                                                              // Variable for the received timestamp
      while (radio.available()) {                                   // While there is data ready
        radio.read( dat,16 );             // Get the payload
        int i;
        for(i=0;i<16;i++)
        {
          Serial.print(dat[i]);Serial.print(',');
        }
        Serial.println();
      }
        
    }

} // Loop

