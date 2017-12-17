#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>
#include <stdarg.h>

#include <logging/log.h>
#include <engine.h>

FILE *log_stream;
bool  logging_initd = false;

void engine_log_init() {
    logging_initd = true;
    log_stream = stdout;
}

void engine_log_set_destination(FILE *dest) {
    log_stream = dest;
}

void engine_log(char *fmt, ...) {
    va_list args;
    //TODO: ansi colour logging
    char dest[512];
    va_start(args, fmt);
    if (!logging_initd) {
        puts("Error: trying to log but logging not initialized");
    }
    vfprintf(log_stream, fmt, args);
    va_end(args);
}

void engine_log_dest(FILE *dest, char *fmt, ...) {
    va_list args;

    FILE *old_stream = log_stream;
    engine_log_set_destination(dest);
    engine_log(fmt, args);
    engine_log_set_destination(old_stream);
}