#ifndef LOG_H
#define LOG_H

#include <stdio.h>

void engine_log_init();
void engine_log_set_destination(FILE *dest);
void engine_log(char *fmt, ...);

#endif