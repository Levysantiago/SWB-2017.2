
ctarget: formato do arquivo elf64-x86-64


Desmontagem da seção .init:

0000000000400e98 <_init>:
  400e98:	48 83 ec 08          	sub    $0x8,%rsp
  400e9c:	48 8b 05 45 41 20 00 	mov    0x204145(%rip),%rax        # 604fe8 <__gmon_start__>
  400ea3:	48 85 c0             	test   %rax,%rax
  400ea6:	74 05                	je     400ead <_init+0x15>
  400ea8:	e8 63 02 00 00       	callq  401110 <.plt.got>
  400ead:	e8 9e 03 00 00       	callq  401250 <frame_dummy>
  400eb2:	e8 c9 26 00 00       	callq  403580 <__do_global_ctors_aux>
  400eb7:	48 83 c4 08          	add    $0x8,%rsp
  400ebb:	c3                   	retq   

Desmontagem da seção .plt:

0000000000400ec0 <.plt>:
  400ec0:	ff 35 42 41 20 00    	pushq  0x204142(%rip)        # 605008 <_GLOBAL_OFFSET_TABLE_+0x8>
  400ec6:	ff 25 44 41 20 00    	jmpq   *0x204144(%rip)        # 605010 <_GLOBAL_OFFSET_TABLE_+0x10>
  400ecc:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400ed0 <strcasecmp@plt>:
  400ed0:	ff 25 42 41 20 00    	jmpq   *0x204142(%rip)        # 605018 <strcasecmp@GLIBC_2.2.5>
  400ed6:	68 00 00 00 00       	pushq  $0x0
  400edb:	e9 e0 ff ff ff       	jmpq   400ec0 <.plt>

0000000000400ee0 <__errno_location@plt>:
  400ee0:	ff 25 3a 41 20 00    	jmpq   *0x20413a(%rip)        # 605020 <__errno_location@GLIBC_2.2.5>
  400ee6:	68 01 00 00 00       	pushq  $0x1
  400eeb:	e9 d0 ff ff ff       	jmpq   400ec0 <.plt>

0000000000400ef0 <srandom@plt>:
  400ef0:	ff 25 32 41 20 00    	jmpq   *0x204132(%rip)        # 605028 <srandom@GLIBC_2.2.5>
  400ef6:	68 02 00 00 00       	pushq  $0x2
  400efb:	e9 c0 ff ff ff       	jmpq   400ec0 <.plt>

0000000000400f00 <strncmp@plt>:
  400f00:	ff 25 2a 41 20 00    	jmpq   *0x20412a(%rip)        # 605030 <strncmp@GLIBC_2.2.5>
  400f06:	68 03 00 00 00       	pushq  $0x3
  400f0b:	e9 b0 ff ff ff       	jmpq   400ec0 <.plt>

0000000000400f10 <strcpy@plt>:
  400f10:	ff 25 22 41 20 00    	jmpq   *0x204122(%rip)        # 605038 <strcpy@GLIBC_2.2.5>
  400f16:	68 04 00 00 00       	pushq  $0x4
  400f1b:	e9 a0 ff ff ff       	jmpq   400ec0 <.plt>

0000000000400f20 <puts@plt>:
  400f20:	ff 25 1a 41 20 00    	jmpq   *0x20411a(%rip)        # 605040 <puts@GLIBC_2.2.5>
  400f26:	68 05 00 00 00       	pushq  $0x5
  400f2b:	e9 90 ff ff ff       	jmpq   400ec0 <.plt>

0000000000400f30 <write@plt>:
  400f30:	ff 25 12 41 20 00    	jmpq   *0x204112(%rip)        # 605048 <write@GLIBC_2.2.5>
  400f36:	68 06 00 00 00       	pushq  $0x6
  400f3b:	e9 80 ff ff ff       	jmpq   400ec0 <.plt>

0000000000400f40 <__stack_chk_fail@plt>:
  400f40:	ff 25 0a 41 20 00    	jmpq   *0x20410a(%rip)        # 605050 <__stack_chk_fail@GLIBC_2.4>
  400f46:	68 07 00 00 00       	pushq  $0x7
  400f4b:	e9 70 ff ff ff       	jmpq   400ec0 <.plt>

0000000000400f50 <mmap@plt>:
  400f50:	ff 25 02 41 20 00    	jmpq   *0x204102(%rip)        # 605058 <mmap@GLIBC_2.2.5>
  400f56:	68 08 00 00 00       	pushq  $0x8
  400f5b:	e9 60 ff ff ff       	jmpq   400ec0 <.plt>

0000000000400f60 <printf@plt>:
  400f60:	ff 25 fa 40 20 00    	jmpq   *0x2040fa(%rip)        # 605060 <printf@GLIBC_2.2.5>
  400f66:	68 09 00 00 00       	pushq  $0x9
  400f6b:	e9 50 ff ff ff       	jmpq   400ec0 <.plt>

0000000000400f70 <memset@plt>:
  400f70:	ff 25 f2 40 20 00    	jmpq   *0x2040f2(%rip)        # 605068 <memset@GLIBC_2.2.5>
  400f76:	68 0a 00 00 00       	pushq  $0xa
  400f7b:	e9 40 ff ff ff       	jmpq   400ec0 <.plt>

0000000000400f80 <alarm@plt>:
  400f80:	ff 25 ea 40 20 00    	jmpq   *0x2040ea(%rip)        # 605070 <alarm@GLIBC_2.2.5>
  400f86:	68 0b 00 00 00       	pushq  $0xb
  400f8b:	e9 30 ff ff ff       	jmpq   400ec0 <.plt>

0000000000400f90 <close@plt>:
  400f90:	ff 25 e2 40 20 00    	jmpq   *0x2040e2(%rip)        # 605078 <close@GLIBC_2.2.5>
  400f96:	68 0c 00 00 00       	pushq  $0xc
  400f9b:	e9 20 ff ff ff       	jmpq   400ec0 <.plt>

0000000000400fa0 <read@plt>:
  400fa0:	ff 25 da 40 20 00    	jmpq   *0x2040da(%rip)        # 605080 <read@GLIBC_2.2.5>
  400fa6:	68 0d 00 00 00       	pushq  $0xd
  400fab:	e9 10 ff ff ff       	jmpq   400ec0 <.plt>

0000000000400fb0 <__libc_start_main@plt>:
  400fb0:	ff 25 d2 40 20 00    	jmpq   *0x2040d2(%rip)        # 605088 <__libc_start_main@GLIBC_2.2.5>
  400fb6:	68 0e 00 00 00       	pushq  $0xe
  400fbb:	e9 00 ff ff ff       	jmpq   400ec0 <.plt>

0000000000400fc0 <signal@plt>:
  400fc0:	ff 25 ca 40 20 00    	jmpq   *0x2040ca(%rip)        # 605090 <signal@GLIBC_2.2.5>
  400fc6:	68 0f 00 00 00       	pushq  $0xf
  400fcb:	e9 f0 fe ff ff       	jmpq   400ec0 <.plt>

0000000000400fd0 <gethostbyname@plt>:
  400fd0:	ff 25 c2 40 20 00    	jmpq   *0x2040c2(%rip)        # 605098 <gethostbyname@GLIBC_2.2.5>
  400fd6:	68 10 00 00 00       	pushq  $0x10
  400fdb:	e9 e0 fe ff ff       	jmpq   400ec0 <.plt>

0000000000400fe0 <__memmove_chk@plt>:
  400fe0:	ff 25 ba 40 20 00    	jmpq   *0x2040ba(%rip)        # 6050a0 <__memmove_chk@GLIBC_2.3.4>
  400fe6:	68 11 00 00 00       	pushq  $0x11
  400feb:	e9 d0 fe ff ff       	jmpq   400ec0 <.plt>

0000000000400ff0 <fprintf@plt>:
  400ff0:	ff 25 b2 40 20 00    	jmpq   *0x2040b2(%rip)        # 6050a8 <fprintf@GLIBC_2.2.5>
  400ff6:	68 12 00 00 00       	pushq  $0x12
  400ffb:	e9 c0 fe ff ff       	jmpq   400ec0 <.plt>

0000000000401000 <strtol@plt>:
  401000:	ff 25 aa 40 20 00    	jmpq   *0x2040aa(%rip)        # 6050b0 <strtol@GLIBC_2.2.5>
  401006:	68 13 00 00 00       	pushq  $0x13
  40100b:	e9 b0 fe ff ff       	jmpq   400ec0 <.plt>

0000000000401010 <memcpy@plt>:
  401010:	ff 25 a2 40 20 00    	jmpq   *0x2040a2(%rip)        # 6050b8 <memcpy@GLIBC_2.14>
  401016:	68 14 00 00 00       	pushq  $0x14
  40101b:	e9 a0 fe ff ff       	jmpq   400ec0 <.plt>

0000000000401020 <time@plt>:
  401020:	ff 25 9a 40 20 00    	jmpq   *0x20409a(%rip)        # 6050c0 <time@GLIBC_2.2.5>
  401026:	68 15 00 00 00       	pushq  $0x15
  40102b:	e9 90 fe ff ff       	jmpq   400ec0 <.plt>

0000000000401030 <random@plt>:
  401030:	ff 25 92 40 20 00    	jmpq   *0x204092(%rip)        # 6050c8 <random@GLIBC_2.2.5>
  401036:	68 16 00 00 00       	pushq  $0x16
  40103b:	e9 80 fe ff ff       	jmpq   400ec0 <.plt>

0000000000401040 <_IO_getc@plt>:
  401040:	ff 25 8a 40 20 00    	jmpq   *0x20408a(%rip)        # 6050d0 <_IO_getc@GLIBC_2.2.5>
  401046:	68 17 00 00 00       	pushq  $0x17
  40104b:	e9 70 fe ff ff       	jmpq   400ec0 <.plt>

0000000000401050 <__isoc99_sscanf@plt>:
  401050:	ff 25 82 40 20 00    	jmpq   *0x204082(%rip)        # 6050d8 <__isoc99_sscanf@GLIBC_2.7>
  401056:	68 18 00 00 00       	pushq  $0x18
  40105b:	e9 60 fe ff ff       	jmpq   400ec0 <.plt>

0000000000401060 <munmap@plt>:
  401060:	ff 25 7a 40 20 00    	jmpq   *0x20407a(%rip)        # 6050e0 <munmap@GLIBC_2.2.5>
  401066:	68 19 00 00 00       	pushq  $0x19
  40106b:	e9 50 fe ff ff       	jmpq   400ec0 <.plt>

0000000000401070 <__printf_chk@plt>:
  401070:	ff 25 72 40 20 00    	jmpq   *0x204072(%rip)        # 6050e8 <__printf_chk@GLIBC_2.3.4>
  401076:	68 1a 00 00 00       	pushq  $0x1a
  40107b:	e9 40 fe ff ff       	jmpq   400ec0 <.plt>

0000000000401080 <fopen@plt>:
  401080:	ff 25 6a 40 20 00    	jmpq   *0x20406a(%rip)        # 6050f0 <fopen@GLIBC_2.2.5>
  401086:	68 1b 00 00 00       	pushq  $0x1b
  40108b:	e9 30 fe ff ff       	jmpq   400ec0 <.plt>

0000000000401090 <getopt@plt>:
  401090:	ff 25 62 40 20 00    	jmpq   *0x204062(%rip)        # 6050f8 <getopt@GLIBC_2.2.5>
  401096:	68 1c 00 00 00       	pushq  $0x1c
  40109b:	e9 20 fe ff ff       	jmpq   400ec0 <.plt>

00000000004010a0 <strtoul@plt>:
  4010a0:	ff 25 5a 40 20 00    	jmpq   *0x20405a(%rip)        # 605100 <strtoul@GLIBC_2.2.5>
  4010a6:	68 1d 00 00 00       	pushq  $0x1d
  4010ab:	e9 10 fe ff ff       	jmpq   400ec0 <.plt>

00000000004010b0 <gethostname@plt>:
  4010b0:	ff 25 52 40 20 00    	jmpq   *0x204052(%rip)        # 605108 <gethostname@GLIBC_2.2.5>
  4010b6:	68 1e 00 00 00       	pushq  $0x1e
  4010bb:	e9 00 fe ff ff       	jmpq   400ec0 <.plt>

00000000004010c0 <exit@plt>:
  4010c0:	ff 25 4a 40 20 00    	jmpq   *0x20404a(%rip)        # 605110 <exit@GLIBC_2.2.5>
  4010c6:	68 1f 00 00 00       	pushq  $0x1f
  4010cb:	e9 f0 fd ff ff       	jmpq   400ec0 <.plt>

00000000004010d0 <connect@plt>:
  4010d0:	ff 25 42 40 20 00    	jmpq   *0x204042(%rip)        # 605118 <connect@GLIBC_2.2.5>
  4010d6:	68 20 00 00 00       	pushq  $0x20
  4010db:	e9 e0 fd ff ff       	jmpq   400ec0 <.plt>

00000000004010e0 <__fprintf_chk@plt>:
  4010e0:	ff 25 3a 40 20 00    	jmpq   *0x20403a(%rip)        # 605120 <__fprintf_chk@GLIBC_2.3.4>
  4010e6:	68 21 00 00 00       	pushq  $0x21
  4010eb:	e9 d0 fd ff ff       	jmpq   400ec0 <.plt>

00000000004010f0 <__sprintf_chk@plt>:
  4010f0:	ff 25 32 40 20 00    	jmpq   *0x204032(%rip)        # 605128 <__sprintf_chk@GLIBC_2.3.4>
  4010f6:	68 22 00 00 00       	pushq  $0x22
  4010fb:	e9 c0 fd ff ff       	jmpq   400ec0 <.plt>

0000000000401100 <socket@plt>:
  401100:	ff 25 2a 40 20 00    	jmpq   *0x20402a(%rip)        # 605130 <socket@GLIBC_2.2.5>
  401106:	68 23 00 00 00       	pushq  $0x23
  40110b:	e9 b0 fd ff ff       	jmpq   400ec0 <.plt>

Desmontagem da seção .plt.got:

0000000000401110 <.plt.got>:
  401110:	ff 25 d2 3e 20 00    	jmpq   *0x203ed2(%rip)        # 604fe8 <__gmon_start__>
  401116:	66 90                	xchg   %ax,%ax

Desmontagem da seção .text:

0000000000401120 <_start>:
  401120:	31 ed                	xor    %ebp,%ebp
  401122:	49 89 d1             	mov    %rdx,%r9
  401125:	5e                   	pop    %rsi
  401126:	48 89 e2             	mov    %rsp,%rdx
  401129:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  40112d:	50                   	push   %rax
  40112e:	54                   	push   %rsp
  40112f:	49 c7 c0 70 35 40 00 	mov    $0x403570,%r8
  401136:	48 c7 c1 00 35 40 00 	mov    $0x403500,%rcx
  40113d:	48 c7 c7 50 14 40 00 	mov    $0x401450,%rdi
  401144:	e8 67 fe ff ff       	callq  400fb0 <__libc_start_main@plt>
  401149:	f4                   	hlt    
  40114a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000401150 <deregister_tm_clones>:
  401150:	48 8d 3d 59 43 20 00 	lea    0x204359(%rip),%rdi        # 6054b0 <__TMC_END__>
  401157:	48 8d 05 59 43 20 00 	lea    0x204359(%rip),%rax        # 6054b7 <__TMC_END__+0x7>
  40115e:	55                   	push   %rbp
  40115f:	48 29 f8             	sub    %rdi,%rax
  401162:	48 89 e5             	mov    %rsp,%rbp
  401165:	48 83 f8 0e          	cmp    $0xe,%rax
  401169:	76 15                	jbe    401180 <deregister_tm_clones+0x30>
  40116b:	48 8b 05 6e 3e 20 00 	mov    0x203e6e(%rip),%rax        # 604fe0 <_ITM_deregisterTMCloneTable>
  401172:	48 85 c0             	test   %rax,%rax
  401175:	74 09                	je     401180 <deregister_tm_clones+0x30>
  401177:	5d                   	pop    %rbp
  401178:	ff e0                	jmpq   *%rax
  40117a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  401180:	5d                   	pop    %rbp
  401181:	c3                   	retq   
  401182:	0f 1f 40 00          	nopl   0x0(%rax)
  401186:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40118d:	00 00 00 

0000000000401190 <register_tm_clones>:
  401190:	48 8d 3d 19 43 20 00 	lea    0x204319(%rip),%rdi        # 6054b0 <__TMC_END__>
  401197:	48 8d 35 12 43 20 00 	lea    0x204312(%rip),%rsi        # 6054b0 <__TMC_END__>
  40119e:	55                   	push   %rbp
  40119f:	48 29 fe             	sub    %rdi,%rsi
  4011a2:	48 89 e5             	mov    %rsp,%rbp
  4011a5:	48 c1 fe 03          	sar    $0x3,%rsi
  4011a9:	48 89 f0             	mov    %rsi,%rax
  4011ac:	48 c1 e8 3f          	shr    $0x3f,%rax
  4011b0:	48 01 c6             	add    %rax,%rsi
  4011b3:	48 d1 fe             	sar    %rsi
  4011b6:	74 18                	je     4011d0 <register_tm_clones+0x40>
  4011b8:	48 8b 05 39 3e 20 00 	mov    0x203e39(%rip),%rax        # 604ff8 <_ITM_registerTMCloneTable>
  4011bf:	48 85 c0             	test   %rax,%rax
  4011c2:	74 0c                	je     4011d0 <register_tm_clones+0x40>
  4011c4:	5d                   	pop    %rbp
  4011c5:	ff e0                	jmpq   *%rax
  4011c7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  4011ce:	00 00 
  4011d0:	5d                   	pop    %rbp
  4011d1:	c3                   	retq   
  4011d2:	0f 1f 40 00          	nopl   0x0(%rax)
  4011d6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4011dd:	00 00 00 

00000000004011e0 <__do_global_dtors_aux>:
  4011e0:	80 3d 01 43 20 00 00 	cmpb   $0x0,0x204301(%rip)        # 6054e8 <completed.6943>
  4011e7:	75 62                	jne    40124b <__do_global_dtors_aux+0x6b>
  4011e9:	55                   	push   %rbp
  4011ea:	48 8d 15 47 3c 20 00 	lea    0x203c47(%rip),%rdx        # 604e38 <__DTOR_LIST__>
  4011f1:	48 8b 05 f8 42 20 00 	mov    0x2042f8(%rip),%rax        # 6054f0 <dtor_idx.6945>
  4011f8:	48 89 e5             	mov    %rsp,%rbp
  4011fb:	41 54                	push   %r12
  4011fd:	53                   	push   %rbx
  4011fe:	48 8d 1d 3b 3c 20 00 	lea    0x203c3b(%rip),%rbx        # 604e40 <__DTOR_END__>
  401205:	4c 8d 25 2c 3c 20 00 	lea    0x203c2c(%rip),%r12        # 604e38 <__DTOR_LIST__>
  40120c:	48 29 d3             	sub    %rdx,%rbx
  40120f:	48 c1 fb 03          	sar    $0x3,%rbx
  401213:	48 83 eb 01          	sub    $0x1,%rbx
  401217:	48 39 d8             	cmp    %rbx,%rax
  40121a:	73 1f                	jae    40123b <__do_global_dtors_aux+0x5b>
  40121c:	0f 1f 40 00          	nopl   0x0(%rax)
  401220:	48 83 c0 01          	add    $0x1,%rax
  401224:	48 89 05 c5 42 20 00 	mov    %rax,0x2042c5(%rip)        # 6054f0 <dtor_idx.6945>
  40122b:	41 ff 14 c4          	callq  *(%r12,%rax,8)
  40122f:	48 8b 05 ba 42 20 00 	mov    0x2042ba(%rip),%rax        # 6054f0 <dtor_idx.6945>
  401236:	48 39 d8             	cmp    %rbx,%rax
  401239:	72 e5                	jb     401220 <__do_global_dtors_aux+0x40>
  40123b:	e8 10 ff ff ff       	callq  401150 <deregister_tm_clones>
  401240:	5b                   	pop    %rbx
  401241:	41 5c                	pop    %r12
  401243:	5d                   	pop    %rbp
  401244:	c6 05 9d 42 20 00 01 	movb   $0x1,0x20429d(%rip)        # 6054e8 <completed.6943>
  40124b:	f3 c3                	repz retq 
  40124d:	0f 1f 00             	nopl   (%rax)

0000000000401250 <frame_dummy>:
  401250:	48 8d 3d f1 3b 20 00 	lea    0x203bf1(%rip),%rdi        # 604e48 <__JCR_END__>
  401257:	48 83 3f 00          	cmpq   $0x0,(%rdi)
  40125b:	75 0b                	jne    401268 <frame_dummy+0x18>
  40125d:	e9 2e ff ff ff       	jmpq   401190 <register_tm_clones>
  401262:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  401268:	48 8b 05 81 3d 20 00 	mov    0x203d81(%rip),%rax        # 604ff0 <_Jv_RegisterClasses>
  40126f:	48 85 c0             	test   %rax,%rax
  401272:	74 e9                	je     40125d <frame_dummy+0xd>
  401274:	55                   	push   %rbp
  401275:	48 89 e5             	mov    %rsp,%rbp
  401278:	ff d0                	callq  *%rax
  40127a:	5d                   	pop    %rbp
  40127b:	e9 10 ff ff ff       	jmpq   401190 <register_tm_clones>

0000000000401280 <usage>:
  401280:	48 83 ec 08          	sub    $0x8,%rsp
  401284:	48 89 fe             	mov    %rdi,%rsi
  401287:	83 3d 9a 42 20 00 00 	cmpl   $0x0,0x20429a(%rip)        # 605528 <is_checker>
  40128e:	74 39                	je     4012c9 <usage+0x49>
  401290:	bf d8 35 40 00       	mov    $0x4035d8,%edi
  401295:	b8 00 00 00 00       	mov    $0x0,%eax
  40129a:	e8 c1 fc ff ff       	callq  400f60 <printf@plt>
  40129f:	bf 10 36 40 00       	mov    $0x403610,%edi
  4012a4:	e8 77 fc ff ff       	callq  400f20 <puts@plt>
  4012a9:	bf 88 37 40 00       	mov    $0x403788,%edi
  4012ae:	e8 6d fc ff ff       	callq  400f20 <puts@plt>
  4012b3:	bf 38 36 40 00       	mov    $0x403638,%edi
  4012b8:	e8 63 fc ff ff       	callq  400f20 <puts@plt>
  4012bd:	bf a2 37 40 00       	mov    $0x4037a2,%edi
  4012c2:	e8 59 fc ff ff       	callq  400f20 <puts@plt>
  4012c7:	eb 2d                	jmp    4012f6 <usage+0x76>
  4012c9:	bf be 37 40 00       	mov    $0x4037be,%edi
  4012ce:	b8 00 00 00 00       	mov    $0x0,%eax
  4012d3:	e8 88 fc ff ff       	callq  400f60 <printf@plt>
  4012d8:	bf 60 36 40 00       	mov    $0x403660,%edi
  4012dd:	e8 3e fc ff ff       	callq  400f20 <puts@plt>
  4012e2:	bf 88 36 40 00       	mov    $0x403688,%edi
  4012e7:	e8 34 fc ff ff       	callq  400f20 <puts@plt>
  4012ec:	bf dc 37 40 00       	mov    $0x4037dc,%edi
  4012f1:	e8 2a fc ff ff       	callq  400f20 <puts@plt>
  4012f6:	bf 00 00 00 00       	mov    $0x0,%edi
  4012fb:	e8 c0 fd ff ff       	callq  4010c0 <exit@plt>

