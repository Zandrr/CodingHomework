
bufbomb:     file format elf32-i386


Disassembly of section .init:

08048890 <_init>:
 8048890:	55                   	push   %ebp
 8048891:	89 e5                	mov    %esp,%ebp
 8048893:	53                   	push   %ebx
 8048894:	83 ec 04             	sub    $0x4,%esp
 8048897:	e8 00 00 00 00       	call   804889c <_init+0xc>
 804889c:	5b                   	pop    %ebx
 804889d:	81 c3 58 37 00 00    	add    $0x3758,%ebx
 80488a3:	8b 93 fc ff ff ff    	mov    -0x4(%ebx),%edx
 80488a9:	85 d2                	test   %edx,%edx
 80488ab:	74 05                	je     80488b2 <_init+0x22>
 80488ad:	e8 6e 00 00 00       	call   8048920 <__gmon_start__@plt>
 80488b2:	e8 c9 02 00 00       	call   8048b80 <frame_dummy>
 80488b7:	e8 a4 13 00 00       	call   8049c60 <__do_global_ctors_aux>
 80488bc:	58                   	pop    %eax
 80488bd:	5b                   	pop    %ebx
 80488be:	c9                   	leave  
 80488bf:	c3                   	ret    

Disassembly of section .plt:

080488c0 <srand@plt-0x10>:
 80488c0:	ff 35 f8 bf 04 08    	pushl  0x804bff8
 80488c6:	ff 25 fc bf 04 08    	jmp    *0x804bffc
 80488cc:	00 00                	add    %al,(%eax)
	...

080488d0 <srand@plt>:
 80488d0:	ff 25 00 c0 04 08    	jmp    *0x804c000
 80488d6:	68 00 00 00 00       	push   $0x0
 80488db:	e9 e0 ff ff ff       	jmp    80488c0 <_init+0x30>

080488e0 <connect@plt>:
 80488e0:	ff 25 04 c0 04 08    	jmp    *0x804c004
 80488e6:	68 08 00 00 00       	push   $0x8
 80488eb:	e9 d0 ff ff ff       	jmp    80488c0 <_init+0x30>

080488f0 <random@plt>:
 80488f0:	ff 25 08 c0 04 08    	jmp    *0x804c008
 80488f6:	68 10 00 00 00       	push   $0x10
 80488fb:	e9 c0 ff ff ff       	jmp    80488c0 <_init+0x30>

08048900 <__fprintf_chk@plt>:
 8048900:	ff 25 0c c0 04 08    	jmp    *0x804c00c
 8048906:	68 18 00 00 00       	push   $0x18
 804890b:	e9 b0 ff ff ff       	jmp    80488c0 <_init+0x30>

08048910 <signal@plt>:
 8048910:	ff 25 10 c0 04 08    	jmp    *0x804c010
 8048916:	68 20 00 00 00       	push   $0x20
 804891b:	e9 a0 ff ff ff       	jmp    80488c0 <_init+0x30>

08048920 <__gmon_start__@plt>:
 8048920:	ff 25 14 c0 04 08    	jmp    *0x804c014
 8048926:	68 28 00 00 00       	push   $0x28
 804892b:	e9 90 ff ff ff       	jmp    80488c0 <_init+0x30>

08048930 <__printf_chk@plt>:
 8048930:	ff 25 18 c0 04 08    	jmp    *0x804c018
 8048936:	68 30 00 00 00       	push   $0x30
 804893b:	e9 80 ff ff ff       	jmp    80488c0 <_init+0x30>

08048940 <calloc@plt>:
 8048940:	ff 25 1c c0 04 08    	jmp    *0x804c01c
 8048946:	68 38 00 00 00       	push   $0x38
 804894b:	e9 70 ff ff ff       	jmp    80488c0 <_init+0x30>

08048950 <system@plt>:
 8048950:	ff 25 20 c0 04 08    	jmp    *0x804c020
 8048956:	68 40 00 00 00       	push   $0x40
 804895b:	e9 60 ff ff ff       	jmp    80488c0 <_init+0x30>

08048960 <memset@plt>:
 8048960:	ff 25 24 c0 04 08    	jmp    *0x804c024
 8048966:	68 48 00 00 00       	push   $0x48
 804896b:	e9 50 ff ff ff       	jmp    80488c0 <_init+0x30>

08048970 <__libc_start_main@plt>:
 8048970:	ff 25 28 c0 04 08    	jmp    *0x804c028
 8048976:	68 50 00 00 00       	push   $0x50
 804897b:	e9 40 ff ff ff       	jmp    80488c0 <_init+0x30>

08048980 <_IO_getc@plt>:
 8048980:	ff 25 2c c0 04 08    	jmp    *0x804c02c
 8048986:	68 58 00 00 00       	push   $0x58
 804898b:	e9 30 ff ff ff       	jmp    80488c0 <_init+0x30>

08048990 <fdopen@plt>:
 8048990:	ff 25 30 c0 04 08    	jmp    *0x804c030
 8048996:	68 60 00 00 00       	push   $0x60
 804899b:	e9 20 ff ff ff       	jmp    80488c0 <_init+0x30>

080489a0 <socket@plt>:
 80489a0:	ff 25 34 c0 04 08    	jmp    *0x804c034
 80489a6:	68 68 00 00 00       	push   $0x68
 80489ab:	e9 10 ff ff ff       	jmp    80488c0 <_init+0x30>

080489b0 <__ctype_b_loc@plt>:
 80489b0:	ff 25 38 c0 04 08    	jmp    *0x804c038
 80489b6:	68 70 00 00 00       	push   $0x70
 80489bb:	e9 00 ff ff ff       	jmp    80488c0 <_init+0x30>

080489c0 <fclose@plt>:
 80489c0:	ff 25 3c c0 04 08    	jmp    *0x804c03c
 80489c6:	68 78 00 00 00       	push   $0x78
 80489cb:	e9 f0 fe ff ff       	jmp    80488c0 <_init+0x30>

080489d0 <getopt@plt>:
 80489d0:	ff 25 40 c0 04 08    	jmp    *0x804c040
 80489d6:	68 80 00 00 00       	push   $0x80
 80489db:	e9 e0 fe ff ff       	jmp    80488c0 <_init+0x30>

080489e0 <fopen@plt>:
 80489e0:	ff 25 44 c0 04 08    	jmp    *0x804c044
 80489e6:	68 88 00 00 00       	push   $0x88
 80489eb:	e9 d0 fe ff ff       	jmp    80488c0 <_init+0x30>

080489f0 <alarm@plt>:
 80489f0:	ff 25 48 c0 04 08    	jmp    *0x804c048
 80489f6:	68 90 00 00 00       	push   $0x90
 80489fb:	e9 c0 fe ff ff       	jmp    80488c0 <_init+0x30>

08048a00 <__strcpy_chk@plt>:
 8048a00:	ff 25 4c c0 04 08    	jmp    *0x804c04c
 8048a06:	68 98 00 00 00       	push   $0x98
 8048a0b:	e9 b0 fe ff ff       	jmp    80488c0 <_init+0x30>

08048a10 <srandom@plt>:
 8048a10:	ff 25 50 c0 04 08    	jmp    *0x804c050
 8048a16:	68 a0 00 00 00       	push   $0xa0
 8048a1b:	e9 a0 fe ff ff       	jmp    80488c0 <_init+0x30>

08048a20 <fwrite@plt>:
 8048a20:	ff 25 54 c0 04 08    	jmp    *0x804c054
 8048a26:	68 a8 00 00 00       	push   $0xa8
 8048a2b:	e9 90 fe ff ff       	jmp    80488c0 <_init+0x30>

08048a30 <cuserid@plt>:
 8048a30:	ff 25 58 c0 04 08    	jmp    *0x804c058
 8048a36:	68 b0 00 00 00       	push   $0xb0
 8048a3b:	e9 80 fe ff ff       	jmp    80488c0 <_init+0x30>

08048a40 <gethostname@plt>:
 8048a40:	ff 25 5c c0 04 08    	jmp    *0x804c05c
 8048a46:	68 b8 00 00 00       	push   $0xb8
 8048a4b:	e9 70 fe ff ff       	jmp    80488c0 <_init+0x30>

08048a50 <fputc@plt>:
 8048a50:	ff 25 60 c0 04 08    	jmp    *0x804c060
 8048a56:	68 c0 00 00 00       	push   $0xc0
 8048a5b:	e9 60 fe ff ff       	jmp    80488c0 <_init+0x30>

08048a60 <puts@plt>:
 8048a60:	ff 25 64 c0 04 08    	jmp    *0x804c064
 8048a66:	68 c8 00 00 00       	push   $0xc8
 8048a6b:	e9 50 fe ff ff       	jmp    80488c0 <_init+0x30>

08048a70 <rand@plt>:
 8048a70:	ff 25 68 c0 04 08    	jmp    *0x804c068
 8048a76:	68 d0 00 00 00       	push   $0xd0
 8048a7b:	e9 40 fe ff ff       	jmp    80488c0 <_init+0x30>

08048a80 <fscanf@plt>:
 8048a80:	ff 25 6c c0 04 08    	jmp    *0x804c06c
 8048a86:	68 d8 00 00 00       	push   $0xd8
 8048a8b:	e9 30 fe ff ff       	jmp    80488c0 <_init+0x30>

08048a90 <__sprintf_chk@plt>:
 8048a90:	ff 25 70 c0 04 08    	jmp    *0x804c070
 8048a96:	68 e0 00 00 00       	push   $0xe0
 8048a9b:	e9 20 fe ff ff       	jmp    80488c0 <_init+0x30>

08048aa0 <__memmove_chk@plt>:
 8048aa0:	ff 25 74 c0 04 08    	jmp    *0x804c074
 8048aa6:	68 e8 00 00 00       	push   $0xe8
 8048aab:	e9 10 fe ff ff       	jmp    80488c0 <_init+0x30>

08048ab0 <gethostbyname@plt>:
 8048ab0:	ff 25 78 c0 04 08    	jmp    *0x804c078
 8048ab6:	68 f0 00 00 00       	push   $0xf0
 8048abb:	e9 00 fe ff ff       	jmp    80488c0 <_init+0x30>

08048ac0 <__strdup@plt>:
 8048ac0:	ff 25 7c c0 04 08    	jmp    *0x804c07c
 8048ac6:	68 f8 00 00 00       	push   $0xf8
 8048acb:	e9 f0 fd ff ff       	jmp    80488c0 <_init+0x30>

08048ad0 <exit@plt>:
 8048ad0:	ff 25 80 c0 04 08    	jmp    *0x804c080
 8048ad6:	68 00 01 00 00       	push   $0x100
 8048adb:	e9 e0 fd ff ff       	jmp    80488c0 <_init+0x30>

08048ae0 <geteuid@plt>:
 8048ae0:	ff 25 84 c0 04 08    	jmp    *0x804c084
 8048ae6:	68 08 01 00 00       	push   $0x108
 8048aeb:	e9 d0 fd ff ff       	jmp    80488c0 <_init+0x30>

Disassembly of section .text:

08048af0 <_start>:
 8048af0:	31 ed                	xor    %ebp,%ebp
 8048af2:	5e                   	pop    %esi
 8048af3:	89 e1                	mov    %esp,%ecx
 8048af5:	83 e4 f0             	and    $0xfffffff0,%esp
 8048af8:	50                   	push   %eax
 8048af9:	54                   	push   %esp
 8048afa:	52                   	push   %edx
 8048afb:	68 f0 9b 04 08       	push   $0x8049bf0
 8048b00:	68 00 9c 04 08       	push   $0x8049c00
 8048b05:	51                   	push   %ecx
 8048b06:	56                   	push   %esi
 8048b07:	68 70 96 04 08       	push   $0x8049670
 8048b0c:	e8 5f fe ff ff       	call   8048970 <__libc_start_main@plt>
 8048b11:	f4                   	hlt    
 8048b12:	90                   	nop
 8048b13:	90                   	nop
 8048b14:	90                   	nop
 8048b15:	90                   	nop
 8048b16:	90                   	nop
 8048b17:	90                   	nop
 8048b18:	90                   	nop
 8048b19:	90                   	nop
 8048b1a:	90                   	nop
 8048b1b:	90                   	nop
 8048b1c:	90                   	nop
 8048b1d:	90                   	nop
 8048b1e:	90                   	nop
 8048b1f:	90                   	nop

