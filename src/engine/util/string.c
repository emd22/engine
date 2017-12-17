#include <string.h>
#include <stdlib.h>

#include <logging/log.h>
#include <util/string.h>
#include <engine.h>

void string_new(string_t *string) {
    string->string = (char *)malloc(STRING_START_SIZE);
    string->size = STRING_START_SIZE;
    string->used = 0;
}

int string_len(string_t *string) {
    return string->used;
}

void string_edit(string_t *string, int index, char c) {
    if (string->used == string->size-1) {
        #if FULL_DEBUG
        engine_log("reallocated string from %d bytes to %d at %llu\n", string->size, string->size*2, string->string);
        #endif
        string->string = realloc(string->string, string->size*2);
        string->size *= 2;
    }
    if (index > string_len(string) || index < 0) {
        engine_log("trying to access string outside boundaries %d is not between %d and 0.\n", index, string_len(string));
        return;
    }
    string->string[index] = c;
    string->used++;
    if (index == string->used) {
        string->string[index+1] = 0;
        string->used++;
    }
}

char string_get(string_t *string, int index) {
    if (index > string_len(string) || index < 0) {
        engine_log("trying to access string outside boundaries %d is not between %d and 0.\n", index, string_len(string));
    }
}

void string_copy(string_t *dest, string_t *src) {
    int i;
    int len = string_len(src);
    for (i = 0; i < len; i++) {
        string_edit(dest, i, string_get(src, i));
    }
}

void string_cat_c(string_t *dest, char *src) {
    int i;
    int len = strlen(src);
    for (i = 0; i < len; i++) {
        string_edit(dest, string_len(dest), src[i]);
    }
}

void string_free(string_t *string) {
    free(string->string);
}