0000000000401300 <initialize_target>:
  401300:	55                   	push   %rbp
  401301:	53                   	push   %rbx
  401302:	48 81 ec 08 21 00 00 	sub    $0x2108,%rsp
  401309:	89 f5                	mov    %esi,%ebp
  40130b:	89 3d 07 42 20 00    	mov    %edi,0x204207(%rip)        # 605518 <check_level>
  401311:	8b 3d 51 3e 20 00    	mov    0x203e51(%rip),%edi        # 605168 <target_id>
  401317:	e8 bb 21 00 00       	callq  4034d7 <gencookie>
  40131c:	89 05 02 42 20 00    	mov    %eax,0x204202(%rip)        # 605524 <cookie>
  401322:	89 c7                	mov    %eax,%edi
  401324:	e8 ae 21 00 00       	callq  4034d7 <gencookie>
  401329:	89 05 f1 41 20 00    	mov    %eax,0x2041f1(%rip)        # 605520 <authkey>
  40132f:	8b 05 33 3e 20 00    	mov    0x203e33(%rip),%eax        # 605168 <target_id>
  401335:	8d 78 01             	lea    0x1(%rax),%edi
  401338:	e8 b3 fb ff ff       	callq  400ef0 <srandom@plt>
  40133d:	e8 ee fc ff ff       	callq  401030 <random@plt>
  401342:	89 c7                	mov    %eax,%edi
  401344:	e8 ca 02 00 00       	callq  401613 <scramble>
  401349:	89 c3                	mov    %eax,%ebx
  40134b:	85 ed                	test   %ebp,%ebp
  40134d:	74 18                	je     401367 <initialize_target+0x67>
  40134f:	bf 00 00 00 00       	mov    $0x0,%edi
  401354:	e8 c7 fc ff ff       	callq  401020 <time@plt>
  401359:	89 c7                	mov    %eax,%edi
  40135b:	e8 90 fb ff ff       	callq  400ef0 <srandom@plt>
  401360:	e8 cb fc ff ff       	callq  401030 <random@plt>
  401365:	eb 05                	jmp    40136c <initialize_target+0x6c>
  401367:	b8 00 00 00 00       	mov    $0x0,%eax
  40136c:	01 c3                	add    %eax,%ebx
  40136e:	0f b7 db             	movzwl %bx,%ebx
  401371:	8d 04 dd 00 01 00 00 	lea    0x100(,%rbx,8),%eax
  401378:	89 c0                	mov    %eax,%eax
  40137a:	48 89 05 1f 41 20 00 	mov    %rax,0x20411f(%rip)        # 6054a0 <buf_offset>
  401381:	c6 05 c0 4d 20 00 63 	movb   $0x63,0x204dc0(%rip)        # 606148 <target_prefix>
  401388:	83 3d 19 41 20 00 00 	cmpl   $0x0,0x204119(%rip)        # 6054a8 <notify>
  40138f:	0f 84 b1 00 00 00    	je     401446 <initialize_target+0x146>
  401395:	83 3d 8c 41 20 00 00 	cmpl   $0x0,0x20418c(%rip)        # 605528 <is_checker>
  40139c:	0f 85 a4 00 00 00    	jne    401446 <initialize_target+0x146>
  4013a2:	be 00 01 00 00       	mov    $0x100,%esi
  4013a7:	48 89 e7             	mov    %rsp,%rdi
  4013aa:	e8 01 fd ff ff       	callq  4010b0 <gethostname@plt>
  4013af:	85 c0                	test   %eax,%eax
  4013b1:	74 25                	je     4013d8 <initialize_target+0xd8>
  4013b3:	bf b8 36 40 00       	mov    $0x4036b8,%edi
  4013b8:	e8 63 fb ff ff       	callq  400f20 <puts@plt>
  4013bd:	bf 08 00 00 00       	mov    $0x8,%edi
  4013c2:	e8 f9 fc ff ff       	callq  4010c0 <exit@plt>
  4013c7:	48 89 e6             	mov    %rsp,%rsi
  4013ca:	e8 01 fb ff ff       	callq  400ed0 <strcasecmp@plt>
  4013cf:	85 c0                	test   %eax,%eax
  4013d1:	74 21                	je     4013f4 <initialize_target+0xf4>
  4013d3:	83 c3 01             	add    $0x1,%ebx
  4013d6:	eb 05                	jmp    4013dd <initialize_target+0xdd>
  4013d8:	bb 00 00 00 00       	mov    $0x0,%ebx
  4013dd:	48 63 c3             	movslq %ebx,%rax
  4013e0:	48 8b 3c c5 80 51 60 	mov    0x605180(,%rax,8),%rdi
  4013e7:	00 
  4013e8:	48 85 ff             	test   %rdi,%rdi
  4013eb:	75 da                	jne    4013c7 <initialize_target+0xc7>
  4013ed:	b8 00 00 00 00       	mov    $0x0,%eax
  4013f2:	eb 05                	jmp    4013f9 <initialize_target+0xf9>
  4013f4:	b8 01 00 00 00       	mov    $0x1,%eax
  4013f9:	85 c0                	test   %eax,%eax
  4013fb:	75 17                	jne    401414 <initialize_target+0x114>
  4013fd:	48 89 e6             	mov    %rsp,%rsi
  401400:	bf f0 36 40 00       	mov    $0x4036f0,%edi
  401405:	e8 56 fb ff ff       	callq  400f60 <printf@plt>
  40140a:	bf 08 00 00 00       	mov    $0x8,%edi
  40140f:	e8 ac fc ff ff       	callq  4010c0 <exit@plt>
  401414:	48 8d bc 24 00 01 00 	lea    0x100(%rsp),%rdi
  40141b:	00 
  40141c:	e8 08 1e 00 00       	callq  403229 <init_driver>
  401421:	85 c0                	test   %eax,%eax
  401423:	79 21                	jns    401446 <initialize_target+0x146>
  401425:	48 8d b4 24 00 01 00 	lea    0x100(%rsp),%rsi
  40142c:	00 
  40142d:	bf 30 37 40 00       	mov    $0x403730,%edi
  401432:	b8 00 00 00 00       	mov    $0x0,%eax
  401437:	e8 24 fb ff ff       	callq  400f60 <printf@plt>
  40143c:	bf 08 00 00 00       	mov    $0x8,%edi
  401441:	e8 7a fc ff ff       	callq  4010c0 <exit@plt>
  401446:	48 81 c4 08 21 00 00 	add    $0x2108,%rsp
  40144d:	5b                   	pop    %rbx
  40144e:	5d                   	pop    %rbp
  40144f:	c3                   	retq   

0000000000401450 <main>:
  401450:	41 56                	push   %r14
  401452:	41 55                	push   %r13
  401454:	41 54                	push   %r12
  401456:	55                   	push   %rbp
  401457:	53                   	push   %rbx
  401458:	41 89 fc             	mov    %edi,%r12d
  40145b:	48 89 f3             	mov    %rsi,%rbx
  40145e:	be 09 25 40 00       	mov    $0x402509,%esi
  401463:	bf 0b 00 00 00       	mov    $0xb,%edi
  401468:	e8 53 fb ff ff       	callq  400fc0 <signal@plt>
  40146d:	be b5 24 40 00       	mov    $0x4024b5,%esi
  401472:	bf 07 00 00 00       	mov    $0x7,%edi
  401477:	e8 44 fb ff ff       	callq  400fc0 <signal@plt>
  40147c:	be 5d 25 40 00       	mov    $0x40255d,%esi
  401481:	bf 04 00 00 00       	mov    $0x4,%edi
  401486:	e8 35 fb ff ff       	callq  400fc0 <signal@plt>
  40148b:	83 3d 96 40 20 00 00 	cmpl   $0x0,0x204096(%rip)        # 605528 <is_checker>
  401492:	74 20                	je     4014b4 <main+0x64>
  401494:	be b1 25 40 00       	mov    $0x4025b1,%esi
  401499:	bf 0e 00 00 00       	mov    $0xe,%edi
  40149e:	e8 1d fb ff ff       	callq  400fc0 <signal@plt>
  4014a3:	bf 05 00 00 00       	mov    $0x5,%edi
  4014a8:	e8 d3 fa ff ff       	callq  400f80 <alarm@plt>
  4014ad:	bd fa 37 40 00       	mov    $0x4037fa,%ebp
  4014b2:	eb 05                	jmp    4014b9 <main+0x69>
  4014b4:	bd f5 37 40 00       	mov    $0x4037f5,%ebp
  4014b9:	48 8b 05 00 40 20 00 	mov    0x204000(%rip),%rax        # 6054c0 <stdin@@GLIBC_2.2.5>
  4014c0:	48 89 05 49 40 20 00 	mov    %rax,0x204049(%rip)        # 605510 <infile>
  4014c7:	41 bd 00 00 00 00    	mov    $0x0,%r13d
  4014cd:	41 be 00 00 00 00    	mov    $0x0,%r14d
  4014d3:	e9 b9 00 00 00       	jmpq   401591 <main+0x141>
  4014d8:	83 e8 61             	sub    $0x61,%eax
  4014db:	3c 10                	cmp    $0x10,%al
  4014dd:	0f 87 93 00 00 00    	ja     401576 <main+0x126>
  4014e3:	0f b6 c0             	movzbl %al,%eax
  4014e6:	ff 24 c5 40 38 40 00 	jmpq   *0x403840(,%rax,8)
  4014ed:	48 8b 3b             	mov    (%rbx),%rdi
  4014f0:	e8 8b fd ff ff       	callq  401280 <usage>
  4014f5:	be bd 3a 40 00       	mov    $0x403abd,%esi
  4014fa:	48 8b 3d c7 3f 20 00 	mov    0x203fc7(%rip),%rdi        # 6054c8 <optarg@@GLIBC_2.2.5>
  401501:	e8 7a fb ff ff       	callq  401080 <fopen@plt>
  401506:	48 89 05 03 40 20 00 	mov    %rax,0x204003(%rip)        # 605510 <infile>
  40150d:	48 85 c0             	test   %rax,%rax
  401510:	75 7f                	jne    401591 <main+0x141>
  401512:	48 8b 15 af 3f 20 00 	mov    0x203faf(%rip),%rdx        # 6054c8 <optarg@@GLIBC_2.2.5>
  401519:	be 02 38 40 00       	mov    $0x403802,%esi
  40151e:	48 8b 3d bb 3f 20 00 	mov    0x203fbb(%rip),%rdi        # 6054e0 <stderr@@GLIBC_2.2.5>
  401525:	e8 c6 fa ff ff       	callq  400ff0 <fprintf@plt>
  40152a:	b8 01 00 00 00       	mov    $0x1,%eax
  40152f:	e9 d6 00 00 00       	jmpq   40160a <main+0x1ba>
  401534:	ba 10 00 00 00       	mov    $0x10,%edx
  401539:	be 00 00 00 00       	mov    $0x0,%esi
  40153e:	48 8b 3d 83 3f 20 00 	mov    0x203f83(%rip),%rdi        # 6054c8 <optarg@@GLIBC_2.2.5>
  401545:	e8 56 fb ff ff       	callq  4010a0 <strtoul@plt>
  40154a:	41 89 c6             	mov    %eax,%r14d
  40154d:	eb 42                	jmp    401591 <main+0x141>
  40154f:	ba 0a 00 00 00       	mov    $0xa,%edx
  401554:	be 00 00 00 00       	mov    $0x0,%esi
  401559:	48 8b 3d 68 3f 20 00 	mov    0x203f68(%rip),%rdi        # 6054c8 <optarg@@GLIBC_2.2.5>
  401560:	e8 9b fa ff ff       	callq  401000 <strtol@plt>
  401565:	41 89 c5             	mov    %eax,%r13d
  401568:	eb 27                	jmp    401591 <main+0x141>
  40156a:	c7 05 34 3f 20 00 00 	movl   $0x0,0x203f34(%rip)        # 6054a8 <notify>
  401571:	00 00 00 
  401574:	eb 1b                	jmp    401591 <main+0x141>
  401576:	40 0f be f6          	movsbl %sil,%esi
  40157a:	bf 1f 38 40 00       	mov    $0x40381f,%edi
  40157f:	b8 00 00 00 00       	mov    $0x0,%eax
  401584:	e8 d7 f9 ff ff       	callq  400f60 <printf@plt>
  401589:	48 8b 3b             	mov    (%rbx),%rdi
  40158c:	e8 ef fc ff ff       	callq  401280 <usage>
  401591:	48 89 ea             	mov    %rbp,%rdx
  401594:	48 89 de             	mov    %rbx,%rsi
  401597:	44 89 e7             	mov    %r12d,%edi
  40159a:	e8 f1 fa ff ff       	callq  401090 <getopt@plt>
  40159f:	89 c6                	mov    %eax,%esi
  4015a1:	3c ff                	cmp    $0xff,%al
  4015a3:	0f 85 2f ff ff ff    	jne    4014d8 <main+0x88>
  4015a9:	be 00 00 00 00       	mov    $0x0,%esi
  4015ae:	44 89 ef             	mov    %r13d,%edi
  4015b1:	e8 4a fd ff ff       	callq  401300 <initialize_target>
  4015b6:	83 3d 6b 3f 20 00 00 	cmpl   $0x0,0x203f6b(%rip)        # 605528 <is_checker>
  4015bd:	74 25                	je     4015e4 <main+0x194>
  4015bf:	44 3b 35 5a 3f 20 00 	cmp    0x203f5a(%rip),%r14d        # 605520 <authkey>
  4015c6:	74 1c                	je     4015e4 <main+0x194>
  4015c8:	44 89 f6             	mov    %r14d,%esi
  4015cb:	bf 58 37 40 00       	mov    $0x403758,%edi
  4015d0:	b8 00 00 00 00       	mov    $0x0,%eax
  4015d5:	e8 86 f9 ff ff       	callq  400f60 <printf@plt>
  4015da:	b8 00 00 00 00       	mov    $0x0,%eax
  4015df:	e8 31 0b 00 00       	callq  402115 <check_fail>
  4015e4:	8b 35 3a 3f 20 00    	mov    0x203f3a(%rip),%esi        # 605524 <cookie>
  4015ea:	bf 32 38 40 00       	mov    $0x403832,%edi
  4015ef:	b8 00 00 00 00       	mov    $0x0,%eax
  4015f4:	e8 67 f9 ff ff       	callq  400f60 <printf@plt>
  4015f9:	48 8b 3d a0 3e 20 00 	mov    0x203ea0(%rip),%rdi        # 6054a0 <buf_offset>
  401600:	e8 b8 10 00 00       	callq  4026bd <stable_launch>
  401605:	b8 00 00 00 00       	mov    $0x0,%eax
  40160a:	5b                   	pop    %rbx
  40160b:	5d                   	pop    %rbp
  40160c:	41 5c                	pop    %r12
  40160e:	41 5d                	pop    %r13
  401610:	41 5e                	pop    %r14
  401612:	c3                   	retq   