08048b20 <__do_global_dtors_aux>:
 8048b20:	55                   	push   %ebp
 8048b21:	89 e5                	mov    %esp,%ebp
 8048b23:	53                   	push   %ebx
 8048b24:	83 ec 04             	sub    $0x4,%esp
 8048b27:	80 3d cc c0 04 08 00 	cmpb   $0x0,0x804c0cc
 8048b2e:	75 40                	jne    8048b70 <__do_global_dtors_aux+0x50>
 8048b30:	8b 15 d0 c0 04 08    	mov    0x804c0d0,%edx
 8048b36:	b8 18 bf 04 08       	mov    $0x804bf18,%eax
 8048b3b:	2d 14 bf 04 08       	sub    $0x804bf14,%eax
 8048b40:	c1 f8 02             	sar    $0x2,%eax
 8048b43:	8d 58 ff             	lea    -0x1(%eax),%ebx
 8048b46:	39 da                	cmp    %ebx,%edx
 8048b48:	73 1f                	jae    8048b69 <__do_global_dtors_aux+0x49>
 8048b4a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 8048b50:	8d 42 01             	lea    0x1(%edx),%eax
 8048b53:	a3 d0 c0 04 08       	mov    %eax,0x804c0d0
 8048b58:	ff 14 85 14 bf 04 08 	call   *0x804bf14(,%eax,4)
 8048b5f:	8b 15 d0 c0 04 08    	mov    0x804c0d0,%edx
 8048b65:	39 da                	cmp    %ebx,%edx
 8048b67:	72 e7                	jb     8048b50 <__do_global_dtors_aux+0x30>
 8048b69:	c6 05 cc c0 04 08 01 	movb   $0x1,0x804c0cc
 8048b70:	83 c4 04             	add    $0x4,%esp
 8048b73:	5b                   	pop    %ebx
 8048b74:	5d                   	pop    %ebp
 8048b75:	c3                   	ret    
 8048b76:	8d 76 00             	lea    0x0(%esi),%esi
 8048b79:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

08048b80 <frame_dummy>:
 8048b80:	55                   	push   %ebp
 8048b81:	89 e5                	mov    %esp,%ebp
 8048b83:	83 ec 08             	sub    $0x8,%esp
 8048b86:	a1 1c bf 04 08       	mov    0x804bf1c,%eax
 8048b8b:	85 c0                	test   %eax,%eax
 8048b8d:	74 12                	je     8048ba1 <frame_dummy+0x21>
 8048b8f:	b8 00 00 00 00       	mov    $0x0,%eax
 8048b94:	85 c0                	test   %eax,%eax
 8048b96:	74 09                	je     8048ba1 <frame_dummy+0x21>
 8048b98:	c7 04 24 1c bf 04 08 	movl   $0x804bf1c,(%esp)
 8048b9f:	ff d0                	call   *%eax
 8048ba1:	c9                   	leave  
 8048ba2:	c3                   	ret    
 8048ba3:	90                   	nop
 8048ba4:	90                   	nop
 8048ba5:	90                   	nop
 8048ba6:	90                   	nop
 8048ba7:	90                   	nop
 8048ba8:	90                   	nop
 8048ba9:	90                   	nop
 8048baa:	90                   	nop
 8048bab:	90                   	nop
 8048bac:	90                   	nop
 8048bad:	90                   	nop
 8048bae:	90                   	nop
 8048baf:	90                   	nop

08048bb0 <entry_check>:
 8048bb0:	55                   	push   %ebp
 8048bb1:	89 e5                	mov    %esp,%ebp
 8048bb3:	8b 45 08             	mov    0x8(%ebp),%eax
 8048bb6:	5d                   	pop    %ebp
 8048bb7:	a3 94 c0 04 08       	mov    %eax,0x804c094
 8048bbc:	c3                   	ret    
 8048bbd:	8d 76 00             	lea    0x0(%esi),%esi

08048bc0 <usage>:
 8048bc0:	55                   	push   %ebp
 8048bc1:	89 e5                	mov    %esp,%ebp
 8048bc3:	83 ec 18             	sub    $0x18,%esp
 8048bc6:	89 44 24 08          	mov    %eax,0x8(%esp)
 8048bca:	c7 44 24 04 b0 9c 04 	movl   $0x8049cb0,0x4(%esp)
 8048bd1:	08 
 8048bd2:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 8048bd9:	e8 52 fd ff ff       	call   8048930 <__printf_chk@plt>
 8048bde:	c7 04 24 2c a1 04 08 	movl   $0x804a12c,(%esp)
 8048be5:	e8 76 fe ff ff       	call   8048a60 <puts@plt>
 8048bea:	c7 04 24 4a a1 04 08 	movl   $0x804a14a,(%esp)
 8048bf1:	e8 6a fe ff ff       	call   8048a60 <puts@plt>
 8048bf6:	c7 04 24 d4 9c 04 08 	movl   $0x8049cd4,(%esp)
 8048bfd:	e8 5e fe ff ff       	call   8048a60 <puts@plt>
 8048c02:	c7 04 24 fc 9c 04 08 	movl   $0x8049cfc,(%esp)
 8048c09:	e8 52 fe ff ff       	call   8048a60 <puts@plt>
 8048c0e:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 8048c15:	e8 b6 fe ff ff       	call   8048ad0 <exit@plt>
 8048c1a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

08048c20 <illegalhandler>:
 8048c20:	55                   	push   %ebp
 8048c21:	89 e5                	mov    %esp,%ebp
 8048c23:	83 ec 08             	sub    $0x8,%esp
 8048c26:	c7 04 24 20 9d 04 08 	movl   $0x8049d20,(%esp)
 8048c2d:	e8 2e fe ff ff       	call   8048a60 <puts@plt>
 8048c32:	c7 04 24 61 a1 04 08 	movl   $0x804a161,(%esp)
 8048c39:	e8 22 fe ff ff       	call   8048a60 <puts@plt>
 8048c3e:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 8048c45:	e8 86 fe ff ff       	call   8048ad0 <exit@plt>
 8048c4a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

08048c50 <alarmhandler>:
 8048c50:	55                   	push   %ebp
 8048c51:	89 e5                	mov    %esp,%ebp
 8048c53:	83 ec 18             	sub    $0x18,%esp
 8048c56:	a1 98 c0 04 08       	mov    0x804c098,%eax
 8048c5b:	c7 44 24 04 4c 9d 04 	movl   $0x8049d4c,0x4(%esp)
 8048c62:	08 
 8048c63:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 8048c6a:	89 44 24 08          	mov    %eax,0x8(%esp)
 8048c6e:	e8 bd fc ff ff       	call   8048930 <__printf_chk@plt>
 8048c73:	c7 04 24 61 a1 04 08 	movl   $0x804a161,(%esp)
 8048c7a:	e8 e1 fd ff ff       	call   8048a60 <puts@plt>
 8048c7f:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 8048c86:	e8 45 fe ff ff       	call   8048ad0 <exit@plt>
 8048c8b:	90                   	nop
 8048c8c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

08048c90 <seghandler>:
 8048c90:	55                   	push   %ebp
 8048c91:	89 e5                	mov    %esp,%ebp
 8048c93:	83 ec 08             	sub    $0x8,%esp
 8048c96:	c7 04 24 80 9d 04 08 	movl   $0x8049d80,(%esp)
 8048c9d:	e8 be fd ff ff       	call   8048a60 <puts@plt>
 8048ca2:	c7 04 24 61 a1 04 08 	movl   $0x804a161,(%esp)
 8048ca9:	e8 b2 fd ff ff       	call   8048a60 <puts@plt>
 8048cae:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 8048cb5:	e8 16 fe ff ff       	call   8048ad0 <exit@plt>
 8048cba:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

08048cc0 <bushandler>:
 8048cc0:	55                   	push   %ebp
 8048cc1:	89 e5                	mov    %esp,%ebp
 8048cc3:	83 ec 08             	sub    $0x8,%esp
 8048cc6:	c7 04 24 a8 9d 04 08 	movl   $0x8049da8,(%esp)
 8048ccd:	e8 8e fd ff ff       	call   8048a60 <puts@plt>
 8048cd2:	c7 04 24 61 a1 04 08 	movl   $0x804a161,(%esp)
 8048cd9:	e8 82 fd ff ff       	call   8048a60 <puts@plt>
 8048cde:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 8048ce5:	e8 e6 fd ff ff       	call   8048ad0 <exit@plt>
 8048cea:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

08048cf0 <formatLetter>:
 8048cf0:	55                   	push   %ebp
 8048cf1:	89 e5                	mov    %esp,%ebp
 8048cf3:	56                   	push   %esi
 8048cf4:	53                   	push   %ebx
 8048cf5:	83 ec 40             	sub    $0x40,%esp
 8048cf8:	8b 75 08             	mov    0x8(%ebp),%esi
 8048cfb:	c7 44 24 08 1b 00 00 	movl   $0x1b,0x8(%esp)
 8048d02:	00 
 8048d03:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
 8048d0a:	00 
 8048d0b:	c7 04 24 77 a1 04 08 	movl   $0x804a177,(%esp)
 8048d12:	89 74 24 0c          	mov    %esi,0xc(%esp)
 8048d16:	e8 05 fd ff ff       	call   8048a20 <fwrite@plt>
 8048d1b:	89 74 24 04          	mov    %esi,0x4(%esp)
 8048d1f:	c7 04 24 0a 00 00 00 	movl   $0xa,(%esp)
 8048d26:	e8 25 fd ff ff       	call   8048a50 <fputc@plt>
 8048d2b:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 8048d32:	e8 f9 fc ff ff       	call   8048a30 <cuserid@plt>
 8048d37:	85 c0                	test   %eax,%eax
 8048d39:	0f 84 89 00 00 00    	je     8048dc8 <formatLetter+0xd8>
 8048d3f:	8d 5d ef             	lea    -0x11(%ebp),%ebx
 8048d42:	c7 44 24 08 09 00 00 	movl   $0x9,0x8(%esp)
 8048d49:	00 
 8048d4a:	89 44 24 04          	mov    %eax,0x4(%esp)
 8048d4e:	89 1c 24             	mov    %ebx,(%esp)
 8048d51:	e8 aa fc ff ff       	call   8048a00 <__strcpy_chk@plt>
 8048d56:	89 5c 24 0c          	mov    %ebx,0xc(%esp)
 8048d5a:	89 34 24             	mov    %esi,(%esp)
 8048d5d:	c7 44 24 08 93 a1 04 	movl   $0x804a193,0x8(%esp)
 8048d64:	08 
 8048d65:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
 8048d6c:	00 
 8048d6d:	e8 8e fb ff ff       	call   8048900 <__fprintf_chk@plt>
 8048d72:	a1 ec c0 04 08       	mov    0x804c0ec,%eax
 8048d77:	89 34 24             	mov    %esi,(%esp)
 8048d7a:	c7 44 24 20 00 00 00 	movl   $0x0,0x20(%esp)
 8048d81:	00 
 8048d82:	c7 44 24 1c 20 c1 04 	movl   $0x804c120,0x1c(%esp)
 8048d89:	08 
 8048d8a:	89 44 24 18          	mov    %eax,0x18(%esp)
 8048d8e:	8b 45 0c             	mov    0xc(%ebp),%eax
 8048d91:	c7 44 24 0c d5 3b 00 	movl   $0x3bd5,0xc(%esp)
 8048d98:	00 
 8048d99:	c7 44 24 08 c8 9d 04 	movl   $0x8049dc8,0x8(%esp)
 8048da0:	08 
 8048da1:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
 8048da8:	00 
 8048da9:	89 44 24 14          	mov    %eax,0x14(%esp)
 8048dad:	a1 f0 c0 04 08       	mov    0x804c0f0,%eax
 8048db2:	89 44 24 10          	mov    %eax,0x10(%esp)
 8048db6:	e8 45 fb ff ff       	call   8048900 <__fprintf_chk@plt>
 8048dbb:	83 c4 40             	add    $0x40,%esp
 8048dbe:	5b                   	pop    %ebx
 8048dbf:	5e                   	pop    %esi
 8048dc0:	5d                   	pop    %ebp
 8048dc1:	c3                   	ret    
 8048dc2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 8048dc8:	8d 5d ef             	lea    -0x11(%ebp),%ebx
 8048dcb:	c7 45 ef 6e 6f 62 6f 	movl   $0x6f626f6e,-0x11(%ebp)
 8048dd2:	66 c7 45 f3 64 79    	movw   $0x7964,-0xd(%ebp)
 8048dd8:	c6 45 f5 00          	movb   $0x0,-0xb(%ebp)
 8048ddc:	e9 75 ff ff ff       	jmp    8048d56 <formatLetter+0x66>
 8048de1:	eb 0d                	jmp    8048df0 <Gets>
 8048de3:	90                   	nop
 8048de4:	90                   	nop
 8048de5:	90                   	nop
 8048de6:	90                   	nop
 8048de7:	90                   	nop
 8048de8:	90                   	nop
 8048de9:	90                   	nop
 8048dea:	90                   	nop
 8048deb:	90                   	nop
 8048dec:	90                   	nop
 8048ded:	90                   	nop
 8048dee:	90                   	nop
 8048def:	90                   	nop

