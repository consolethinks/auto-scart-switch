#ifndef PULL_SW
#define PULL_SW

#include <stdint.h>

void pulldown_switcher(volatile uint8_t *port_out, short select_out);

#endif