#include <Si7006.h>

#include <RF24_config.h>
#include <printf.h>
#include <nRF24L01.h>
#include <RF24.h>

RF24 radio(7,6);
Si7006 hum;
const int led_pin=11;
byte address[] = "abcde";

void setup() {
  // put your setup code here, to run once:
  pinMode(led_pin,OUTPUT);

  blink(1);
  radio.begin();
  radio.setPALevel(RF24_PA_LOW);
  radio.setAutoAck(false);
  radio.setChannel(2);
  radio.setCRCLength(RF24_CRC_8);
  radio.setPayloadSize(sizeof(float));
  radio.setDataRate(RF24_250KBPS);
  radio.openWritingPipe(address);
  radio.stopListening();
  blink(1);
  if(!hum.begin())
  {
    while(1);
  }
}

void blink(int n)
{
  while(n)
  {
    digitalWrite(led_pin,HIGH);
    delay(100);
    digitalWrite(led_pin,LOW);
    delay(100);
    n--;
  }
}


void loop() {
  float humidity;
  boolean mode=false;
  // put your main code here, to run repeatedly:
  blink(1);
  
  delay(500);
  hum.getTemperature(humidity,mode);
  radio.write((void*)&humidity,sizeof(float));
}