08048df0 <Gets>:
 8048df0:	55                   	push   %ebp
 8048df1:	89 e5                	mov    %esp,%ebp
 8048df3:	57                   	push   %edi
 8048df4:	56                   	push   %esi
 8048df5:	53                   	push   %ebx
 8048df6:	83 ec 0c             	sub    $0xc,%esp
 8048df9:	a1 e8 c0 04 08       	mov    0x804c0e8,%eax
 8048dfe:	c7 05 00 c1 04 08 00 	movl   $0x0,0x804c100
 8048e05:	00 00 00 
 8048e08:	8b 75 08             	mov    0x8(%ebp),%esi
 8048e0b:	85 c0                	test   %eax,%eax
 8048e0d:	0f 84 c3 00 00 00    	je     8048ed6 <Gets+0xe6>
 8048e13:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
 8048e1a:	bf 01 00 00 00       	mov    $0x1,%edi
 8048e1f:	90                   	nop
 8048e20:	a1 e0 c0 04 08       	mov    0x804c0e0,%eax
 8048e25:	89 04 24             	mov    %eax,(%esp)
 8048e28:	e8 53 fb ff ff       	call   8048980 <_IO_getc@plt>
 8048e2d:	83 f8 ff             	cmp    $0xffffffff,%eax
 8048e30:	89 c3                	mov    %eax,%ebx
 8048e32:	0f 84 b0 00 00 00    	je     8048ee8 <Gets+0xf8>
 8048e38:	83 f8 0a             	cmp    $0xa,%eax
 8048e3b:	0f 84 a7 00 00 00    	je     8048ee8 <Gets+0xf8>
 8048e41:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 8048e48:	e8 63 fb ff ff       	call   80489b0 <__ctype_b_loc@plt>
 8048e4d:	8b 00                	mov    (%eax),%eax
 8048e4f:	f6 44 58 01 10       	testb  $0x10,0x1(%eax,%ebx,2)
 8048e54:	74 ca                	je     8048e20 <Gets+0x30>
 8048e56:	8d 43 d0             	lea    -0x30(%ebx),%eax
 8048e59:	83 f8 09             	cmp    $0x9,%eax
 8048e5c:	89 c2                	mov    %eax,%edx
 8048e5e:	76 0f                	jbe    8048e6f <Gets+0x7f>
 8048e60:	8d 43 bf             	lea    -0x41(%ebx),%eax
 8048e63:	83 f8 05             	cmp    $0x5,%eax
 8048e66:	8d 53 c9             	lea    -0x37(%ebx),%edx
 8048e69:	0f 87 99 00 00 00    	ja     8048f08 <Gets+0x118>
 8048e6f:	85 ff                	test   %edi,%edi
 8048e71:	0f 84 9c 00 00 00    	je     8048f13 <Gets+0x123>
 8048e77:	31 ff                	xor    %edi,%edi
 8048e79:	89 55 f0             	mov    %edx,-0x10(%ebp)
 8048e7c:	eb a2                	jmp    8048e20 <Gets+0x30>
 8048e7e:	66 90                	xchg   %ax,%ax
 8048e80:	83 f8 0a             	cmp    $0xa,%eax
 8048e83:	90                   	nop
 8048e84:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 8048e88:	74 5e                	je     8048ee8 <Gets+0xf8>
 8048e8a:	88 06                	mov    %al,(%esi)
 8048e8c:	8b 0d 00 c1 04 08    	mov    0x804c100,%ecx
 8048e92:	89 c3                	mov    %eax,%ebx
 8048e94:	81 f9 ff 03 00 00    	cmp    $0x3ff,%ecx
 8048e9a:	7f 37                	jg     8048ed3 <Gets+0xe3>
 8048e9c:	c0 e8 04             	shr    $0x4,%al
 8048e9f:	0f be c0             	movsbl %al,%eax
 8048ea2:	0f b6 80 04 a4 04 08 	movzbl 0x804a404(%eax),%eax
 8048ea9:	8d 14 49             	lea    (%ecx,%ecx,2),%edx
 8048eac:	c6 82 22 c1 04 08 20 	movb   $0x20,0x804c122(%edx)
 8048eb3:	88 82 20 c1 04 08    	mov    %al,0x804c120(%edx)
 8048eb9:	89 d8                	mov    %ebx,%eax
 8048ebb:	83 e0 0f             	and    $0xf,%eax
 8048ebe:	0f b6 80 04 a4 04 08 	movzbl 0x804a404(%eax),%eax
 8048ec5:	88 82 21 c1 04 08    	mov    %al,0x804c121(%edx)
 8048ecb:	8d 41 01             	lea    0x1(%ecx),%eax
 8048ece:	a3 00 c1 04 08       	mov    %eax,0x804c100
 8048ed3:	83 c6 01             	add    $0x1,%esi
 8048ed6:	a1 e0 c0 04 08       	mov    0x804c0e0,%eax
 8048edb:	89 04 24             	mov    %eax,(%esp)
 8048ede:	e8 9d fa ff ff       	call   8048980 <_IO_getc@plt>
 8048ee3:	83 f8 ff             	cmp    $0xffffffff,%eax
 8048ee6:	75 98                	jne    8048e80 <Gets+0x90>
 8048ee8:	c6 06 00             	movb   $0x0,(%esi)
 8048eeb:	a1 00 c1 04 08       	mov    0x804c100,%eax
 8048ef0:	c6 84 40 20 c1 04 08 	movb   $0x0,0x804c120(%eax,%eax,2)
 8048ef7:	00 
 8048ef8:	8b 45 08             	mov    0x8(%ebp),%eax
 8048efb:	83 c4 0c             	add    $0xc,%esp
 8048efe:	5b                   	pop    %ebx
 8048eff:	5e                   	pop    %esi
 8048f00:	5f                   	pop    %edi
 8048f01:	5d                   	pop    %ebp
 8048f02:	c3                   	ret    
 8048f03:	90                   	nop
 8048f04:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 8048f08:	85 ff                	test   %edi,%edi
 8048f0a:	8d 53 a9             	lea    -0x57(%ebx),%edx
 8048f0d:	0f 85 64 ff ff ff    	jne    8048e77 <Gets+0x87>
 8048f13:	8b 45 f0             	mov    -0x10(%ebp),%eax
 8048f16:	c1 e0 04             	shl    $0x4,%eax
 8048f19:	01 d0                	add    %edx,%eax
 8048f1b:	88 06                	mov    %al,(%esi)
 8048f1d:	8b 0d 00 c1 04 08    	mov    0x804c100,%ecx
 8048f23:	89 c3                	mov    %eax,%ebx
 8048f25:	81 f9 ff 03 00 00    	cmp    $0x3ff,%ecx
 8048f2b:	7f 37                	jg     8048f64 <Gets+0x174>
 8048f2d:	c0 e8 04             	shr    $0x4,%al
 8048f30:	0f be c0             	movsbl %al,%eax
 8048f33:	0f b6 80 04 a4 04 08 	movzbl 0x804a404(%eax),%eax
 8048f3a:	8d 14 49             	lea    (%ecx,%ecx,2),%edx
 8048f3d:	c6 82 22 c1 04 08 20 	movb   $0x20,0x804c122(%edx)
 8048f44:	88 82 20 c1 04 08    	mov    %al,0x804c120(%edx)
 8048f4a:	89 d8                	mov    %ebx,%eax
 8048f4c:	83 e0 0f             	and    $0xf,%eax
 8048f4f:	0f b6 80 04 a4 04 08 	movzbl 0x804a404(%eax),%eax
 8048f56:	88 82 21 c1 04 08    	mov    %al,0x804c121(%edx)
 8048f5c:	8d 41 01             	lea    0x1(%ecx),%eax
 8048f5f:	a3 00 c1 04 08       	mov    %eax,0x804c100
 8048f64:	83 c6 01             	add    $0x1,%esi
 8048f67:	e9 ae fe ff ff       	jmp    8048e1a <Gets+0x2a>
 8048f6c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

08048f70 <getbufn>:
 8048f70:	55                   	push   %ebp
 8048f71:	89 e5                	mov    %esp,%ebp
 8048f73:	81 ec 08 02 00 00    	sub    $0x208,%esp
 8048f79:	8d 85 00 fe ff ff    	lea    -0x200(%ebp),%eax
 8048f7f:	89 04 24             	mov    %eax,(%esp)
 8048f82:	e8 69 fe ff ff       	call   8048df0 <Gets>
 8048f87:	b8 01 00 00 00       	mov    $0x1,%eax
 8048f8c:	c9                   	leave  
 8048f8d:	c3                   	ret    
 8048f8e:	66 90                	xchg   %ax,%ax

08048f90 <getbuf>:
 8048f90:	55                   	push   %ebp
 8048f91:	89 e5                	mov    %esp,%ebp
 8048f93:	83 ec 18             	sub    $0x18,%esp
 8048f96:	8d 45 f4             	lea    -0xc(%ebp),%eax
 8048f99:	89 04 24             	mov    %eax,(%esp)
 8048f9c:	e8 4f fe ff ff       	call   8048df0 <Gets>
 8048fa1:	b8 01 00 00 00       	mov    $0x1,%eax
 8048fa6:	c9                   	leave  
 8048fa7:	c3                   	ret    
 8048fa8:	90                   	nop
 8048fa9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

