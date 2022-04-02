#include "../include/NEC_IR.h"

short leadpulse_IR_verification()
{
  // lead in signal lenght verification
  return 0;
}

short read_IR_bit(uint8_t *byte)
{
  if (10 < 20)
  {
    *byte >> 1;
    return 1;
  }
  else if (20 < 30)
  {
    *byte >> 1;
    *byte |= 0x80;
    return 1;
  }
  return 0;
}