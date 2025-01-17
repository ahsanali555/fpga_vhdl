#include <stdint.h>
#include <unistd.h>
#include "system.h"
#include "sys/alt_stdio.h"
#include "altera_avalon_pio_regs.h"
#include <stdbool.h>

int main ()
{
	int flag;
	uint8_t count = 0;
	uint8_t count_high = 0b11110000;
	uint8_t count_low = 0b00001111;
	int key_pressed;
	alt_putstr("Task 02 Running\n");

	while (1)
	{
		key_pressed = IORD_ALTERA_AVALON_PIO_DATA(KEYS_BASE);
		if (key_pressed != 0){
			if (count == 256) {
			  count = 0;
			} else {
			  count = count + 1;
			}
		}

		switch (count & count_low) {
			case 0x00:
				IOWR_ALTERA_AVALON_PIO_DATA(HEX1_BASE, 0b1000000);
				break;
			case 0x01:
				IOWR_ALTERA_AVALON_PIO_DATA(HEX1_BASE, 0b1001111);
				break;
			case 0x02:
				IOWR_ALTERA_AVALON_PIO_DATA(HEX1_BASE, 0b0100100);
				break;
			case 0x03:
				IOWR_ALTERA_AVALON_PIO_DATA(HEX1_BASE, 0b0110000);
				break;
			case 0x04:
				IOWR_ALTERA_AVALON_PIO_DATA(HEX1_BASE, 0b0011001);
				break;
			case 0x05:
				IOWR_ALTERA_AVALON_PIO_DATA(HEX1_BASE, 0b0010010);
				break;
			case 0x06:
				IOWR_ALTERA_AVALON_PIO_DATA(HEX1_BASE, 0b0000010);
				break;
			case 0x07:
				IOWR_ALTERA_AVALON_PIO_DATA(HEX1_BASE, 0b1111000);
				break;
			case 0x08:
				IOWR_ALTERA_AVALON_PIO_DATA(HEX1_BASE, 0b0000000);
				break;
			case 0x09:
				IOWR_ALTERA_AVALON_PIO_DATA(HEX1_BASE, 0b0010000);
				break;
			case 0x0A:
				IOWR_ALTERA_AVALON_PIO_DATA(HEX1_BASE, 0b0001000);
				break;
			case 0x0B:
				IOWR_ALTERA_AVALON_PIO_DATA(HEX1_BASE, 0b0000011);
				break;
			case 0x0C:
				IOWR_ALTERA_AVALON_PIO_DATA(HEX1_BASE, 0b1000110);
				break;
			case 0x0D:
				IOWR_ALTERA_AVALON_PIO_DATA(HEX1_BASE, 0b0100001);
				break;
			case 0x0E:
				IOWR_ALTERA_AVALON_PIO_DATA(HEX1_BASE, 0b0000110);
				break;
			case 0x0F:
				IOWR_ALTERA_AVALON_PIO_DATA(HEX1_BASE, 0b0001110);
				break;
			default:
				IOWR_ALTERA_AVALON_PIO_DATA(HEX1_BASE, 0b0000000);
				break;
		}

	switch (count & count_high) {
			case 0x00:
				IOWR_ALTERA_AVALON_PIO_DATA(HEX2_BASE, 0b1000000);
				break;
			case 0x10:
				IOWR_ALTERA_AVALON_PIO_DATA(HEX2_BASE, 0b1001111);
				break;
			case 0x20:
				IOWR_ALTERA_AVALON_PIO_DATA(HEX2_BASE, 0b0100100);
				break;
			case 0x30:
				IOWR_ALTERA_AVALON_PIO_DATA(HEX2_BASE, 0b0110000);
				break;
			case 0x40:
				IOWR_ALTERA_AVALON_PIO_DATA(HEX2_BASE, 0b0011001);
				break;
			case 0x50:
				IOWR_ALTERA_AVALON_PIO_DATA(HEX2_BASE, 0b0010010);
				break;
			case 0x06:
				IOWR_ALTERA_AVALON_PIO_DATA(HEX2_BASE, 0b0000010);
				break;
			case 0x70:
				IOWR_ALTERA_AVALON_PIO_DATA(HEX2_BASE, 0b1111000);
				break;
			case 0x80:
				IOWR_ALTERA_AVALON_PIO_DATA(HEX2_BASE, 0b0000000);
				break;
			case 0x90:
				IOWR_ALTERA_AVALON_PIO_DATA(HEX2_BASE, 0b0010000);
				break;
			case 0xA0:
				IOWR_ALTERA_AVALON_PIO_DATA(HEX2_BASE, 0b0001000);
				break;
			case 0xB0:
				IOWR_ALTERA_AVALON_PIO_DATA(HEX2_BASE, 0b0000011);
				break;
			case 0xC0:
				IOWR_ALTERA_AVALON_PIO_DATA(HEX2_BASE, 0b1000110);
				break;
			case 0xD0:
				IOWR_ALTERA_AVALON_PIO_DATA(HEX2_BASE, 0b0100001);
				break;
			case 0xE0:
				IOWR_ALTERA_AVALON_PIO_DATA(HEX2_BASE, 0b0000110);
				break;
			case 0xF0:
				IOWR_ALTERA_AVALON_PIO_DATA(HEX2_BASE, 0b0001110);
				break;
			default:
				IOWR_ALTERA_AVALON_PIO_DATA(HEX2_BASE, 0b0000000);
				break;
		}
	}
}