08048fb0 <open_clientfd>:
 8048fb0:	55                   	push   %ebp
 8048fb1:	89 e5                	mov    %esp,%ebp
 8048fb3:	56                   	push   %esi
 8048fb4:	53                   	push   %ebx
 8048fb5:	83 ec 20             	sub    $0x20,%esp
 8048fb8:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
 8048fbf:	00 
 8048fc0:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
 8048fc7:	00 
 8048fc8:	c7 04 24 02 00 00 00 	movl   $0x2,(%esp)
 8048fcf:	e8 cc f9 ff ff       	call   80489a0 <socket@plt>
 8048fd4:	85 c0                	test   %eax,%eax
 8048fd6:	89 c6                	mov    %eax,%esi
 8048fd8:	0f 88 8a 00 00 00    	js     8049068 <open_clientfd+0xb8>
 8048fde:	8b 45 08             	mov    0x8(%ebp),%eax
 8048fe1:	89 04 24             	mov    %eax,(%esp)
 8048fe4:	e8 c7 fa ff ff       	call   8048ab0 <gethostbyname@plt>
 8048fe9:	85 c0                	test   %eax,%eax
 8048feb:	89 c2                	mov    %eax,%edx
 8048fed:	0f 84 8d 00 00 00    	je     8049080 <open_clientfd+0xd0>
 8048ff3:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%ebp)
 8048ffa:	8d 5d e8             	lea    -0x18(%ebp),%ebx
 8048ffd:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%ebp)
 8049004:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
 804900b:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
 8049012:	c7 44 24 0c 0c 00 00 	movl   $0xc,0xc(%esp)
 8049019:	00 
 804901a:	8b 40 0c             	mov    0xc(%eax),%eax
 804901d:	66 c7 45 e8 02 00    	movw   $0x2,-0x18(%ebp)
 8049023:	89 44 24 08          	mov    %eax,0x8(%esp)
 8049027:	8b 42 10             	mov    0x10(%edx),%eax
 804902a:	8b 00                	mov    (%eax),%eax
 804902c:	89 44 24 04          	mov    %eax,0x4(%esp)
 8049030:	8d 45 ec             	lea    -0x14(%ebp),%eax
 8049033:	89 04 24             	mov    %eax,(%esp)
 8049036:	e8 65 fa ff ff       	call   8048aa0 <__memmove_chk@plt>
 804903b:	0f b7 45 0c          	movzwl 0xc(%ebp),%eax
 804903f:	c7 44 24 08 10 00 00 	movl   $0x10,0x8(%esp)
 8049046:	00 
 8049047:	66 c1 c8 08          	ror    $0x8,%ax
 804904b:	89 5c 24 04          	mov    %ebx,0x4(%esp)
 804904f:	66 89 45 ea          	mov    %ax,-0x16(%ebp)
 8049053:	89 34 24             	mov    %esi,(%esp)
 8049056:	e8 85 f8 ff ff       	call   80488e0 <connect@plt>
 804905b:	85 c0                	test   %eax,%eax
 804905d:	78 39                	js     8049098 <open_clientfd+0xe8>
 804905f:	83 c4 20             	add    $0x20,%esp
 8049062:	89 f0                	mov    %esi,%eax
 8049064:	5b                   	pop    %ebx
 8049065:	5e                   	pop    %esi
 8049066:	5d                   	pop    %ebp
 8049067:	c3                   	ret    
 8049068:	c7 04 24 a1 a1 04 08 	movl   $0x804a1a1,(%esp)
 804906f:	e8 ec f9 ff ff       	call   8048a60 <puts@plt>
 8049074:	c7 04 24 08 00 00 00 	movl   $0x8,(%esp)
 804907b:	e8 50 fa ff ff       	call   8048ad0 <exit@plt>
 8049080:	c7 04 24 af a1 04 08 	movl   $0x804a1af,(%esp)
 8049087:	e8 d4 f9 ff ff       	call   8048a60 <puts@plt>
 804908c:	c7 04 24 08 00 00 00 	movl   $0x8,(%esp)
 8049093:	e8 38 fa ff ff       	call   8048ad0 <exit@plt>
 8049098:	c7 04 24 bd a1 04 08 	movl   $0x804a1bd,(%esp)
 804909f:	e8 bc f9 ff ff       	call   8048a60 <puts@plt>
 80490a4:	c7 04 24 08 00 00 00 	movl   $0x8,(%esp)
 80490ab:	e8 20 fa ff ff       	call   8048ad0 <exit@plt>

080490b0 <send_msg_socket>:
 80490b0:	55                   	push   %ebp
 80490b1:	89 e5                	mov    %esp,%ebp
 80490b3:	81 ec b8 00 00 00    	sub    $0xb8,%esp
 80490b9:	c7 44 24 04 4b 02 00 	movl   $0x24b,0x4(%esp)
 80490c0:	00 
 80490c1:	89 5d f4             	mov    %ebx,-0xc(%ebp)
 80490c4:	89 75 f8             	mov    %esi,-0x8(%ebp)
 80490c7:	89 7d fc             	mov    %edi,-0x4(%ebp)
 80490ca:	c7 04 24 cb a1 04 08 	movl   $0x804a1cb,(%esp)
 80490d1:	e8 da fe ff ff       	call   8048fb0 <open_clientfd>
 80490d6:	85 c0                	test   %eax,%eax
 80490d8:	89 c3                	mov    %eax,%ebx
 80490da:	0f 88 68 01 00 00    	js     8049248 <send_msg_socket+0x198>
 80490e0:	8d 7d b4             	lea    -0x4c(%ebp),%edi
 80490e3:	c7 44 24 04 40 00 00 	movl   $0x40,0x4(%esp)
 80490ea:	00 
 80490eb:	89 3c 24             	mov    %edi,(%esp)
 80490ee:	e8 4d f9 ff ff       	call   8048a40 <gethostname@plt>
 80490f3:	85 c0                	test   %eax,%eax
 80490f5:	0f 85 35 01 00 00    	jne    8049230 <send_msg_socket+0x180>
 80490fb:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 8049102:	e8 29 f9 ff ff       	call   8048a30 <cuserid@plt>
 8049107:	85 c0                	test   %eax,%eax
 8049109:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 8049110:	0f 84 4a 01 00 00    	je     8049260 <send_msg_socket+0x1b0>
 8049116:	8d b5 64 ff ff ff    	lea    -0x9c(%ebp),%esi
 804911c:	c7 44 24 08 50 00 00 	movl   $0x50,0x8(%esp)
 8049123:	00 
 8049124:	89 44 24 04          	mov    %eax,0x4(%esp)
 8049128:	89 34 24             	mov    %esi,(%esp)
 804912b:	e8 d0 f8 ff ff       	call   8048a00 <__strcpy_chk@plt>
 8049130:	89 1c 24             	mov    %ebx,(%esp)
 8049133:	c7 44 24 04 ef a1 04 	movl   $0x804a1ef,0x4(%esp)
 804913a:	08 
 804913b:	e8 50 f8 ff ff       	call   8048990 <fdopen@plt>
 8049140:	89 7c 24 0c          	mov    %edi,0xc(%esp)
 8049144:	c7 44 24 08 f2 a1 04 	movl   $0x804a1f2,0x8(%esp)
 804914b:	08 
 804914c:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
 8049153:	00 
 8049154:	89 c3                	mov    %eax,%ebx
 8049156:	89 04 24             	mov    %eax,(%esp)
 8049159:	e8 a2 f7 ff ff       	call   8048900 <__fprintf_chk@plt>
 804915e:	89 7c 24 10          	mov    %edi,0x10(%esp)
 8049162:	89 74 24 0c          	mov    %esi,0xc(%esp)
 8049166:	c7 44 24 08 fb a1 04 	movl   $0x804a1fb,0x8(%esp)
 804916d:	08 
 804916e:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
 8049175:	00 
 8049176:	89 1c 24             	mov    %ebx,(%esp)
 8049179:	e8 82 f7 ff ff       	call   8048900 <__fprintf_chk@plt>
 804917e:	c7 44 24 10 cb a1 04 	movl   $0x804a1cb,0x10(%esp)
 8049185:	08 
 8049186:	c7 44 24 0c 0f a2 04 	movl   $0x804a20f,0xc(%esp)
 804918d:	08 
 804918e:	c7 44 24 08 16 a2 04 	movl   $0x804a216,0x8(%esp)
 8049195:	08 
 8049196:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
 804919d:	00 
 804919e:	89 1c 24             	mov    %ebx,(%esp)
 80491a1:	e8 5a f7 ff ff       	call   8048900 <__fprintf_chk@plt>
 80491a6:	89 5c 24 0c          	mov    %ebx,0xc(%esp)
 80491aa:	c7 44 24 08 05 00 00 	movl   $0x5,0x8(%esp)
 80491b1:	00 
 80491b2:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
 80491b9:	00 
 80491ba:	c7 04 24 28 a2 04 08 	movl   $0x804a228,(%esp)
 80491c1:	e8 5a f8 ff ff       	call   8048a20 <fwrite@plt>
 80491c6:	8b 45 08             	mov    0x8(%ebp),%eax
 80491c9:	89 1c 24             	mov    %ebx,(%esp)
 80491cc:	89 44 24 04          	mov    %eax,0x4(%esp)
 80491d0:	e8 1b fb ff ff       	call   8048cf0 <formatLetter>
 80491d5:	89 5c 24 0c          	mov    %ebx,0xc(%esp)
 80491d9:	c7 44 24 08 05 00 00 	movl   $0x5,0x8(%esp)
 80491e0:	00 
 80491e1:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
 80491e8:	00 
 80491e9:	c7 04 24 2e a2 04 08 	movl   $0x804a22e,(%esp)
 80491f0:	e8 2b f8 ff ff       	call   8048a20 <fwrite@plt>
 80491f5:	89 5c 24 0c          	mov    %ebx,0xc(%esp)
 80491f9:	c7 44 24 08 05 00 00 	movl   $0x5,0x8(%esp)
 8049200:	00 
 8049201:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
 8049208:	00 
 8049209:	c7 04 24 34 a2 04 08 	movl   $0x804a234,(%esp)
 8049210:	e8 0b f8 ff ff       	call   8048a20 <fwrite@plt>
 8049215:	89 1c 24             	mov    %ebx,(%esp)
 8049218:	e8 a3 f7 ff ff       	call   80489c0 <fclose@plt>
 804921d:	31 c0                	xor    %eax,%eax
 804921f:	8b 5d f4             	mov    -0xc(%ebp),%ebx
 8049222:	8b 75 f8             	mov    -0x8(%ebp),%esi
 8049225:	8b 7d fc             	mov    -0x4(%ebp),%edi
 8049228:	89 ec                	mov    %ebp,%esp
 804922a:	5d                   	pop    %ebp
 804922b:	c3                   	ret    
 804922c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 8049230:	c7 04 24 e2 a1 04 08 	movl   $0x804a1e2,(%esp)
 8049237:	e8 24 f8 ff ff       	call   8048a60 <puts@plt>
 804923c:	b8 01 00 00 00       	mov    $0x1,%eax
 8049241:	eb dc                	jmp    804921f <send_msg_socket+0x16f>
 8049243:	90                   	nop
 8049244:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 8049248:	c7 04 24 e8 9d 04 08 	movl   $0x8049de8,(%esp)
 804924f:	e8 0c f8 ff ff       	call   8048a60 <puts@plt>
 8049254:	b8 01 00 00 00       	mov    $0x1,%eax
 8049259:	eb c4                	jmp    804921f <send_msg_socket+0x16f>
 804925b:	90                   	nop
 804925c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 8049260:	8d b5 64 ff ff ff    	lea    -0x9c(%ebp),%esi
 8049266:	c7 85 64 ff ff ff 6e 	movl   $0x6f626f6e,-0x9c(%ebp)
 804926d:	6f 62 6f 
 8049270:	66 c7 85 68 ff ff ff 	movw   $0x7964,-0x98(%ebp)
 8049277:	64 79 
 8049279:	c6 85 6a ff ff ff 00 	movb   $0x0,-0x96(%ebp)
 8049280:	e9 ab fe ff ff       	jmp    8049130 <send_msg_socket+0x80>
 8049285:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 8049289:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