0000000000401613 <scramble>:
  401613:	b8 00 00 00 00       	mov    $0x0,%eax
  401618:	eb 11                	jmp    40162b <scramble+0x18>
  40161a:	69 d0 d1 de 00 00    	imul   $0xded1,%eax,%edx
  401620:	01 fa                	add    %edi,%edx
  401622:	89 c1                	mov    %eax,%ecx
  401624:	89 54 8c d0          	mov    %edx,-0x30(%rsp,%rcx,4)
  401628:	83 c0 01             	add    $0x1,%eax
  40162b:	83 f8 09             	cmp    $0x9,%eax
  40162e:	76 ea                	jbe    40161a <scramble+0x7>
  401630:	8b 44 24 d8          	mov    -0x28(%rsp),%eax
  401634:	69 c0 1f 48 00 00    	imul   $0x481f,%eax,%eax
  40163a:	89 44 24 d8          	mov    %eax,-0x28(%rsp)
  40163e:	8b 44 24 d4          	mov    -0x2c(%rsp),%eax
  401642:	69 c0 0b f8 00 00    	imul   $0xf80b,%eax,%eax
  401648:	89 44 24 d4          	mov    %eax,-0x2c(%rsp)
  40164c:	8b 44 24 e4          	mov    -0x1c(%rsp),%eax
  401650:	69 c0 20 73 00 00    	imul   $0x7320,%eax,%eax
  401656:	89 44 24 e4          	mov    %eax,-0x1c(%rsp)
  40165a:	8b 44 24 f4          	mov    -0xc(%rsp),%eax
  40165e:	69 c0 77 59 00 00    	imul   $0x5977,%eax,%eax
  401664:	89 44 24 f4          	mov    %eax,-0xc(%rsp)
  401668:	8b 44 24 ec          	mov    -0x14(%rsp),%eax
  40166c:	69 c0 9f 5c 00 00    	imul   $0x5c9f,%eax,%eax
  401672:	89 44 24 ec          	mov    %eax,-0x14(%rsp)
  401676:	8b 44 24 e4          	mov    -0x1c(%rsp),%eax
  40167a:	69 c0 e9 e7 00 00    	imul   $0xe7e9,%eax,%eax
  401680:	89 44 24 e4          	mov    %eax,-0x1c(%rsp)
  401684:	8b 44 24 f4          	mov    -0xc(%rsp),%eax
  401688:	69 c0 82 cd 00 00    	imul   $0xcd82,%eax,%eax
  40168e:	89 44 24 f4          	mov    %eax,-0xc(%rsp)
  401692:	8b 44 24 e4          	mov    -0x1c(%rsp),%eax
  401696:	69 c0 fd 5e 00 00    	imul   $0x5efd,%eax,%eax
  40169c:	89 44 24 e4          	mov    %eax,-0x1c(%rsp)
  4016a0:	8b 44 24 dc          	mov    -0x24(%rsp),%eax
  4016a4:	69 c0 d1 ce 00 00    	imul   $0xced1,%eax,%eax
  4016aa:	89 44 24 dc          	mov    %eax,-0x24(%rsp)
  4016ae:	8b 44 24 dc          	mov    -0x24(%rsp),%eax
  4016b2:	69 c0 13 49 00 00    	imul   $0x4913,%eax,%eax
  4016b8:	89 44 24 dc          	mov    %eax,-0x24(%rsp)
  4016bc:	8b 44 24 d0          	mov    -0x30(%rsp),%eax
  4016c0:	69 c0 7a 3f 00 00    	imul   $0x3f7a,%eax,%eax
  4016c6:	89 44 24 d0          	mov    %eax,-0x30(%rsp)
  4016ca:	8b 44 24 ec          	mov    -0x14(%rsp),%eax
  4016ce:	69 c0 d5 e2 00 00    	imul   $0xe2d5,%eax,%eax
  4016d4:	89 44 24 ec          	mov    %eax,-0x14(%rsp)
  4016d8:	8b 44 24 d4          	mov    -0x2c(%rsp),%eax
  4016dc:	69 c0 78 fa 00 00    	imul   $0xfa78,%eax,%eax
  4016e2:	89 44 24 d4          	mov    %eax,-0x2c(%rsp)
  4016e6:	8b 44 24 f0          	mov    -0x10(%rsp),%eax
  4016ea:	69 c0 d7 e1 00 00    	imul   $0xe1d7,%eax,%eax
  4016f0:	89 44 24 f0          	mov    %eax,-0x10(%rsp)
  4016f4:	8b 44 24 f0          	mov    -0x10(%rsp),%eax
  4016f8:	69 c0 10 5d 00 00    	imul   $0x5d10,%eax,%eax
  4016fe:	89 44 24 f0          	mov    %eax,-0x10(%rsp)
  401702:	8b 44 24 e4          	mov    -0x1c(%rsp),%eax
  401706:	69 c0 4d b7 00 00    	imul   $0xb74d,%eax,%eax
  40170c:	89 44 24 e4          	mov    %eax,-0x1c(%rsp)
  401710:	8b 44 24 f0          	mov    -0x10(%rsp),%eax
  401714:	69 c0 ba b1 00 00    	imul   $0xb1ba,%eax,%eax
  40171a:	89 44 24 f0          	mov    %eax,-0x10(%rsp)
  40171e:	8b 44 24 d4          	mov    -0x2c(%rsp),%eax
  401722:	69 c0 68 d5 00 00    	imul   $0xd568,%eax,%eax
  401728:	89 44 24 d4          	mov    %eax,-0x2c(%rsp)
  40172c:	8b 44 24 d4          	mov    -0x2c(%rsp),%eax
  401730:	69 c0 9b e4 00 00    	imul   $0xe49b,%eax,%eax
  401736:	89 44 24 d4          	mov    %eax,-0x2c(%rsp)
  40173a:	8b 44 24 ec          	mov    -0x14(%rsp),%eax
  40173e:	69 c0 2a e9 00 00    	imul   $0xe92a,%eax,%eax
  401744:	89 44 24 ec          	mov    %eax,-0x14(%rsp)
  401748:	8b 44 24 e4          	mov    -0x1c(%rsp),%eax
  40174c:	69 c0 f1 63 00 00    	imul   $0x63f1,%eax,%eax
  401752:	89 44 24 e4          	mov    %eax,-0x1c(%rsp)
  401756:	8b 44 24 dc          	mov    -0x24(%rsp),%eax
  40175a:	69 c0 78 d8 00 00    	imul   $0xd878,%eax,%eax
  401760:	89 44 24 dc          	mov    %eax,-0x24(%rsp)
  401764:	8b 44 24 d0          	mov    -0x30(%rsp),%eax
  401768:	69 c0 58 b3 00 00    	imul   $0xb358,%eax,%eax
  40176e:	89 44 24 d0          	mov    %eax,-0x30(%rsp)
  401772:	8b 44 24 e4          	mov    -0x1c(%rsp),%eax
  401776:	69 c0 07 c6 00 00    	imul   $0xc607,%eax,%eax
  40177c:	89 44 24 e4          	mov    %eax,-0x1c(%rsp)
  401780:	8b 44 24 d8          	mov    -0x28(%rsp),%eax
  401784:	69 c0 c3 3b 00 00    	imul   $0x3bc3,%eax,%eax
  40178a:	89 44 24 d8          	mov    %eax,-0x28(%rsp)
  40178e:	8b 44 24 f4          	mov    -0xc(%rsp),%eax
  401792:	69 c0 e5 68 00 00    	imul   $0x68e5,%eax,%eax
  401798:	89 44 24 f4          	mov    %eax,-0xc(%rsp)
  40179c:	8b 44 24 f0          	mov    -0x10(%rsp),%eax
  4017a0:	69 c0 9d 8c 00 00    	imul   $0x8c9d,%eax,%eax
  4017a6:	89 44 24 f0          	mov    %eax,-0x10(%rsp)
  4017aa:	8b 44 24 ec          	mov    -0x14(%rsp),%eax
  4017ae:	69 c0 e4 82 00 00    	imul   $0x82e4,%eax,%eax
  4017b4:	89 44 24 ec          	mov    %eax,-0x14(%rsp)
  4017b8:	8b 44 24 e4          	mov    -0x1c(%rsp),%eax
  4017bc:	69 c0 66 56 00 00    	imul   $0x5666,%eax,%eax
  4017c2:	89 44 24 e4          	mov    %eax,-0x1c(%rsp)
  4017c6:	8b 44 24 d0          	mov    -0x30(%rsp),%eax
  4017ca:	69 c0 92 5f 00 00    	imul   $0x5f92,%eax,%eax
  4017d0:	89 44 24 d0          	mov    %eax,-0x30(%rsp)
  4017d4:	8b 44 24 e4          	mov    -0x1c(%rsp),%eax
  4017d8:	69 c0 87 ca 00 00    	imul   $0xca87,%eax,%eax
  4017de:	89 44 24 e4          	mov    %eax,-0x1c(%rsp)
  4017e2:	8b 44 24 f0          	mov    -0x10(%rsp),%eax
  4017e6:	69 c0 a6 58 00 00    	imul   $0x58a6,%eax,%eax
  4017ec:	89 44 24 f0          	mov    %eax,-0x10(%rsp)
  4017f0:	8b 44 24 e0          	mov    -0x20(%rsp),%eax
  4017f4:	69 c0 38 c6 00 00    	imul   $0xc638,%eax,%eax
  4017fa:	89 44 24 e0          	mov    %eax,-0x20(%rsp)
  4017fe:	8b 44 24 dc          	mov    -0x24(%rsp),%eax
  401802:	69 c0 1d a1 00 00    	imul   $0xa11d,%eax,%eax
  401808:	89 44 24 dc          	mov    %eax,-0x24(%rsp)
  40180c:	8b 44 24 dc          	mov    -0x24(%rsp),%eax
  401810:	69 c0 ee 5c 00 00    	imul   $0x5cee,%eax,%eax
  401816:	89 44 24 dc          	mov    %eax,-0x24(%rsp)
  40181a:	8b 44 24 f4          	mov    -0xc(%rsp),%eax
  40181e:	69 c0 0e ec 00 00    	imul   $0xec0e,%eax,%eax
  401824:	89 44 24 f4          	mov    %eax,-0xc(%rsp)
  401828:	8b 44 24 ec          	mov    -0x14(%rsp),%eax
  40182c:	69 c0 5b 5b 00 00    	imul   $0x5b5b,%eax,%eax
  401832:	89 44 24 ec          	mov    %eax,-0x14(%rsp)
  401836:	8b 44 24 ec          	mov    -0x14(%rsp),%eax
  40183a:	69 c0 52 f2 00 00    	imul   $0xf252,%eax,%eax
  401840:	89 44 24 ec          	mov    %eax,-0x14(%rsp)
  401844:	8b 44 24 dc          	mov    -0x24(%rsp),%eax
  401848:	69 c0 fd fb 00 00    	imul   $0xfbfd,%eax,%eax
  40184e:	89 44 24 dc          	mov    %eax,-0x24(%rsp)
  401852:	8b 44 24 e0          	mov    -0x20(%rsp),%eax
  401856:	69 c0 dd 90 00 00    	imul   $0x90dd,%eax,%eax
  40185c:	89 44 24 e0          	mov    %eax,-0x20(%rsp)
  401860:	8b 44 24 e0          	mov    -0x20(%rsp),%eax
  401864:	69 c0 74 c7 00 00    	imul   $0xc774,%eax,%eax
  40186a:	89 44 24 e0          	mov    %eax,-0x20(%rsp)
  40186e:	8b 44 24 d4          	mov    -0x2c(%rsp),%eax
  401872:	69 c0 fd b2 00 00    	imul   $0xb2fd,%eax,%eax
  401878:	89 44 24 d4          	mov    %eax,-0x2c(%rsp)
  40187c:	8b 44 24 d8          	mov    -0x28(%rsp),%eax
  401880:	69 c0 7c 45 00 00    	imul   $0x457c,%eax,%eax
  401886:	89 44 24 d8          	mov    %eax,-0x28(%rsp)
  40188a:	8b 44 24 e0          	mov    -0x20(%rsp),%eax
  40188e:	69 c0 26 db 00 00    	imul   $0xdb26,%eax,%eax
  401894:	89 44 24 e0          	mov    %eax,-0x20(%rsp)
  401898:	8b 44 24 f0          	mov    -0x10(%rsp),%eax
  40189c:	69 c0 9d 9a 00 00    	imul   $0x9a9d,%eax,%eax
  4018a2:	89 44 24 f0          	mov    %eax,-0x10(%rsp)
  4018a6:	8b 44 24 e4          	mov    -0x1c(%rsp),%eax
  4018aa:	69 c0 59 4f 00 00    	imul   $0x4f59,%eax,%eax
  4018b0:	89 44 24 e4          	mov    %eax,-0x1c(%rsp)
  4018b4:	8b 44 24 e4          	mov    -0x1c(%rsp),%eax
  4018b8:	69 c0 98 51 00 00    	imul   $0x5198,%eax,%eax
  4018be:	89 44 24 e4          	mov    %eax,-0x1c(%rsp)
  4018c2:	8b 44 24 d0          	mov    -0x30(%rsp),%eax
  4018c6:	69 c0 67 e1 00 00    	imul   $0xe167,%eax,%eax
  4018cc:	89 44 24 d0          	mov    %eax,-0x30(%rsp)
  4018d0:	8b 44 24 e0          	mov    -0x20(%rsp),%eax
  4018d4:	69 c0 0d d6 00 00    	imul   $0xd60d,%eax,%eax
  4018da:	89 44 24 e0          	mov    %eax,-0x20(%rsp)
  4018de:	8b 44 24 f4          	mov    -0xc(%rsp),%eax
  4018e2:	69 c0 a3 c2 00 00    	imul   $0xc2a3,%eax,%eax
  4018e8:	89 44 24 f4          	mov    %eax,-0xc(%rsp)
  4018ec:	8b 44 24 f0          	mov    -0x10(%rsp),%eax
  4018f0:	69 c0 cb 0c 00 00    	imul   $0xccb,%eax,%eax
  4018f6:	89 44 24 f0          	mov    %eax,-0x10(%rsp)
  4018fa:	8b 44 24 d0          	mov    -0x30(%rsp),%eax
  4018fe:	69 c0 da f3 00 00    	imul   $0xf3da,%eax,%eax
  401904:	89 44 24 d0          	mov    %eax,-0x30(%rsp)
  401908:	8b 44 24 dc          	mov    -0x24(%rsp),%eax
  40190c:	69 c0 39 73 00 00    	imul   $0x7339,%eax,%eax
  401912:	89 44 24 dc          	mov    %eax,-0x24(%rsp)
  401916:	8b 44 24 e8          	mov    -0x18(%rsp),%eax
  40191a:	69 c0 da 76 00 00    	imul   $0x76da,%eax,%eax
  401920:	89 44 24 e8          	mov    %eax,-0x18(%rsp)
  401924:	8b 44 24 e4          	mov    -0x1c(%rsp),%eax
  401928:	69 c0 86 9e 00 00    	imul   $0x9e86,%eax,%eax
  40192e:	89 44 24 e4          	mov    %eax,-0x1c(%rsp)
  401932:	8b 44 24 e0          	mov    -0x20(%rsp),%eax
  401936:	69 c0 f6 a6 00 00    	imul   $0xa6f6,%eax,%eax
  40193c:	89 44 24 e0          	mov    %eax,-0x20(%rsp)
  401940:	8b 44 24 e4          	mov    -0x1c(%rsp),%eax
  401944:	69 c0 79 01 00 00    	imul   $0x179,%eax,%eax
  40194a:	89 44 24 e4          	mov    %eax,-0x1c(%rsp)
  40194e:	8b 44 24 e4          	mov    -0x1c(%rsp),%eax
  401952:	69 c0 0b ba 00 00    	imul   $0xba0b,%eax,%eax
  401958:	89 44 24 e4          	mov    %eax,-0x1c(%rsp)
  40195c:	8b 44 24 f0          	mov    -0x10(%rsp),%eax
  401960:	69 c0 d5 8f 00 00    	imul   $0x8fd5,%eax,%eax
  401966:	89 44 24 f0          	mov    %eax,-0x10(%rsp)
  40196a:	8b 44 24 f4          	mov    -0xc(%rsp),%eax
  40196e:	69 c0 d8 e2 00 00    	imul   $0xe2d8,%eax,%eax
  401974:	89 44 24 f4          	mov    %eax,-0xc(%rsp)
  401978:	8b 44 24 f4          	mov    -0xc(%rsp),%eax
  40197c:	69 c0 ea cf 00 00    	imul   $0xcfea,%eax,%eax
  401982:	89 44 24 f4          	mov    %eax,-0xc(%rsp)
  401986:	8b 44 24 d8          	mov    -0x28(%rsp),%eax
  40198a:	69 c0 98 8f 00 00    	imul   $0x8f98,%eax,%eax
  401990:	89 44 24 d8          	mov    %eax,-0x28(%rsp)
  401994:	8b 44 24 ec          	mov    -0x14(%rsp),%eax
  401998:	69 c0 30 da 00 00    	imul   $0xda30,%eax,%eax
  40199e:	89 44 24 ec          	mov    %eax,-0x14(%rsp)
  4019a2:	8b 44 24 ec          	mov    -0x14(%rsp),%eax
  4019a6:	69 c0 52 39 00 00    	imul   $0x3952,%eax,%eax
  4019ac:	89 44 24 ec          	mov    %eax,-0x14(%rsp)
  4019b0:	8b 44 24 d0          	mov    -0x30(%rsp),%eax
  4019b4:	69 c0 83 f3 00 00    	imul   $0xf383,%eax,%eax
  4019ba:	89 44 24 d0          	mov    %eax,-0x30(%rsp)
  4019be:	8b 44 24 d8          	mov    -0x28(%rsp),%eax
  4019c2:	69 c0 39 e3 00 00    	imul   $0xe339,%eax,%eax
  4019c8:	89 44 24 d8          	mov    %eax,-0x28(%rsp)
  4019cc:	8b 44 24 ec          	mov    -0x14(%rsp),%eax
  4019d0:	69 c0 a8 aa 00 00    	imul   $0xaaa8,%eax,%eax
  4019d6:	89 44 24 ec          	mov    %eax,-0x14(%rsp)
  4019da:	8b 44 24 e4          	mov    -0x1c(%rsp),%eax
  4019de:	69 c0 75 68 00 00    	imul   $0x6875,%eax,%eax
  4019e4:	89 44 24 e4          	mov    %eax,-0x1c(%rsp)
  4019e8:	8b 44 24 ec          	mov    -0x14(%rsp),%eax
  4019ec:	69 c0 40 bd 00 00    	imul   $0xbd40,%eax,%eax
  4019f2:	89 44 24 ec          	mov    %eax,-0x14(%rsp)
  4019f6:	8b 44 24 f4          	mov    -0xc(%rsp),%eax
  4019fa:	69 c0 17 8d 00 00    	imul   $0x8d17,%eax,%eax
  401a00:	89 44 24 f4          	mov    %eax,-0xc(%rsp)
  401a04:	8b 44 24 dc          	mov    -0x24(%rsp),%eax
  401a08:	69 c0 06 e7 00 00    	imul   $0xe706,%eax,%eax
  401a0e:	89 44 24 dc          	mov    %eax,-0x24(%rsp)
  401a12:	8b 44 24 e4          	mov    -0x1c(%rsp),%eax
  401a16:	69 c0 c1 c1 00 00    	imul   $0xc1c1,%eax,%eax
  401a1c:	89 44 24 e4          	mov    %eax,-0x1c(%rsp)
  401a20:	8b 44 24 dc          	mov    -0x24(%rsp),%eax
  401a24:	69 c0 00 8e 00 00    	imul   $0x8e00,%eax,%eax
  401a2a:	89 44 24 dc          	mov    %eax,-0x24(%rsp)
  401a2e:	8b 44 24 d0          	mov    -0x30(%rsp),%eax
  401a32:	69 c0 74 2f 00 00    	imul   $0x2f74,%eax,%eax
  401a38:	89 44 24 d0          	mov    %eax,-0x30(%rsp)
  401a3c:	8b 44 24 d8          	mov    -0x28(%rsp),%eax
  401a40:	69 c0 ff 10 00 00    	imul   $0x10ff,%eax,%eax
  401a46:	89 44 24 d8          	mov    %eax,-0x28(%rsp)
  401a4a:	8b 44 24 d4          	mov    -0x2c(%rsp),%eax
  401a4e:	69 c0 49 48 00 00    	imul   $0x4849,%eax,%eax
  401a54:	89 44 24 d4          	mov    %eax,-0x2c(%rsp)
  401a58:	8b 44 24 e4          	mov    -0x1c(%rsp),%eax
  401a5c:	69 c0 7d 44 00 00    	imul   $0x447d,%eax,%eax
  401a62:	89 44 24 e4          	mov    %eax,-0x1c(%rsp)
  401a66:	8b 44 24 d4          	mov    -0x2c(%rsp),%eax
  401a6a:	69 c0 6c 02 00 00    	imul   $0x26c,%eax,%eax
  401a70:	89 44 24 d4          	mov    %eax,-0x2c(%rsp)
  401a74:	8b 44 24 d0          	mov    -0x30(%rsp),%eax
  401a78:	69 c0 e0 48 00 00    	imul   $0x48e0,%eax,%eax
  401a7e:	89 44 24 d0          	mov    %eax,-0x30(%rsp)
  401a82:	8b 44 24 ec          	mov    -0x14(%rsp),%eax
  401a86:	69 c0 eb ce 00 00    	imul   $0xceeb,%eax,%eax
  401a8c:	89 44 24 ec          	mov    %eax,-0x14(%rsp)
  401a90:	8b 44 24 d0          	mov    -0x30(%rsp),%eax
  401a94:	69 c0 b4 37 00 00    	imul   $0x37b4,%eax,%eax
  401a9a:	89 44 24 d0          	mov    %eax,-0x30(%rsp)
  401a9e:	8b 44 24 d0          	mov    -0x30(%rsp),%eax
  401aa2:	69 c0 b1 3c 00 00    	imul   $0x3cb1,%eax,%eax
  401aa8:	89 44 24 d0          	mov    %eax,-0x30(%rsp)
  401aac:	8b 44 24 e8          	mov    -0x18(%rsp),%eax
  401ab0:	69 c0 37 89 00 00    	imul   $0x8937,%eax,%eax
  401ab6:	89 44 24 e8          	mov    %eax,-0x18(%rsp)
  401aba:	8b 44 24 d8          	mov    -0x28(%rsp),%eax
  401abe:	6b c0 3d             	imul   $0x3d,%eax,%eax
  401ac1:	89 44 24 d8          	mov    %eax,-0x28(%rsp)
  401ac5:	8b 44 24 f0          	mov    -0x10(%rsp),%eax
  401ac9:	69 c0 75 84 00 00    	imul   $0x8475,%eax,%eax
  401acf:	89 44 24 f0          	mov    %eax,-0x10(%rsp)
  401ad3:	8b 44 24 f4          	mov    -0xc(%rsp),%eax
  401ad7:	69 c0 3f a2 00 00    	imul   $0xa23f,%eax,%eax
  401add:	89 44 24 f4          	mov    %eax,-0xc(%rsp)
  401ae1:	8b 44 24 d0          	mov    -0x30(%rsp),%eax
  401ae5:	69 c0 61 c1 00 00    	imul   $0xc161,%eax,%eax
  401aeb:	89 44 24 d0          	mov    %eax,-0x30(%rsp)
  401aef:	8b 44 24 e0          	mov    -0x20(%rsp),%eax
  401af3:	69 c0 fa 53 00 00    	imul   $0x53fa,%eax,%eax
  401af9:	89 44 24 e0          	mov    %eax,-0x20(%rsp)
  401afd:	8b 44 24 ec          	mov    -0x14(%rsp),%eax
  401b01:	69 c0 cd df 00 00    	imul   $0xdfcd,%eax,%eax
  401b07:	89 44 24 ec          	mov    %eax,-0x14(%rsp)
  401b0b:	8b 44 24 f0          	mov    -0x10(%rsp),%eax
  401b0f:	69 c0 38 6d 00 00    	imul   $0x6d38,%eax,%eax
  401b15:	89 44 24 f0          	mov    %eax,-0x10(%rsp)
  401b19:	8b 44 24 ec          	mov    -0x14(%rsp),%eax
  401b1d:	69 c0 bb 95 00 00    	imul   $0x95bb,%eax,%eax
  401b23:	89 44 24 ec          	mov    %eax,-0x14(%rsp)
  401b27:	8b 44 24 e4          	mov    -0x1c(%rsp),%eax
  401b2b:	69 c0 b6 d1 00 00    	imul   $0xd1b6,%eax,%eax
  401b31:	89 44 24 e4          	mov    %eax,-0x1c(%rsp)
  401b35:	8b 44 24 f0          	mov    -0x10(%rsp),%eax
  401b39:	69 c0 62 8d 00 00    	imul   $0x8d62,%eax,%eax
  401b3f:	89 44 24 f0          	mov    %eax,-0x10(%rsp)
  401b43:	8b 44 24 e8          	mov    -0x18(%rsp),%eax
  401b47:	69 c0 e6 f8 00 00    	imul   $0xf8e6,%eax,%eax
  401b4d:	89 44 24 e8          	mov    %eax,-0x18(%rsp)
  401b51:	8b 44 24 f4          	mov    -0xc(%rsp),%eax
  401b55:	89 c2                	mov    %eax,%edx
  401b57:	c1 e2 05             	shl    $0x5,%edx
  401b5a:	c1 e0 0c             	shl    $0xc,%eax
  401b5d:	29 d0                	sub    %edx,%eax
  401b5f:	89 44 24 f4          	mov    %eax,-0xc(%rsp)
  401b63:	8b 44 24 d4          	mov    -0x2c(%rsp),%eax
  401b67:	69 c0 a5 12 00 00    	imul   $0x12a5,%eax,%eax
  401b6d:	89 44 24 d4          	mov    %eax,-0x2c(%rsp)
  401b71:	8b 44 24 e0          	mov    -0x20(%rsp),%eax
  401b75:	69 c0 f5 79 00 00    	imul   $0x79f5,%eax,%eax
  401b7b:	89 44 24 e0          	mov    %eax,-0x20(%rsp)
  401b7f:	8b 44 24 dc          	mov    -0x24(%rsp),%eax
  401b83:	69 c0 f1 29 00 00    	imul   $0x29f1,%eax,%eax
  401b89:	89 44 24 dc          	mov    %eax,-0x24(%rsp)
  401b8d:	8b 44 24 dc          	mov    -0x24(%rsp),%eax
  401b91:	69 c0 7d f4 00 00    	imul   $0xf47d,%eax,%eax
  401b97:	89 44 24 dc          	mov    %eax,-0x24(%rsp)
  401b9b:	8b 44 24 d0          	mov    -0x30(%rsp),%eax
  401b9f:	69 c0 a5 49 00 00    	imul   $0x49a5,%eax,%eax
  401ba5:	89 44 24 d0          	mov    %eax,-0x30(%rsp)
  401ba9:	8b 44 24 d0          	mov    -0x30(%rsp),%eax
  401bad:	69 c0 83 b7 00 00    	imul   $0xb783,%eax,%eax
  401bb3:	89 44 24 d0          	mov    %eax,-0x30(%rsp)
  401bb7:	8b 44 24 ec          	mov    -0x14(%rsp),%eax
  401bbb:	69 c0 6e e4 00 00    	imul   $0xe46e,%eax,%eax
  401bc1:	89 44 24 ec          	mov    %eax,-0x14(%rsp)
  401bc5:	8b 44 24 e8          	mov    -0x18(%rsp),%eax
  401bc9:	69 c0 e4 4f 00 00    	imul   $0x4fe4,%eax,%eax
  401bcf:	89 44 24 e8          	mov    %eax,-0x18(%rsp)
  401bd3:	8b 44 24 e8          	mov    -0x18(%rsp),%eax
  401bd7:	69 c0 47 c8 00 00    	imul   $0xc847,%eax,%eax
  401bdd:	89 44 24 e8          	mov    %eax,-0x18(%rsp)
  401be1:	8b 44 24 f4          	mov    -0xc(%rsp),%eax
  401be5:	69 c0 d7 bb 00 00    	imul   $0xbbd7,%eax,%eax
  401beb:	89 44 24 f4          	mov    %eax,-0xc(%rsp)
  401bef:	8b 44 24 e4          	mov    -0x1c(%rsp),%eax
  401bf3:	69 c0 7e 20 00 00    	imul   $0x207e,%eax,%eax
  401bf9:	89 44 24 e4          	mov    %eax,-0x1c(%rsp)
  401bfd:	8b 44 24 e8          	mov    -0x18(%rsp),%eax
  401c01:	69 c0 00 eb 00 00    	imul   $0xeb00,%eax,%eax
  401c07:	89 44 24 e8          	mov    %eax,-0x18(%rsp)
  401c0b:	8b 44 24 f0          	mov    -0x10(%rsp),%eax
  401c0f:	69 c0 cc 2b 00 00    	imul   $0x2bcc,%eax,%eax
  401c15:	89 44 24 f0          	mov    %eax,-0x10(%rsp)
  401c19:	8b 44 24 d0          	mov    -0x30(%rsp),%eax
  401c1d:	69 c0 56 c6 00 00    	imul   $0xc656,%eax,%eax
  401c23:	89 44 24 d0          	mov    %eax,-0x30(%rsp)
  401c27:	8b 44 24 e4          	mov    -0x1c(%rsp),%eax
  401c2b:	69 c0 a4 4e 00 00    	imul   $0x4ea4,%eax,%eax
  401c31:	89 44 24 e4          	mov    %eax,-0x1c(%rsp)
  401c35:	8b 44 24 d4          	mov    -0x2c(%rsp),%eax
  401c39:	69 c0 84 ec 00 00    	imul   $0xec84,%eax,%eax
  401c3f:	89 44 24 d4          	mov    %eax,-0x2c(%rsp)
  401c43:	8b 44 24 dc          	mov    -0x24(%rsp),%eax
  401c47:	69 c0 cc 1d 00 00    	imul   $0x1dcc,%eax,%eax
  401c4d:	89 44 24 dc          	mov    %eax,-0x24(%rsp)
  401c51:	8b 44 24 d4          	mov    -0x2c(%rsp),%eax
  401c55:	69 c0 9f b0 00 00    	imul   $0xb09f,%eax,%eax
  401c5b:	89 44 24 d4          	mov    %eax,-0x2c(%rsp)
  401c5f:	8b 44 24 d0          	mov    -0x30(%rsp),%eax
  401c63:	69 c0 a6 69 00 00    	imul   $0x69a6,%eax,%eax
  401c69:	89 44 24 d0          	mov    %eax,-0x30(%rsp)
  401c6d:	8b 44 24 d4          	mov    -0x2c(%rsp),%eax
  401c71:	69 c0 ec 71 00 00    	imul   $0x71ec,%eax,%eax
  401c77:	89 44 24 d4          	mov    %eax,-0x2c(%rsp)
  401c7b:	8b 44 24 f0          	mov    -0x10(%rsp),%eax
  401c7f:	69 c0 0f 1e 00 00    	imul   $0x1e0f,%eax,%eax
  401c85:	89 44 24 f0          	mov    %eax,-0x10(%rsp)
  401c89:	8b 44 24 dc          	mov    -0x24(%rsp),%eax
  401c8d:	69 c0 2f 9f 00 00    	imul   $0x9f2f,%eax,%eax
  401c93:	89 44 24 dc          	mov    %eax,-0x24(%rsp)
  401c97:	8b 44 24 e0          	mov    -0x20(%rsp),%eax
  401c9b:	69 c0 55 a2 00 00    	imul   $0xa255,%eax,%eax
  401ca1:	89 44 24 e0          	mov    %eax,-0x20(%rsp)
  401ca5:	8b 44 24 d0          	mov    -0x30(%rsp),%eax
  401ca9:	69 c0 e5 3a 00 00    	imul   $0x3ae5,%eax,%eax
  401caf:	89 44 24 d0          	mov    %eax,-0x30(%rsp)
  401cb3:	8b 44 24 e4          	mov    -0x1c(%rsp),%eax
  401cb7:	69 c0 c6 1e 00 00    	imul   $0x1ec6,%eax,%eax
  401cbd:	89 44 24 e4          	mov    %eax,-0x1c(%rsp)
  401cc1:	8b 44 24 e8          	mov    -0x18(%rsp),%eax
  401cc5:	69 c0 1b a0 00 00    	imul   $0xa01b,%eax,%eax
  401ccb:	89 44 24 e8          	mov    %eax,-0x18(%rsp)
  401ccf:	8b 44 24 e4          	mov    -0x1c(%rsp),%eax
  401cd3:	69 c0 50 48 00 00    	imul   $0x4850,%eax,%eax
  401cd9:	89 44 24 e4          	mov    %eax,-0x1c(%rsp)
  401cdd:	8b 44 24 e0          	mov    -0x20(%rsp),%eax
  401ce1:	69 c0 79 31 00 00    	imul   $0x3179,%eax,%eax
  401ce7:	89 44 24 e0          	mov    %eax,-0x20(%rsp)
  401ceb:	8b 44 24 d4          	mov    -0x2c(%rsp),%eax
  401cef:	69 c0 7d 03 00 00    	imul   $0x37d,%eax,%eax
  401cf5:	89 44 24 d4          	mov    %eax,-0x2c(%rsp)
  401cf9:	8b 44 24 dc          	mov    -0x24(%rsp),%eax
  401cfd:	69 c0 ce 98 00 00    	imul   $0x98ce,%eax,%eax
  401d03:	89 44 24 dc          	mov    %eax,-0x24(%rsp)
  401d07:	8b 44 24 e8          	mov    -0x18(%rsp),%eax
  401d0b:	69 c0 06 ce 00 00    	imul   $0xce06,%eax,%eax
  401d11:	89 44 24 e8          	mov    %eax,-0x18(%rsp)
  401d15:	8b 44 24 e0          	mov    -0x20(%rsp),%eax
  401d19:	69 c0 6a b3 00 00    	imul   $0xb36a,%eax,%eax
  401d1f:	89 44 24 e0          	mov    %eax,-0x20(%rsp)
  401d23:	8b 44 24 f4          	mov    -0xc(%rsp),%eax
  401d27:	69 c0 cc eb 00 00    	imul   $0xebcc,%eax,%eax
  401d2d:	89 44 24 f4          	mov    %eax,-0xc(%rsp)
  401d31:	8b 44 24 e8          	mov    -0x18(%rsp),%eax
  401d35:	69 c0 90 33 00 00    	imul   $0x3390,%eax,%eax
  401d3b:	89 44 24 e8          	mov    %eax,-0x18(%rsp)
  401d3f:	8b 44 24 d8          	mov    -0x28(%rsp),%eax
  401d43:	69 c0 26 09 00 00    	imul   $0x926,%eax,%eax
  401d49:	89 44 24 d8          	mov    %eax,-0x28(%rsp)
  401d4d:	8b 44 24 e4          	mov    -0x1c(%rsp),%eax
  401d51:	69 c0 be 08 00 00    	imul   $0x8be,%eax,%eax
  401d57:	89 44 24 e4          	mov    %eax,-0x1c(%rsp)
  401d5b:	8b 44 24 dc          	mov    -0x24(%rsp),%eax
  401d5f:	69 c0 ec ce 00 00    	imul   $0xceec,%eax,%eax
  401d65:	89 44 24 dc          	mov    %eax,-0x24(%rsp)
  401d69:	8b 44 24 f4          	mov    -0xc(%rsp),%eax
  401d6d:	69 c0 b2 29 00 00    	imul   $0x29b2,%eax,%eax
  401d73:	89 44 24 f4          	mov    %eax,-0xc(%rsp)
  401d77:	8b 44 24 d4          	mov    -0x2c(%rsp),%eax
  401d7b:	69 c0 01 97 00 00    	imul   $0x9701,%eax,%eax
  401d81:	89 44 24 d4          	mov    %eax,-0x2c(%rsp)
  401d85:	8b 44 24 d4          	mov    -0x2c(%rsp),%eax
  401d89:	69 c0 dd db 00 00    	imul   $0xdbdd,%eax,%eax
  401d8f:	89 44 24 d4          	mov    %eax,-0x2c(%rsp)
  401d93:	8b 44 24 d0          	mov    -0x30(%rsp),%eax
  401d97:	69 c0 54 5b 00 00    	imul   $0x5b54,%eax,%eax
  401d9d:	89 44 24 d0          	mov    %eax,-0x30(%rsp)
  401da1:	8b 44 24 f0          	mov    -0x10(%rsp),%eax
  401da5:	69 c0 0c f5 00 00    	imul   $0xf50c,%eax,%eax
  401dab:	89 44 24 f0          	mov    %eax,-0x10(%rsp)
  401daf:	8b 44 24 e4          	mov    -0x1c(%rsp),%eax
  401db3:	69 c0 13 07 00 00    	imul   $0x713,%eax,%eax
  401db9:	89 44 24 e4          	mov    %eax,-0x1c(%rsp)
  401dbd:	8b 44 24 d8          	mov    -0x28(%rsp),%eax
  401dc1:	69 c0 c0 17 00 00    	imul   $0x17c0,%eax,%eax
  401dc7:	89 44 24 d8          	mov    %eax,-0x28(%rsp)
  401dcb:	8b 44 24 f4          	mov    -0xc(%rsp),%eax
  401dcf:	69 c0 54 1e 00 00    	imul   $0x1e54,%eax,%eax
  401dd5:	89 44 24 f4          	mov    %eax,-0xc(%rsp)
  401dd9:	8b 44 24 dc          	mov    -0x24(%rsp),%eax
  401ddd:	69 c0 b1 5c 00 00    	imul   $0x5cb1,%eax,%eax
  401de3:	89 44 24 dc          	mov    %eax,-0x24(%rsp)
  401de7:	8b 44 24 f4          	mov    -0xc(%rsp),%eax
  401deb:	69 c0 e1 35 00 00    	imul   $0x35e1,%eax,%eax
  401df1:	89 44 24 f4          	mov    %eax,-0xc(%rsp)
  401df5:	8b 44 24 e4          	mov    -0x1c(%rsp),%eax
  401df9:	69 c0 2d d8 00 00    	imul   $0xd82d,%eax,%eax
  401dff:	89 44 24 e4          	mov    %eax,-0x1c(%rsp)
  401e03:	8b 44 24 ec          	mov    -0x14(%rsp),%eax
  401e07:	69 c0 25 74 00 00    	imul   $0x7425,%eax,%eax
  401e0d:	89 44 24 ec          	mov    %eax,-0x14(%rsp)
  401e11:	8b 44 24 e4          	mov    -0x1c(%rsp),%eax
  401e15:	69 c0 20 77 00 00    	imul   $0x7720,%eax,%eax
  401e1b:	89 44 24 e4          	mov    %eax,-0x1c(%rsp)
  401e1f:	8b 44 24 e0          	mov    -0x20(%rsp),%eax
  401e23:	69 c0 3a b1 00 00    	imul   $0xb13a,%eax,%eax
  401e29:	89 44 24 e0          	mov    %eax,-0x20(%rsp)
  401e2d:	8b 44 24 e8          	mov    -0x18(%rsp),%eax
  401e31:	69 c0 80 a4 00 00    	imul   $0xa480,%eax,%eax
  401e37:	89 44 24 e8          	mov    %eax,-0x18(%rsp)
  401e3b:	8b 44 24 d0          	mov    -0x30(%rsp),%eax
  401e3f:	69 c0 cb 27 00 00    	imul   $0x27cb,%eax,%eax
  401e45:	89 44 24 d0          	mov    %eax,-0x30(%rsp)
  401e49:	8b 44 24 d4          	mov    -0x2c(%rsp),%eax
  401e4d:	69 c0 68 f1 00 00    	imul   $0xf168,%eax,%eax
  401e53:	89 44 24 d4          	mov    %eax,-0x2c(%rsp)
  401e57:	8b 44 24 ec          	mov    -0x14(%rsp),%eax
  401e5b:	69 c0 c9 32 00 00    	imul   $0x32c9,%eax,%eax
  401e61:	89 44 24 ec          	mov    %eax,-0x14(%rsp)
  401e65:	8b 44 24 d0          	mov    -0x30(%rsp),%eax
  401e69:	69 c0 94 74 00 00    	imul   $0x7494,%eax,%eax
  401e6f:	89 44 24 d0          	mov    %eax,-0x30(%rsp)
  401e73:	8b 44 24 d8          	mov    -0x28(%rsp),%eax
  401e77:	69 c0 3e 49 00 00    	imul   $0x493e,%eax,%eax
  401e7d:	89 44 24 d8          	mov    %eax,-0x28(%rsp)
  401e81:	8b 44 24 e4          	mov    -0x1c(%rsp),%eax
  401e85:	69 c0 c2 31 00 00    	imul   $0x31c2,%eax,%eax
  401e8b:	89 44 24 e4          	mov    %eax,-0x1c(%rsp)
  401e8f:	ba 00 00 00 00       	mov    $0x0,%edx
  401e94:	b8 00 00 00 00       	mov    $0x0,%eax
  401e99:	eb 0b                	jmp    401ea6 <scramble+0x893>
  401e9b:	89 d1                	mov    %edx,%ecx
  401e9d:	8b 4c 8c d0          	mov    -0x30(%rsp,%rcx,4),%ecx
  401ea1:	01 c8                	add    %ecx,%eax
  401ea3:	83 c2 01             	add    $0x1,%edx
  401ea6:	83 fa 09             	cmp    $0x9,%edx
  401ea9:	76 f0                	jbe    401e9b <scramble+0x888>
  401eab:	f3 c3                	repz retq 

