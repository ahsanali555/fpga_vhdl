#include <stdio.h>
#include "system.h"
#include "altera_avalon_pio_regs.h"
#include "altera_avalon_timer_regs.h"
#include "altera_avalon_performance_counter.h"
#include "sys/alt_irq.h"
#include <stdbool.h>

int global_cnt =0;
int prescaler =0;
int key_edge=0;
int test=0;

//To display POLItO
int P=0x0C; // in binary 0001100
int O=0x40; // in binary 1000000
int L=0x47; // in binary 1000111
int I=0x79; // in binary 1111001
unsigned char polito[5]={0x0C, 0x40, 0x47, 0x79, 0x40};
int char_pointer = 0;


int right_move = 0;
int left_move = 0;

int main()
{
	int i,j;
	float euler = 0;
	long time;
	printf("Euler Approximation 15\n");
	init_all();
	int flag = 0;


//	for (i=0; i<15; i++)
//	{
//		PERF_RESET(PERFORMANCE_COUNTER_0_BASE);
//		PERF_START_MEASURING(PERFORMANCE_COUNTER_0_BASE);
//		PERF_BEGIN(PERFORMANCE_COUNTER_0_BASE,1);
//		/* COMPUTING TASK */
//
//		if (i==0)
//		j =1;
//		else
//		j=j*i;
//		euler = euler + 1.0/j;
//
//		PERF_END(PERFORMANCE_COUNTER_0_BASE,1);
//		printf("%.10f\n", euler);
//		time=(long)perf_get_section_time(PERFORMANCE_COUNTER_0_BASE,1);
//		time= time/50;
//		printf("Time = %ld usec\n",time);
//		PERF_STOP_MEASURING(PERFORMANCE_COUNTER_0_BASE);
//	}


	while (1);
}


/*
* DISPLAY ROUTINE
*/
void display()
{
	if(right_move==0 & left_move==0){
		IOWR_ALTERA_AVALON_PIO_DATA(HEX5_BASE, polito[0]);
		IOWR_ALTERA_AVALON_PIO_DATA(HEX4_BASE, polito[1]);
		IOWR_ALTERA_AVALON_PIO_DATA(HEX3_BASE, polito[2]);
		IOWR_ALTERA_AVALON_PIO_DATA(HEX2_BASE, polito[3]);
		IOWR_ALTERA_AVALON_PIO_DATA(HEX1_BASE, polito[4]);
	}
	else if(right_move==1 & left_move==0){
		IOWR_ALTERA_AVALON_PIO_DATA(HEX5_BASE, polito[(char_pointer+0)%5]);
		IOWR_ALTERA_AVALON_PIO_DATA(HEX4_BASE, polito[(char_pointer+1)%5]);
		IOWR_ALTERA_AVALON_PIO_DATA(HEX3_BASE, polito[(char_pointer+2)%5]);
		IOWR_ALTERA_AVALON_PIO_DATA(HEX2_BASE, polito[(char_pointer+3)%5]);
		IOWR_ALTERA_AVALON_PIO_DATA(HEX1_BASE, polito[(char_pointer+4)%5]);
	}
	else if(right_move==0 & left_move==1){
		IOWR_ALTERA_AVALON_PIO_DATA(HEX1_BASE, polito[(char_pointer+0)%5]);
		IOWR_ALTERA_AVALON_PIO_DATA(HEX2_BASE, polito[(char_pointer+1)%5]);
		IOWR_ALTERA_AVALON_PIO_DATA(HEX3_BASE, polito[(char_pointer+2)%5]);
		IOWR_ALTERA_AVALON_PIO_DATA(HEX4_BASE, polito[(char_pointer+3)%5]);
		IOWR_ALTERA_AVALON_PIO_DATA(HEX5_BASE, polito[(char_pointer+4)%5]);
	}
}


/* INITIALIZATION ROUTINE */
void init_all()
{
	init_timer();
	init_BUTTONS_interrupts();
	global_cnt =0;
	prescaler =0;
	key_edge=0;
	right_move = 0;
	left_move = 0;
	char_pointer = 0;
}

/*
* TIMER INTERRUPT ROUTINE
*/
static void timer_isr(void *context)
{
	/* Clear the interrupt */
	IOWR_ALTERA_AVALON_TIMER_STATUS(TIMER_0_BASE, 0x00);
	if ((key_edge&0x01)==1){
		right_move = 1;
		left_move = 0;
	}
	else if((key_edge&0x02)==1)
	{
		right_move = 0;
		left_move = 1;
	}
	display();
	if(char_pointer == 5){
		char_pointer = 0;
	}
	char_pointer++;
}


/*
* TIMER INITIALIZATION ROUTINE
*/
void init_timer()
{
	/* Write in the PERIOD register the value 0x989680 corresponding to 25.000.000
	 * corresponding to 1/2 Second of interval*/
	IOWR_ALTERA_AVALON_TIMER_PERIODL(TIMER_0_BASE, 0x7840);
	IOWR_ALTERA_AVALON_TIMER_PERIODH(TIMER_0_BASE, 0x017D);
	test = alt_ic_isr_register(TIMER_0_IRQ_INTERRUPT_CONTROLLER_ID, TIMER_0_IRQ,
	timer_isr, NULL,NULL);
	if (test == 0)
	printf("Timer Interrupt Routine Registered\n");
	IOWR_ALTERA_AVALON_TIMER_CONTROL(TIMER_0_BASE, ALTERA_AVALON_TIMER_CONTROL_ITO_MSK
	| ALTERA_AVALON_TIMER_CONTROL_CONT_MSK | ALTERA_AVALON_TIMER_CONTROL_START_MSK);
}



/***************************************
* BUTTONS Interrupt Service routine
*
*/
static void button_isr(void* context)
{
	/* Read the edge capture register from the button PIO
	into destination pointed by an appropriately cast pointer
	*/
	*(volatile int*) context = IORD_ALTERA_AVALON_PIO_EDGE_CAP(KEYS_BASE);
	/* Write to the edge capture register to reset it */
	IOWR_ALTERA_AVALON_PIO_EDGE_CAP(KEYS_BASE, 0x3);
	printf("Button Pressed\n");
}


/*
* BUTTONS Initialization Routine
*/
void init_BUTTONS_interrupts()
	{
	/* Enable 2 button interrupts */
	IOWR_ALTERA_AVALON_PIO_IRQ_MASK(KEYS_BASE, 0x3);
	/* Reset the edge capture register. */
	IOWR_ALTERA_AVALON_PIO_EDGE_CAP(KEYS_BASE, 0x3);
	/*
	 * Register the ISR.
	 * Uses the new API interface
	 *
	 * */
	test = alt_ic_isr_register(KEYS_IRQ_INTERRUPT_CONTROLLER_ID, KEYS_IRQ, button_isr,
	(void*) &key_edge, 0x0);
	if (test == 0)
	printf("PIO Interrupt Routine Registered\n");
}