08049290 <validate>:
 8049290:	55                   	push   %ebp
 8049291:	89 e5                	mov    %esp,%ebp
 8049293:	83 ec 08             	sub    $0x8,%esp
 8049296:	a1 f0 c0 04 08       	mov    0x804c0f0,%eax
 804929b:	8b 55 08             	mov    0x8(%ebp),%edx
 804929e:	85 c0                	test   %eax,%eax
 80492a0:	0f 84 aa 00 00 00    	je     8049350 <validate+0xc0>
 80492a6:	83 fa 04             	cmp    $0x4,%edx
 80492a9:	77 75                	ja     8049320 <validate+0x90>
 80492ab:	3b 15 94 c0 04 08    	cmp    0x804c094,%edx
 80492b1:	75 5d                	jne    8049310 <validate+0x80>
 80492b3:	8b 04 95 9c c0 04 08 	mov    0x804c09c(,%edx,4),%eax
 80492ba:	c7 05 f8 c0 04 08 01 	movl   $0x1,0x804c0f8
 80492c1:	00 00 00 
 80492c4:	83 e8 01             	sub    $0x1,%eax
 80492c7:	85 c0                	test   %eax,%eax
 80492c9:	89 04 95 9c c0 04 08 	mov    %eax,0x804c09c(,%edx,4)
 80492d0:	7f 5e                	jg     8049330 <validate+0xa0>
 80492d2:	a1 f4 c0 04 08       	mov    0x804c0f4,%eax
 80492d7:	85 c0                	test   %eax,%eax
 80492d9:	0f 85 81 00 00 00    	jne    8049360 <validate+0xd0>
 80492df:	8b 0d 90 c0 04 08    	mov    0x804c090,%ecx
 80492e5:	85 c9                	test   %ecx,%ecx
 80492e7:	74 57                	je     8049340 <validate+0xb0>
 80492e9:	89 14 24             	mov    %edx,(%esp)
 80492ec:	e8 bf fd ff ff       	call   80490b0 <send_msg_socket>
 80492f1:	85 c0                	test   %eax,%eax
 80492f3:	75 7b                	jne    8049370 <validate+0xe0>
 80492f5:	c7 04 24 4b a2 04 08 	movl   $0x804a24b,(%esp)
 80492fc:	e8 5f f7 ff ff       	call   8048a60 <puts@plt>
 8049301:	c7 45 08 a0 9e 04 08 	movl   $0x8049ea0,0x8(%ebp)
 8049308:	c9                   	leave  
 8049309:	e9 52 f7 ff ff       	jmp    8048a60 <puts@plt>
 804930e:	66 90                	xchg   %ax,%ax
 8049310:	c7 45 08 64 9e 04 08 	movl   $0x8049e64,0x8(%ebp)
 8049317:	c9                   	leave  
 8049318:	e9 43 f7 ff ff       	jmp    8048a60 <puts@plt>
 804931d:	8d 76 00             	lea    0x0(%esi),%esi
 8049320:	c7 45 08 3c 9e 04 08 	movl   $0x8049e3c,0x8(%ebp)
 8049327:	c9                   	leave  
 8049328:	e9 33 f7 ff ff       	jmp    8048a60 <puts@plt>
 804932d:	8d 76 00             	lea    0x0(%esi),%esi
 8049330:	c7 45 08 3a a2 04 08 	movl   $0x804a23a,0x8(%ebp)
 8049337:	c9                   	leave  
 8049338:	e9 23 f7 ff ff       	jmp    8048a60 <puts@plt>
 804933d:	8d 76 00             	lea    0x0(%esi),%esi
 8049340:	c7 45 08 10 9f 04 08 	movl   $0x8049f10,0x8(%ebp)
 8049347:	c9                   	leave  
 8049348:	e9 13 f7 ff ff       	jmp    8048a60 <puts@plt>
 804934d:	8d 76 00             	lea    0x0(%esi),%esi
 8049350:	c7 45 08 10 9e 04 08 	movl   $0x8049e10,0x8(%ebp)
 8049357:	c9                   	leave  
 8049358:	e9 03 f7 ff ff       	jmp    8048a60 <puts@plt>
 804935d:	8d 76 00             	lea    0x0(%esi),%esi
 8049360:	c7 45 08 45 a2 04 08 	movl   $0x804a245,0x8(%ebp)
 8049367:	c9                   	leave  
 8049368:	e9 f3 f6 ff ff       	jmp    8048a60 <puts@plt>
 804936d:	8d 76 00             	lea    0x0(%esi),%esi
 8049370:	c7 45 08 d0 9e 04 08 	movl   $0x8049ed0,0x8(%ebp)
 8049377:	c9                   	leave  
 8049378:	e9 e3 f6 ff ff       	jmp    8048a60 <puts@plt>
 804937d:	8d 76 00             	lea    0x0(%esi),%esi

08049380 <bang>:
 8049380:	55                   	push   %ebp
 8049381:	89 e5                	mov    %esp,%ebp
 8049383:	83 ec 18             	sub    $0x18,%esp
 8049386:	a1 fc c0 04 08       	mov    0x804c0fc,%eax
 804938b:	3b 05 ec c0 04 08    	cmp    0x804c0ec,%eax
 8049391:	c7 05 94 c0 04 08 02 	movl   $0x2,0x804c094
 8049398:	00 00 00 
 804939b:	74 2b                	je     80493c8 <bang+0x48>
 804939d:	89 44 24 08          	mov    %eax,0x8(%esp)
 80493a1:	c7 44 24 04 55 a2 04 	movl   $0x804a255,0x4(%esp)
 80493a8:	08 
 80493a9:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 80493b0:	e8 7b f5 ff ff       	call   8048930 <__printf_chk@plt>
 80493b5:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 80493bc:	e8 0f f7 ff ff       	call   8048ad0 <exit@plt>
 80493c1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 80493c8:	89 44 24 08          	mov    %eax,0x8(%esp)
 80493cc:	c7 44 24 04 5c 9f 04 	movl   $0x8049f5c,0x4(%esp)
 80493d3:	08 
 80493d4:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 80493db:	e8 50 f5 ff ff       	call   8048930 <__printf_chk@plt>
 80493e0:	c7 04 24 02 00 00 00 	movl   $0x2,(%esp)
 80493e7:	e8 a4 fe ff ff       	call   8049290 <validate>
 80493ec:	eb c7                	jmp    80493b5 <bang+0x35>
 80493ee:	66 90                	xchg   %ax,%ax

080493f0 <fizz>:
 80493f0:	55                   	push   %ebp
 80493f1:	89 e5                	mov    %esp,%ebp
 80493f3:	83 ec 18             	sub    $0x18,%esp
 80493f6:	8b 45 08             	mov    0x8(%ebp),%eax
 80493f9:	3b 05 ec c0 04 08    	cmp    0x804c0ec,%eax
 80493ff:	c7 05 94 c0 04 08 01 	movl   $0x1,0x804c094
 8049406:	00 00 00 
 8049409:	74 25                	je     8049430 <fizz+0x40>
 804940b:	89 44 24 08          	mov    %eax,0x8(%esp)
 804940f:	c7 44 24 04 84 9f 04 	movl   $0x8049f84,0x4(%esp)
 8049416:	08 
 8049417:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 804941e:	e8 0d f5 ff ff       	call   8048930 <__printf_chk@plt>
 8049423:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 804942a:	e8 a1 f6 ff ff       	call   8048ad0 <exit@plt>
 804942f:	90                   	nop
 8049430:	89 44 24 08          	mov    %eax,0x8(%esp)
 8049434:	c7 44 24 04 73 a2 04 	movl   $0x804a273,0x4(%esp)
 804943b:	08 
 804943c:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 8049443:	e8 e8 f4 ff ff       	call   8048930 <__printf_chk@plt>
 8049448:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 804944f:	e8 3c fe ff ff       	call   8049290 <validate>
 8049454:	eb cd                	jmp    8049423 <fizz+0x33>
 8049456:	8d 76 00             	lea    0x0(%esi),%esi
 8049459:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

08049460 <smoke>:
 8049460:	55                   	push   %ebp
 8049461:	89 e5                	mov    %esp,%ebp
 8049463:	83 ec 08             	sub    $0x8,%esp
 8049466:	c7 04 24 91 a2 04 08 	movl   $0x804a291,(%esp)
 804946d:	c7 05 94 c0 04 08 00 	movl   $0x0,0x804c094
 8049474:	00 00 00 
 8049477:	e8 e4 f5 ff ff       	call   8048a60 <puts@plt>
 804947c:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 8049483:	e8 08 fe ff ff       	call   8049290 <validate>
 8049488:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 804948f:	e8 3c f6 ff ff       	call   8048ad0 <exit@plt>
 8049494:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 804949a:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

080494a0 <testn>:
 80494a0:	55                   	push   %ebp
 80494a1:	89 e5                	mov    %esp,%ebp
 80494a3:	83 ec 28             	sub    $0x28,%esp
 80494a6:	c7 45 fc ef be ad de 	movl   $0xdeadbeef,-0x4(%ebp)
 80494ad:	c7 05 94 c0 04 08 04 	movl   $0x4,0x804c094
 80494b4:	00 00 00 
 80494b7:	e8 b4 fa ff ff       	call   8048f70 <getbufn>
 80494bc:	89 c2                	mov    %eax,%edx
 80494be:	8b 45 fc             	mov    -0x4(%ebp),%eax
 80494c1:	3d ef be ad de       	cmp    $0xdeadbeef,%eax
 80494c6:	75 28                	jne    80494f0 <testn+0x50>
 80494c8:	3b 15 ec c0 04 08    	cmp    0x804c0ec,%edx
 80494ce:	74 38                	je     8049508 <testn+0x68>
 80494d0:	89 54 24 08          	mov    %edx,0x8(%esp)
 80494d4:	c7 44 24 04 ac a2 04 	movl   $0x804a2ac,0x4(%esp)
 80494db:	08 
 80494dc:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 80494e3:	e8 48 f4 ff ff       	call   8048930 <__printf_chk@plt>
 80494e8:	c9                   	leave  
 80494e9:	c3                   	ret    
 80494ea:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 80494f0:	c7 04 24 a4 9f 04 08 	movl   $0x8049fa4,(%esp)
 80494f7:	e8 64 f5 ff ff       	call   8048a60 <puts@plt>
 80494fc:	c9                   	leave  
 80494fd:	8d 76 00             	lea    0x0(%esi),%esi
 8049500:	c3                   	ret    
 8049501:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 8049508:	89 54 24 08          	mov    %edx,0x8(%esp)
 804950c:	c7 44 24 04 d0 9f 04 	movl   $0x8049fd0,0x4(%esp)
 8049513:	08 
 8049514:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 804951b:	e8 10 f4 ff ff       	call   8048930 <__printf_chk@plt>
 8049520:	c7 04 24 04 00 00 00 	movl   $0x4,(%esp)
 8049527:	e8 64 fd ff ff       	call   8049290 <validate>
 804952c:	c9                   	leave  
 804952d:	c3                   	ret    
 804952e:	66 90                	xchg   %ax,%ax