0000000000401ead <getbuf>:
  401ead:	48 83 ec 28          	sub    $0x28,%rsp
  401eb1:	48 89 e7             	mov    %rsp,%rdi
  401eb4:	e8 94 02 00 00       	callq  40214d <Gets>
  401eb9:	b8 01 00 00 00       	mov    $0x1,%eax
  401ebe:	48 83 c4 28          	add    $0x28,%rsp
  401ec2:	c3                   	retq   

0000000000401ec3 <touch1>:
  401ec3:	48 83 ec 08          	sub    $0x8,%rsp
  401ec7:	c7 05 4b 36 20 00 01 	movl   $0x1,0x20364b(%rip)        # 60551c <vlevel>
  401ece:	00 00 00 
  401ed1:	48 8d 3d 3c 1a 00 00 	lea    0x1a3c(%rip),%rdi        # 403914 <_IO_stdin_used+0x344>
  401ed8:	e8 43 f0 ff ff       	callq  400f20 <puts@plt>
  401edd:	bf 01 00 00 00       	mov    $0x1,%edi
  401ee2:	e8 d6 04 00 00       	callq  4023bd <validate>
  401ee7:	bf 00 00 00 00       	mov    $0x0,%edi
  401eec:	e8 cf f1 ff ff       	callq  4010c0 <exit@plt>

0000000000401ef1 <touch2>:
  401ef1:	48 83 ec 08          	sub    $0x8,%rsp
  401ef5:	89 fa                	mov    %edi,%edx
  401ef7:	c7 05 1b 36 20 00 02 	movl   $0x2,0x20361b(%rip)        # 60551c <vlevel>
  401efe:	00 00 00 
  401f01:	39 3d 1d 36 20 00    	cmp    %edi,0x20361d(%rip)        # 605524 <cookie>
  401f07:	74 2a                	je     401f33 <touch2+0x42>
  401f09:	48 8d 35 50 1a 00 00 	lea    0x1a50(%rip),%rsi        # 403960 <_IO_stdin_used+0x390>
  401f10:	bf 01 00 00 00       	mov    $0x1,%edi
  401f15:	b8 00 00 00 00       	mov    $0x0,%eax
  401f1a:	e8 51 f1 ff ff       	callq  401070 <__printf_chk@plt>
  401f1f:	bf 02 00 00 00       	mov    $0x2,%edi
  401f24:	e8 64 05 00 00       	callq  40248d <fail>
  401f29:	bf 00 00 00 00       	mov    $0x0,%edi
  401f2e:	e8 8d f1 ff ff       	callq  4010c0 <exit@plt>
  401f33:	48 8d 35 fe 19 00 00 	lea    0x19fe(%rip),%rsi        # 403938 <_IO_stdin_used+0x368>
  401f3a:	bf 01 00 00 00       	mov    $0x1,%edi
  401f3f:	b8 00 00 00 00       	mov    $0x0,%eax
  401f44:	e8 27 f1 ff ff       	callq  401070 <__printf_chk@plt>
  401f49:	bf 02 00 00 00       	mov    $0x2,%edi
  401f4e:	e8 6a 04 00 00       	callq  4023bd <validate>
  401f53:	eb d4                	jmp    401f29 <touch2+0x38>

0000000000401f55 <hexmatch>:
  401f55:	41 54                	push   %r12
  401f57:	55                   	push   %rbp
  401f58:	53                   	push   %rbx
  401f59:	48 83 c4 80          	add    $0xffffffffffffff80,%rsp
  401f5d:	89 fd                	mov    %edi,%ebp
  401f5f:	48 89 f3             	mov    %rsi,%rbx
  401f62:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  401f69:	00 00 
  401f6b:	48 89 44 24 78       	mov    %rax,0x78(%rsp)
  401f70:	31 c0                	xor    %eax,%eax
  401f72:	e8 b9 f0 ff ff       	callq  401030 <random@plt>
  401f77:	48 89 c1             	mov    %rax,%rcx
  401f7a:	48 ba 0b d7 a3 70 3d 	movabs $0xa3d70a3d70a3d70b,%rdx
  401f81:	0a d7 a3 
  401f84:	48 f7 ea             	imul   %rdx
  401f87:	48 01 ca             	add    %rcx,%rdx
  401f8a:	48 c1 fa 06          	sar    $0x6,%rdx
  401f8e:	48 89 c8             	mov    %rcx,%rax
  401f91:	48 c1 f8 3f          	sar    $0x3f,%rax
  401f95:	48 29 c2             	sub    %rax,%rdx
  401f98:	48 8d 04 92          	lea    (%rdx,%rdx,4),%rax
  401f9c:	48 8d 14 80          	lea    (%rax,%rax,4),%rdx
  401fa0:	48 8d 04 95 00 00 00 	lea    0x0(,%rdx,4),%rax
  401fa7:	00 
  401fa8:	48 29 c1             	sub    %rax,%rcx
  401fab:	4c 8d 24 0c          	lea    (%rsp,%rcx,1),%r12
  401faf:	41 89 e8             	mov    %ebp,%r8d
  401fb2:	48 8d 0d 78 19 00 00 	lea    0x1978(%rip),%rcx        # 403931 <_IO_stdin_used+0x361>
  401fb9:	48 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%rdx
  401fc0:	be 01 00 00 00       	mov    $0x1,%esi
  401fc5:	4c 89 e7             	mov    %r12,%rdi
  401fc8:	b8 00 00 00 00       	mov    $0x0,%eax
  401fcd:	e8 1e f1 ff ff       	callq  4010f0 <__sprintf_chk@plt>
  401fd2:	ba 09 00 00 00       	mov    $0x9,%edx
  401fd7:	4c 89 e6             	mov    %r12,%rsi
  401fda:	48 89 df             	mov    %rbx,%rdi
  401fdd:	e8 1e ef ff ff       	callq  400f00 <strncmp@plt>
  401fe2:	85 c0                	test   %eax,%eax
  401fe4:	0f 94 c0             	sete   %al
  401fe7:	48 8b 5c 24 78       	mov    0x78(%rsp),%rbx
  401fec:	64 48 33 1c 25 28 00 	xor    %fs:0x28,%rbx
  401ff3:	00 00 
  401ff5:	75 0c                	jne    402003 <hexmatch+0xae>
  401ff7:	0f b6 c0             	movzbl %al,%eax
  401ffa:	48 83 ec 80          	sub    $0xffffffffffffff80,%rsp
  401ffe:	5b                   	pop    %rbx
  401fff:	5d                   	pop    %rbp
  402000:	41 5c                	pop    %r12
  402002:	c3                   	retq   
  402003:	e8 38 ef ff ff       	callq  400f40 <__stack_chk_fail@plt>

0000000000402008 <touch3>:
  402008:	53                   	push   %rbx
  402009:	48 89 fb             	mov    %rdi,%rbx
  40200c:	c7 05 06 35 20 00 03 	movl   $0x3,0x203506(%rip)        # 60551c <vlevel>
  402013:	00 00 00 
  402016:	48 89 fe             	mov    %rdi,%rsi
  402019:	8b 3d 05 35 20 00    	mov    0x203505(%rip),%edi        # 605524 <cookie>
  40201f:	e8 31 ff ff ff       	callq  401f55 <hexmatch>
  402024:	85 c0                	test   %eax,%eax
  402026:	74 2d                	je     402055 <touch3+0x4d>
  402028:	48 89 da             	mov    %rbx,%rdx
  40202b:	48 8d 35 56 19 00 00 	lea    0x1956(%rip),%rsi        # 403988 <_IO_stdin_used+0x3b8>
  402032:	bf 01 00 00 00       	mov    $0x1,%edi
  402037:	b8 00 00 00 00       	mov    $0x0,%eax
  40203c:	e8 2f f0 ff ff       	callq  401070 <__printf_chk@plt>
  402041:	bf 03 00 00 00       	mov    $0x3,%edi
  402046:	e8 72 03 00 00       	callq  4023bd <validate>
  40204b:	bf 00 00 00 00       	mov    $0x0,%edi
  402050:	e8 6b f0 ff ff       	callq  4010c0 <exit@plt>
  402055:	48 89 da             	mov    %rbx,%rdx
  402058:	48 8d 35 51 19 00 00 	lea    0x1951(%rip),%rsi        # 4039b0 <_IO_stdin_used+0x3e0>
  40205f:	bf 01 00 00 00       	mov    $0x1,%edi
  402064:	b8 00 00 00 00       	mov    $0x0,%eax
  402069:	e8 02 f0 ff ff       	callq  401070 <__printf_chk@plt>
  40206e:	bf 03 00 00 00       	mov    $0x3,%edi
  402073:	e8 15 04 00 00       	callq  40248d <fail>
  402078:	eb d1                	jmp    40204b <touch3+0x43>

000000000040207a <test>:
  40207a:	48 83 ec 08          	sub    $0x8,%rsp
  40207e:	b8 00 00 00 00       	mov    $0x0,%eax
  402083:	e8 25 fe ff ff       	callq  401ead <getbuf>
  402088:	89 c2                	mov    %eax,%edx
  40208a:	48 8d 35 47 19 00 00 	lea    0x1947(%rip),%rsi        # 4039d8 <_IO_stdin_used+0x408>
  402091:	bf 01 00 00 00       	mov    $0x1,%edi
  402096:	b8 00 00 00 00       	mov    $0x0,%eax
  40209b:	e8 d0 ef ff ff       	callq  401070 <__printf_chk@plt>
  4020a0:	48 83 c4 08          	add    $0x8,%rsp
  4020a4:	c3                   	retq   

00000000004020a5 <save_char>:
  4020a5:	8b 05 99 40 20 00    	mov    0x204099(%rip),%eax        # 606144 <gets_cnt>
  4020ab:	3d ff 03 00 00       	cmp    $0x3ff,%eax
  4020b0:	7f 4a                	jg     4020fc <save_char+0x57>
  4020b2:	8d 14 40             	lea    (%rax,%rax,2),%edx
  4020b5:	89 f9                	mov    %edi,%ecx
  4020b7:	c0 e9 04             	shr    $0x4,%cl
  4020ba:	4c 8d 05 3f 1c 00 00 	lea    0x1c3f(%rip),%r8        # 403d00 <trans_char>
  4020c1:	83 e1 0f             	and    $0xf,%ecx
  4020c4:	45 0f b6 0c 08       	movzbl (%r8,%rcx,1),%r9d
  4020c9:	48 8d 0d 70 34 20 00 	lea    0x203470(%rip),%rcx        # 605540 <gets_buf>
  4020d0:	48 63 f2             	movslq %edx,%rsi
  4020d3:	44 88 0c 31          	mov    %r9b,(%rcx,%rsi,1)
  4020d7:	8d 72 01             	lea    0x1(%rdx),%esi
  4020da:	83 e7 0f             	and    $0xf,%edi
  4020dd:	41 0f b6 3c 38       	movzbl (%r8,%rdi,1),%edi
  4020e2:	48 63 f6             	movslq %esi,%rsi
  4020e5:	40 88 3c 31          	mov    %dil,(%rcx,%rsi,1)
  4020e9:	83 c2 02             	add    $0x2,%edx
  4020ec:	48 63 d2             	movslq %edx,%rdx
  4020ef:	c6 04 11 20          	movb   $0x20,(%rcx,%rdx,1)
  4020f3:	83 c0 01             	add    $0x1,%eax
  4020f6:	89 05 48 40 20 00    	mov    %eax,0x204048(%rip)        # 606144 <gets_cnt>
  4020fc:	f3 c3                	repz retq 

00000000004020fe <save_term>:
  4020fe:	8b 05 40 40 20 00    	mov    0x204040(%rip),%eax        # 606144 <gets_cnt>
  402104:	8d 04 40             	lea    (%rax,%rax,2),%eax
  402107:	48 98                	cltq   
  402109:	48 8d 15 30 34 20 00 	lea    0x203430(%rip),%rdx        # 605540 <gets_buf>
  402110:	c6 04 02 00          	movb   $0x0,(%rdx,%rax,1)
  402114:	c3                   	retq   

