#ifndef __SI7006_H__
#define __SI7006_H__
#include <stdint.h>

struct si7006_data
{
  uint8_t temperature[2];
  uint8_t humidity[2];
};

void si7006_init(void);

void si7006_read(struct si7006_data*);

#endif