08049530 <test>:
 8049530:	55                   	push   %ebp
 8049531:	89 e5                	mov    %esp,%ebp
 8049533:	83 ec 28             	sub    $0x28,%esp
 8049536:	c7 45 fc ef be ad de 	movl   $0xdeadbeef,-0x4(%ebp)
 804953d:	c7 05 94 c0 04 08 03 	movl   $0x3,0x804c094
 8049544:	00 00 00 
 8049547:	e8 44 fa ff ff       	call   8048f90 <getbuf>
 804954c:	89 c2                	mov    %eax,%edx
 804954e:	8b 45 fc             	mov    -0x4(%ebp),%eax
 8049551:	3d ef be ad de       	cmp    $0xdeadbeef,%eax
 8049556:	75 28                	jne    8049580 <test+0x50>
 8049558:	3b 15 ec c0 04 08    	cmp    0x804c0ec,%edx
 804955e:	74 38                	je     8049598 <test+0x68>
 8049560:	89 54 24 08          	mov    %edx,0x8(%esp)
 8049564:	c7 44 24 04 e5 a2 04 	movl   $0x804a2e5,0x4(%esp)
 804956b:	08 
 804956c:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 8049573:	e8 b8 f3 ff ff       	call   8048930 <__printf_chk@plt>
 8049578:	c9                   	leave  
 8049579:	c3                   	ret    
 804957a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 8049580:	c7 04 24 a4 9f 04 08 	movl   $0x8049fa4,(%esp)
 8049587:	e8 d4 f4 ff ff       	call   8048a60 <puts@plt>
 804958c:	c9                   	leave  
 804958d:	8d 76 00             	lea    0x0(%esi),%esi
 8049590:	c3                   	ret    
 8049591:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 8049598:	89 54 24 08          	mov    %edx,0x8(%esp)
 804959c:	c7 44 24 04 c8 a2 04 	movl   $0x804a2c8,0x4(%esp)
 80495a3:	08 
 80495a4:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 80495ab:	e8 80 f3 ff ff       	call   8048930 <__printf_chk@plt>
 80495b0:	c7 04 24 03 00 00 00 	movl   $0x3,(%esp)
 80495b7:	e8 d4 fc ff ff       	call   8049290 <validate>
 80495bc:	c9                   	leave  
 80495bd:	c3                   	ret    
 80495be:	66 90                	xchg   %ax,%ax

080495c0 <launch>:
 80495c0:	55                   	push   %ebp
 80495c1:	89 e5                	mov    %esp,%ebp
 80495c3:	8d 4d bc             	lea    -0x44(%ebp),%ecx
 80495c6:	81 e1 f8 3f 00 00    	and    $0x3ff8,%ecx
 80495cc:	01 d1                	add    %edx,%ecx
 80495ce:	53                   	push   %ebx
 80495cf:	89 c3                	mov    %eax,%ebx
 80495d1:	8d 41 1e             	lea    0x1e(%ecx),%eax
 80495d4:	83 ec 54             	sub    $0x54,%esp
 80495d7:	83 e0 f0             	and    $0xfffffff0,%eax
 80495da:	29 c4                	sub    %eax,%esp
 80495dc:	8d 44 24 1b          	lea    0x1b(%esp),%eax
 80495e0:	83 e0 f0             	and    $0xfffffff0,%eax
 80495e3:	89 4c 24 08          	mov    %ecx,0x8(%esp)
 80495e7:	c7 44 24 04 f4 00 00 	movl   $0xf4,0x4(%esp)
 80495ee:	00 
 80495ef:	89 04 24             	mov    %eax,(%esp)
 80495f2:	e8 69 f3 ff ff       	call   8048960 <memset@plt>
 80495f7:	a1 e4 c0 04 08       	mov    0x804c0e4,%eax
 80495fc:	85 c0                	test   %eax,%eax
 80495fe:	75 1d                	jne    804961d <launch+0x5d>
 8049600:	a1 e8 c0 04 08       	mov    0x804c0e8,%eax
 8049605:	85 c0                	test   %eax,%eax
 8049607:	74 4f                	je     8049658 <launch+0x98>
 8049609:	c7 44 24 04 00 a3 04 	movl   $0x804a300,0x4(%esp)
 8049610:	08 
 8049611:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 8049618:	e8 13 f3 ff ff       	call   8048930 <__printf_chk@plt>
 804961d:	85 db                	test   %ebx,%ebx
 804961f:	74 2f                	je     8049650 <launch+0x90>
 8049621:	e8 7a fe ff ff       	call   80494a0 <testn>
 8049626:	a1 f8 c0 04 08       	mov    0x804c0f8,%eax
 804962b:	85 c0                	test   %eax,%eax
 804962d:	75 16                	jne    8049645 <launch+0x85>
 804962f:	c7 04 24 61 a1 04 08 	movl   $0x804a161,(%esp)
 8049636:	e8 25 f4 ff ff       	call   8048a60 <puts@plt>
 804963b:	c7 05 f8 c0 04 08 00 	movl   $0x0,0x804c0f8
 8049642:	00 00 00 
 8049645:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 8049648:	c9                   	leave  
 8049649:	c3                   	ret    
 804964a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 8049650:	e8 db fe ff ff       	call   8049530 <test>
 8049655:	eb cf                	jmp    8049626 <launch+0x66>
 8049657:	90                   	nop
 8049658:	c7 44 24 04 11 a3 04 	movl   $0x804a311,0x4(%esp)
 804965f:	08 
 8049660:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 8049667:	e8 c4 f2 ff ff       	call   8048930 <__printf_chk@plt>
 804966c:	eb af                	jmp    804961d <launch+0x5d>
 804966e:	66 90                	xchg   %ax,%ax