0000000000402115 <check_fail>:
  402115:	48 83 ec 08          	sub    $0x8,%rsp
  402119:	0f be 15 28 40 20 00 	movsbl 0x204028(%rip),%edx        # 606148 <target_prefix>
  402120:	4c 8d 05 19 34 20 00 	lea    0x203419(%rip),%r8        # 605540 <gets_buf>
  402127:	8b 0d eb 33 20 00    	mov    0x2033eb(%rip),%ecx        # 605518 <check_level>
  40212d:	48 8d 35 c7 18 00 00 	lea    0x18c7(%rip),%rsi        # 4039fb <_IO_stdin_used+0x42b>
  402134:	bf 01 00 00 00       	mov    $0x1,%edi
  402139:	b8 00 00 00 00       	mov    $0x0,%eax
  40213e:	e8 2d ef ff ff       	callq  401070 <__printf_chk@plt>
  402143:	bf 01 00 00 00       	mov    $0x1,%edi
  402148:	e8 73 ef ff ff       	callq  4010c0 <exit@plt>

000000000040214d <Gets>:
  40214d:	41 54                	push   %r12
  40214f:	55                   	push   %rbp
  402150:	53                   	push   %rbx
  402151:	49 89 fc             	mov    %rdi,%r12
  402154:	c7 05 e6 3f 20 00 00 	movl   $0x0,0x203fe6(%rip)        # 606144 <gets_cnt>
  40215b:	00 00 00 
  40215e:	48 89 fb             	mov    %rdi,%rbx
  402161:	eb 11                	jmp    402174 <Gets+0x27>
  402163:	48 8d 6b 01          	lea    0x1(%rbx),%rbp
  402167:	88 03                	mov    %al,(%rbx)
  402169:	0f b6 f8             	movzbl %al,%edi
  40216c:	e8 34 ff ff ff       	callq  4020a5 <save_char>
  402171:	48 89 eb             	mov    %rbp,%rbx
  402174:	48 8b 3d 95 33 20 00 	mov    0x203395(%rip),%rdi        # 605510 <infile>
  40217b:	e8 c0 ee ff ff       	callq  401040 <_IO_getc@plt>
  402180:	83 f8 ff             	cmp    $0xffffffff,%eax
  402183:	74 05                	je     40218a <Gets+0x3d>
  402185:	83 f8 0a             	cmp    $0xa,%eax
  402188:	75 d9                	jne    402163 <Gets+0x16>
  40218a:	c6 03 00             	movb   $0x0,(%rbx)
  40218d:	b8 00 00 00 00       	mov    $0x0,%eax
  402192:	e8 67 ff ff ff       	callq  4020fe <save_term>
  402197:	4c 89 e0             	mov    %r12,%rax
  40219a:	5b                   	pop    %rbx
  40219b:	5d                   	pop    %rbp
  40219c:	41 5c                	pop    %r12
  40219e:	c3                   	retq   

000000000040219f <notify_server>:
  40219f:	55                   	push   %rbp
  4021a0:	53                   	push   %rbx
  4021a1:	48 81 ec 18 40 00 00 	sub    $0x4018,%rsp
  4021a8:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  4021af:	00 00 
  4021b1:	48 89 84 24 08 40 00 	mov    %rax,0x4008(%rsp)
  4021b8:	00 
  4021b9:	31 c0                	xor    %eax,%eax
  4021bb:	83 3d 66 33 20 00 00 	cmpl   $0x0,0x203366(%rip)        # 605528 <is_checker>
  4021c2:	0f 85 d2 00 00 00    	jne    40229a <notify_server+0xfb>
  4021c8:	89 fb                	mov    %edi,%ebx
  4021ca:	8b 05 74 3f 20 00    	mov    0x203f74(%rip),%eax        # 606144 <gets_cnt>
  4021d0:	83 c0 64             	add    $0x64,%eax
  4021d3:	3d 00 20 00 00       	cmp    $0x2000,%eax
  4021d8:	0f 8f dd 00 00 00    	jg     4022bb <notify_server+0x11c>
  4021de:	0f be 05 63 3f 20 00 	movsbl 0x203f63(%rip),%eax        # 606148 <target_prefix>
  4021e5:	83 3d bc 32 20 00 00 	cmpl   $0x0,0x2032bc(%rip)        # 6054a8 <notify>
  4021ec:	0f 84 e9 00 00 00    	je     4022db <notify_server+0x13c>
  4021f2:	8b 15 28 33 20 00    	mov    0x203328(%rip),%edx        # 605520 <authkey>
  4021f8:	85 db                	test   %ebx,%ebx
  4021fa:	0f 84 e5 00 00 00    	je     4022e5 <notify_server+0x146>
  402200:	48 8d 2d 0a 18 00 00 	lea    0x180a(%rip),%rbp        # 403a11 <_IO_stdin_used+0x441>
  402207:	48 89 e7             	mov    %rsp,%rdi
  40220a:	48 8d 0d 2f 33 20 00 	lea    0x20332f(%rip),%rcx        # 605540 <gets_buf>
  402211:	51                   	push   %rcx
  402212:	56                   	push   %rsi
  402213:	50                   	push   %rax
  402214:	52                   	push   %rdx
  402215:	49 89 e9             	mov    %rbp,%r9
  402218:	44 8b 05 49 2f 20 00 	mov    0x202f49(%rip),%r8d        # 605168 <target_id>
  40221f:	48 8d 0d f5 17 00 00 	lea    0x17f5(%rip),%rcx        # 403a1b <_IO_stdin_used+0x44b>
  402226:	ba 00 20 00 00       	mov    $0x2000,%edx
  40222b:	be 01 00 00 00       	mov    $0x1,%esi
  402230:	b8 00 00 00 00       	mov    $0x0,%eax
  402235:	e8 b6 ee ff ff       	callq  4010f0 <__sprintf_chk@plt>
  40223a:	48 83 c4 20          	add    $0x20,%rsp
  40223e:	83 3d 63 32 20 00 00 	cmpl   $0x0,0x203263(%rip)        # 6054a8 <notify>
  402245:	0f 84 df 00 00 00    	je     40232a <notify_server+0x18b>
  40224b:	85 db                	test   %ebx,%ebx
  40224d:	0f 84 c6 00 00 00    	je     402319 <notify_server+0x17a>
  402253:	48 89 e1             	mov    %rsp,%rcx
  402256:	4c 8d 8c 24 00 20 00 	lea    0x2000(%rsp),%r9
  40225d:	00 
  40225e:	41 b8 00 00 00 00    	mov    $0x0,%r8d
  402264:	48 8b 15 05 2f 20 00 	mov    0x202f05(%rip),%rdx        # 605170 <lab>
  40226b:	48 8b 35 06 2f 20 00 	mov    0x202f06(%rip),%rsi        # 605178 <course>
  402272:	48 8b 3d e7 2e 20 00 	mov    0x202ee7(%rip),%rdi        # 605160 <user_id>
  402279:	e8 b4 11 00 00       	callq  403432 <driver_post>
  40227e:	85 c0                	test   %eax,%eax
  402280:	78 6f                	js     4022f1 <notify_server+0x152>
  402282:	48 8d 3d d7 18 00 00 	lea    0x18d7(%rip),%rdi        # 403b60 <_IO_stdin_used+0x590>
  402289:	e8 92 ec ff ff       	callq  400f20 <puts@plt>
  40228e:	48 8d 3d ae 17 00 00 	lea    0x17ae(%rip),%rdi        # 403a43 <_IO_stdin_used+0x473>
  402295:	e8 86 ec ff ff       	callq  400f20 <puts@plt>
  40229a:	48 8b 84 24 08 40 00 	mov    0x4008(%rsp),%rax
  4022a1:	00 
  4022a2:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  4022a9:	00 00 
  4022ab:	0f 85 07 01 00 00    	jne    4023b8 <notify_server+0x219>
  4022b1:	48 81 c4 18 40 00 00 	add    $0x4018,%rsp
  4022b8:	5b                   	pop    %rbx
  4022b9:	5d                   	pop    %rbp
  4022ba:	c3                   	retq   
  4022bb:	48 8d 35 6e 18 00 00 	lea    0x186e(%rip),%rsi        # 403b30 <_IO_stdin_used+0x560>
  4022c2:	bf 01 00 00 00       	mov    $0x1,%edi
  4022c7:	b8 00 00 00 00       	mov    $0x0,%eax
  4022cc:	e8 9f ed ff ff       	callq  401070 <__printf_chk@plt>
  4022d1:	bf 01 00 00 00       	mov    $0x1,%edi
  4022d6:	e8 e5 ed ff ff       	callq  4010c0 <exit@plt>
  4022db:	ba ff ff ff ff       	mov    $0xffffffff,%edx
  4022e0:	e9 13 ff ff ff       	jmpq   4021f8 <notify_server+0x59>
  4022e5:	48 8d 2d 2a 17 00 00 	lea    0x172a(%rip),%rbp        # 403a16 <_IO_stdin_used+0x446>
  4022ec:	e9 16 ff ff ff       	jmpq   402207 <notify_server+0x68>
  4022f1:	48 8d 94 24 00 20 00 	lea    0x2000(%rsp),%rdx
  4022f8:	00 
  4022f9:	48 8d 35 37 17 00 00 	lea    0x1737(%rip),%rsi        # 403a37 <_IO_stdin_used+0x467>
  402300:	bf 01 00 00 00       	mov    $0x1,%edi
  402305:	b8 00 00 00 00       	mov    $0x0,%eax
  40230a:	e8 61 ed ff ff       	callq  401070 <__printf_chk@plt>
  40230f:	bf 01 00 00 00       	mov    $0x1,%edi
  402314:	e8 a7 ed ff ff       	callq  4010c0 <exit@plt>
  402319:	48 8d 3d 2d 17 00 00 	lea    0x172d(%rip),%rdi        # 403a4d <_IO_stdin_used+0x47d>
  402320:	e8 fb eb ff ff       	callq  400f20 <puts@plt>
  402325:	e9 70 ff ff ff       	jmpq   40229a <notify_server+0xfb>
  40232a:	48 89 ea             	mov    %rbp,%rdx
  40232d:	48 8d 35 64 18 00 00 	lea    0x1864(%rip),%rsi        # 403b98 <_IO_stdin_used+0x5c8>
  402334:	bf 01 00 00 00       	mov    $0x1,%edi
  402339:	b8 00 00 00 00       	mov    $0x0,%eax
  40233e:	e8 2d ed ff ff       	callq  401070 <__printf_chk@plt>
  402343:	48 8b 15 16 2e 20 00 	mov    0x202e16(%rip),%rdx        # 605160 <user_id>
  40234a:	48 8d 35 03 17 00 00 	lea    0x1703(%rip),%rsi        # 403a54 <_IO_stdin_used+0x484>
  402351:	bf 01 00 00 00       	mov    $0x1,%edi
  402356:	b8 00 00 00 00       	mov    $0x0,%eax
  40235b:	e8 10 ed ff ff       	callq  401070 <__printf_chk@plt>
  402360:	48 8b 15 11 2e 20 00 	mov    0x202e11(%rip),%rdx        # 605178 <course>
  402367:	48 8d 35 f3 16 00 00 	lea    0x16f3(%rip),%rsi        # 403a61 <_IO_stdin_used+0x491>
  40236e:	bf 01 00 00 00       	mov    $0x1,%edi
  402373:	b8 00 00 00 00       	mov    $0x0,%eax
  402378:	e8 f3 ec ff ff       	callq  401070 <__printf_chk@plt>
  40237d:	48 8b 15 ec 2d 20 00 	mov    0x202dec(%rip),%rdx        # 605170 <lab>
  402384:	48 8d 35 e2 16 00 00 	lea    0x16e2(%rip),%rsi        # 403a6d <_IO_stdin_used+0x49d>
  40238b:	bf 01 00 00 00       	mov    $0x1,%edi
  402390:	b8 00 00 00 00       	mov    $0x0,%eax
  402395:	e8 d6 ec ff ff       	callq  401070 <__printf_chk@plt>
  40239a:	48 89 e2             	mov    %rsp,%rdx
  40239d:	48 8d 35 d2 16 00 00 	lea    0x16d2(%rip),%rsi        # 403a76 <_IO_stdin_used+0x4a6>
  4023a4:	bf 01 00 00 00       	mov    $0x1,%edi
  4023a9:	b8 00 00 00 00       	mov    $0x0,%eax
  4023ae:	e8 bd ec ff ff       	callq  401070 <__printf_chk@plt>
  4023b3:	e9 e2 fe ff ff       	jmpq   40229a <notify_server+0xfb>
  4023b8:	e8 83 eb ff ff       	callq  400f40 <__stack_chk_fail@plt>

00000000004023bd <validate>:
  4023bd:	53                   	push   %rbx
  4023be:	89 fb                	mov    %edi,%ebx
  4023c0:	83 3d 61 31 20 00 00 	cmpl   $0x0,0x203161(%rip)        # 605528 <is_checker>
  4023c7:	74 72                	je     40243b <validate+0x7e>
  4023c9:	39 3d 4d 31 20 00    	cmp    %edi,0x20314d(%rip)        # 60551c <vlevel>
  4023cf:	75 32                	jne    402403 <validate+0x46>
  4023d1:	8b 15 41 31 20 00    	mov    0x203141(%rip),%edx        # 605518 <check_level>
  4023d7:	39 d7                	cmp    %edx,%edi
  4023d9:	75 3e                	jne    402419 <validate+0x5c>
  4023db:	0f be 15 66 3d 20 00 	movsbl 0x203d66(%rip),%edx        # 606148 <target_prefix>
  4023e2:	4c 8d 05 57 31 20 00 	lea    0x203157(%rip),%r8        # 605540 <gets_buf>
  4023e9:	89 f9                	mov    %edi,%ecx
  4023eb:	48 8d 35 ae 16 00 00 	lea    0x16ae(%rip),%rsi        # 403aa0 <_IO_stdin_used+0x4d0>
  4023f2:	bf 01 00 00 00       	mov    $0x1,%edi
  4023f7:	b8 00 00 00 00       	mov    $0x0,%eax
  4023fc:	e8 6f ec ff ff       	callq  401070 <__printf_chk@plt>
  402401:	5b                   	pop    %rbx
  402402:	c3                   	retq   
  402403:	48 8d 3d 78 16 00 00 	lea    0x1678(%rip),%rdi        # 403a82 <_IO_stdin_used+0x4b2>
  40240a:	e8 11 eb ff ff       	callq  400f20 <puts@plt>
  40240f:	b8 00 00 00 00       	mov    $0x0,%eax
  402414:	e8 fc fc ff ff       	callq  402115 <check_fail>
  402419:	89 f9                	mov    %edi,%ecx
  40241b:	48 8d 35 9e 17 00 00 	lea    0x179e(%rip),%rsi        # 403bc0 <_IO_stdin_used+0x5f0>
  402422:	bf 01 00 00 00       	mov    $0x1,%edi
  402427:	b8 00 00 00 00       	mov    $0x0,%eax
  40242c:	e8 3f ec ff ff       	callq  401070 <__printf_chk@plt>
  402431:	b8 00 00 00 00       	mov    $0x0,%eax
  402436:	e8 da fc ff ff       	callq  402115 <check_fail>
  40243b:	3b 3d db 30 20 00    	cmp    0x2030db(%rip),%edi        # 60551c <vlevel>
  402441:	74 1a                	je     40245d <validate+0xa0>
  402443:	48 8d 3d 38 16 00 00 	lea    0x1638(%rip),%rdi        # 403a82 <_IO_stdin_used+0x4b2>
  40244a:	e8 d1 ea ff ff       	callq  400f20 <puts@plt>
  40244f:	89 de                	mov    %ebx,%esi
  402451:	bf 00 00 00 00       	mov    $0x0,%edi
  402456:	e8 44 fd ff ff       	callq  40219f <notify_server>
  40245b:	eb a4                	jmp    402401 <validate+0x44>
  40245d:	0f be 0d e4 3c 20 00 	movsbl 0x203ce4(%rip),%ecx        # 606148 <target_prefix>
  402464:	89 fa                	mov    %edi,%edx
  402466:	48 8d 35 7b 17 00 00 	lea    0x177b(%rip),%rsi        # 403be8 <_IO_stdin_used+0x618>
  40246d:	bf 01 00 00 00       	mov    $0x1,%edi
  402472:	b8 00 00 00 00       	mov    $0x0,%eax
  402477:	e8 f4 eb ff ff       	callq  401070 <__printf_chk@plt>
  40247c:	89 de                	mov    %ebx,%esi
  40247e:	bf 01 00 00 00       	mov    $0x1,%edi
  402483:	e8 17 fd ff ff       	callq  40219f <notify_server>
  402488:	e9 74 ff ff ff       	jmpq   402401 <validate+0x44>

000000000040248d <fail>:
  40248d:	48 83 ec 08          	sub    $0x8,%rsp
  402491:	83 3d 90 30 20 00 00 	cmpl   $0x0,0x203090(%rip)        # 605528 <is_checker>
  402498:	75 11                	jne    4024ab <fail+0x1e>
  40249a:	89 fe                	mov    %edi,%esi
  40249c:	bf 00 00 00 00       	mov    $0x0,%edi
  4024a1:	e8 f9 fc ff ff       	callq  40219f <notify_server>
  4024a6:	48 83 c4 08          	add    $0x8,%rsp
  4024aa:	c3                   	retq   
  4024ab:	b8 00 00 00 00       	mov    $0x0,%eax
  4024b0:	e8 60 fc ff ff       	callq  402115 <check_fail>

00000000004024b5 <bushandler>:
  4024b5:	48 83 ec 08          	sub    $0x8,%rsp
  4024b9:	83 3d 68 30 20 00 00 	cmpl   $0x0,0x203068(%rip)        # 605528 <is_checker>
  4024c0:	74 16                	je     4024d8 <bushandler+0x23>
  4024c2:	48 8d 3d ec 15 00 00 	lea    0x15ec(%rip),%rdi        # 403ab5 <_IO_stdin_used+0x4e5>
  4024c9:	e8 52 ea ff ff       	callq  400f20 <puts@plt>
  4024ce:	b8 00 00 00 00       	mov    $0x0,%eax
  4024d3:	e8 3d fc ff ff       	callq  402115 <check_fail>
  4024d8:	48 8d 3d 41 17 00 00 	lea    0x1741(%rip),%rdi        # 403c20 <_IO_stdin_used+0x650>
  4024df:	e8 3c ea ff ff       	callq  400f20 <puts@plt>
  4024e4:	48 8d 3d d4 15 00 00 	lea    0x15d4(%rip),%rdi        # 403abf <_IO_stdin_used+0x4ef>
  4024eb:	e8 30 ea ff ff       	callq  400f20 <puts@plt>
  4024f0:	be 00 00 00 00       	mov    $0x0,%esi
  4024f5:	bf 00 00 00 00       	mov    $0x0,%edi
  4024fa:	e8 a0 fc ff ff       	callq  40219f <notify_server>
  4024ff:	bf 01 00 00 00       	mov    $0x1,%edi
  402504:	e8 b7 eb ff ff       	callq  4010c0 <exit@plt>

0000000000402509 <seghandler>:
  402509:	48 83 ec 08          	sub    $0x8,%rsp
  40250d:	83 3d 14 30 20 00 00 	cmpl   $0x0,0x203014(%rip)        # 605528 <is_checker>
  402514:	74 16                	je     40252c <seghandler+0x23>
  402516:	48 8d 3d b8 15 00 00 	lea    0x15b8(%rip),%rdi        # 403ad5 <_IO_stdin_used+0x505>
  40251d:	e8 fe e9 ff ff       	callq  400f20 <puts@plt>
  402522:	b8 00 00 00 00       	mov    $0x0,%eax
  402527:	e8 e9 fb ff ff       	callq  402115 <check_fail>
  40252c:	48 8d 3d 0d 17 00 00 	lea    0x170d(%rip),%rdi        # 403c40 <_IO_stdin_used+0x670>
  402533:	e8 e8 e9 ff ff       	callq  400f20 <puts@plt>
  402538:	48 8d 3d 80 15 00 00 	lea    0x1580(%rip),%rdi        # 403abf <_IO_stdin_used+0x4ef>
  40253f:	e8 dc e9 ff ff       	callq  400f20 <puts@plt>
  402544:	be 00 00 00 00       	mov    $0x0,%esi
  402549:	bf 00 00 00 00       	mov    $0x0,%edi
  40254e:	e8 4c fc ff ff       	callq  40219f <notify_server>
  402553:	bf 01 00 00 00       	mov    $0x1,%edi
  402558:	e8 63 eb ff ff       	callq  4010c0 <exit@plt>

000000000040255d <illegalhandler>:
  40255d:	48 83 ec 08          	sub    $0x8,%rsp
  402561:	83 3d c0 2f 20 00 00 	cmpl   $0x0,0x202fc0(%rip)        # 605528 <is_checker>
  402568:	74 16                	je     402580 <illegalhandler+0x23>
  40256a:	48 8d 3d 77 15 00 00 	lea    0x1577(%rip),%rdi        # 403ae8 <_IO_stdin_used+0x518>
  402571:	e8 aa e9 ff ff       	callq  400f20 <puts@plt>
  402576:	b8 00 00 00 00       	mov    $0x0,%eax
  40257b:	e8 95 fb ff ff       	callq  402115 <check_fail>
  402580:	48 8d 3d e1 16 00 00 	lea    0x16e1(%rip),%rdi        # 403c68 <_IO_stdin_used+0x698>
  402587:	e8 94 e9 ff ff       	callq  400f20 <puts@plt>
  40258c:	48 8d 3d 2c 15 00 00 	lea    0x152c(%rip),%rdi        # 403abf <_IO_stdin_used+0x4ef>
  402593:	e8 88 e9 ff ff       	callq  400f20 <puts@plt>
  402598:	be 00 00 00 00       	mov    $0x0,%esi
  40259d:	bf 00 00 00 00       	mov    $0x0,%edi
  4025a2:	e8 f8 fb ff ff       	callq  40219f <notify_server>
  4025a7:	bf 01 00 00 00       	mov    $0x1,%edi
  4025ac:	e8 0f eb ff ff       	callq  4010c0 <exit@plt>

00000000004025b1 <sigalrmhandler>:
  4025b1:	48 83 ec 08          	sub    $0x8,%rsp
  4025b5:	83 3d 6c 2f 20 00 00 	cmpl   $0x0,0x202f6c(%rip)        # 605528 <is_checker>
  4025bc:	74 16                	je     4025d4 <sigalrmhandler+0x23>
  4025be:	48 8d 3d 37 15 00 00 	lea    0x1537(%rip),%rdi        # 403afc <_IO_stdin_used+0x52c>
  4025c5:	e8 56 e9 ff ff       	callq  400f20 <puts@plt>
  4025ca:	b8 00 00 00 00       	mov    $0x0,%eax
  4025cf:	e8 41 fb ff ff       	callq  402115 <check_fail>
  4025d4:	ba 05 00 00 00       	mov    $0x5,%edx
  4025d9:	48 8d 35 b8 16 00 00 	lea    0x16b8(%rip),%rsi        # 403c98 <_IO_stdin_used+0x6c8>
  4025e0:	bf 01 00 00 00       	mov    $0x1,%edi
  4025e5:	b8 00 00 00 00       	mov    $0x0,%eax
  4025ea:	e8 81 ea ff ff       	callq  401070 <__printf_chk@plt>
  4025ef:	be 00 00 00 00       	mov    $0x0,%esi
  4025f4:	bf 00 00 00 00       	mov    $0x0,%edi
  4025f9:	e8 a1 fb ff ff       	callq  40219f <notify_server>
  4025fe:	bf 01 00 00 00       	mov    $0x1,%edi
  402603:	e8 b8 ea ff ff       	callq  4010c0 <exit@plt>

