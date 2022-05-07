#include <fcntl.h>
// extern int cal(char * buf, int n);
int __attribute__((noinline)) cal(char * buf, int n) {
    printf(buf);
    return n*n;
}
// void log(char * buf);
void __attribute__((noinline)) log(char * buf) {
    printf(buf);
}
int __attribute__((noinline)) cal_file(char *file_name) {
    int fd = -1, n = 0, value = 0; char buffer[130];
    if (file_name) {
        log(file_name);
        fd = open(file_name, O_RDONLY, S_IRUSR);
        if(fd == -1) return -1;
    }
    // other checks
    while (n = read(fd, buffer, 128))
        value += cal(buffer, n);
    close(fd);
    return value;
}
int main() {
    cal_file("temp");
    return 0;
}