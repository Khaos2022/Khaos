#include <fcntl.h>
void __attribute__((noinline)) bar(short a, float b) {
     // bar's code
     printf("bar: %d, %f\n", a, b);
}
int __attribute__((noinline)) foo(int m) {
     // foo's code
     printf("foo: %d\n", m);
     return m;
}
int main() {
     int fd = open("file_name", O_RDONLY, S_IRUSR);
     close(fd);
     bar(0x1234, 0.1);
     int res = foo(fd);
     return 0;
}