0000000000402608 <launch>:
  402608:	55                   	push   %rbp
  402609:	48 89 e5             	mov    %rsp,%rbp
  40260c:	48 83 ec 10          	sub    $0x10,%rsp
  402610:	48 89 fa             	mov    %rdi,%rdx
  402613:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  40261a:	00 00 
  40261c:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  402620:	31 c0                	xor    %eax,%eax
  402622:	48 8d 47 1e          	lea    0x1e(%rdi),%rax
  402626:	48 83 e0 f0          	and    $0xfffffffffffffff0,%rax
  40262a:	48 29 c4             	sub    %rax,%rsp
  40262d:	48 8d 7c 24 0f       	lea    0xf(%rsp),%rdi
  402632:	48 83 e7 f0          	and    $0xfffffffffffffff0,%rdi
  402636:	be f4 00 00 00       	mov    $0xf4,%esi
  40263b:	e8 30 e9 ff ff       	callq  400f70 <memset@plt>
  402640:	48 8b 05 79 2e 20 00 	mov    0x202e79(%rip),%rax        # 6054c0 <stdin@@GLIBC_2.2.5>
  402647:	48 39 05 c2 2e 20 00 	cmp    %rax,0x202ec2(%rip)        # 605510 <infile>
  40264e:	74 3a                	je     40268a <launch+0x82>
  402650:	c7 05 c2 2e 20 00 00 	movl   $0x0,0x202ec2(%rip)        # 60551c <vlevel>
  402657:	00 00 00 
  40265a:	b8 00 00 00 00       	mov    $0x0,%eax
  40265f:	e8 16 fa ff ff       	callq  40207a <test>
  402664:	83 3d bd 2e 20 00 00 	cmpl   $0x0,0x202ebd(%rip)        # 605528 <is_checker>
  40266b:	75 35                	jne    4026a2 <launch+0x9a>
  40266d:	48 8d 3d a8 14 00 00 	lea    0x14a8(%rip),%rdi        # 403b1c <_IO_stdin_used+0x54c>
  402674:	e8 a7 e8 ff ff       	callq  400f20 <puts@plt>
  402679:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  40267d:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  402684:	00 00 
  402686:	75 30                	jne    4026b8 <launch+0xb0>
  402688:	c9                   	leaveq 
  402689:	c3                   	retq   
  40268a:	48 8d 35 73 14 00 00 	lea    0x1473(%rip),%rsi        # 403b04 <_IO_stdin_used+0x534>
  402691:	bf 01 00 00 00       	mov    $0x1,%edi
  402696:	b8 00 00 00 00       	mov    $0x0,%eax
  40269b:	e8 d0 e9 ff ff       	callq  401070 <__printf_chk@plt>
  4026a0:	eb ae                	jmp    402650 <launch+0x48>
  4026a2:	48 8d 3d 68 14 00 00 	lea    0x1468(%rip),%rdi        # 403b11 <_IO_stdin_used+0x541>
  4026a9:	e8 72 e8 ff ff       	callq  400f20 <puts@plt>
  4026ae:	b8 00 00 00 00       	mov    $0x0,%eax
  4026b3:	e8 5d fa ff ff       	callq  402115 <check_fail>
  4026b8:	e8 83 e8 ff ff       	callq  400f40 <__stack_chk_fail@plt>

00000000004026bd <stable_launch>:
  4026bd:	53                   	push   %rbx
  4026be:	48 89 3d 43 2e 20 00 	mov    %rdi,0x202e43(%rip)        # 605508 <global_offset>
  4026c5:	41 b9 00 00 00 00    	mov    $0x0,%r9d
  4026cb:	41 b8 00 00 00 00    	mov    $0x0,%r8d
  4026d1:	b9 32 01 00 00       	mov    $0x132,%ecx
  4026d6:	ba 07 00 00 00       	mov    $0x7,%edx
  4026db:	be 00 00 10 00       	mov    $0x100000,%esi
  4026e0:	bf 00 60 58 55       	mov    $0x55586000,%edi
  4026e5:	e8 66 e8 ff ff       	callq  400f50 <mmap@plt>
  4026ea:	48 89 c3             	mov    %rax,%rbx
  4026ed:	48 3d 00 60 58 55    	cmp    $0x55586000,%rax
  4026f3:	75 43                	jne    402738 <stable_launch+0x7b>
  4026f5:	48 8d 90 f8 ff 0f 00 	lea    0xffff8(%rax),%rdx
  4026fc:	48 89 15 4d 3a 20 00 	mov    %rdx,0x203a4d(%rip)        # 606150 <stack_top>
  402703:	48 89 e0             	mov    %rsp,%rax
  402706:	48 89 d4             	mov    %rdx,%rsp
  402709:	48 89 c2             	mov    %rax,%rdx
  40270c:	48 89 15 ed 2d 20 00 	mov    %rdx,0x202ded(%rip)        # 605500 <global_save_stack>
  402713:	48 8b 3d ee 2d 20 00 	mov    0x202dee(%rip),%rdi        # 605508 <global_offset>
  40271a:	e8 e9 fe ff ff       	callq  402608 <launch>
  40271f:	48 8b 05 da 2d 20 00 	mov    0x202dda(%rip),%rax        # 605500 <global_save_stack>
  402726:	48 89 c4             	mov    %rax,%rsp
  402729:	be 00 00 10 00       	mov    $0x100000,%esi
  40272e:	48 89 df             	mov    %rbx,%rdi
  402731:	e8 2a e9 ff ff       	callq  401060 <munmap@plt>
  402736:	5b                   	pop    %rbx
  402737:	c3                   	retq   
  402738:	be 00 00 10 00       	mov    $0x100000,%esi
  40273d:	48 89 c7             	mov    %rax,%rdi
  402740:	e8 1b e9 ff ff       	callq  401060 <munmap@plt>
  402745:	b9 00 60 58 55       	mov    $0x55586000,%ecx
  40274a:	48 8d 15 7f 15 00 00 	lea    0x157f(%rip),%rdx        # 403cd0 <_IO_stdin_used+0x700>
  402751:	be 01 00 00 00       	mov    $0x1,%esi
  402756:	48 8b 3d 83 2d 20 00 	mov    0x202d83(%rip),%rdi        # 6054e0 <stderr@@GLIBC_2.2.5>
  40275d:	b8 00 00 00 00       	mov    $0x0,%eax
  402762:	e8 79 e9 ff ff       	callq  4010e0 <__fprintf_chk@plt>
  402767:	bf 01 00 00 00       	mov    $0x1,%edi
  40276c:	e8 4f e9 ff ff       	callq  4010c0 <exit@plt>

0000000000402771 <rio_readinitb>:
  402771:	89 37                	mov    %esi,(%rdi)
  402773:	c7 47 04 00 00 00 00 	movl   $0x0,0x4(%rdi)
  40277a:	48 8d 47 10          	lea    0x10(%rdi),%rax
  40277e:	48 89 47 08          	mov    %rax,0x8(%rdi)
  402782:	c3                   	retq   

0000000000402783 <sigalrm_handler>:
  402783:	48 83 ec 08          	sub    $0x8,%rsp
  402787:	b9 00 00 00 00       	mov    $0x0,%ecx
  40278c:	48 8d 15 7d 15 00 00 	lea    0x157d(%rip),%rdx        # 403d10 <trans_char+0x10>
  402793:	be 01 00 00 00       	mov    $0x1,%esi
  402798:	48 8b 3d 41 2d 20 00 	mov    0x202d41(%rip),%rdi        # 6054e0 <stderr@@GLIBC_2.2.5>
  40279f:	b8 00 00 00 00       	mov    $0x0,%eax
  4027a4:	e8 37 e9 ff ff       	callq  4010e0 <__fprintf_chk@plt>
  4027a9:	bf 01 00 00 00       	mov    $0x1,%edi
  4027ae:	e8 0d e9 ff ff       	callq  4010c0 <exit@plt>

00000000004027b3 <rio_writen>:
  4027b3:	41 55                	push   %r13
  4027b5:	41 54                	push   %r12
  4027b7:	55                   	push   %rbp
  4027b8:	53                   	push   %rbx
  4027b9:	48 83 ec 08          	sub    $0x8,%rsp
  4027bd:	41 89 fc             	mov    %edi,%r12d
  4027c0:	49 89 d5             	mov    %rdx,%r13
  4027c3:	48 89 f5             	mov    %rsi,%rbp
  4027c6:	48 89 d3             	mov    %rdx,%rbx
  4027c9:	eb 06                	jmp    4027d1 <rio_writen+0x1e>
  4027cb:	48 29 c3             	sub    %rax,%rbx
  4027ce:	48 01 c5             	add    %rax,%rbp
  4027d1:	48 85 db             	test   %rbx,%rbx
  4027d4:	74 24                	je     4027fa <rio_writen+0x47>
  4027d6:	48 89 da             	mov    %rbx,%rdx
  4027d9:	48 89 ee             	mov    %rbp,%rsi
  4027dc:	44 89 e7             	mov    %r12d,%edi
  4027df:	e8 4c e7 ff ff       	callq  400f30 <write@plt>
  4027e4:	48 85 c0             	test   %rax,%rax
  4027e7:	7f e2                	jg     4027cb <rio_writen+0x18>
  4027e9:	e8 f2 e6 ff ff       	callq  400ee0 <__errno_location@plt>
  4027ee:	83 38 04             	cmpl   $0x4,(%rax)
  4027f1:	75 15                	jne    402808 <rio_writen+0x55>
  4027f3:	b8 00 00 00 00       	mov    $0x0,%eax
  4027f8:	eb d1                	jmp    4027cb <rio_writen+0x18>
  4027fa:	4c 89 e8             	mov    %r13,%rax
  4027fd:	48 83 c4 08          	add    $0x8,%rsp
  402801:	5b                   	pop    %rbx
  402802:	5d                   	pop    %rbp
  402803:	41 5c                	pop    %r12
  402805:	41 5d                	pop    %r13
  402807:	c3                   	retq   
  402808:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  40280f:	eb ec                	jmp    4027fd <rio_writen+0x4a>

0000000000402811 <rio_read>:
  402811:	41 55                	push   %r13
  402813:	41 54                	push   %r12
  402815:	55                   	push   %rbp
  402816:	53                   	push   %rbx
  402817:	48 83 ec 08          	sub    $0x8,%rsp
  40281b:	48 89 fb             	mov    %rdi,%rbx
  40281e:	49 89 f5             	mov    %rsi,%r13
  402821:	49 89 d4             	mov    %rdx,%r12
  402824:	eb 0a                	jmp    402830 <rio_read+0x1f>
  402826:	e8 b5 e6 ff ff       	callq  400ee0 <__errno_location@plt>
  40282b:	83 38 04             	cmpl   $0x4,(%rax)
  40282e:	75 5c                	jne    40288c <rio_read+0x7b>
  402830:	8b 6b 04             	mov    0x4(%rbx),%ebp
  402833:	85 ed                	test   %ebp,%ebp
  402835:	7f 24                	jg     40285b <rio_read+0x4a>
  402837:	48 8d 6b 10          	lea    0x10(%rbx),%rbp
  40283b:	8b 3b                	mov    (%rbx),%edi
  40283d:	ba 00 20 00 00       	mov    $0x2000,%edx
  402842:	48 89 ee             	mov    %rbp,%rsi
  402845:	e8 56 e7 ff ff       	callq  400fa0 <read@plt>
  40284a:	89 43 04             	mov    %eax,0x4(%rbx)
  40284d:	85 c0                	test   %eax,%eax
  40284f:	78 d5                	js     402826 <rio_read+0x15>
  402851:	85 c0                	test   %eax,%eax
  402853:	74 40                	je     402895 <rio_read+0x84>
  402855:	48 89 6b 08          	mov    %rbp,0x8(%rbx)
  402859:	eb d5                	jmp    402830 <rio_read+0x1f>
  40285b:	89 e8                	mov    %ebp,%eax
  40285d:	49 39 c4             	cmp    %rax,%r12
  402860:	77 03                	ja     402865 <rio_read+0x54>
  402862:	44 89 e5             	mov    %r12d,%ebp
  402865:	4c 63 e5             	movslq %ebp,%r12
  402868:	48 8b 73 08          	mov    0x8(%rbx),%rsi
  40286c:	4c 89 e2             	mov    %r12,%rdx
  40286f:	4c 89 ef             	mov    %r13,%rdi
  402872:	e8 99 e7 ff ff       	callq  401010 <memcpy@plt>
  402877:	4c 01 63 08          	add    %r12,0x8(%rbx)
  40287b:	29 6b 04             	sub    %ebp,0x4(%rbx)
  40287e:	4c 89 e0             	mov    %r12,%rax
  402881:	48 83 c4 08          	add    $0x8,%rsp
  402885:	5b                   	pop    %rbx
  402886:	5d                   	pop    %rbp
  402887:	41 5c                	pop    %r12
  402889:	41 5d                	pop    %r13
  40288b:	c3                   	retq   
  40288c:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  402893:	eb ec                	jmp    402881 <rio_read+0x70>
  402895:	b8 00 00 00 00       	mov    $0x0,%eax
  40289a:	eb e5                	jmp    402881 <rio_read+0x70>

000000000040289c <rio_readlineb>:
  40289c:	41 55                	push   %r13
  40289e:	41 54                	push   %r12
  4028a0:	55                   	push   %rbp
  4028a1:	53                   	push   %rbx
  4028a2:	48 83 ec 18          	sub    $0x18,%rsp
  4028a6:	49 89 fd             	mov    %rdi,%r13
  4028a9:	49 89 d4             	mov    %rdx,%r12
  4028ac:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  4028b3:	00 00 
  4028b5:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  4028ba:	31 c0                	xor    %eax,%eax
  4028bc:	48 89 f5             	mov    %rsi,%rbp
  4028bf:	bb 01 00 00 00       	mov    $0x1,%ebx
  4028c4:	4c 39 e3             	cmp    %r12,%rbx
  4028c7:	73 47                	jae    402910 <rio_readlineb+0x74>
  4028c9:	48 8d 74 24 07       	lea    0x7(%rsp),%rsi
  4028ce:	ba 01 00 00 00       	mov    $0x1,%edx
  4028d3:	4c 89 ef             	mov    %r13,%rdi
  4028d6:	e8 36 ff ff ff       	callq  402811 <rio_read>
  4028db:	83 f8 01             	cmp    $0x1,%eax
  4028de:	75 1c                	jne    4028fc <rio_readlineb+0x60>
  4028e0:	48 8d 45 01          	lea    0x1(%rbp),%rax
  4028e4:	0f b6 54 24 07       	movzbl 0x7(%rsp),%edx
  4028e9:	88 55 00             	mov    %dl,0x0(%rbp)
  4028ec:	80 7c 24 07 0a       	cmpb   $0xa,0x7(%rsp)
  4028f1:	74 1a                	je     40290d <rio_readlineb+0x71>
  4028f3:	48 83 c3 01          	add    $0x1,%rbx
  4028f7:	48 89 c5             	mov    %rax,%rbp
  4028fa:	eb c8                	jmp    4028c4 <rio_readlineb+0x28>
  4028fc:	85 c0                	test   %eax,%eax
  4028fe:	75 32                	jne    402932 <rio_readlineb+0x96>
  402900:	48 83 fb 01          	cmp    $0x1,%rbx
  402904:	75 0a                	jne    402910 <rio_readlineb+0x74>
  402906:	b8 00 00 00 00       	mov    $0x0,%eax
  40290b:	eb 0a                	jmp    402917 <rio_readlineb+0x7b>
  40290d:	48 89 c5             	mov    %rax,%rbp
  402910:	c6 45 00 00          	movb   $0x0,0x0(%rbp)
  402914:	48 89 d8             	mov    %rbx,%rax
  402917:	48 8b 4c 24 08       	mov    0x8(%rsp),%rcx
  40291c:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
  402923:	00 00 
  402925:	75 14                	jne    40293b <rio_readlineb+0x9f>
  402927:	48 83 c4 18          	add    $0x18,%rsp
  40292b:	5b                   	pop    %rbx
  40292c:	5d                   	pop    %rbp
  40292d:	41 5c                	pop    %r12
  40292f:	41 5d                	pop    %r13
  402931:	c3                   	retq   
  402932:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  402939:	eb dc                	jmp    402917 <rio_readlineb+0x7b>
  40293b:	e8 00 e6 ff ff       	callq  400f40 <__stack_chk_fail@plt>

0000000000402940 <urlencode>:
  402940:	41 54                	push   %r12
  402942:	55                   	push   %rbp
  402943:	53                   	push   %rbx
  402944:	48 83 ec 10          	sub    $0x10,%rsp
  402948:	48 89 fb             	mov    %rdi,%rbx
  40294b:	48 89 f5             	mov    %rsi,%rbp
  40294e:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  402955:	00 00 
  402957:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  40295c:	31 c0                	xor    %eax,%eax
  40295e:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  402965:	f2 ae                	repnz scas %es:(%rdi),%al
  402967:	48 f7 d1             	not    %rcx
  40296a:	8d 41 ff             	lea    -0x1(%rcx),%eax
  40296d:	eb 0f                	jmp    40297e <urlencode+0x3e>
  40296f:	44 88 45 00          	mov    %r8b,0x0(%rbp)
  402973:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
  402977:	48 83 c3 01          	add    $0x1,%rbx
  40297b:	44 89 e0             	mov    %r12d,%eax
  40297e:	44 8d 60 ff          	lea    -0x1(%rax),%r12d
  402982:	85 c0                	test   %eax,%eax
  402984:	0f 84 a8 00 00 00    	je     402a32 <urlencode+0xf2>
  40298a:	44 0f b6 03          	movzbl (%rbx),%r8d
  40298e:	41 80 f8 2a          	cmp    $0x2a,%r8b
  402992:	0f 94 c2             	sete   %dl
  402995:	41 80 f8 2d          	cmp    $0x2d,%r8b
  402999:	0f 94 c0             	sete   %al
  40299c:	08 c2                	or     %al,%dl
  40299e:	75 cf                	jne    40296f <urlencode+0x2f>
  4029a0:	41 80 f8 2e          	cmp    $0x2e,%r8b
  4029a4:	74 c9                	je     40296f <urlencode+0x2f>
  4029a6:	41 80 f8 5f          	cmp    $0x5f,%r8b
  4029aa:	74 c3                	je     40296f <urlencode+0x2f>
  4029ac:	41 8d 40 d0          	lea    -0x30(%r8),%eax
  4029b0:	3c 09                	cmp    $0x9,%al
  4029b2:	76 bb                	jbe    40296f <urlencode+0x2f>
  4029b4:	41 8d 40 bf          	lea    -0x41(%r8),%eax
  4029b8:	3c 19                	cmp    $0x19,%al
  4029ba:	76 b3                	jbe    40296f <urlencode+0x2f>
  4029bc:	41 8d 40 9f          	lea    -0x61(%r8),%eax
  4029c0:	3c 19                	cmp    $0x19,%al
  4029c2:	76 ab                	jbe    40296f <urlencode+0x2f>
  4029c4:	41 80 f8 20          	cmp    $0x20,%r8b
  4029c8:	74 56                	je     402a20 <urlencode+0xe0>
  4029ca:	41 8d 40 e0          	lea    -0x20(%r8),%eax
  4029ce:	3c 5f                	cmp    $0x5f,%al
  4029d0:	0f 96 c2             	setbe  %dl
  4029d3:	41 80 f8 09          	cmp    $0x9,%r8b
  4029d7:	0f 94 c0             	sete   %al
  4029da:	08 c2                	or     %al,%dl
  4029dc:	74 4f                	je     402a2d <urlencode+0xed>
  4029de:	48 89 e7             	mov    %rsp,%rdi
  4029e1:	45 0f b6 c0          	movzbl %r8b,%r8d
  4029e5:	48 8d 0d bc 13 00 00 	lea    0x13bc(%rip),%rcx        # 403da8 <trans_char+0xa8>
  4029ec:	ba 08 00 00 00       	mov    $0x8,%edx
  4029f1:	be 01 00 00 00       	mov    $0x1,%esi
  4029f6:	b8 00 00 00 00       	mov    $0x0,%eax
  4029fb:	e8 f0 e6 ff ff       	callq  4010f0 <__sprintf_chk@plt>
  402a00:	0f b6 04 24          	movzbl (%rsp),%eax
  402a04:	88 45 00             	mov    %al,0x0(%rbp)
  402a07:	0f b6 44 24 01       	movzbl 0x1(%rsp),%eax
  402a0c:	88 45 01             	mov    %al,0x1(%rbp)
  402a0f:	0f b6 44 24 02       	movzbl 0x2(%rsp),%eax
  402a14:	88 45 02             	mov    %al,0x2(%rbp)
  402a17:	48 8d 6d 03          	lea    0x3(%rbp),%rbp
  402a1b:	e9 57 ff ff ff       	jmpq   402977 <urlencode+0x37>
  402a20:	c6 45 00 2b          	movb   $0x2b,0x0(%rbp)
  402a24:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
  402a28:	e9 4a ff ff ff       	jmpq   402977 <urlencode+0x37>
  402a2d:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402a32:	48 8b 74 24 08       	mov    0x8(%rsp),%rsi
  402a37:	64 48 33 34 25 28 00 	xor    %fs:0x28,%rsi
  402a3e:	00 00 
  402a40:	75 09                	jne    402a4b <urlencode+0x10b>
  402a42:	48 83 c4 10          	add    $0x10,%rsp
  402a46:	5b                   	pop    %rbx
  402a47:	5d                   	pop    %rbp
  402a48:	41 5c                	pop    %r12
  402a4a:	c3                   	retq   
  402a4b:	e8 f0 e4 ff ff       	callq  400f40 <__stack_chk_fail@plt>

