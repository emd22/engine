#ifndef STRING_H
#define STRING_H

#define STRING_START_SIZE 64

typedef struct {
    char *string;
    int size;
    int used;
} string_t;

void string_new(string_t *string);
int string_len(string_t *string);
void string_edit(string_t *string, int index, char c);
char string_get(string_t *string, int index);
void string_copy(string_t *dest, string_t *src);
void string_free(string_t *string);
void string_cat_c(string_t *dest, char *src);

#endif