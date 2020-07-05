#include <stdarg.h>
#include <stdbool.h>
#include <stdint.h>
#include <stdlib.h>

#ifdef __cplusplus
extern "C" {
#endif // __cplusplus

void convert_to_wav(const char *filename, const char *outfname);

void play(const char *ptr);

#ifdef __cplusplus
} // extern "C"
#endif // __cplusplus