0000000000402a50 <submitr>:
  402a50:	41 57                	push   %r15
  402a52:	41 56                	push   %r14
  402a54:	41 55                	push   %r13
  402a56:	41 54                	push   %r12
  402a58:	55                   	push   %rbp
  402a59:	53                   	push   %rbx
  402a5a:	48 81 ec 68 a0 00 00 	sub    $0xa068,%rsp
  402a61:	49 89 fd             	mov    %rdi,%r13
  402a64:	89 74 24 14          	mov    %esi,0x14(%rsp)
  402a68:	49 89 d7             	mov    %rdx,%r15
  402a6b:	48 89 4c 24 08       	mov    %rcx,0x8(%rsp)
  402a70:	4c 89 44 24 18       	mov    %r8,0x18(%rsp)
  402a75:	4d 89 ce             	mov    %r9,%r14
  402a78:	48 8b 9c 24 a0 a0 00 	mov    0xa0a0(%rsp),%rbx
  402a7f:	00 
  402a80:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  402a87:	00 00 
  402a89:	48 89 84 24 58 a0 00 	mov    %rax,0xa058(%rsp)
  402a90:	00 
  402a91:	31 c0                	xor    %eax,%eax
  402a93:	c7 44 24 2c 00 00 00 	movl   $0x0,0x2c(%rsp)
  402a9a:	00 
  402a9b:	ba 00 00 00 00       	mov    $0x0,%edx
  402aa0:	be 01 00 00 00       	mov    $0x1,%esi
  402aa5:	bf 02 00 00 00       	mov    $0x2,%edi
  402aaa:	e8 51 e6 ff ff       	callq  401100 <socket@plt>
  402aaf:	85 c0                	test   %eax,%eax
  402ab1:	0f 88 c8 01 00 00    	js     402c7f <submitr+0x22f>
  402ab7:	89 c5                	mov    %eax,%ebp
  402ab9:	4c 89 ef             	mov    %r13,%rdi
  402abc:	e8 0f e5 ff ff       	callq  400fd0 <gethostbyname@plt>
  402ac1:	48 85 c0             	test   %rax,%rax
  402ac4:	0f 84 03 02 00 00    	je     402ccd <submitr+0x27d>
  402aca:	4c 8d 64 24 30       	lea    0x30(%rsp),%r12
  402acf:	48 c7 44 24 30 00 00 	movq   $0x0,0x30(%rsp)
  402ad6:	00 00 
  402ad8:	48 c7 44 24 38 00 00 	movq   $0x0,0x38(%rsp)
  402adf:	00 00 
  402ae1:	66 c7 44 24 30 02 00 	movw   $0x2,0x30(%rsp)
  402ae8:	48 63 50 14          	movslq 0x14(%rax),%rdx
  402aec:	48 8b 40 18          	mov    0x18(%rax),%rax
  402af0:	48 8b 30             	mov    (%rax),%rsi
  402af3:	48 8d 7c 24 34       	lea    0x34(%rsp),%rdi
  402af8:	b9 0c 00 00 00       	mov    $0xc,%ecx
  402afd:	e8 de e4 ff ff       	callq  400fe0 <__memmove_chk@plt>
  402b02:	0f b7 44 24 14       	movzwl 0x14(%rsp),%eax
  402b07:	66 c1 c8 08          	ror    $0x8,%ax
  402b0b:	66 89 44 24 32       	mov    %ax,0x32(%rsp)
  402b10:	ba 10 00 00 00       	mov    $0x10,%edx
  402b15:	4c 89 e6             	mov    %r12,%rsi
  402b18:	89 ef                	mov    %ebp,%edi
  402b1a:	e8 b1 e5 ff ff       	callq  4010d0 <connect@plt>
  402b1f:	85 c0                	test   %eax,%eax
  402b21:	0f 88 0d 02 00 00    	js     402d34 <submitr+0x2e4>
  402b27:	48 c7 c6 ff ff ff ff 	mov    $0xffffffffffffffff,%rsi
  402b2e:	b8 00 00 00 00       	mov    $0x0,%eax
  402b33:	48 89 f1             	mov    %rsi,%rcx
  402b36:	4c 89 f7             	mov    %r14,%rdi
  402b39:	f2 ae                	repnz scas %es:(%rdi),%al
  402b3b:	48 f7 d1             	not    %rcx
  402b3e:	48 89 ca             	mov    %rcx,%rdx
  402b41:	48 89 f1             	mov    %rsi,%rcx
  402b44:	4c 89 ff             	mov    %r15,%rdi
  402b47:	f2 ae                	repnz scas %es:(%rdi),%al
  402b49:	48 f7 d1             	not    %rcx
  402b4c:	49 89 c8             	mov    %rcx,%r8
  402b4f:	48 89 f1             	mov    %rsi,%rcx
  402b52:	48 8b 7c 24 08       	mov    0x8(%rsp),%rdi
  402b57:	f2 ae                	repnz scas %es:(%rdi),%al
  402b59:	48 f7 d1             	not    %rcx
  402b5c:	4d 8d 44 08 fe       	lea    -0x2(%r8,%rcx,1),%r8
  402b61:	48 89 f1             	mov    %rsi,%rcx
  402b64:	48 8b 7c 24 18       	mov    0x18(%rsp),%rdi
  402b69:	f2 ae                	repnz scas %es:(%rdi),%al
  402b6b:	48 89 c8             	mov    %rcx,%rax
  402b6e:	48 f7 d0             	not    %rax
  402b71:	49 8d 4c 00 ff       	lea    -0x1(%r8,%rax,1),%rcx
  402b76:	48 8d 44 52 fd       	lea    -0x3(%rdx,%rdx,2),%rax
  402b7b:	48 8d 84 01 80 00 00 	lea    0x80(%rcx,%rax,1),%rax
  402b82:	00 
  402b83:	48 3d 00 20 00 00    	cmp    $0x2000,%rax
  402b89:	0f 87 fe 01 00 00    	ja     402d8d <submitr+0x33d>
  402b8f:	48 8d b4 24 50 40 00 	lea    0x4050(%rsp),%rsi
  402b96:	00 
  402b97:	b9 00 04 00 00       	mov    $0x400,%ecx
  402b9c:	b8 00 00 00 00       	mov    $0x0,%eax
  402ba1:	48 89 f7             	mov    %rsi,%rdi
  402ba4:	f3 48 ab             	rep stos %rax,%es:(%rdi)
  402ba7:	4c 89 f7             	mov    %r14,%rdi
  402baa:	e8 91 fd ff ff       	callq  402940 <urlencode>
  402baf:	85 c0                	test   %eax,%eax
  402bb1:	0f 88 48 02 00 00    	js     402dff <submitr+0x3af>
  402bb7:	4c 8d a4 24 50 20 00 	lea    0x2050(%rsp),%r12
  402bbe:	00 
  402bbf:	41 55                	push   %r13
  402bc1:	48 8d 84 24 58 40 00 	lea    0x4058(%rsp),%rax
  402bc8:	00 
  402bc9:	50                   	push   %rax
  402bca:	4d 89 f9             	mov    %r15,%r9
  402bcd:	4c 8b 44 24 18       	mov    0x18(%rsp),%r8
  402bd2:	48 8d 0d 5f 11 00 00 	lea    0x115f(%rip),%rcx        # 403d38 <trans_char+0x38>
  402bd9:	ba 00 20 00 00       	mov    $0x2000,%edx
  402bde:	be 01 00 00 00       	mov    $0x1,%esi
  402be3:	4c 89 e7             	mov    %r12,%rdi
  402be6:	b8 00 00 00 00       	mov    $0x0,%eax
  402beb:	e8 00 e5 ff ff       	callq  4010f0 <__sprintf_chk@plt>
  402bf0:	b8 00 00 00 00       	mov    $0x0,%eax
  402bf5:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  402bfc:	4c 89 e7             	mov    %r12,%rdi
  402bff:	f2 ae                	repnz scas %es:(%rdi),%al
  402c01:	48 f7 d1             	not    %rcx
  402c04:	48 8d 51 ff          	lea    -0x1(%rcx),%rdx
  402c08:	4c 89 e6             	mov    %r12,%rsi
  402c0b:	89 ef                	mov    %ebp,%edi
  402c0d:	e8 a1 fb ff ff       	callq  4027b3 <rio_writen>
  402c12:	48 83 c4 10          	add    $0x10,%rsp
  402c16:	48 85 c0             	test   %rax,%rax
  402c19:	0f 88 6a 02 00 00    	js     402e89 <submitr+0x439>
  402c1f:	4c 8d 64 24 40       	lea    0x40(%rsp),%r12
  402c24:	89 ee                	mov    %ebp,%esi
  402c26:	4c 89 e7             	mov    %r12,%rdi
  402c29:	e8 43 fb ff ff       	callq  402771 <rio_readinitb>
  402c2e:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
  402c35:	00 
  402c36:	ba 00 20 00 00       	mov    $0x2000,%edx
  402c3b:	4c 89 e7             	mov    %r12,%rdi
  402c3e:	e8 59 fc ff ff       	callq  40289c <rio_readlineb>
  402c43:	48 85 c0             	test   %rax,%rax
  402c46:	0f 8e ab 02 00 00    	jle    402ef7 <submitr+0x4a7>
  402c4c:	48 8d 4c 24 2c       	lea    0x2c(%rsp),%rcx
  402c51:	48 8d 94 24 50 60 00 	lea    0x6050(%rsp),%rdx
  402c58:	00 
  402c59:	48 8d bc 24 50 20 00 	lea    0x2050(%rsp),%rdi
  402c60:	00 
  402c61:	4c 8d 84 24 50 80 00 	lea    0x8050(%rsp),%r8
  402c68:	00 
  402c69:	48 8d 35 3f 11 00 00 	lea    0x113f(%rip),%rsi        # 403daf <trans_char+0xaf>
  402c70:	b8 00 00 00 00       	mov    $0x0,%eax
  402c75:	e8 d6 e3 ff ff       	callq  401050 <__isoc99_sscanf@plt>
  402c7a:	e9 b3 03 00 00       	jmpq   403032 <submitr+0x5e2>
  402c7f:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402c86:	3a 20 43 
  402c89:	48 89 03             	mov    %rax,(%rbx)
  402c8c:	48 b8 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rax
  402c93:	20 75 6e 
  402c96:	48 89 43 08          	mov    %rax,0x8(%rbx)
  402c9a:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402ca1:	74 6f 20 
  402ca4:	48 89 43 10          	mov    %rax,0x10(%rbx)
  402ca8:	48 b8 63 72 65 61 74 	movabs $0x7320657461657263,%rax
  402caf:	65 20 73 
  402cb2:	48 89 43 18          	mov    %rax,0x18(%rbx)
  402cb6:	c7 43 20 6f 63 6b 65 	movl   $0x656b636f,0x20(%rbx)
  402cbd:	66 c7 43 24 74 00    	movw   $0x74,0x24(%rbx)
  402cc3:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402cc8:	e9 18 03 00 00       	jmpq   402fe5 <submitr+0x595>
  402ccd:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
  402cd4:	3a 20 44 
  402cd7:	48 89 03             	mov    %rax,(%rbx)
  402cda:	48 b8 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rax
  402ce1:	20 75 6e 
  402ce4:	48 89 43 08          	mov    %rax,0x8(%rbx)
  402ce8:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402cef:	74 6f 20 
  402cf2:	48 89 43 10          	mov    %rax,0x10(%rbx)
  402cf6:	48 b8 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rax
  402cfd:	76 65 20 
  402d00:	48 89 43 18          	mov    %rax,0x18(%rbx)
  402d04:	48 b8 73 65 72 76 65 	movabs $0x6120726576726573,%rax
  402d0b:	72 20 61 
  402d0e:	48 89 43 20          	mov    %rax,0x20(%rbx)
  402d12:	c7 43 28 64 64 72 65 	movl   $0x65726464,0x28(%rbx)
  402d19:	66 c7 43 2c 73 73    	movw   $0x7373,0x2c(%rbx)
  402d1f:	c6 43 2e 00          	movb   $0x0,0x2e(%rbx)
  402d23:	89 ef                	mov    %ebp,%edi
  402d25:	e8 66 e2 ff ff       	callq  400f90 <close@plt>
  402d2a:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402d2f:	e9 b1 02 00 00       	jmpq   402fe5 <submitr+0x595>
  402d34:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
  402d3b:	3a 20 55 
  402d3e:	48 89 03             	mov    %rax,(%rbx)
  402d41:	48 b8 6e 61 62 6c 65 	movabs $0x6f7420656c62616e,%rax
  402d48:	20 74 6f 
  402d4b:	48 89 43 08          	mov    %rax,0x8(%rbx)
  402d4f:	48 b8 20 63 6f 6e 6e 	movabs $0x7463656e6e6f6320,%rax
  402d56:	65 63 74 
  402d59:	48 89 43 10          	mov    %rax,0x10(%rbx)
  402d5d:	48 b8 20 74 6f 20 74 	movabs $0x20656874206f7420,%rax
  402d64:	68 65 20 
  402d67:	48 89 43 18          	mov    %rax,0x18(%rbx)
  402d6b:	c7 43 20 73 65 72 76 	movl   $0x76726573,0x20(%rbx)
  402d72:	66 c7 43 24 65 72    	movw   $0x7265,0x24(%rbx)
  402d78:	c6 43 26 00          	movb   $0x0,0x26(%rbx)
  402d7c:	89 ef                	mov    %ebp,%edi
  402d7e:	e8 0d e2 ff ff       	callq  400f90 <close@plt>
  402d83:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402d88:	e9 58 02 00 00       	jmpq   402fe5 <submitr+0x595>
  402d8d:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
  402d94:	3a 20 52 
  402d97:	48 89 03             	mov    %rax,(%rbx)
  402d9a:	48 b8 65 73 75 6c 74 	movabs $0x747320746c757365,%rax
  402da1:	20 73 74 
  402da4:	48 89 43 08          	mov    %rax,0x8(%rbx)
  402da8:	48 b8 72 69 6e 67 20 	movabs $0x6f6f7420676e6972,%rax
  402daf:	74 6f 6f 
  402db2:	48 89 43 10          	mov    %rax,0x10(%rbx)
  402db6:	48 b8 20 6c 61 72 67 	movabs $0x202e656772616c20,%rax
  402dbd:	65 2e 20 
  402dc0:	48 89 43 18          	mov    %rax,0x18(%rbx)
  402dc4:	48 b8 49 6e 63 72 65 	movabs $0x6573616572636e49,%rax
  402dcb:	61 73 65 
  402dce:	48 89 43 20          	mov    %rax,0x20(%rbx)
  402dd2:	48 b8 20 53 55 42 4d 	movabs $0x5254494d42555320,%rax
  402dd9:	49 54 52 
  402ddc:	48 89 43 28          	mov    %rax,0x28(%rbx)
  402de0:	48 b8 5f 4d 41 58 42 	movabs $0x46554258414d5f,%rax
  402de7:	55 46 00 
  402dea:	48 89 43 30          	mov    %rax,0x30(%rbx)
  402dee:	89 ef                	mov    %ebp,%edi
  402df0:	e8 9b e1 ff ff       	callq  400f90 <close@plt>
  402df5:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402dfa:	e9 e6 01 00 00       	jmpq   402fe5 <submitr+0x595>
  402dff:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
  402e06:	3a 20 52 
  402e09:	48 89 03             	mov    %rax,(%rbx)
  402e0c:	48 b8 65 73 75 6c 74 	movabs $0x747320746c757365,%rax
  402e13:	20 73 74 
  402e16:	48 89 43 08          	mov    %rax,0x8(%rbx)
  402e1a:	48 b8 72 69 6e 67 20 	movabs $0x6e6f6320676e6972,%rax
  402e21:	63 6f 6e 
  402e24:	48 89 43 10          	mov    %rax,0x10(%rbx)
  402e28:	48 b8 74 61 69 6e 73 	movabs $0x6e6120736e696174,%rax
  402e2f:	20 61 6e 
  402e32:	48 89 43 18          	mov    %rax,0x18(%rbx)
  402e36:	48 b8 20 69 6c 6c 65 	movabs $0x6c6167656c6c6920,%rax
  402e3d:	67 61 6c 
  402e40:	48 89 43 20          	mov    %rax,0x20(%rbx)
  402e44:	48 b8 20 6f 72 20 75 	movabs $0x72706e7520726f20,%rax
  402e4b:	6e 70 72 
  402e4e:	48 89 43 28          	mov    %rax,0x28(%rbx)
  402e52:	48 b8 69 6e 74 61 62 	movabs $0x20656c6261746e69,%rax
  402e59:	6c 65 20 
  402e5c:	48 89 43 30          	mov    %rax,0x30(%rbx)
  402e60:	48 b8 63 68 61 72 61 	movabs $0x6574636172616863,%rax
  402e67:	63 74 65 
  402e6a:	48 89 43 38          	mov    %rax,0x38(%rbx)
  402e6e:	66 c7 43 40 72 2e    	movw   $0x2e72,0x40(%rbx)
  402e74:	c6 43 42 00          	movb   $0x0,0x42(%rbx)
  402e78:	89 ef                	mov    %ebp,%edi
  402e7a:	e8 11 e1 ff ff       	callq  400f90 <close@plt>
  402e7f:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402e84:	e9 5c 01 00 00       	jmpq   402fe5 <submitr+0x595>
  402e89:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402e90:	3a 20 43 
  402e93:	48 89 03             	mov    %rax,(%rbx)
  402e96:	48 b8 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rax
  402e9d:	20 75 6e 
  402ea0:	48 89 43 08          	mov    %rax,0x8(%rbx)
  402ea4:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402eab:	74 6f 20 
  402eae:	48 89 43 10          	mov    %rax,0x10(%rbx)
  402eb2:	48 b8 77 72 69 74 65 	movabs $0x6f74206574697277,%rax
  402eb9:	20 74 6f 
  402ebc:	48 89 43 18          	mov    %rax,0x18(%rbx)
  402ec0:	48 b8 20 74 68 65 20 	movabs $0x7365722065687420,%rax
  402ec7:	72 65 73 
  402eca:	48 89 43 20          	mov    %rax,0x20(%rbx)
  402ece:	48 b8 75 6c 74 20 73 	movabs $0x7672657320746c75,%rax
  402ed5:	65 72 76 
  402ed8:	48 89 43 28          	mov    %rax,0x28(%rbx)
  402edc:	66 c7 43 30 65 72    	movw   $0x7265,0x30(%rbx)
  402ee2:	c6 43 32 00          	movb   $0x0,0x32(%rbx)
  402ee6:	89 ef                	mov    %ebp,%edi
  402ee8:	e8 a3 e0 ff ff       	callq  400f90 <close@plt>
  402eed:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402ef2:	e9 ee 00 00 00       	jmpq   402fe5 <submitr+0x595>
  402ef7:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402efe:	3a 20 43 
  402f01:	48 89 03             	mov    %rax,(%rbx)
  402f04:	48 b8 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rax
  402f0b:	20 75 6e 
  402f0e:	48 89 43 08          	mov    %rax,0x8(%rbx)
  402f12:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402f19:	74 6f 20 
  402f1c:	48 89 43 10          	mov    %rax,0x10(%rbx)
  402f20:	48 b8 72 65 61 64 20 	movabs $0x7269662064616572,%rax
  402f27:	66 69 72 
  402f2a:	48 89 43 18          	mov    %rax,0x18(%rbx)
  402f2e:	48 b8 73 74 20 68 65 	movabs $0x6564616568207473,%rax
  402f35:	61 64 65 
  402f38:	48 89 43 20          	mov    %rax,0x20(%rbx)
  402f3c:	48 b8 72 20 66 72 6f 	movabs $0x72206d6f72662072,%rax
  402f43:	6d 20 72 
  402f46:	48 89 43 28          	mov    %rax,0x28(%rbx)
  402f4a:	48 b8 65 73 75 6c 74 	movabs $0x657320746c757365,%rax
  402f51:	20 73 65 
  402f54:	48 89 43 30          	mov    %rax,0x30(%rbx)
  402f58:	c7 43 38 72 76 65 72 	movl   $0x72657672,0x38(%rbx)
  402f5f:	c6 43 3c 00          	movb   $0x0,0x3c(%rbx)
  402f63:	89 ef                	mov    %ebp,%edi
  402f65:	e8 26 e0 ff ff       	callq  400f90 <close@plt>
  402f6a:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402f6f:	eb 74                	jmp    402fe5 <submitr+0x595>
  402f71:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402f78:	3a 20 43 
  402f7b:	48 89 03             	mov    %rax,(%rbx)
  402f7e:	48 b8 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rax
  402f85:	20 75 6e 
  402f88:	48 89 43 08          	mov    %rax,0x8(%rbx)
  402f8c:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402f93:	74 6f 20 
  402f96:	48 89 43 10          	mov    %rax,0x10(%rbx)
  402f9a:	48 b8 72 65 61 64 20 	movabs $0x6165682064616572,%rax
  402fa1:	68 65 61 
  402fa4:	48 89 43 18          	mov    %rax,0x18(%rbx)
  402fa8:	48 b8 64 65 72 73 20 	movabs $0x6f72662073726564,%rax
  402faf:	66 72 6f 
  402fb2:	48 89 43 20          	mov    %rax,0x20(%rbx)
  402fb6:	48 b8 6d 20 74 68 65 	movabs $0x657220656874206d,%rax
  402fbd:	20 72 65 
  402fc0:	48 89 43 28          	mov    %rax,0x28(%rbx)
  402fc4:	48 b8 73 75 6c 74 20 	movabs $0x72657320746c7573,%rax
  402fcb:	73 65 72 
  402fce:	48 89 43 30          	mov    %rax,0x30(%rbx)
  402fd2:	c7 43 38 76 65 72 00 	movl   $0x726576,0x38(%rbx)
  402fd9:	89 ef                	mov    %ebp,%edi
  402fdb:	e8 b0 df ff ff       	callq  400f90 <close@plt>
  402fe0:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402fe5:	48 8b 9c 24 58 a0 00 	mov    0xa058(%rsp),%rbx
  402fec:	00 
  402fed:	64 48 33 1c 25 28 00 	xor    %fs:0x28,%rbx
  402ff4:	00 00 
  402ff6:	0f 85 fb 01 00 00    	jne    4031f7 <submitr+0x7a7>
  402ffc:	48 81 c4 68 a0 00 00 	add    $0xa068,%rsp
  403003:	5b                   	pop    %rbx
  403004:	5d                   	pop    %rbp
  403005:	41 5c                	pop    %r12
  403007:	41 5d                	pop    %r13
  403009:	41 5e                	pop    %r14
  40300b:	41 5f                	pop    %r15
  40300d:	c3                   	retq   
  40300e:	85 c0                	test   %eax,%eax
  403010:	74 4e                	je     403060 <submitr+0x610>
  403012:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
  403019:	00 
  40301a:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
  40301f:	ba 00 20 00 00       	mov    $0x2000,%edx
  403024:	e8 73 f8 ff ff       	callq  40289c <rio_readlineb>
  403029:	48 85 c0             	test   %rax,%rax
  40302c:	0f 8e 3f ff ff ff    	jle    402f71 <submitr+0x521>
  403032:	0f b6 94 24 50 20 00 	movzbl 0x2050(%rsp),%edx
  403039:	00 
  40303a:	b8 0d 00 00 00       	mov    $0xd,%eax
  40303f:	29 d0                	sub    %edx,%eax
  403041:	75 cb                	jne    40300e <submitr+0x5be>
  403043:	0f b6 94 24 51 20 00 	movzbl 0x2051(%rsp),%edx
  40304a:	00 
  40304b:	b8 0a 00 00 00       	mov    $0xa,%eax
  403050:	29 d0                	sub    %edx,%eax
  403052:	75 ba                	jne    40300e <submitr+0x5be>
  403054:	0f b6 84 24 52 20 00 	movzbl 0x2052(%rsp),%eax
  40305b:	00 
  40305c:	f7 d8                	neg    %eax
  40305e:	eb ae                	jmp    40300e <submitr+0x5be>
  403060:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
  403067:	00 
  403068:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
  40306d:	ba 00 20 00 00       	mov    $0x2000,%edx
  403072:	e8 25 f8 ff ff       	callq  40289c <rio_readlineb>
  403077:	48 85 c0             	test   %rax,%rax
  40307a:	7e 66                	jle    4030e2 <submitr+0x692>
  40307c:	44 8b 44 24 2c       	mov    0x2c(%rsp),%r8d
  403081:	41 81 f8 c8 00 00 00 	cmp    $0xc8,%r8d
  403088:	0f 85 d7 00 00 00    	jne    403165 <submitr+0x715>
  40308e:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
  403095:	00 
  403096:	48 89 df             	mov    %rbx,%rdi
  403099:	e8 72 de ff ff       	callq  400f10 <strcpy@plt>
  40309e:	89 ef                	mov    %ebp,%edi
  4030a0:	e8 eb de ff ff       	callq  400f90 <close@plt>
  4030a5:	0f b6 03             	movzbl (%rbx),%eax
  4030a8:	ba 4f 00 00 00       	mov    $0x4f,%edx
  4030ad:	29 c2                	sub    %eax,%edx
  4030af:	0f 85 e9 00 00 00    	jne    40319e <submitr+0x74e>
  4030b5:	0f b6 4b 01          	movzbl 0x1(%rbx),%ecx
  4030b9:	b8 4b 00 00 00       	mov    $0x4b,%eax
  4030be:	29 c8                	sub    %ecx,%eax
  4030c0:	0f 85 da 00 00 00    	jne    4031a0 <submitr+0x750>
  4030c6:	0f b6 4b 02          	movzbl 0x2(%rbx),%ecx
  4030ca:	b8 0a 00 00 00       	mov    $0xa,%eax
  4030cf:	29 c8                	sub    %ecx,%eax
  4030d1:	0f 85 c9 00 00 00    	jne    4031a0 <submitr+0x750>
  4030d7:	0f b6 43 03          	movzbl 0x3(%rbx),%eax
  4030db:	f7 d8                	neg    %eax
  4030dd:	e9 be 00 00 00       	jmpq   4031a0 <submitr+0x750>
  4030e2:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  4030e9:	3a 20 43 
  4030ec:	48 89 03             	mov    %rax,(%rbx)
  4030ef:	48 b8 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rax
  4030f6:	20 75 6e 
  4030f9:	48 89 43 08          	mov    %rax,0x8(%rbx)
  4030fd:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  403104:	74 6f 20 
  403107:	48 89 43 10          	mov    %rax,0x10(%rbx)
  40310b:	48 b8 72 65 61 64 20 	movabs $0x6174732064616572,%rax
  403112:	73 74 61 
  403115:	48 89 43 18          	mov    %rax,0x18(%rbx)
  403119:	48 b8 74 75 73 20 6d 	movabs $0x7373656d20737574,%rax
  403120:	65 73 73 
  403123:	48 89 43 20          	mov    %rax,0x20(%rbx)
  403127:	48 b8 61 67 65 20 66 	movabs $0x6d6f726620656761,%rax
  40312e:	72 6f 6d 
  403131:	48 89 43 28          	mov    %rax,0x28(%rbx)
  403135:	48 b8 20 72 65 73 75 	movabs $0x20746c7573657220,%rax
  40313c:	6c 74 20 
  40313f:	48 89 43 30          	mov    %rax,0x30(%rbx)
  403143:	c7 43 38 73 65 72 76 	movl   $0x76726573,0x38(%rbx)
  40314a:	66 c7 43 3c 65 72    	movw   $0x7265,0x3c(%rbx)
  403150:	c6 43 3e 00          	movb   $0x0,0x3e(%rbx)
  403154:	89 ef                	mov    %ebp,%edi
  403156:	e8 35 de ff ff       	callq  400f90 <close@plt>
  40315b:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  403160:	e9 80 fe ff ff       	jmpq   402fe5 <submitr+0x595>
  403165:	4c 8d 8c 24 50 80 00 	lea    0x8050(%rsp),%r9
  40316c:	00 
  40316d:	48 8d 0d 04 0c 00 00 	lea    0xc04(%rip),%rcx        # 403d78 <trans_char+0x78>
  403174:	48 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%rdx
  40317b:	be 01 00 00 00       	mov    $0x1,%esi
  403180:	48 89 df             	mov    %rbx,%rdi
  403183:	b8 00 00 00 00       	mov    $0x0,%eax
  403188:	e8 63 df ff ff       	callq  4010f0 <__sprintf_chk@plt>
  40318d:	89 ef                	mov    %ebp,%edi
  40318f:	e8 fc dd ff ff       	callq  400f90 <close@plt>
  403194:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  403199:	e9 47 fe ff ff       	jmpq   402fe5 <submitr+0x595>
  40319e:	89 d0                	mov    %edx,%eax
  4031a0:	f7 d8                	neg    %eax
  4031a2:	0f 84 3d fe ff ff    	je     402fe5 <submitr+0x595>
  4031a8:	b9 05 00 00 00       	mov    $0x5,%ecx
  4031ad:	48 8d 3d 0c 0c 00 00 	lea    0xc0c(%rip),%rdi        # 403dc0 <trans_char+0xc0>
  4031b4:	48 89 de             	mov    %rbx,%rsi
  4031b7:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
  4031b9:	0f 97 c0             	seta   %al
  4031bc:	0f 92 c1             	setb   %cl
  4031bf:	29 c8                	sub    %ecx,%eax
  4031c1:	0f be c0             	movsbl %al,%eax
  4031c4:	85 c0                	test   %eax,%eax
  4031c6:	0f 84 19 fe ff ff    	je     402fe5 <submitr+0x595>
  4031cc:	85 d2                	test   %edx,%edx
  4031ce:	75 13                	jne    4031e3 <submitr+0x793>
  4031d0:	0f b6 43 01          	movzbl 0x1(%rbx),%eax
  4031d4:	ba 4b 00 00 00       	mov    $0x4b,%edx
  4031d9:	29 c2                	sub    %eax,%edx
  4031db:	75 06                	jne    4031e3 <submitr+0x793>
  4031dd:	0f b6 53 02          	movzbl 0x2(%rbx),%edx
  4031e1:	f7 da                	neg    %edx
  4031e3:	89 d0                	mov    %edx,%eax
  4031e5:	f7 d8                	neg    %eax
  4031e7:	0f 84 f8 fd ff ff    	je     402fe5 <submitr+0x595>
  4031ed:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4031f2:	e9 ee fd ff ff       	jmpq   402fe5 <submitr+0x595>
  4031f7:	e8 44 dd ff ff       	callq  400f40 <__stack_chk_fail@plt>

