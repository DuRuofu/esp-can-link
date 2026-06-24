/*
 * debug.h - printf redirect to USART1 (PA9 TX)
 */

#ifndef __DEBUG_H
#define __DEBUG_H

#include "ch32v20x.h"
#include <stdio.h>

void USART_Printf_Init(uint32_t baudrate);
void Delay_Init(void);   /* from WCH SRC/Debug/debug.c */

#endif
