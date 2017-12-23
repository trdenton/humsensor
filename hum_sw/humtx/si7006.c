#include <inttypes.h>
#include <util/twi.h>
#include "si7006.h"
#include "USI_TWI_Master.h"
#include <string.h>


#define SI7006_READ_HUMIDITY    (0xF5)
#define SI7006_READ_TEMPERATURE (0xF3)
#define SI7006_ADDRESS_WRITE          (0x41)
#define SI7006_ADDRESS_READ          (0x40)

void si7006_init(void)
{
  USI_TWI_Master_Initialise();
}


void si7006_read(struct si7006_data *in)
{

  unsigned char data[3];

  data[0]=SI7006_ADDRESS_WRITE;
  data[1]=SI7006_READ_HUMIDITY;
  USI_TWI_Start_Transceiver_With_Data(data,2);
  data[0]=SI7006_ADDRESS_READ;
  USI_TWI_Start_Transceiver_With_Data(data,3);

  memcpy(in->humidity,data+1,2);

  data[0]=SI7006_ADDRESS_WRITE;
  data[1]=SI7006_READ_TEMPERATURE;
  USI_TWI_Start_Transceiver_With_Data(data,2);
  data[0]=SI7006_ADDRESS_READ;
  USI_TWI_Start_Transceiver_With_Data(data,3);

  memcpy(in->temperature,data+1,2);


}