00000000004031fc <init_timeout>:
  4031fc:	85 ff                	test   %edi,%edi
  4031fe:	74 20                	je     403220 <init_timeout+0x24>
  403200:	53                   	push   %rbx
  403201:	89 fb                	mov    %edi,%ebx
  403203:	85 ff                	test   %edi,%edi
  403205:	78 1b                	js     403222 <init_timeout+0x26>
  403207:	48 8d 35 75 f5 ff ff 	lea    -0xa8b(%rip),%rsi        # 402783 <sigalrm_handler>
  40320e:	bf 0e 00 00 00       	mov    $0xe,%edi
  403213:	e8 a8 dd ff ff       	callq  400fc0 <signal@plt>
  403218:	89 df                	mov    %ebx,%edi
  40321a:	e8 61 dd ff ff       	callq  400f80 <alarm@plt>
  40321f:	5b                   	pop    %rbx
  403220:	f3 c3                	repz retq 
  403222:	bb 00 00 00 00       	mov    $0x0,%ebx
  403227:	eb de                	jmp    403207 <init_timeout+0xb>

0000000000403229 <init_driver>:
  403229:	41 54                	push   %r12
  40322b:	55                   	push   %rbp
  40322c:	53                   	push   %rbx
  40322d:	48 83 ec 20          	sub    $0x20,%rsp
  403231:	48 89 fd             	mov    %rdi,%rbp
  403234:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  40323b:	00 00 
  40323d:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
  403242:	31 c0                	xor    %eax,%eax
  403244:	be 01 00 00 00       	mov    $0x1,%esi
  403249:	bf 0d 00 00 00       	mov    $0xd,%edi
  40324e:	e8 6d dd ff ff       	callq  400fc0 <signal@plt>
  403253:	be 01 00 00 00       	mov    $0x1,%esi
  403258:	bf 1d 00 00 00       	mov    $0x1d,%edi
  40325d:	e8 5e dd ff ff       	callq  400fc0 <signal@plt>
  403262:	be 01 00 00 00       	mov    $0x1,%esi
  403267:	bf 1d 00 00 00       	mov    $0x1d,%edi
  40326c:	e8 4f dd ff ff       	callq  400fc0 <signal@plt>
  403271:	ba 00 00 00 00       	mov    $0x0,%edx
  403276:	be 01 00 00 00       	mov    $0x1,%esi
  40327b:	bf 02 00 00 00       	mov    $0x2,%edi
  403280:	e8 7b de ff ff       	callq  401100 <socket@plt>
  403285:	85 c0                	test   %eax,%eax
  403287:	0f 88 99 00 00 00    	js     403326 <init_driver+0xfd>
  40328d:	89 c3                	mov    %eax,%ebx
  40328f:	48 8d 3d 2f 0b 00 00 	lea    0xb2f(%rip),%rdi        # 403dc5 <trans_char+0xc5>
  403296:	e8 35 dd ff ff       	callq  400fd0 <gethostbyname@plt>
  40329b:	48 85 c0             	test   %rax,%rax
  40329e:	0f 84 ce 00 00 00    	je     403372 <init_driver+0x149>
  4032a4:	48 c7 04 24 00 00 00 	movq   $0x0,(%rsp)
  4032ab:	00 
  4032ac:	48 c7 44 24 08 00 00 	movq   $0x0,0x8(%rsp)
  4032b3:	00 00 
  4032b5:	66 c7 04 24 02 00    	movw   $0x2,(%rsp)
  4032bb:	48 63 50 14          	movslq 0x14(%rax),%rdx
  4032bf:	48 8b 40 18          	mov    0x18(%rax),%rax
  4032c3:	48 8b 30             	mov    (%rax),%rsi
  4032c6:	48 8d 7c 24 04       	lea    0x4(%rsp),%rdi
  4032cb:	b9 0c 00 00 00       	mov    $0xc,%ecx
  4032d0:	e8 0b dd ff ff       	callq  400fe0 <__memmove_chk@plt>
  4032d5:	66 c7 44 24 02 3c 9a 	movw   $0x9a3c,0x2(%rsp)
  4032dc:	ba 10 00 00 00       	mov    $0x10,%edx
  4032e1:	48 89 e6             	mov    %rsp,%rsi
  4032e4:	89 df                	mov    %ebx,%edi
  4032e6:	e8 e5 dd ff ff       	callq  4010d0 <connect@plt>
  4032eb:	85 c0                	test   %eax,%eax
  4032ed:	0f 88 e7 00 00 00    	js     4033da <init_driver+0x1b1>
  4032f3:	89 df                	mov    %ebx,%edi
  4032f5:	e8 96 dc ff ff       	callq  400f90 <close@plt>
  4032fa:	66 c7 45 00 4f 4b    	movw   $0x4b4f,0x0(%rbp)
  403300:	c6 45 02 00          	movb   $0x0,0x2(%rbp)
  403304:	b8 00 00 00 00       	mov    $0x0,%eax
  403309:	48 8b 4c 24 18       	mov    0x18(%rsp),%rcx
  40330e:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
  403315:	00 00 
  403317:	0f 85 10 01 00 00    	jne    40342d <init_driver+0x204>
  40331d:	48 83 c4 20          	add    $0x20,%rsp
  403321:	5b                   	pop    %rbx
  403322:	5d                   	pop    %rbp
  403323:	41 5c                	pop    %r12
  403325:	c3                   	retq   
  403326:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  40332d:	3a 20 43 
  403330:	48 89 45 00          	mov    %rax,0x0(%rbp)
  403334:	48 b8 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rax
  40333b:	20 75 6e 
  40333e:	48 89 45 08          	mov    %rax,0x8(%rbp)
  403342:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  403349:	74 6f 20 
  40334c:	48 89 45 10          	mov    %rax,0x10(%rbp)
  403350:	48 b8 63 72 65 61 74 	movabs $0x7320657461657263,%rax
  403357:	65 20 73 
  40335a:	48 89 45 18          	mov    %rax,0x18(%rbp)
  40335e:	c7 45 20 6f 63 6b 65 	movl   $0x656b636f,0x20(%rbp)
  403365:	66 c7 45 24 74 00    	movw   $0x74,0x24(%rbp)
  40336b:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  403370:	eb 97                	jmp    403309 <init_driver+0xe0>
  403372:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
  403379:	3a 20 44 
  40337c:	48 89 45 00          	mov    %rax,0x0(%rbp)
  403380:	48 b8 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rax
  403387:	20 75 6e 
  40338a:	48 89 45 08          	mov    %rax,0x8(%rbp)
  40338e:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  403395:	74 6f 20 
  403398:	48 89 45 10          	mov    %rax,0x10(%rbp)
  40339c:	48 b8 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rax
  4033a3:	76 65 20 
  4033a6:	48 89 45 18          	mov    %rax,0x18(%rbp)
  4033aa:	48 b8 73 65 72 76 65 	movabs $0x6120726576726573,%rax
  4033b1:	72 20 61 
  4033b4:	48 89 45 20          	mov    %rax,0x20(%rbp)
  4033b8:	c7 45 28 64 64 72 65 	movl   $0x65726464,0x28(%rbp)
  4033bf:	66 c7 45 2c 73 73    	movw   $0x7373,0x2c(%rbp)
  4033c5:	c6 45 2e 00          	movb   $0x0,0x2e(%rbp)
  4033c9:	89 df                	mov    %ebx,%edi
  4033cb:	e8 c0 db ff ff       	callq  400f90 <close@plt>
  4033d0:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4033d5:	e9 2f ff ff ff       	jmpq   403309 <init_driver+0xe0>
  4033da:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
  4033e1:	3a 20 55 
  4033e4:	48 89 45 00          	mov    %rax,0x0(%rbp)
  4033e8:	48 b8 6e 61 62 6c 65 	movabs $0x6f7420656c62616e,%rax
  4033ef:	20 74 6f 
  4033f2:	48 89 45 08          	mov    %rax,0x8(%rbp)
  4033f6:	48 b8 20 63 6f 6e 6e 	movabs $0x7463656e6e6f6320,%rax
  4033fd:	65 63 74 
  403400:	48 89 45 10          	mov    %rax,0x10(%rbp)
  403404:	48 b8 20 74 6f 20 73 	movabs $0x76726573206f7420,%rax
  40340b:	65 72 76 
  40340e:	48 89 45 18          	mov    %rax,0x18(%rbp)
  403412:	66 c7 45 20 65 72    	movw   $0x7265,0x20(%rbp)
  403418:	c6 45 22 00          	movb   $0x0,0x22(%rbp)
  40341c:	89 df                	mov    %ebx,%edi
  40341e:	e8 6d db ff ff       	callq  400f90 <close@plt>
  403423:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  403428:	e9 dc fe ff ff       	jmpq   403309 <init_driver+0xe0>
  40342d:	e8 0e db ff ff       	callq  400f40 <__stack_chk_fail@plt>

0000000000403432 <driver_post>:
  403432:	53                   	push   %rbx
  403433:	4c 89 cb             	mov    %r9,%rbx
  403436:	45 85 c0             	test   %r8d,%r8d
  403439:	75 18                	jne    403453 <driver_post+0x21>
  40343b:	48 85 ff             	test   %rdi,%rdi
  40343e:	74 05                	je     403445 <driver_post+0x13>
  403440:	80 3f 00             	cmpb   $0x0,(%rdi)
  403443:	75 37                	jne    40347c <driver_post+0x4a>
  403445:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
  40344a:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
  40344e:	44 89 c0             	mov    %r8d,%eax
  403451:	5b                   	pop    %rbx
  403452:	c3                   	retq   
  403453:	48 89 ca             	mov    %rcx,%rdx
  403456:	48 8d 35 80 09 00 00 	lea    0x980(%rip),%rsi        # 403ddd <trans_char+0xdd>
  40345d:	bf 01 00 00 00       	mov    $0x1,%edi
  403462:	b8 00 00 00 00       	mov    $0x0,%eax
  403467:	e8 04 dc ff ff       	callq  401070 <__printf_chk@plt>
  40346c:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
  403471:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
  403475:	b8 00 00 00 00       	mov    $0x0,%eax
  40347a:	eb d5                	jmp    403451 <driver_post+0x1f>
  40347c:	48 83 ec 08          	sub    $0x8,%rsp
  403480:	41 51                	push   %r9
  403482:	49 89 c9             	mov    %rcx,%r9
  403485:	49 89 d0             	mov    %rdx,%r8
  403488:	48 89 f9             	mov    %rdi,%rcx
  40348b:	48 89 f2             	mov    %rsi,%rdx
  40348e:	be 9a 3c 00 00       	mov    $0x3c9a,%esi
  403493:	48 8d 3d 2b 09 00 00 	lea    0x92b(%rip),%rdi        # 403dc5 <trans_char+0xc5>
  40349a:	e8 b1 f5 ff ff       	callq  402a50 <submitr>
  40349f:	48 83 c4 10          	add    $0x10,%rsp
  4034a3:	eb ac                	jmp    403451 <driver_post+0x1f>

00000000004034a5 <check>:
  4034a5:	89 f8                	mov    %edi,%eax
  4034a7:	c1 e8 1c             	shr    $0x1c,%eax
  4034aa:	85 c0                	test   %eax,%eax
  4034ac:	74 1d                	je     4034cb <check+0x26>
  4034ae:	b9 00 00 00 00       	mov    $0x0,%ecx
  4034b3:	83 f9 1f             	cmp    $0x1f,%ecx
  4034b6:	7f 0d                	jg     4034c5 <check+0x20>
  4034b8:	89 f8                	mov    %edi,%eax
  4034ba:	d3 e8                	shr    %cl,%eax
  4034bc:	3c 0a                	cmp    $0xa,%al
  4034be:	74 11                	je     4034d1 <check+0x2c>
  4034c0:	83 c1 08             	add    $0x8,%ecx
  4034c3:	eb ee                	jmp    4034b3 <check+0xe>
  4034c5:	b8 01 00 00 00       	mov    $0x1,%eax
  4034ca:	c3                   	retq   
  4034cb:	b8 00 00 00 00       	mov    $0x0,%eax
  4034d0:	c3                   	retq   
  4034d1:	b8 00 00 00 00       	mov    $0x0,%eax
  4034d6:	c3                   	retq   

00000000004034d7 <gencookie>:
  4034d7:	53                   	push   %rbx
  4034d8:	83 c7 01             	add    $0x1,%edi
  4034db:	e8 10 da ff ff       	callq  400ef0 <srandom@plt>
  4034e0:	e8 4b db ff ff       	callq  401030 <random@plt>
  4034e5:	89 c3                	mov    %eax,%ebx
  4034e7:	89 c7                	mov    %eax,%edi
  4034e9:	e8 b7 ff ff ff       	callq  4034a5 <check>
  4034ee:	85 c0                	test   %eax,%eax
  4034f0:	74 ee                	je     4034e0 <gencookie+0x9>
  4034f2:	89 d8                	mov    %ebx,%eax
  4034f4:	5b                   	pop    %rbx
  4034f5:	c3                   	retq   
  4034f6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4034fd:	00 00 00 

0000000000403500 <__libc_csu_init>:
  403500:	41 57                	push   %r15
  403502:	41 56                	push   %r14
  403504:	41 89 ff             	mov    %edi,%r15d
  403507:	41 55                	push   %r13
  403509:	41 54                	push   %r12
  40350b:	4c 8d 25 16 19 20 00 	lea    0x201916(%rip),%r12        # 604e28 <__CTOR_LIST__>
  403512:	55                   	push   %rbp
  403513:	48 8d 2d 0e 19 20 00 	lea    0x20190e(%rip),%rbp        # 604e28 <__CTOR_LIST__>
  40351a:	53                   	push   %rbx
  40351b:	49 89 f6             	mov    %rsi,%r14
  40351e:	49 89 d5             	mov    %rdx,%r13
  403521:	4c 29 e5             	sub    %r12,%rbp
  403524:	48 83 ec 08          	sub    $0x8,%rsp
  403528:	48 c1 fd 03          	sar    $0x3,%rbp
  40352c:	e8 67 d9 ff ff       	callq  400e98 <_init>
  403531:	48 85 ed             	test   %rbp,%rbp
  403534:	74 20                	je     403556 <__libc_csu_init+0x56>
  403536:	31 db                	xor    %ebx,%ebx
  403538:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40353f:	00 
  403540:	4c 89 ea             	mov    %r13,%rdx
  403543:	4c 89 f6             	mov    %r14,%rsi
  403546:	44 89 ff             	mov    %r15d,%edi
  403549:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
  40354d:	48 83 c3 01          	add    $0x1,%rbx
  403551:	48 39 eb             	cmp    %rbp,%rbx
  403554:	75 ea                	jne    403540 <__libc_csu_init+0x40>
  403556:	48 83 c4 08          	add    $0x8,%rsp
  40355a:	5b                   	pop    %rbx
  40355b:	5d                   	pop    %rbp
  40355c:	41 5c                	pop    %r12
  40355e:	41 5d                	pop    %r13
  403560:	41 5e                	pop    %r14
  403562:	41 5f                	pop    %r15
  403564:	c3                   	retq   
  403565:	90                   	nop
  403566:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40356d:	00 00 00 

0000000000403570 <__libc_csu_fini>:
  403570:	f3 c3                	repz retq 
  403572:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  403579:	00 00 00 
  40357c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000403580 <__do_global_ctors_aux>:
  403580:	48 8b 05 a1 18 20 00 	mov    0x2018a1(%rip),%rax        # 604e28 <__CTOR_LIST__>
  403587:	48 83 f8 ff          	cmp    $0xffffffffffffffff,%rax
  40358b:	74 28                	je     4035b5 <__do_global_ctors_aux+0x35>
  40358d:	55                   	push   %rbp
  40358e:	48 89 e5             	mov    %rsp,%rbp
  403591:	53                   	push   %rbx
  403592:	48 8d 1d 8f 18 20 00 	lea    0x20188f(%rip),%rbx        # 604e28 <__CTOR_LIST__>
  403599:	48 83 ec 08          	sub    $0x8,%rsp
  40359d:	0f 1f 00             	nopl   (%rax)
  4035a0:	48 83 eb 08          	sub    $0x8,%rbx
  4035a4:	ff d0                	callq  *%rax
  4035a6:	48 8b 03             	mov    (%rbx),%rax
  4035a9:	48 83 f8 ff          	cmp    $0xffffffffffffffff,%rax
  4035ad:	75 f1                	jne    4035a0 <__do_global_ctors_aux+0x20>
  4035af:	48 83 c4 08          	add    $0x8,%rsp
  4035b3:	5b                   	pop    %rbx
  4035b4:	5d                   	pop    %rbp
  4035b5:	f3 c3                	repz retq 

Desmontagem da seção .fini:

00000000004035b8 <_fini>:
  4035b8:	48 83 ec 08          	sub    $0x8,%rsp
  4035bc:	e8 1f dc ff ff       	callq  4011e0 <__do_global_dtors_aux>
  4035c1:	48 83 c4 08          	add    $0x8,%rsp
  4035c5:	c3                   	retq   
