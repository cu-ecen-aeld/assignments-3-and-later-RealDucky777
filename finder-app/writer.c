#include <syslog.h>
#include <stdio.h>
#include <stdlib.h>

int main(int argc, char **argv) {
    openlog(NULL, 0, LOG_USER);

    if (argc != 3) {
        syslog(LOG_ERR, "Invalid number of args");
        return 1;
    }

    FILE *f = fopen(argv[1], "w");
    if (f == NULL) {
        syslog(LOG_ERR, "Cannot open the file specified");
        return 1;
    }
    fprintf(f, "%s", argv[2]);
    syslog(LOG_DEBUG, "Writing %s to %s", argv[2], argv[1]);
    fclose(f);
    closelog();
    return 0;
}