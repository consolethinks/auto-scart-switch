#include "functions.h"

void switch_backwards(unsigned int* curr_scart) // Switch to the scart input that is lower than the currenty active one
{
  switch(*curr_scart)
  {
case 0	:
  RC0 = 1;
  PORTA = 0x01; //change RA1/scart_in7 to 0
  *curr_scart = 7;
  break;
case 1	:
  RC1 = 1;
  RC0 = 0;
  *curr_scart = 0;
  break;
case 2	:
  RC2 = 1;
  RC1 = 0;
  *curr_scart = 1;
  break;
case 3	:
  RC3 = 1;
  RC2 = 0;
  *curr_scart = 2;
  break;
case 4	:
  RC4 = 1;
  RC3 = 0;
  *curr_scart = 3;
  break;
case 5	:
  RC5 = 1;
  RC4 = 0;
  *curr_scart = 4;
  break;
case 6	:
  PORTA = 0x03; // switch RA0 to 1
  RC5 = 0;
  *curr_scart = 5;
  break;
case 7	:
  PORTA = 0x03; // switch RA1 to 1
  PORTA = 0x02; // switch RA0 to 0
  *curr_scart = 6;
  break;
default	:
  PORTC = 0xFF; // setting everything to a known state
  PORTA = 0x03;
  RC0 = 0; // RC0/scart_in0 to ON/LOW state (as ON == LOW)
  *curr_scart = 0;
  break;
  }
}



void switch_forward(unsigned int* curr_scart) // Switch to the scart input that is higher than the currenty active one
{
  switch(*curr_scart)
  {
case 0	:
  RC0 = 1;
  RC1 = 0;
  *curr_scart = 1;
  break;
case 1	:
  RC1 = 1;
  RC2 = 0;
  *curr_scart = 2;
  break;
case 2	:
  RC2 = 1;
  RC3 = 0;
  *curr_scart = 3;
  break;
case 3	:
  RC3 = 1;
  RC4 = 0;
  *curr_scart = 4;
  break;
case 4	:
  RC4 = 1;
  RC5 = 0;
  *curr_scart = 5;
  break;
case 5	:
  RC5 = 1;
  PORTA = 0x02;
  *curr_scart = 6;
  break;
case 6	:
  PORTA = 0x03;
  PORTA = 0x01;
  *curr_scart = 7;
  break;
case 7	:
  PORTA = 0x03;
  RC0 = 0;
  *curr_scart = 0;
  break;
default	:
  PORTC = 0xFF; // setting everything to a known state
  PORTA = 0x03;
  RC0 = 0; // RC0/scart_in0 to ON/LOW state (here ON = LOW)
  *curr_scart = 0;
  break;
  }
}



void delay_ms(unsigned int ms)
{
  // delay function in miliseconds (even at a second, it becomes inaccurate somewhat)
  while(ms != 0)
  {
    __asm
; Delay = 0.001 seconds
; Clock frequency = 4 MHz

; Actual delay = 0.001 seconds = 1000 cycles
; Error = 0 %

	cblock
	d1
	d2
	endc

			;998 cycles
	movlw	0xC7
	movwf	d1
	movlw	0x01
	movwf	d2
Delay_0:
	decfsz	d1, f
	goto	$+2
	decfsz	d2, f
	goto	Delay_0

			;2 cycles
	goto	$+1
    __endasm;
    ms--;
  }
}