08049670 <main>:
 8049670:	8d 4c 24 04          	lea    0x4(%esp),%ecx
 8049674:	83 e4 f0             	and    $0xfffffff0,%esp
 8049677:	ff 71 fc             	pushl  -0x4(%ecx)
 804967a:	55                   	push   %ebp
 804967b:	89 e5                	mov    %esp,%ebp
 804967d:	57                   	push   %edi
 804967e:	56                   	push   %esi
 804967f:	53                   	push   %ebx
 8049680:	51                   	push   %ecx
 8049681:	81 ec 38 04 00 00    	sub    $0x438,%esp
 8049687:	8b 39                	mov    (%ecx),%edi
 8049689:	8b 71 04             	mov    0x4(%ecx),%esi
 804968c:	c7 44 24 04 1e a3 04 	movl   $0x804a31e,0x4(%esp)
 8049693:	08 
 8049694:	c7 04 24 f0 9f 04 08 	movl   $0x8049ff0,(%esp)
 804969b:	e8 40 f3 ff ff       	call   80489e0 <fopen@plt>
 80496a0:	85 c0                	test   %eax,%eax
 80496a2:	89 c2                	mov    %eax,%edx
 80496a4:	0f 84 06 04 00 00    	je     8049ab0 <main+0x440>
 80496aa:	8d 45 ec             	lea    -0x14(%ebp),%eax
 80496ad:	89 44 24 08          	mov    %eax,0x8(%esp)
 80496b1:	c7 44 24 04 20 a3 04 	movl   $0x804a320,0x4(%esp)
 80496b8:	08 
 80496b9:	89 14 24             	mov    %edx,(%esp)
 80496bc:	e8 bf f3 ff ff       	call   8048a80 <fscanf@plt>
 80496c1:	83 e8 01             	sub    $0x1,%eax
 80496c4:	0f 84 f0 00 00 00    	je     80497ba <main+0x14a>
 80496ca:	c7 44 24 0c f0 9f 04 	movl   $0x8049ff0,0xc(%esp)
 80496d1:	08 
 80496d2:	c7 44 24 08 67 a3 04 	movl   $0x804a367,0x8(%esp)
 80496d9:	08 
 80496da:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
 80496e1:	00 
 80496e2:	a1 c0 c0 04 08       	mov    0x804c0c0,%eax
 80496e7:	89 04 24             	mov    %eax,(%esp)
 80496ea:	e8 11 f2 ff ff       	call   8048900 <__fprintf_chk@plt>
 80496ef:	a1 c0 c0 04 08       	mov    0x804c0c0,%eax
 80496f4:	c7 44 24 08 2e 00 00 	movl   $0x2e,0x8(%esp)
 80496fb:	00 
 80496fc:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
 8049703:	00 
 8049704:	c7 04 24 70 a0 04 08 	movl   $0x804a070,(%esp)
 804970b:	89 44 24 0c          	mov    %eax,0xc(%esp)
 804970f:	e8 0c f3 ff ff       	call   8048a20 <fwrite@plt>
 8049714:	c7 44 24 04 90 8c 04 	movl   $0x8048c90,0x4(%esp)
 804971b:	08 
 804971c:	c7 04 24 0b 00 00 00 	movl   $0xb,(%esp)
 8049723:	e8 e8 f1 ff ff       	call   8048910 <signal@plt>
 8049728:	c7 44 24 04 c0 8c 04 	movl   $0x8048cc0,0x4(%esp)
 804972f:	08 
 8049730:	c7 04 24 07 00 00 00 	movl   $0x7,(%esp)
 8049737:	e8 d4 f1 ff ff       	call   8048910 <signal@plt>
 804973c:	c7 44 24 04 50 8c 04 	movl   $0x8048c50,0x4(%esp)
 8049743:	08 
 8049744:	c7 04 24 0e 00 00 00 	movl   $0xe,(%esp)
 804974b:	e8 c0 f1 ff ff       	call   8048910 <signal@plt>
 8049750:	c7 44 24 04 20 8c 04 	movl   $0x8048c20,0x4(%esp)
 8049757:	08 
 8049758:	c7 04 24 04 00 00 00 	movl   $0x4,(%esp)
 804975f:	e8 ac f1 ff ff       	call   8048910 <signal@plt>
 8049764:	a1 c4 c0 04 08       	mov    0x804c0c4,%eax
 8049769:	c7 85 dc fb ff ff 01 	movl   $0x1,-0x424(%ebp)
 8049770:	00 00 00 
 8049773:	c7 85 d8 fb ff ff 00 	movl   $0x0,-0x428(%ebp)
 804977a:	00 00 00 
 804977d:	a3 e0 c0 04 08       	mov    %eax,0x804c0e0
 8049782:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 8049788:	c7 44 24 08 b1 a3 04 	movl   $0x804a3b1,0x8(%esp)
 804978f:	08 
 8049790:	89 74 24 04          	mov    %esi,0x4(%esp)
 8049794:	89 3c 24             	mov    %edi,(%esp)
 8049797:	e8 34 f2 ff ff       	call   80489d0 <getopt@plt>
 804979c:	3c ff                	cmp    $0xff,%al
 804979e:	0f 84 8c 01 00 00    	je     8049930 <main+0x2c0>
 80497a4:	83 e8 66             	sub    $0x66,%eax
 80497a7:	3c 12                	cmp    $0x12,%al
 80497a9:	76 45                	jbe    80497f0 <main+0x180>
 80497ab:	8b 06                	mov    (%esi),%eax
 80497ad:	e8 0e f4 ff ff       	call   8048bc0 <usage>
 80497b2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 80497b8:	eb ce                	jmp    8049788 <main+0x118>
 80497ba:	8b 55 ec             	mov    -0x14(%ebp),%edx
 80497bd:	85 d2                	test   %edx,%edx
 80497bf:	90                   	nop
 80497c0:	0f 85 32 02 00 00    	jne    80499f8 <main+0x388>
 80497c6:	a1 c0 c0 04 08       	mov    0x804c0c0,%eax
 80497cb:	c7 44 24 08 2f 00 00 	movl   $0x2f,0x8(%esp)
 80497d2:	00 
 80497d3:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
 80497da:	00 
 80497db:	c7 04 24 14 a0 04 08 	movl   $0x804a014,(%esp)
 80497e2:	89 44 24 0c          	mov    %eax,0xc(%esp)
 80497e6:	e8 35 f2 ff ff       	call   8048a20 <fwrite@plt>
 80497eb:	e9 24 ff ff ff       	jmp    8049714 <main+0xa4>
 80497f0:	0f b6 c0             	movzbl %al,%eax
 80497f3:	ff 24 85 b8 a3 04 08 	jmp    *0x804a3b8(,%eax,4)
 80497fa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 8049800:	c7 05 e8 c0 04 08 01 	movl   $0x1,0x804c0e8
 8049807:	00 00 00 
 804980a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 8049810:	e9 73 ff ff ff       	jmp    8049788 <main+0x118>
 8049815:	8d 76 00             	lea    0x0(%esi),%esi
 8049818:	a1 c8 c0 04 08       	mov    0x804c0c8,%eax
 804981d:	89 04 24             	mov    %eax,(%esp)
 8049820:	e8 9b f2 ff ff       	call   8048ac0 <__strdup@plt>
 8049825:	a3 f0 c0 04 08       	mov    %eax,0x804c0f0
 804982a:	89 44 24 08          	mov    %eax,0x8(%esp)
 804982e:	c7 44 24 04 84 a3 04 	movl   $0x804a384,0x4(%esp)
 8049835:	08 
 8049836:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 804983d:	e8 ee f0 ff ff       	call   8048930 <__printf_chk@plt>
 8049842:	a1 f0 c0 04 08       	mov    0x804c0f0,%eax
 8049847:	89 04 24             	mov    %eax,(%esp)
 804984a:	e8 41 03 00 00       	call   8049b90 <gencookie>
 804984f:	a3 ec c0 04 08       	mov    %eax,0x804c0ec
 8049854:	89 44 24 08          	mov    %eax,0x8(%esp)
 8049858:	c7 44 24 04 8e a3 04 	movl   $0x804a38e,0x4(%esp)
 804985f:	08 
 8049860:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 8049867:	e8 c4 f0 ff ff       	call   8048930 <__printf_chk@plt>
 804986c:	e9 17 ff ff ff       	jmp    8049788 <main+0x118>
 8049871:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 8049878:	c7 05 90 c0 04 08 01 	movl   $0x1,0x804c090
 804987f:	00 00 00 
 8049882:	e9 01 ff ff ff       	jmp    8049788 <main+0x118>
 8049887:	90                   	nop
 8049888:	c7 05 e4 c0 04 08 01 	movl   $0x1,0x804c0e4
 804988f:	00 00 00 
 8049892:	e9 f1 fe ff ff       	jmp    8049788 <main+0x118>
 8049897:	90                   	nop
 8049898:	c7 85 dc fb ff ff 05 	movl   $0x5,-0x424(%ebp)
 804989f:	00 00 00 
 80498a2:	c7 85 d8 fb ff ff 01 	movl   $0x1,-0x428(%ebp)
 80498a9:	00 00 00 
 80498ac:	e9 d7 fe ff ff       	jmp    8049788 <main+0x118>
 80498b1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 80498b8:	c7 05 f4 c0 04 08 01 	movl   $0x1,0x804c0f4
 80498bf:	00 00 00 
 80498c2:	c7 05 e4 c0 04 08 01 	movl   $0x1,0x804c0e4
 80498c9:	00 00 00 
 80498cc:	c7 05 98 c0 04 08 01 	movl   $0x1,0x804c098
 80498d3:	00 00 00 
 80498d6:	e9 ad fe ff ff       	jmp    8049788 <main+0x118>
 80498db:	90                   	nop
 80498dc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 80498e0:	c7 44 24 04 1e a3 04 	movl   $0x804a31e,0x4(%esp)
 80498e7:	08 
 80498e8:	a1 c8 c0 04 08       	mov    0x804c0c8,%eax
 80498ed:	89 04 24             	mov    %eax,(%esp)
 80498f0:	e8 eb f0 ff ff       	call   80489e0 <fopen@plt>
 80498f5:	85 c0                	test   %eax,%eax
 80498f7:	a3 e0 c0 04 08       	mov    %eax,0x804c0e0
 80498fc:	0f 85 86 fe ff ff    	jne    8049788 <main+0x118>
 8049902:	a1 c8 c0 04 08       	mov    0x804c0c8,%eax
 8049907:	c7 44 24 04 9c a3 04 	movl   $0x804a39c,0x4(%esp)
 804990e:	08 
 804990f:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 8049916:	89 44 24 08          	mov    %eax,0x8(%esp)
 804991a:	e8 11 f0 ff ff       	call   8048930 <__printf_chk@plt>
 804991f:	8b 06                	mov    (%esi),%eax
 8049921:	e8 9a f2 ff ff       	call   8048bc0 <usage>
 8049926:	e9 5d fe ff ff       	jmp    8049788 <main+0x118>
 804992b:	90                   	nop
 804992c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 8049930:	a1 f0 c0 04 08       	mov    0x804c0f0,%eax
 8049935:	85 c0                	test   %eax,%eax
 8049937:	0f 84 c2 01 00 00    	je     8049aff <main+0x48f>
 804993d:	a1 ec c0 04 08       	mov    0x804c0ec,%eax
 8049942:	89 04 24             	mov    %eax,(%esp)
 8049945:	e8 c6 f0 ff ff       	call   8048a10 <srandom@plt>
 804994a:	e8 a1 ef ff ff       	call   80488f0 <random@plt>
 804994f:	25 f8 0f 00 00       	and    $0xff8,%eax
 8049954:	89 85 d4 fb ff ff    	mov    %eax,-0x42c(%ebp)
 804995a:	c7 44 24 04 04 00 00 	movl   $0x4,0x4(%esp)
 8049961:	00 
 8049962:	8b 85 dc fb ff ff    	mov    -0x424(%ebp),%eax
 8049968:	89 04 24             	mov    %eax,(%esp)
 804996b:	e8 d0 ef ff ff       	call   8048940 <calloc@plt>
 8049970:	8b b5 dc fb ff ff    	mov    -0x424(%ebp),%esi
 8049976:	83 ee 02             	sub    $0x2,%esi
 8049979:	85 f6                	test   %esi,%esi
 804997b:	89 c7                	mov    %eax,%edi
 804997d:	7e 1b                	jle    804999a <main+0x32a>
 804997f:	31 db                	xor    %ebx,%ebx
 8049981:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 8049988:	e8 63 ef ff ff       	call   80488f0 <random@plt>
 804998d:	83 e0 38             	and    $0x38,%eax
 8049990:	89 04 9f             	mov    %eax,(%edi,%ebx,4)
 8049993:	83 c3 01             	add    $0x1,%ebx
 8049996:	39 f3                	cmp    %esi,%ebx
 8049998:	7c ee                	jl     8049988 <main+0x318>
 804999a:	83 bd dc fb ff ff 01 	cmpl   $0x1,-0x424(%ebp)
 80499a1:	74 07                	je     80499aa <main+0x33a>
 80499a3:	c7 04 b7 38 00 00 00 	movl   $0x38,(%edi,%esi,4)
 80499aa:	8b 85 dc fb ff ff    	mov    -0x424(%ebp),%eax
 80499b0:	31 db                	xor    %ebx,%ebx
 80499b2:	c7 44 87 fc 00 00 00 	movl   $0x0,-0x4(%edi,%eax,4)
 80499b9:	00 
 80499ba:	a1 98 c0 04 08       	mov    0x804c098,%eax
 80499bf:	89 04 24             	mov    %eax,(%esp)
 80499c2:	e8 29 f0 ff ff       	call   80489f0 <alarm@plt>
 80499c7:	90                   	nop
 80499c8:	8b 95 d4 fb ff ff    	mov    -0x42c(%ebp),%edx
 80499ce:	8b 85 d8 fb ff ff    	mov    -0x428(%ebp),%eax
 80499d4:	03 14 9f             	add    (%edi,%ebx,4),%edx
 80499d7:	83 c3 01             	add    $0x1,%ebx
 80499da:	e8 e1 fb ff ff       	call   80495c0 <launch>
 80499df:	39 9d dc fb ff ff    	cmp    %ebx,-0x424(%ebp)
 80499e5:	7f e1                	jg     80499c8 <main+0x358>
 80499e7:	81 c4 38 04 00 00    	add    $0x438,%esp
 80499ed:	31 c0                	xor    %eax,%eax
 80499ef:	59                   	pop    %ecx
 80499f0:	5b                   	pop    %ebx
 80499f1:	5e                   	pop    %esi
 80499f2:	5f                   	pop    %edi
 80499f3:	5d                   	pop    %ebp
 80499f4:	8d 61 fc             	lea    -0x4(%ecx),%esp
 80499f7:	c3                   	ret    
 80499f8:	a1 c0 c0 04 08       	mov    0x804c0c0,%eax
 80499fd:	c7 44 24 08 2b 00 00 	movl   $0x2b,0x8(%esp)
 8049a04:	00 
 8049a05:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
 8049a0c:	00 
 8049a0d:	c7 04 24 44 a0 04 08 	movl   $0x804a044,(%esp)
 8049a14:	89 44 24 0c          	mov    %eax,0xc(%esp)
 8049a18:	e8 03 f0 ff ff       	call   8048a20 <fwrite@plt>
 8049a1d:	e8 be f0 ff ff       	call   8048ae0 <geteuid@plt>
 8049a22:	85 c0                	test   %eax,%eax
 8049a24:	75 60                	jne    8049a86 <main+0x416>
 8049a26:	a1 c0 c0 04 08       	mov    0x804c0c0,%eax
 8049a2b:	8d 9d ec fb ff ff    	lea    -0x414(%ebp),%ebx
 8049a31:	c7 44 24 08 1b 00 00 	movl   $0x1b,0x8(%esp)
 8049a38:	00 
 8049a39:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
 8049a40:	00 
 8049a41:	c7 04 24 23 a3 04 08 	movl   $0x804a323,(%esp)
 8049a48:	89 44 24 0c          	mov    %eax,0xc(%esp)
 8049a4c:	e8 cf ef ff ff       	call   8048a20 <fwrite@plt>
 8049a51:	c7 44 24 10 f0 9f 04 	movl   $0x8049ff0,0x10(%esp)
 8049a58:	08 
 8049a59:	c7 44 24 0c 3f a3 04 	movl   $0x804a33f,0xc(%esp)
 8049a60:	08 
 8049a61:	c7 44 24 08 00 04 00 	movl   $0x400,0x8(%esp)
 8049a68:	00 
 8049a69:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
 8049a70:	00 
 8049a71:	89 1c 24             	mov    %ebx,(%esp)
 8049a74:	e8 17 f0 ff ff       	call   8048a90 <__sprintf_chk@plt>
 8049a79:	89 1c 24             	mov    %ebx,(%esp)
 8049a7c:	e8 cf ee ff ff       	call   8048950 <system@plt>
 8049a81:	e9 8e fc ff ff       	jmp    8049714 <main+0xa4>
 8049a86:	a1 c0 c0 04 08       	mov    0x804c0c0,%eax
 8049a8b:	c7 44 24 08 1b 00 00 	movl   $0x1b,0x8(%esp)
 8049a92:	00 
 8049a93:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
 8049a9a:	00 
 8049a9b:	c7 04 24 4b a3 04 08 	movl   $0x804a34b,(%esp)
 8049aa2:	89 44 24 0c          	mov    %eax,0xc(%esp)
 8049aa6:	e8 75 ef ff ff       	call   8048a20 <fwrite@plt>
 8049aab:	e9 64 fc ff ff       	jmp    8049714 <main+0xa4>
 8049ab0:	a1 c0 c0 04 08       	mov    0x804c0c0,%eax
 8049ab5:	c7 44 24 08 2f 00 00 	movl   $0x2f,0x8(%esp)
 8049abc:	00 
 8049abd:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
 8049ac4:	00 
 8049ac5:	c7 04 24 a0 a0 04 08 	movl   $0x804a0a0,(%esp)
 8049acc:	89 44 24 0c          	mov    %eax,0xc(%esp)
 8049ad0:	e8 4b ef ff ff       	call   8048a20 <fwrite@plt>
 8049ad5:	a1 c0 c0 04 08       	mov    0x804c0c0,%eax
 8049ada:	c7 44 24 08 31 00 00 	movl   $0x31,0x8(%esp)
 8049ae1:	00 
 8049ae2:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
 8049ae9:	00 
 8049aea:	c7 04 24 d0 a0 04 08 	movl   $0x804a0d0,(%esp)
 8049af1:	89 44 24 0c          	mov    %eax,0xc(%esp)
 8049af5:	e8 26 ef ff ff       	call   8048a20 <fwrite@plt>
 8049afa:	e9 15 fc ff ff       	jmp    8049714 <main+0xa4>
 8049aff:	c7 04 24 04 a1 04 08 	movl   $0x804a104,(%esp)
 8049b06:	e8 55 ef ff ff       	call   8048a60 <puts@plt>
 8049b0b:	8b 06                	mov    (%esi),%eax
 8049b0d:	e8 ae f0 ff ff       	call   8048bc0 <usage>
 8049b12:	e9 26 fe ff ff       	jmp    804993d <main+0x2cd>
 8049b17:	90                   	nop
 8049b18:	90                   	nop
 8049b19:	90                   	nop
 8049b1a:	90                   	nop
 8049b1b:	90                   	nop
 8049b1c:	90                   	nop
 8049b1d:	90                   	nop
 8049b1e:	90                   	nop
 8049b1f:	90                   	nop

