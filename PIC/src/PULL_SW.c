#include "../include/PULL_SW.h"

void pulldown_switcher(volatile uint8_t *port_out, short select_out)
{
  // Selects active pulldown
  *port_out = 0xFF;
  *port_out &= ~(0x01 << select_out);
}

void pulldown_switchup(volatile uint8_t *port_out, short *curr_out)
{
  pulldown_switcher(*port_out, *curr_out + 1);
  if (curr_out != 7)
  {
    *curr_out++;
  }
  else
  {
    *curr_out = 0;
  }
}

void pulldown_switchdown(volatile uint8_t *port_out, short *curr_out)
{
  pulldown_switcher(*port_out, *curr_out - 1);
  if (curr_out)
  {
    *curr_out--;
  }
  else
  {
    *curr_out = 7;
  }
}