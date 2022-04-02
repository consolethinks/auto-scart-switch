#include <pic16f630.h>
#ifndef _FUNC
#define _FUNC
#define MAX_LEAD 10000 // these are PLACEHOLDERS
#define MIN_LEAD 1000
#define MAX_LEAD_SPACE 500
#define MIN_LEAD_SPACE 250 // PLACEHOLDERS!!


void switch_backwards(unsigned int* );
void switch_forward(unsigned int* );
void delay_ms(unsigned int);
int lead_time_check();
int bit_check();

#endif