08049b20 <hash>:
 8049b20:	55                   	push   %ebp
 8049b21:	31 d2                	xor    %edx,%edx
 8049b23:	89 e5                	mov    %esp,%ebp
 8049b25:	8b 4d 08             	mov    0x8(%ebp),%ecx
 8049b28:	0f b6 01             	movzbl (%ecx),%eax
 8049b2b:	84 c0                	test   %al,%al
 8049b2d:	74 14                	je     8049b43 <hash+0x23>
 8049b2f:	90                   	nop
 8049b30:	6b d2 67             	imul   $0x67,%edx,%edx
 8049b33:	0f be c0             	movsbl %al,%eax
 8049b36:	83 c1 01             	add    $0x1,%ecx
 8049b39:	8d 14 10             	lea    (%eax,%edx,1),%edx
 8049b3c:	0f b6 01             	movzbl (%ecx),%eax
 8049b3f:	84 c0                	test   %al,%al
 8049b41:	75 ed                	jne    8049b30 <hash+0x10>
 8049b43:	89 d0                	mov    %edx,%eax
 8049b45:	5d                   	pop    %ebp
 8049b46:	c3                   	ret    
 8049b47:	89 f6                	mov    %esi,%esi
 8049b49:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

08049b50 <check>:
 8049b50:	55                   	push   %ebp
 8049b51:	89 e5                	mov    %esp,%ebp
 8049b53:	8b 55 08             	mov    0x8(%ebp),%edx
 8049b56:	89 d0                	mov    %edx,%eax
 8049b58:	c1 e8 1c             	shr    $0x1c,%eax
 8049b5b:	85 c0                	test   %eax,%eax
 8049b5d:	74 19                	je     8049b78 <check+0x28>
 8049b5f:	31 c9                	xor    %ecx,%ecx
 8049b61:	89 d0                	mov    %edx,%eax
 8049b63:	d3 e8                	shr    %cl,%eax
 8049b65:	3c 0a                	cmp    $0xa,%al
 8049b67:	74 0f                	je     8049b78 <check+0x28>
 8049b69:	83 c1 08             	add    $0x8,%ecx
 8049b6c:	83 f9 20             	cmp    $0x20,%ecx
 8049b6f:	75 f0                	jne    8049b61 <check+0x11>
 8049b71:	b8 01 00 00 00       	mov    $0x1,%eax
 8049b76:	5d                   	pop    %ebp
 8049b77:	c3                   	ret    
 8049b78:	31 c0                	xor    %eax,%eax
 8049b7a:	5d                   	pop    %ebp
 8049b7b:	90                   	nop
 8049b7c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 8049b80:	c3                   	ret    
 8049b81:	eb 0d                	jmp    8049b90 <gencookie>
 8049b83:	90                   	nop
 8049b84:	90                   	nop
 8049b85:	90                   	nop
 8049b86:	90                   	nop
 8049b87:	90                   	nop
 8049b88:	90                   	nop
 8049b89:	90                   	nop
 8049b8a:	90                   	nop
 8049b8b:	90                   	nop
 8049b8c:	90                   	nop
 8049b8d:	90                   	nop
 8049b8e:	90                   	nop
 8049b8f:	90                   	nop

08049b90 <gencookie>:
 8049b90:	55                   	push   %ebp
 8049b91:	31 d2                	xor    %edx,%edx
 8049b93:	89 e5                	mov    %esp,%ebp
 8049b95:	83 ec 08             	sub    $0x8,%esp
 8049b98:	8b 4d 08             	mov    0x8(%ebp),%ecx
 8049b9b:	0f b6 01             	movzbl (%ecx),%eax
 8049b9e:	84 c0                	test   %al,%al
 8049ba0:	74 19                	je     8049bbb <gencookie+0x2b>
 8049ba2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 8049ba8:	6b d2 67             	imul   $0x67,%edx,%edx
 8049bab:	0f be c0             	movsbl %al,%eax
 8049bae:	83 c1 01             	add    $0x1,%ecx
 8049bb1:	8d 14 10             	lea    (%eax,%edx,1),%edx
 8049bb4:	0f b6 01             	movzbl (%ecx),%eax
 8049bb7:	84 c0                	test   %al,%al
 8049bb9:	75 ed                	jne    8049ba8 <gencookie+0x18>
 8049bbb:	89 14 24             	mov    %edx,(%esp)
 8049bbe:	e8 0d ed ff ff       	call   80488d0 <srand@plt>
 8049bc3:	90                   	nop
 8049bc4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 8049bc8:	e8 a3 ee ff ff       	call   8048a70 <rand@plt>
 8049bcd:	89 c2                	mov    %eax,%edx
 8049bcf:	c1 e8 1c             	shr    $0x1c,%eax
 8049bd2:	85 c0                	test   %eax,%eax
 8049bd4:	74 f2                	je     8049bc8 <gencookie+0x38>
 8049bd6:	31 c9                	xor    %ecx,%ecx
 8049bd8:	89 d0                	mov    %edx,%eax
 8049bda:	d3 e8                	shr    %cl,%eax
 8049bdc:	3c 0a                	cmp    $0xa,%al
 8049bde:	74 e8                	je     8049bc8 <gencookie+0x38>
 8049be0:	83 c1 08             	add    $0x8,%ecx
 8049be3:	83 f9 20             	cmp    $0x20,%ecx
 8049be6:	75 f0                	jne    8049bd8 <gencookie+0x48>
 8049be8:	89 d0                	mov    %edx,%eax
 8049bea:	c9                   	leave  
 8049beb:	c3                   	ret    
 8049bec:	90                   	nop
 8049bed:	90                   	nop
 8049bee:	90                   	nop
 8049bef:	90                   	nop

08049bf0 <__libc_csu_fini>:
 8049bf0:	55                   	push   %ebp
 8049bf1:	89 e5                	mov    %esp,%ebp
 8049bf3:	5d                   	pop    %ebp
 8049bf4:	c3                   	ret    
 8049bf5:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 8049bf9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

08049c00 <__libc_csu_init>:
 8049c00:	55                   	push   %ebp
 8049c01:	89 e5                	mov    %esp,%ebp
 8049c03:	57                   	push   %edi
 8049c04:	56                   	push   %esi
 8049c05:	53                   	push   %ebx
 8049c06:	e8 4f 00 00 00       	call   8049c5a <__i686.get_pc_thunk.bx>
 8049c0b:	81 c3 e9 23 00 00    	add    $0x23e9,%ebx
 8049c11:	83 ec 0c             	sub    $0xc,%esp
 8049c14:	e8 77 ec ff ff       	call   8048890 <_init>
 8049c19:	8d bb 18 ff ff ff    	lea    -0xe8(%ebx),%edi
 8049c1f:	8d 83 18 ff ff ff    	lea    -0xe8(%ebx),%eax
 8049c25:	29 c7                	sub    %eax,%edi
 8049c27:	c1 ff 02             	sar    $0x2,%edi
 8049c2a:	85 ff                	test   %edi,%edi
 8049c2c:	74 24                	je     8049c52 <__libc_csu_init+0x52>
 8049c2e:	31 f6                	xor    %esi,%esi
 8049c30:	8b 45 10             	mov    0x10(%ebp),%eax
 8049c33:	89 44 24 08          	mov    %eax,0x8(%esp)
 8049c37:	8b 45 0c             	mov    0xc(%ebp),%eax
 8049c3a:	89 44 24 04          	mov    %eax,0x4(%esp)
 8049c3e:	8b 45 08             	mov    0x8(%ebp),%eax
 8049c41:	89 04 24             	mov    %eax,(%esp)
 8049c44:	ff 94 b3 18 ff ff ff 	call   *-0xe8(%ebx,%esi,4)
 8049c4b:	83 c6 01             	add    $0x1,%esi
 8049c4e:	39 fe                	cmp    %edi,%esi
 8049c50:	72 de                	jb     8049c30 <__libc_csu_init+0x30>
 8049c52:	83 c4 0c             	add    $0xc,%esp
 8049c55:	5b                   	pop    %ebx
 8049c56:	5e                   	pop    %esi
 8049c57:	5f                   	pop    %edi
 8049c58:	5d                   	pop    %ebp
 8049c59:	c3                   	ret    

08049c5a <__i686.get_pc_thunk.bx>:
 8049c5a:	8b 1c 24             	mov    (%esp),%ebx
 8049c5d:	c3                   	ret    
 8049c5e:	90                   	nop
 8049c5f:	90                   	nop

08049c60 <__do_global_ctors_aux>:
 8049c60:	55                   	push   %ebp
 8049c61:	89 e5                	mov    %esp,%ebp
 8049c63:	53                   	push   %ebx
 8049c64:	83 ec 04             	sub    $0x4,%esp
 8049c67:	a1 0c bf 04 08       	mov    0x804bf0c,%eax
 8049c6c:	83 f8 ff             	cmp    $0xffffffff,%eax
 8049c6f:	74 13                	je     8049c84 <__do_global_ctors_aux+0x24>
 8049c71:	bb 0c bf 04 08       	mov    $0x804bf0c,%ebx
 8049c76:	66 90                	xchg   %ax,%ax
 8049c78:	83 eb 04             	sub    $0x4,%ebx
 8049c7b:	ff d0                	call   *%eax
 8049c7d:	8b 03                	mov    (%ebx),%eax
 8049c7f:	83 f8 ff             	cmp    $0xffffffff,%eax
 8049c82:	75 f4                	jne    8049c78 <__do_global_ctors_aux+0x18>
 8049c84:	83 c4 04             	add    $0x4,%esp
 8049c87:	5b                   	pop    %ebx
 8049c88:	5d                   	pop    %ebp
 8049c89:	c3                   	ret    
 8049c8a:	90                   	nop
 8049c8b:	90                   	nop

Disassembly of section .fini:

08049c8c <_fini>:
 8049c8c:	55                   	push   %ebp
 8049c8d:	89 e5                	mov    %esp,%ebp
 8049c8f:	53                   	push   %ebx
 8049c90:	83 ec 04             	sub    $0x4,%esp
 8049c93:	e8 00 00 00 00       	call   8049c98 <_fini+0xc>
 8049c98:	5b                   	pop    %ebx
 8049c99:	81 c3 5c 23 00 00    	add    $0x235c,%ebx
 8049c9f:	e8 7c ee ff ff       	call   8048b20 <__do_global_dtors_aux>
 8049ca4:	59                   	pop    %ecx
 8049ca5:	5b                   	pop    %ebx
 8049ca6:	c9                   	leave  
 8049ca7:	c3                   	ret    
