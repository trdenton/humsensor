#include <inttypes.h>
#include <avr/io.h>
#include <avr/interrupt.h>
#include <avr/sleep.h>
#include <util/delay.h>
#include <avr/wdt.h>
#include "mirf.h"
#include "si7006.h"


enum { UP, DOWN };


void
ioinit (void)                   /* Note [6] */
{
    DDRB = _BV(3);
    PORTB = 0;
}

void led_on()
{
    PORTB |= _BV(3);
}

void led_off()
{
    PORTB &= ~_BV(3);

}

void blink(int times)
{
	while(times)
	{
		led_on();
		_delay_ms(100);
		led_off();
		_delay_ms(100);
		times--;
	}

}

int
main (void)
{

    wdt_disable();
    ioinit ();
    
    blink(2);

    mirf_init();

    blink(2);

    _delay_ms(50);

    sei();

    mirf_config();

    blink(2);

    uint8_t data[] = {0,1,2,3,4,5,6,7,8,9,0,1,2,3,4,5};

    
    struct si7006_data hum_data;
    for (;;)                    
    {
	    _delay_ms(1000);
	    blink(3);
	    mirf_send(data,16);
      data[0]++;
      si7006_read(&hum_data);
    }

    return (0);
}
