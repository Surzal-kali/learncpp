#include <stdio.h>
#include <unistd.h>
#include <string.h>
#include <stdlib.h>

int main(void) {
    char buffer[128];
    read(STDIN_FILENO, buffer, 512);
    printf("Buffer content: %s\n", buffer);
    if (strstr(buffer, "password")) { // Check if the buffer contains "password"
        printf("Access granted!\n");
        system("/bin/sh");
        exit(0);
    } else {
        printf("Access denied.\n");
    }
}