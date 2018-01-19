
rtarget: formato do arquivo elf64-x86-64


Desmontagem da seção .init:

0000000000400e98 <_init>:
  400e98:	48 83 ec 08          	sub    $0x8,%rsp
  400e9c:	48 8b 05 45 41 20 00 	mov    0x204145(%rip),%rax        # 604fe8 <__gmon_start__>
  400ea3:	48 85 c0             	test   %rax,%rax
  400ea6:	74 05                	je     400ead <_init+0x15>
  400ea8:	e8 63 02 00 00       	callq  401110 <.plt.got>
  400ead:	e8 9e 03 00 00       	callq  401250 <frame_dummy>
  400eb2:	e8 e9 27 00 00       	callq  4036a0 <__do_global_ctors_aux>
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
  40112f:	49 c7 c0 90 36 40 00 	mov    $0x403690,%r8
  401136:	48 c7 c1 20 36 40 00 	mov    $0x403620,%rcx
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
  401290:	bf f8 36 40 00       	mov    $0x4036f8,%edi
  401295:	b8 00 00 00 00       	mov    $0x0,%eax
  40129a:	e8 c1 fc ff ff       	callq  400f60 <printf@plt>
  40129f:	bf 30 37 40 00       	mov    $0x403730,%edi
  4012a4:	e8 77 fc ff ff       	callq  400f20 <puts@plt>
  4012a9:	bf a8 38 40 00       	mov    $0x4038a8,%edi
  4012ae:	e8 6d fc ff ff       	callq  400f20 <puts@plt>
  4012b3:	bf 58 37 40 00       	mov    $0x403758,%edi
  4012b8:	e8 63 fc ff ff       	callq  400f20 <puts@plt>
  4012bd:	bf c2 38 40 00       	mov    $0x4038c2,%edi
  4012c2:	e8 59 fc ff ff       	callq  400f20 <puts@plt>
  4012c7:	eb 2d                	jmp    4012f6 <usage+0x76>
  4012c9:	bf de 38 40 00       	mov    $0x4038de,%edi
  4012ce:	b8 00 00 00 00       	mov    $0x0,%eax
  4012d3:	e8 88 fc ff ff       	callq  400f60 <printf@plt>
  4012d8:	bf 80 37 40 00       	mov    $0x403780,%edi
  4012dd:	e8 3e fc ff ff       	callq  400f20 <puts@plt>
  4012e2:	bf a8 37 40 00       	mov    $0x4037a8,%edi
  4012e7:	e8 34 fc ff ff       	callq  400f20 <puts@plt>
  4012ec:	bf fc 38 40 00       	mov    $0x4038fc,%edi
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
  401317:	e8 db 22 00 00       	callq  4035f7 <gencookie>
  40131c:	89 05 02 42 20 00    	mov    %eax,0x204202(%rip)        # 605524 <cookie>
  401322:	89 c7                	mov    %eax,%edi
  401324:	e8 ce 22 00 00       	callq  4035f7 <gencookie>
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
  401381:	c6 05 c0 4d 20 00 72 	movb   $0x72,0x204dc0(%rip)        # 606148 <target_prefix>
  401388:	83 3d 19 41 20 00 00 	cmpl   $0x0,0x204119(%rip)        # 6054a8 <notify>
  40138f:	0f 84 b1 00 00 00    	je     401446 <initialize_target+0x146>
  401395:	83 3d 8c 41 20 00 00 	cmpl   $0x0,0x20418c(%rip)        # 605528 <is_checker>
  40139c:	0f 85 a4 00 00 00    	jne    401446 <initialize_target+0x146>
  4013a2:	be 00 01 00 00       	mov    $0x100,%esi
  4013a7:	48 89 e7             	mov    %rsp,%rdi
  4013aa:	e8 01 fd ff ff       	callq  4010b0 <gethostname@plt>
  4013af:	85 c0                	test   %eax,%eax
  4013b1:	74 25                	je     4013d8 <initialize_target+0xd8>
  4013b3:	bf d8 37 40 00       	mov    $0x4037d8,%edi
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
  401400:	bf 10 38 40 00       	mov    $0x403810,%edi
  401405:	e8 56 fb ff ff       	callq  400f60 <printf@plt>
  40140a:	bf 08 00 00 00       	mov    $0x8,%edi
  40140f:	e8 ac fc ff ff       	callq  4010c0 <exit@plt>
  401414:	48 8d bc 24 00 01 00 	lea    0x100(%rsp),%rdi
  40141b:	00 
  40141c:	e8 28 1f 00 00       	callq  403349 <init_driver>
  401421:	85 c0                	test   %eax,%eax
  401423:	79 21                	jns    401446 <initialize_target+0x146>
  401425:	48 8d b4 24 00 01 00 	lea    0x100(%rsp),%rsi
  40142c:	00 
  40142d:	bf 50 38 40 00       	mov    $0x403850,%edi
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
  40145e:	be 29 26 40 00       	mov    $0x402629,%esi
  401463:	bf 0b 00 00 00       	mov    $0xb,%edi
  401468:	e8 53 fb ff ff       	callq  400fc0 <signal@plt>
  40146d:	be d5 25 40 00       	mov    $0x4025d5,%esi
  401472:	bf 07 00 00 00       	mov    $0x7,%edi
  401477:	e8 44 fb ff ff       	callq  400fc0 <signal@plt>
  40147c:	be 7d 26 40 00       	mov    $0x40267d,%esi
  401481:	bf 04 00 00 00       	mov    $0x4,%edi
  401486:	e8 35 fb ff ff       	callq  400fc0 <signal@plt>
  40148b:	83 3d 96 40 20 00 00 	cmpl   $0x0,0x204096(%rip)        # 605528 <is_checker>
  401492:	74 20                	je     4014b4 <main+0x64>
  401494:	be d1 26 40 00       	mov    $0x4026d1,%esi
  401499:	bf 0e 00 00 00       	mov    $0xe,%edi
  40149e:	e8 1d fb ff ff       	callq  400fc0 <signal@plt>
  4014a3:	bf 05 00 00 00       	mov    $0x5,%edi
  4014a8:	e8 d3 fa ff ff       	callq  400f80 <alarm@plt>
  4014ad:	bd 1a 39 40 00       	mov    $0x40391a,%ebp
  4014b2:	eb 05                	jmp    4014b9 <main+0x69>
  4014b4:	bd 15 39 40 00       	mov    $0x403915,%ebp
  4014b9:	48 8b 05 00 40 20 00 	mov    0x204000(%rip),%rax        # 6054c0 <stdin@@GLIBC_2.2.5>
  4014c0:	48 89 05 49 40 20 00 	mov    %rax,0x204049(%rip)        # 605510 <infile>
  4014c7:	41 bd 00 00 00 00    	mov    $0x0,%r13d
  4014cd:	41 be 00 00 00 00    	mov    $0x0,%r14d
  4014d3:	e9 b9 00 00 00       	jmpq   401591 <main+0x141>
  4014d8:	83 e8 61             	sub    $0x61,%eax
  4014db:	3c 10                	cmp    $0x10,%al
  4014dd:	0f 87 93 00 00 00    	ja     401576 <main+0x126>
  4014e3:	0f b6 c0             	movzbl %al,%eax
  4014e6:	ff 24 c5 60 39 40 00 	jmpq   *0x403960(,%rax,8)
  4014ed:	48 8b 3b             	mov    (%rbx),%rdi
  4014f0:	e8 8b fd ff ff       	callq  401280 <usage>
  4014f5:	be dd 3b 40 00       	mov    $0x403bdd,%esi
  4014fa:	48 8b 3d c7 3f 20 00 	mov    0x203fc7(%rip),%rdi        # 6054c8 <optarg@@GLIBC_2.2.5>
  401501:	e8 7a fb ff ff       	callq  401080 <fopen@plt>
  401506:	48 89 05 03 40 20 00 	mov    %rax,0x204003(%rip)        # 605510 <infile>
  40150d:	48 85 c0             	test   %rax,%rax
  401510:	75 7f                	jne    401591 <main+0x141>
  401512:	48 8b 15 af 3f 20 00 	mov    0x203faf(%rip),%rdx        # 6054c8 <optarg@@GLIBC_2.2.5>
  401519:	be 22 39 40 00       	mov    $0x403922,%esi
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
  40157a:	bf 3f 39 40 00       	mov    $0x40393f,%edi
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
  4015a9:	be 01 00 00 00       	mov    $0x1,%esi
  4015ae:	44 89 ef             	mov    %r13d,%edi
  4015b1:	e8 4a fd ff ff       	callq  401300 <initialize_target>
  4015b6:	83 3d 6b 3f 20 00 00 	cmpl   $0x0,0x203f6b(%rip)        # 605528 <is_checker>
  4015bd:	74 25                	je     4015e4 <main+0x194>
  4015bf:	44 3b 35 5a 3f 20 00 	cmp    0x203f5a(%rip),%r14d        # 605520 <authkey>
  4015c6:	74 1c                	je     4015e4 <main+0x194>
  4015c8:	44 89 f6             	mov    %r14d,%esi
  4015cb:	bf 78 38 40 00       	mov    $0x403878,%edi
  4015d0:	b8 00 00 00 00       	mov    $0x0,%eax
  4015d5:	e8 86 f9 ff ff       	callq  400f60 <printf@plt>
  4015da:	b8 00 00 00 00       	mov    $0x0,%eax
  4015df:	e8 51 0c 00 00       	callq  402235 <check_fail>
  4015e4:	8b 35 3a 3f 20 00    	mov    0x203f3a(%rip),%esi        # 605524 <cookie>
  4015ea:	bf 52 39 40 00       	mov    $0x403952,%edi
  4015ef:	b8 00 00 00 00       	mov    $0x0,%eax
  4015f4:	e8 67 f9 ff ff       	callq  400f60 <printf@plt>
  4015f9:	48 8b 3d a0 3e 20 00 	mov    0x203ea0(%rip),%rdi        # 6054a0 <buf_offset>
  401600:	e8 23 11 00 00       	callq  402728 <launch>
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
  401eb4:	e8 b4 03 00 00       	callq  40226d <Gets>
  401eb9:	b8 01 00 00 00       	mov    $0x1,%eax
  401ebe:	48 83 c4 28          	add    $0x28,%rsp
  401ec2:	c3                   	retq   

0000000000401ec3 <touch1>:
  401ec3:	48 83 ec 08          	sub    $0x8,%rsp
  401ec7:	c7 05 4b 36 20 00 01 	movl   $0x1,0x20364b(%rip)        # 60551c <vlevel>
  401ece:	00 00 00 
  401ed1:	48 8d 3d 5c 1b 00 00 	lea    0x1b5c(%rip),%rdi        # 403a34 <_IO_stdin_used+0x344>
  401ed8:	e8 43 f0 ff ff       	callq  400f20 <puts@plt>
  401edd:	bf 01 00 00 00       	mov    $0x1,%edi
  401ee2:	e8 f6 05 00 00       	callq  4024dd <validate>
  401ee7:	bf 00 00 00 00       	mov    $0x0,%edi
  401eec:	e8 cf f1 ff ff       	callq  4010c0 <exit@plt>

0000000000401ef1 <touch2>:
  401ef1:	48 83 ec 08          	sub    $0x8,%rsp
  401ef5:	89 fa                	mov    %edi,%edx
  401ef7:	c7 05 1b 36 20 00 02 	movl   $0x2,0x20361b(%rip)        # 60551c <vlevel>
  401efe:	00 00 00 
  401f01:	39 3d 1d 36 20 00    	cmp    %edi,0x20361d(%rip)        # 605524 <cookie>
  401f07:	74 2a                	je     401f33 <touch2+0x42>
  401f09:	48 8d 35 70 1b 00 00 	lea    0x1b70(%rip),%rsi        # 403a80 <_IO_stdin_used+0x390>
  401f10:	bf 01 00 00 00       	mov    $0x1,%edi
  401f15:	b8 00 00 00 00       	mov    $0x0,%eax
  401f1a:	e8 51 f1 ff ff       	callq  401070 <__printf_chk@plt>
  401f1f:	bf 02 00 00 00       	mov    $0x2,%edi
  401f24:	e8 84 06 00 00       	callq  4025ad <fail>
  401f29:	bf 00 00 00 00       	mov    $0x0,%edi
  401f2e:	e8 8d f1 ff ff       	callq  4010c0 <exit@plt>
  401f33:	48 8d 35 1e 1b 00 00 	lea    0x1b1e(%rip),%rsi        # 403a58 <_IO_stdin_used+0x368>
  401f3a:	bf 01 00 00 00       	mov    $0x1,%edi
  401f3f:	b8 00 00 00 00       	mov    $0x0,%eax
  401f44:	e8 27 f1 ff ff       	callq  401070 <__printf_chk@plt>
  401f49:	bf 02 00 00 00       	mov    $0x2,%edi
  401f4e:	e8 8a 05 00 00       	callq  4024dd <validate>
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
  401fb2:	48 8d 0d 98 1a 00 00 	lea    0x1a98(%rip),%rcx        # 403a51 <_IO_stdin_used+0x361>
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
  40202b:	48 8d 35 76 1a 00 00 	lea    0x1a76(%rip),%rsi        # 403aa8 <_IO_stdin_used+0x3b8>
  402032:	bf 01 00 00 00       	mov    $0x1,%edi
  402037:	b8 00 00 00 00       	mov    $0x0,%eax
  40203c:	e8 2f f0 ff ff       	callq  401070 <__printf_chk@plt>
  402041:	bf 03 00 00 00       	mov    $0x3,%edi
  402046:	e8 92 04 00 00       	callq  4024dd <validate>
  40204b:	bf 00 00 00 00       	mov    $0x0,%edi
  402050:	e8 6b f0 ff ff       	callq  4010c0 <exit@plt>
  402055:	48 89 da             	mov    %rbx,%rdx
  402058:	48 8d 35 71 1a 00 00 	lea    0x1a71(%rip),%rsi        # 403ad0 <_IO_stdin_used+0x3e0>
  40205f:	bf 01 00 00 00       	mov    $0x1,%edi
  402064:	b8 00 00 00 00       	mov    $0x0,%eax
  402069:	e8 02 f0 ff ff       	callq  401070 <__printf_chk@plt>
  40206e:	bf 03 00 00 00       	mov    $0x3,%edi
  402073:	e8 35 05 00 00       	callq  4025ad <fail>
  402078:	eb d1                	jmp    40204b <touch3+0x43>

000000000040207a <test>:
  40207a:	48 83 ec 08          	sub    $0x8,%rsp
  40207e:	b8 00 00 00 00       	mov    $0x0,%eax
  402083:	e8 25 fe ff ff       	callq  401ead <getbuf>
  402088:	89 c2                	mov    %eax,%edx
  40208a:	48 8d 35 67 1a 00 00 	lea    0x1a67(%rip),%rsi        # 403af8 <_IO_stdin_used+0x408>
  402091:	bf 01 00 00 00       	mov    $0x1,%edi
  402096:	b8 00 00 00 00       	mov    $0x0,%eax
  40209b:	e8 d0 ef ff ff       	callq  401070 <__printf_chk@plt>
  4020a0:	48 83 c4 08          	add    $0x8,%rsp
  4020a4:	c3                   	retq   

00000000004020a5 <start_farm>:
  4020a5:	b8 01 00 00 00       	mov    $0x1,%eax
  4020aa:	c3                   	retq   

00000000004020ab <addval_271>:
  4020ab:	8d 87 58 c3 97 c0    	lea    -0x3f683ca8(%rdi),%eax
  4020b1:	c3                   	retq   

00000000004020b2 <addval_114>:
  4020b2:	8d 87 48 89 c7 c7    	lea    -0x383876b8(%rdi),%eax
  4020b8:	c3                   	retq   

00000000004020b9 <setval_448>:
  4020b9:	c7 07 48 89 c7 c3    	movl   $0xc3c78948,(%rdi)
  4020bf:	c3                   	retq   

00000000004020c0 <addval_113>:
  4020c0:	8d 87 58 90 90 c3    	lea    -0x3c6f6fa8(%rdi),%eax
  4020c6:	c3                   	retq   

00000000004020c7 <getval_469>:
  4020c7:	b8 b2 58 92 90       	mov    $0x909258b2,%eax
  4020cc:	c3                   	retq   

00000000004020cd <getval_337>:
  4020cd:	b8 85 48 8d c7       	mov    $0xc78d4885,%eax
  4020d2:	c3                   	retq   

00000000004020d3 <getval_159>:
  4020d3:	b8 30 0f 58 94       	mov    $0x94580f30,%eax
  4020d8:	c3                   	retq   

00000000004020d9 <getval_118>:
  4020d9:	b8 48 89 c7 90       	mov    $0x90c78948,%eax
  4020de:	c3                   	retq   

00000000004020df <mid_farm>:
  4020df:	b8 01 00 00 00       	mov    $0x1,%eax
  4020e4:	c3                   	retq   

00000000004020e5 <add_xy>:
  4020e5:	48 8d 04 37          	lea    (%rdi,%rsi,1),%rax
  4020e9:	c3                   	retq   

00000000004020ea <setval_243>:
  4020ea:	c7 07 89 ce 78 d2    	movl   $0xd278ce89,(%rdi)
  4020f0:	c3                   	retq   

00000000004020f1 <getval_473>:
  4020f1:	b8 b1 89 d1 c3       	mov    $0xc3d189b1,%eax
  4020f6:	c3                   	retq   

00000000004020f7 <setval_397>:
  4020f7:	c7 07 3c 09 c2 90    	movl   $0x90c2093c,(%rdi)
  4020fd:	c3                   	retq   

00000000004020fe <getval_356>:
  4020fe:	b8 89 c2 48 d2       	mov    $0xd248c289,%eax
  402103:	c3                   	retq   

0000000000402104 <setval_425>:
  402104:	c7 07 89 d1 90 c1    	movl   $0xc190d189,(%rdi)
  40210a:	c3                   	retq   

000000000040210b <getval_225>:
  40210b:	b8 48 89 e0 c3       	mov    $0xc3e08948,%eax
  402110:	c3                   	retq   

0000000000402111 <getval_180>:
  402111:	b8 09 c2 38 d2       	mov    $0xd238c209,%eax
  402116:	c3                   	retq   

0000000000402117 <addval_498>:
  402117:	8d 87 48 8b e0 c3    	lea    -0x3c1f74b8(%rdi),%eax
  40211d:	c3                   	retq   

000000000040211e <addval_451>:
  40211e:	8d 87 48 89 e0 c3    	lea    -0x3c1f76b8(%rdi),%eax
  402124:	c3                   	retq   

0000000000402125 <setval_321>:
  402125:	c7 07 49 89 e0 90    	movl   $0x90e08949,(%rdi)
  40212b:	c3                   	retq   

000000000040212c <getval_136>:
  40212c:	b8 88 ce 84 d2       	mov    $0xd284ce88,%eax
  402131:	c3                   	retq   

0000000000402132 <getval_334>:
  402132:	b8 48 89 e0 94       	mov    $0x94e08948,%eax
  402137:	c3                   	retq   

0000000000402138 <addval_408>:
  402138:	8d 87 89 c2 c4 d2    	lea    -0x2d3b3d77(%rdi),%eax
  40213e:	c3                   	retq   

000000000040213f <setval_339>:
  40213f:	c7 07 89 d1 92 c3    	movl   $0xc392d189,(%rdi)
  402145:	c3                   	retq   

0000000000402146 <getval_237>:
  402146:	b8 81 ce 84 d2       	mov    $0xd284ce81,%eax
  40214b:	c3                   	retq   

000000000040214c <setval_307>:
  40214c:	c7 07 c9 d1 84 c9    	movl   $0xc984d1c9,(%rdi)
  402152:	c3                   	retq   

0000000000402153 <setval_414>:
  402153:	c7 07 89 c2 38 c9    	movl   $0xc938c289,(%rdi)
  402159:	c3                   	retq   

000000000040215a <addval_424>:
  40215a:	8d 87 99 d1 20 c0    	lea    -0x3fdf2e67(%rdi),%eax
  402160:	c3                   	retq   

0000000000402161 <setval_412>:
  402161:	c7 07 89 d1 c4 d2    	movl   $0xd2c4d189,(%rdi)
  402167:	c3                   	retq   

0000000000402168 <setval_254>:
  402168:	c7 07 89 ce 38 db    	movl   $0xdb38ce89,(%rdi)
  40216e:	c3                   	retq   

000000000040216f <addval_179>:
  40216f:	8d 87 48 89 e0 c1    	lea    -0x3e1f76b8(%rdi),%eax
  402175:	c3                   	retq   

0000000000402176 <getval_178>:
  402176:	b8 89 ce 84 db       	mov    $0xdb84ce89,%eax
  40217b:	c3                   	retq   

000000000040217c <setval_481>:
  40217c:	c7 07 88 ce 20 db    	movl   $0xdb20ce88,(%rdi)
  402182:	c3                   	retq   

0000000000402183 <setval_411>:
  402183:	c7 07 48 89 e0 c1    	movl   $0xc1e08948,(%rdi)
  402189:	c3                   	retq   

000000000040218a <setval_160>:
  40218a:	c7 07 89 c2 08 c9    	movl   $0xc908c289,(%rdi)
  402190:	c3                   	retq   

0000000000402191 <addval_435>:
  402191:	8d 87 88 c2 90 90    	lea    -0x6f6f3d78(%rdi),%eax
  402197:	c3                   	retq   

0000000000402198 <setval_285>:
  402198:	c7 07 89 ce 94 90    	movl   $0x9094ce89,(%rdi)
  40219e:	c3                   	retq   

000000000040219f <addval_387>:
  40219f:	8d 87 48 89 e0 91    	lea    -0x6e1f76b8(%rdi),%eax
  4021a5:	c3                   	retq   

00000000004021a6 <getval_430>:
  4021a6:	b8 c9 d1 38 c9       	mov    $0xc938d1c9,%eax
  4021ab:	c3                   	retq   

00000000004021ac <getval_156>:
  4021ac:	b8 89 ce 18 c9       	mov    $0xc918ce89,%eax
  4021b1:	c3                   	retq   

00000000004021b2 <getval_164>:
  4021b2:	b8 89 d1 90 c3       	mov    $0xc390d189,%eax
  4021b7:	c3                   	retq   

00000000004021b8 <setval_471>:
  4021b8:	c7 07 99 c2 90 c3    	movl   $0xc390c299,(%rdi)
  4021be:	c3                   	retq   

00000000004021bf <end_farm>:
  4021bf:	b8 01 00 00 00       	mov    $0x1,%eax
  4021c4:	c3                   	retq   

00000000004021c5 <save_char>:
  4021c5:	8b 05 79 3f 20 00    	mov    0x203f79(%rip),%eax        # 606144 <gets_cnt>
  4021cb:	3d ff 03 00 00       	cmp    $0x3ff,%eax
  4021d0:	7f 4a                	jg     40221c <save_char+0x57>
  4021d2:	8d 14 40             	lea    (%rax,%rax,2),%edx
  4021d5:	89 f9                	mov    %edi,%ecx
  4021d7:	c0 e9 04             	shr    $0x4,%cl
  4021da:	4c 8d 05 3f 1c 00 00 	lea    0x1c3f(%rip),%r8        # 403e20 <trans_char>
  4021e1:	83 e1 0f             	and    $0xf,%ecx
  4021e4:	45 0f b6 0c 08       	movzbl (%r8,%rcx,1),%r9d
  4021e9:	48 8d 0d 50 33 20 00 	lea    0x203350(%rip),%rcx        # 605540 <gets_buf>
  4021f0:	48 63 f2             	movslq %edx,%rsi
  4021f3:	44 88 0c 31          	mov    %r9b,(%rcx,%rsi,1)
  4021f7:	8d 72 01             	lea    0x1(%rdx),%esi
  4021fa:	83 e7 0f             	and    $0xf,%edi
  4021fd:	41 0f b6 3c 38       	movzbl (%r8,%rdi,1),%edi
  402202:	48 63 f6             	movslq %esi,%rsi
  402205:	40 88 3c 31          	mov    %dil,(%rcx,%rsi,1)
  402209:	83 c2 02             	add    $0x2,%edx
  40220c:	48 63 d2             	movslq %edx,%rdx
  40220f:	c6 04 11 20          	movb   $0x20,(%rcx,%rdx,1)
  402213:	83 c0 01             	add    $0x1,%eax
  402216:	89 05 28 3f 20 00    	mov    %eax,0x203f28(%rip)        # 606144 <gets_cnt>
  40221c:	f3 c3                	repz retq 

000000000040221e <save_term>:
  40221e:	8b 05 20 3f 20 00    	mov    0x203f20(%rip),%eax        # 606144 <gets_cnt>
  402224:	8d 04 40             	lea    (%rax,%rax,2),%eax
  402227:	48 98                	cltq   
  402229:	48 8d 15 10 33 20 00 	lea    0x203310(%rip),%rdx        # 605540 <gets_buf>
  402230:	c6 04 02 00          	movb   $0x0,(%rdx,%rax,1)
  402234:	c3                   	retq   

0000000000402235 <check_fail>:
  402235:	48 83 ec 08          	sub    $0x8,%rsp
  402239:	0f be 15 08 3f 20 00 	movsbl 0x203f08(%rip),%edx        # 606148 <target_prefix>
  402240:	4c 8d 05 f9 32 20 00 	lea    0x2032f9(%rip),%r8        # 605540 <gets_buf>
  402247:	8b 0d cb 32 20 00    	mov    0x2032cb(%rip),%ecx        # 605518 <check_level>
  40224d:	48 8d 35 c7 18 00 00 	lea    0x18c7(%rip),%rsi        # 403b1b <_IO_stdin_used+0x42b>
  402254:	bf 01 00 00 00       	mov    $0x1,%edi
  402259:	b8 00 00 00 00       	mov    $0x0,%eax
  40225e:	e8 0d ee ff ff       	callq  401070 <__printf_chk@plt>
  402263:	bf 01 00 00 00       	mov    $0x1,%edi
  402268:	e8 53 ee ff ff       	callq  4010c0 <exit@plt>

000000000040226d <Gets>:
  40226d:	41 54                	push   %r12
  40226f:	55                   	push   %rbp
  402270:	53                   	push   %rbx
  402271:	49 89 fc             	mov    %rdi,%r12
  402274:	c7 05 c6 3e 20 00 00 	movl   $0x0,0x203ec6(%rip)        # 606144 <gets_cnt>
  40227b:	00 00 00 
  40227e:	48 89 fb             	mov    %rdi,%rbx
  402281:	eb 11                	jmp    402294 <Gets+0x27>
  402283:	48 8d 6b 01          	lea    0x1(%rbx),%rbp
  402287:	88 03                	mov    %al,(%rbx)
  402289:	0f b6 f8             	movzbl %al,%edi
  40228c:	e8 34 ff ff ff       	callq  4021c5 <save_char>
  402291:	48 89 eb             	mov    %rbp,%rbx
  402294:	48 8b 3d 75 32 20 00 	mov    0x203275(%rip),%rdi        # 605510 <infile>
  40229b:	e8 a0 ed ff ff       	callq  401040 <_IO_getc@plt>
  4022a0:	83 f8 ff             	cmp    $0xffffffff,%eax
  4022a3:	74 05                	je     4022aa <Gets+0x3d>
  4022a5:	83 f8 0a             	cmp    $0xa,%eax
  4022a8:	75 d9                	jne    402283 <Gets+0x16>
  4022aa:	c6 03 00             	movb   $0x0,(%rbx)
  4022ad:	b8 00 00 00 00       	mov    $0x0,%eax
  4022b2:	e8 67 ff ff ff       	callq  40221e <save_term>
  4022b7:	4c 89 e0             	mov    %r12,%rax
  4022ba:	5b                   	pop    %rbx
  4022bb:	5d                   	pop    %rbp
  4022bc:	41 5c                	pop    %r12
  4022be:	c3                   	retq   

00000000004022bf <notify_server>:
  4022bf:	55                   	push   %rbp
  4022c0:	53                   	push   %rbx
  4022c1:	48 81 ec 18 40 00 00 	sub    $0x4018,%rsp
  4022c8:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  4022cf:	00 00 
  4022d1:	48 89 84 24 08 40 00 	mov    %rax,0x4008(%rsp)
  4022d8:	00 
  4022d9:	31 c0                	xor    %eax,%eax
  4022db:	83 3d 46 32 20 00 00 	cmpl   $0x0,0x203246(%rip)        # 605528 <is_checker>
  4022e2:	0f 85 d2 00 00 00    	jne    4023ba <notify_server+0xfb>
  4022e8:	89 fb                	mov    %edi,%ebx
  4022ea:	8b 05 54 3e 20 00    	mov    0x203e54(%rip),%eax        # 606144 <gets_cnt>
  4022f0:	83 c0 64             	add    $0x64,%eax
  4022f3:	3d 00 20 00 00       	cmp    $0x2000,%eax
  4022f8:	0f 8f dd 00 00 00    	jg     4023db <notify_server+0x11c>
  4022fe:	0f be 05 43 3e 20 00 	movsbl 0x203e43(%rip),%eax        # 606148 <target_prefix>
  402305:	83 3d 9c 31 20 00 00 	cmpl   $0x0,0x20319c(%rip)        # 6054a8 <notify>
  40230c:	0f 84 e9 00 00 00    	je     4023fb <notify_server+0x13c>
  402312:	8b 15 08 32 20 00    	mov    0x203208(%rip),%edx        # 605520 <authkey>
  402318:	85 db                	test   %ebx,%ebx
  40231a:	0f 84 e5 00 00 00    	je     402405 <notify_server+0x146>
  402320:	48 8d 2d 0a 18 00 00 	lea    0x180a(%rip),%rbp        # 403b31 <_IO_stdin_used+0x441>
  402327:	48 89 e7             	mov    %rsp,%rdi
  40232a:	48 8d 0d 0f 32 20 00 	lea    0x20320f(%rip),%rcx        # 605540 <gets_buf>
  402331:	51                   	push   %rcx
  402332:	56                   	push   %rsi
  402333:	50                   	push   %rax
  402334:	52                   	push   %rdx
  402335:	49 89 e9             	mov    %rbp,%r9
  402338:	44 8b 05 29 2e 20 00 	mov    0x202e29(%rip),%r8d        # 605168 <target_id>
  40233f:	48 8d 0d f5 17 00 00 	lea    0x17f5(%rip),%rcx        # 403b3b <_IO_stdin_used+0x44b>
  402346:	ba 00 20 00 00       	mov    $0x2000,%edx
  40234b:	be 01 00 00 00       	mov    $0x1,%esi
  402350:	b8 00 00 00 00       	mov    $0x0,%eax
  402355:	e8 96 ed ff ff       	callq  4010f0 <__sprintf_chk@plt>
  40235a:	48 83 c4 20          	add    $0x20,%rsp
  40235e:	83 3d 43 31 20 00 00 	cmpl   $0x0,0x203143(%rip)        # 6054a8 <notify>
  402365:	0f 84 df 00 00 00    	je     40244a <notify_server+0x18b>
  40236b:	85 db                	test   %ebx,%ebx
  40236d:	0f 84 c6 00 00 00    	je     402439 <notify_server+0x17a>
  402373:	48 89 e1             	mov    %rsp,%rcx
  402376:	4c 8d 8c 24 00 20 00 	lea    0x2000(%rsp),%r9
  40237d:	00 
  40237e:	41 b8 00 00 00 00    	mov    $0x0,%r8d
  402384:	48 8b 15 e5 2d 20 00 	mov    0x202de5(%rip),%rdx        # 605170 <lab>
  40238b:	48 8b 35 e6 2d 20 00 	mov    0x202de6(%rip),%rsi        # 605178 <course>
  402392:	48 8b 3d c7 2d 20 00 	mov    0x202dc7(%rip),%rdi        # 605160 <user_id>
  402399:	e8 b4 11 00 00       	callq  403552 <driver_post>
  40239e:	85 c0                	test   %eax,%eax
  4023a0:	78 6f                	js     402411 <notify_server+0x152>
  4023a2:	48 8d 3d d7 18 00 00 	lea    0x18d7(%rip),%rdi        # 403c80 <_IO_stdin_used+0x590>
  4023a9:	e8 72 eb ff ff       	callq  400f20 <puts@plt>
  4023ae:	48 8d 3d ae 17 00 00 	lea    0x17ae(%rip),%rdi        # 403b63 <_IO_stdin_used+0x473>
  4023b5:	e8 66 eb ff ff       	callq  400f20 <puts@plt>
  4023ba:	48 8b 84 24 08 40 00 	mov    0x4008(%rsp),%rax
  4023c1:	00 
  4023c2:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  4023c9:	00 00 
  4023cb:	0f 85 07 01 00 00    	jne    4024d8 <notify_server+0x219>
  4023d1:	48 81 c4 18 40 00 00 	add    $0x4018,%rsp
  4023d8:	5b                   	pop    %rbx
  4023d9:	5d                   	pop    %rbp
  4023da:	c3                   	retq   
  4023db:	48 8d 35 6e 18 00 00 	lea    0x186e(%rip),%rsi        # 403c50 <_IO_stdin_used+0x560>
  4023e2:	bf 01 00 00 00       	mov    $0x1,%edi
  4023e7:	b8 00 00 00 00       	mov    $0x0,%eax
  4023ec:	e8 7f ec ff ff       	callq  401070 <__printf_chk@plt>
  4023f1:	bf 01 00 00 00       	mov    $0x1,%edi
  4023f6:	e8 c5 ec ff ff       	callq  4010c0 <exit@plt>
  4023fb:	ba ff ff ff ff       	mov    $0xffffffff,%edx
  402400:	e9 13 ff ff ff       	jmpq   402318 <notify_server+0x59>
  402405:	48 8d 2d 2a 17 00 00 	lea    0x172a(%rip),%rbp        # 403b36 <_IO_stdin_used+0x446>
  40240c:	e9 16 ff ff ff       	jmpq   402327 <notify_server+0x68>
  402411:	48 8d 94 24 00 20 00 	lea    0x2000(%rsp),%rdx
  402418:	00 
  402419:	48 8d 35 37 17 00 00 	lea    0x1737(%rip),%rsi        # 403b57 <_IO_stdin_used+0x467>
  402420:	bf 01 00 00 00       	mov    $0x1,%edi
  402425:	b8 00 00 00 00       	mov    $0x0,%eax
  40242a:	e8 41 ec ff ff       	callq  401070 <__printf_chk@plt>
  40242f:	bf 01 00 00 00       	mov    $0x1,%edi
  402434:	e8 87 ec ff ff       	callq  4010c0 <exit@plt>
  402439:	48 8d 3d 2d 17 00 00 	lea    0x172d(%rip),%rdi        # 403b6d <_IO_stdin_used+0x47d>
  402440:	e8 db ea ff ff       	callq  400f20 <puts@plt>
  402445:	e9 70 ff ff ff       	jmpq   4023ba <notify_server+0xfb>
  40244a:	48 89 ea             	mov    %rbp,%rdx
  40244d:	48 8d 35 64 18 00 00 	lea    0x1864(%rip),%rsi        # 403cb8 <_IO_stdin_used+0x5c8>
  402454:	bf 01 00 00 00       	mov    $0x1,%edi
  402459:	b8 00 00 00 00       	mov    $0x0,%eax
  40245e:	e8 0d ec ff ff       	callq  401070 <__printf_chk@plt>
  402463:	48 8b 15 f6 2c 20 00 	mov    0x202cf6(%rip),%rdx        # 605160 <user_id>
  40246a:	48 8d 35 03 17 00 00 	lea    0x1703(%rip),%rsi        # 403b74 <_IO_stdin_used+0x484>
  402471:	bf 01 00 00 00       	mov    $0x1,%edi
  402476:	b8 00 00 00 00       	mov    $0x0,%eax
  40247b:	e8 f0 eb ff ff       	callq  401070 <__printf_chk@plt>
  402480:	48 8b 15 f1 2c 20 00 	mov    0x202cf1(%rip),%rdx        # 605178 <course>
  402487:	48 8d 35 f3 16 00 00 	lea    0x16f3(%rip),%rsi        # 403b81 <_IO_stdin_used+0x491>
  40248e:	bf 01 00 00 00       	mov    $0x1,%edi
  402493:	b8 00 00 00 00       	mov    $0x0,%eax
  402498:	e8 d3 eb ff ff       	callq  401070 <__printf_chk@plt>
  40249d:	48 8b 15 cc 2c 20 00 	mov    0x202ccc(%rip),%rdx        # 605170 <lab>
  4024a4:	48 8d 35 e2 16 00 00 	lea    0x16e2(%rip),%rsi        # 403b8d <_IO_stdin_used+0x49d>
  4024ab:	bf 01 00 00 00       	mov    $0x1,%edi
  4024b0:	b8 00 00 00 00       	mov    $0x0,%eax
  4024b5:	e8 b6 eb ff ff       	callq  401070 <__printf_chk@plt>
  4024ba:	48 89 e2             	mov    %rsp,%rdx
  4024bd:	48 8d 35 d2 16 00 00 	lea    0x16d2(%rip),%rsi        # 403b96 <_IO_stdin_used+0x4a6>
  4024c4:	bf 01 00 00 00       	mov    $0x1,%edi
  4024c9:	b8 00 00 00 00       	mov    $0x0,%eax
  4024ce:	e8 9d eb ff ff       	callq  401070 <__printf_chk@plt>
  4024d3:	e9 e2 fe ff ff       	jmpq   4023ba <notify_server+0xfb>
  4024d8:	e8 63 ea ff ff       	callq  400f40 <__stack_chk_fail@plt>

00000000004024dd <validate>:
  4024dd:	53                   	push   %rbx
  4024de:	89 fb                	mov    %edi,%ebx
  4024e0:	83 3d 41 30 20 00 00 	cmpl   $0x0,0x203041(%rip)        # 605528 <is_checker>
  4024e7:	74 72                	je     40255b <validate+0x7e>
  4024e9:	39 3d 2d 30 20 00    	cmp    %edi,0x20302d(%rip)        # 60551c <vlevel>
  4024ef:	75 32                	jne    402523 <validate+0x46>
  4024f1:	8b 15 21 30 20 00    	mov    0x203021(%rip),%edx        # 605518 <check_level>
  4024f7:	39 d7                	cmp    %edx,%edi
  4024f9:	75 3e                	jne    402539 <validate+0x5c>
  4024fb:	0f be 15 46 3c 20 00 	movsbl 0x203c46(%rip),%edx        # 606148 <target_prefix>
  402502:	4c 8d 05 37 30 20 00 	lea    0x203037(%rip),%r8        # 605540 <gets_buf>
  402509:	89 f9                	mov    %edi,%ecx
  40250b:	48 8d 35 ae 16 00 00 	lea    0x16ae(%rip),%rsi        # 403bc0 <_IO_stdin_used+0x4d0>
  402512:	bf 01 00 00 00       	mov    $0x1,%edi
  402517:	b8 00 00 00 00       	mov    $0x0,%eax
  40251c:	e8 4f eb ff ff       	callq  401070 <__printf_chk@plt>
  402521:	5b                   	pop    %rbx
  402522:	c3                   	retq   
  402523:	48 8d 3d 78 16 00 00 	lea    0x1678(%rip),%rdi        # 403ba2 <_IO_stdin_used+0x4b2>
  40252a:	e8 f1 e9 ff ff       	callq  400f20 <puts@plt>
  40252f:	b8 00 00 00 00       	mov    $0x0,%eax
  402534:	e8 fc fc ff ff       	callq  402235 <check_fail>
  402539:	89 f9                	mov    %edi,%ecx
  40253b:	48 8d 35 9e 17 00 00 	lea    0x179e(%rip),%rsi        # 403ce0 <_IO_stdin_used+0x5f0>
  402542:	bf 01 00 00 00       	mov    $0x1,%edi
  402547:	b8 00 00 00 00       	mov    $0x0,%eax
  40254c:	e8 1f eb ff ff       	callq  401070 <__printf_chk@plt>
  402551:	b8 00 00 00 00       	mov    $0x0,%eax
  402556:	e8 da fc ff ff       	callq  402235 <check_fail>
  40255b:	3b 3d bb 2f 20 00    	cmp    0x202fbb(%rip),%edi        # 60551c <vlevel>
  402561:	74 1a                	je     40257d <validate+0xa0>
  402563:	48 8d 3d 38 16 00 00 	lea    0x1638(%rip),%rdi        # 403ba2 <_IO_stdin_used+0x4b2>
  40256a:	e8 b1 e9 ff ff       	callq  400f20 <puts@plt>
  40256f:	89 de                	mov    %ebx,%esi
  402571:	bf 00 00 00 00       	mov    $0x0,%edi
  402576:	e8 44 fd ff ff       	callq  4022bf <notify_server>
  40257b:	eb a4                	jmp    402521 <validate+0x44>
  40257d:	0f be 0d c4 3b 20 00 	movsbl 0x203bc4(%rip),%ecx        # 606148 <target_prefix>
  402584:	89 fa                	mov    %edi,%edx
  402586:	48 8d 35 7b 17 00 00 	lea    0x177b(%rip),%rsi        # 403d08 <_IO_stdin_used+0x618>
  40258d:	bf 01 00 00 00       	mov    $0x1,%edi
  402592:	b8 00 00 00 00       	mov    $0x0,%eax
  402597:	e8 d4 ea ff ff       	callq  401070 <__printf_chk@plt>
  40259c:	89 de                	mov    %ebx,%esi
  40259e:	bf 01 00 00 00       	mov    $0x1,%edi
  4025a3:	e8 17 fd ff ff       	callq  4022bf <notify_server>
  4025a8:	e9 74 ff ff ff       	jmpq   402521 <validate+0x44>

00000000004025ad <fail>:
  4025ad:	48 83 ec 08          	sub    $0x8,%rsp
  4025b1:	83 3d 70 2f 20 00 00 	cmpl   $0x0,0x202f70(%rip)        # 605528 <is_checker>
  4025b8:	75 11                	jne    4025cb <fail+0x1e>
  4025ba:	89 fe                	mov    %edi,%esi
  4025bc:	bf 00 00 00 00       	mov    $0x0,%edi
  4025c1:	e8 f9 fc ff ff       	callq  4022bf <notify_server>
  4025c6:	48 83 c4 08          	add    $0x8,%rsp
  4025ca:	c3                   	retq   
  4025cb:	b8 00 00 00 00       	mov    $0x0,%eax
  4025d0:	e8 60 fc ff ff       	callq  402235 <check_fail>

00000000004025d5 <bushandler>:
  4025d5:	48 83 ec 08          	sub    $0x8,%rsp
  4025d9:	83 3d 48 2f 20 00 00 	cmpl   $0x0,0x202f48(%rip)        # 605528 <is_checker>
  4025e0:	74 16                	je     4025f8 <bushandler+0x23>
  4025e2:	48 8d 3d ec 15 00 00 	lea    0x15ec(%rip),%rdi        # 403bd5 <_IO_stdin_used+0x4e5>
  4025e9:	e8 32 e9 ff ff       	callq  400f20 <puts@plt>
  4025ee:	b8 00 00 00 00       	mov    $0x0,%eax
  4025f3:	e8 3d fc ff ff       	callq  402235 <check_fail>
  4025f8:	48 8d 3d 41 17 00 00 	lea    0x1741(%rip),%rdi        # 403d40 <_IO_stdin_used+0x650>
  4025ff:	e8 1c e9 ff ff       	callq  400f20 <puts@plt>
  402604:	48 8d 3d d4 15 00 00 	lea    0x15d4(%rip),%rdi        # 403bdf <_IO_stdin_used+0x4ef>
  40260b:	e8 10 e9 ff ff       	callq  400f20 <puts@plt>
  402610:	be 00 00 00 00       	mov    $0x0,%esi
  402615:	bf 00 00 00 00       	mov    $0x0,%edi
  40261a:	e8 a0 fc ff ff       	callq  4022bf <notify_server>
  40261f:	bf 01 00 00 00       	mov    $0x1,%edi
  402624:	e8 97 ea ff ff       	callq  4010c0 <exit@plt>

0000000000402629 <seghandler>:
  402629:	48 83 ec 08          	sub    $0x8,%rsp
  40262d:	83 3d f4 2e 20 00 00 	cmpl   $0x0,0x202ef4(%rip)        # 605528 <is_checker>
  402634:	74 16                	je     40264c <seghandler+0x23>
  402636:	48 8d 3d b8 15 00 00 	lea    0x15b8(%rip),%rdi        # 403bf5 <_IO_stdin_used+0x505>
  40263d:	e8 de e8 ff ff       	callq  400f20 <puts@plt>
  402642:	b8 00 00 00 00       	mov    $0x0,%eax
  402647:	e8 e9 fb ff ff       	callq  402235 <check_fail>
  40264c:	48 8d 3d 0d 17 00 00 	lea    0x170d(%rip),%rdi        # 403d60 <_IO_stdin_used+0x670>
  402653:	e8 c8 e8 ff ff       	callq  400f20 <puts@plt>
  402658:	48 8d 3d 80 15 00 00 	lea    0x1580(%rip),%rdi        # 403bdf <_IO_stdin_used+0x4ef>
  40265f:	e8 bc e8 ff ff       	callq  400f20 <puts@plt>
  402664:	be 00 00 00 00       	mov    $0x0,%esi
  402669:	bf 00 00 00 00       	mov    $0x0,%edi
  40266e:	e8 4c fc ff ff       	callq  4022bf <notify_server>
  402673:	bf 01 00 00 00       	mov    $0x1,%edi
  402678:	e8 43 ea ff ff       	callq  4010c0 <exit@plt>

000000000040267d <illegalhandler>:
  40267d:	48 83 ec 08          	sub    $0x8,%rsp
  402681:	83 3d a0 2e 20 00 00 	cmpl   $0x0,0x202ea0(%rip)        # 605528 <is_checker>
  402688:	74 16                	je     4026a0 <illegalhandler+0x23>
  40268a:	48 8d 3d 77 15 00 00 	lea    0x1577(%rip),%rdi        # 403c08 <_IO_stdin_used+0x518>
  402691:	e8 8a e8 ff ff       	callq  400f20 <puts@plt>
  402696:	b8 00 00 00 00       	mov    $0x0,%eax
  40269b:	e8 95 fb ff ff       	callq  402235 <check_fail>
  4026a0:	48 8d 3d e1 16 00 00 	lea    0x16e1(%rip),%rdi        # 403d88 <_IO_stdin_used+0x698>
  4026a7:	e8 74 e8 ff ff       	callq  400f20 <puts@plt>
  4026ac:	48 8d 3d 2c 15 00 00 	lea    0x152c(%rip),%rdi        # 403bdf <_IO_stdin_used+0x4ef>
  4026b3:	e8 68 e8 ff ff       	callq  400f20 <puts@plt>
  4026b8:	be 00 00 00 00       	mov    $0x0,%esi
  4026bd:	bf 00 00 00 00       	mov    $0x0,%edi
  4026c2:	e8 f8 fb ff ff       	callq  4022bf <notify_server>
  4026c7:	bf 01 00 00 00       	mov    $0x1,%edi
  4026cc:	e8 ef e9 ff ff       	callq  4010c0 <exit@plt>

00000000004026d1 <sigalrmhandler>:
  4026d1:	48 83 ec 08          	sub    $0x8,%rsp
  4026d5:	83 3d 4c 2e 20 00 00 	cmpl   $0x0,0x202e4c(%rip)        # 605528 <is_checker>
  4026dc:	74 16                	je     4026f4 <sigalrmhandler+0x23>
  4026de:	48 8d 3d 37 15 00 00 	lea    0x1537(%rip),%rdi        # 403c1c <_IO_stdin_used+0x52c>
  4026e5:	e8 36 e8 ff ff       	callq  400f20 <puts@plt>
  4026ea:	b8 00 00 00 00       	mov    $0x0,%eax
  4026ef:	e8 41 fb ff ff       	callq  402235 <check_fail>
  4026f4:	ba 05 00 00 00       	mov    $0x5,%edx
  4026f9:	48 8d 35 b8 16 00 00 	lea    0x16b8(%rip),%rsi        # 403db8 <_IO_stdin_used+0x6c8>
  402700:	bf 01 00 00 00       	mov    $0x1,%edi
  402705:	b8 00 00 00 00       	mov    $0x0,%eax
  40270a:	e8 61 e9 ff ff       	callq  401070 <__printf_chk@plt>
  40270f:	be 00 00 00 00       	mov    $0x0,%esi
  402714:	bf 00 00 00 00       	mov    $0x0,%edi
  402719:	e8 a1 fb ff ff       	callq  4022bf <notify_server>
  40271e:	bf 01 00 00 00       	mov    $0x1,%edi
  402723:	e8 98 e9 ff ff       	callq  4010c0 <exit@plt>

0000000000402728 <launch>:
  402728:	55                   	push   %rbp
  402729:	48 89 e5             	mov    %rsp,%rbp
  40272c:	48 83 ec 10          	sub    $0x10,%rsp
  402730:	48 89 fa             	mov    %rdi,%rdx
  402733:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  40273a:	00 00 
  40273c:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  402740:	31 c0                	xor    %eax,%eax
  402742:	48 8d 47 1e          	lea    0x1e(%rdi),%rax
  402746:	48 83 e0 f0          	and    $0xfffffffffffffff0,%rax
  40274a:	48 29 c4             	sub    %rax,%rsp
  40274d:	48 8d 7c 24 0f       	lea    0xf(%rsp),%rdi
  402752:	48 83 e7 f0          	and    $0xfffffffffffffff0,%rdi
  402756:	be f4 00 00 00       	mov    $0xf4,%esi
  40275b:	e8 10 e8 ff ff       	callq  400f70 <memset@plt>
  402760:	48 8b 05 59 2d 20 00 	mov    0x202d59(%rip),%rax        # 6054c0 <stdin@@GLIBC_2.2.5>
  402767:	48 39 05 a2 2d 20 00 	cmp    %rax,0x202da2(%rip)        # 605510 <infile>
  40276e:	74 3a                	je     4027aa <launch+0x82>
  402770:	c7 05 a2 2d 20 00 00 	movl   $0x0,0x202da2(%rip)        # 60551c <vlevel>
  402777:	00 00 00 
  40277a:	b8 00 00 00 00       	mov    $0x0,%eax
  40277f:	e8 f6 f8 ff ff       	callq  40207a <test>
  402784:	83 3d 9d 2d 20 00 00 	cmpl   $0x0,0x202d9d(%rip)        # 605528 <is_checker>
  40278b:	75 35                	jne    4027c2 <launch+0x9a>
  40278d:	48 8d 3d a8 14 00 00 	lea    0x14a8(%rip),%rdi        # 403c3c <_IO_stdin_used+0x54c>
  402794:	e8 87 e7 ff ff       	callq  400f20 <puts@plt>
  402799:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  40279d:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  4027a4:	00 00 
  4027a6:	75 30                	jne    4027d8 <launch+0xb0>
  4027a8:	c9                   	leaveq 
  4027a9:	c3                   	retq   
  4027aa:	48 8d 35 73 14 00 00 	lea    0x1473(%rip),%rsi        # 403c24 <_IO_stdin_used+0x534>
  4027b1:	bf 01 00 00 00       	mov    $0x1,%edi
  4027b6:	b8 00 00 00 00       	mov    $0x0,%eax
  4027bb:	e8 b0 e8 ff ff       	callq  401070 <__printf_chk@plt>
  4027c0:	eb ae                	jmp    402770 <launch+0x48>
  4027c2:	48 8d 3d 68 14 00 00 	lea    0x1468(%rip),%rdi        # 403c31 <_IO_stdin_used+0x541>
  4027c9:	e8 52 e7 ff ff       	callq  400f20 <puts@plt>
  4027ce:	b8 00 00 00 00       	mov    $0x0,%eax
  4027d3:	e8 5d fa ff ff       	callq  402235 <check_fail>
  4027d8:	e8 63 e7 ff ff       	callq  400f40 <__stack_chk_fail@plt>

00000000004027dd <stable_launch>:
  4027dd:	53                   	push   %rbx
  4027de:	48 89 3d 23 2d 20 00 	mov    %rdi,0x202d23(%rip)        # 605508 <global_offset>
  4027e5:	41 b9 00 00 00 00    	mov    $0x0,%r9d
  4027eb:	41 b8 00 00 00 00    	mov    $0x0,%r8d
  4027f1:	b9 32 01 00 00       	mov    $0x132,%ecx
  4027f6:	ba 07 00 00 00       	mov    $0x7,%edx
  4027fb:	be 00 00 10 00       	mov    $0x100000,%esi
  402800:	bf 00 60 58 55       	mov    $0x55586000,%edi
  402805:	e8 46 e7 ff ff       	callq  400f50 <mmap@plt>
  40280a:	48 89 c3             	mov    %rax,%rbx
  40280d:	48 3d 00 60 58 55    	cmp    $0x55586000,%rax
  402813:	75 43                	jne    402858 <stable_launch+0x7b>
  402815:	48 8d 90 f8 ff 0f 00 	lea    0xffff8(%rax),%rdx
  40281c:	48 89 15 2d 39 20 00 	mov    %rdx,0x20392d(%rip)        # 606150 <stack_top>
  402823:	48 89 e0             	mov    %rsp,%rax
  402826:	48 89 d4             	mov    %rdx,%rsp
  402829:	48 89 c2             	mov    %rax,%rdx
  40282c:	48 89 15 cd 2c 20 00 	mov    %rdx,0x202ccd(%rip)        # 605500 <global_save_stack>
  402833:	48 8b 3d ce 2c 20 00 	mov    0x202cce(%rip),%rdi        # 605508 <global_offset>
  40283a:	e8 e9 fe ff ff       	callq  402728 <launch>
  40283f:	48 8b 05 ba 2c 20 00 	mov    0x202cba(%rip),%rax        # 605500 <global_save_stack>
  402846:	48 89 c4             	mov    %rax,%rsp
  402849:	be 00 00 10 00       	mov    $0x100000,%esi
  40284e:	48 89 df             	mov    %rbx,%rdi
  402851:	e8 0a e8 ff ff       	callq  401060 <munmap@plt>
  402856:	5b                   	pop    %rbx
  402857:	c3                   	retq   
  402858:	be 00 00 10 00       	mov    $0x100000,%esi
  40285d:	48 89 c7             	mov    %rax,%rdi
  402860:	e8 fb e7 ff ff       	callq  401060 <munmap@plt>
  402865:	b9 00 60 58 55       	mov    $0x55586000,%ecx
  40286a:	48 8d 15 7f 15 00 00 	lea    0x157f(%rip),%rdx        # 403df0 <_IO_stdin_used+0x700>
  402871:	be 01 00 00 00       	mov    $0x1,%esi
  402876:	48 8b 3d 63 2c 20 00 	mov    0x202c63(%rip),%rdi        # 6054e0 <stderr@@GLIBC_2.2.5>
  40287d:	b8 00 00 00 00       	mov    $0x0,%eax
  402882:	e8 59 e8 ff ff       	callq  4010e0 <__fprintf_chk@plt>
  402887:	bf 01 00 00 00       	mov    $0x1,%edi
  40288c:	e8 2f e8 ff ff       	callq  4010c0 <exit@plt>

0000000000402891 <rio_readinitb>:
  402891:	89 37                	mov    %esi,(%rdi)
  402893:	c7 47 04 00 00 00 00 	movl   $0x0,0x4(%rdi)
  40289a:	48 8d 47 10          	lea    0x10(%rdi),%rax
  40289e:	48 89 47 08          	mov    %rax,0x8(%rdi)
  4028a2:	c3                   	retq   

00000000004028a3 <sigalrm_handler>:
  4028a3:	48 83 ec 08          	sub    $0x8,%rsp
  4028a7:	b9 00 00 00 00       	mov    $0x0,%ecx
  4028ac:	48 8d 15 7d 15 00 00 	lea    0x157d(%rip),%rdx        # 403e30 <trans_char+0x10>
  4028b3:	be 01 00 00 00       	mov    $0x1,%esi
  4028b8:	48 8b 3d 21 2c 20 00 	mov    0x202c21(%rip),%rdi        # 6054e0 <stderr@@GLIBC_2.2.5>
  4028bf:	b8 00 00 00 00       	mov    $0x0,%eax
  4028c4:	e8 17 e8 ff ff       	callq  4010e0 <__fprintf_chk@plt>
  4028c9:	bf 01 00 00 00       	mov    $0x1,%edi
  4028ce:	e8 ed e7 ff ff       	callq  4010c0 <exit@plt>

00000000004028d3 <rio_writen>:
  4028d3:	41 55                	push   %r13
  4028d5:	41 54                	push   %r12
  4028d7:	55                   	push   %rbp
  4028d8:	53                   	push   %rbx
  4028d9:	48 83 ec 08          	sub    $0x8,%rsp
  4028dd:	41 89 fc             	mov    %edi,%r12d
  4028e0:	49 89 d5             	mov    %rdx,%r13
  4028e3:	48 89 f5             	mov    %rsi,%rbp
  4028e6:	48 89 d3             	mov    %rdx,%rbx
  4028e9:	eb 06                	jmp    4028f1 <rio_writen+0x1e>
  4028eb:	48 29 c3             	sub    %rax,%rbx
  4028ee:	48 01 c5             	add    %rax,%rbp
  4028f1:	48 85 db             	test   %rbx,%rbx
  4028f4:	74 24                	je     40291a <rio_writen+0x47>
  4028f6:	48 89 da             	mov    %rbx,%rdx
  4028f9:	48 89 ee             	mov    %rbp,%rsi
  4028fc:	44 89 e7             	mov    %r12d,%edi
  4028ff:	e8 2c e6 ff ff       	callq  400f30 <write@plt>
  402904:	48 85 c0             	test   %rax,%rax
  402907:	7f e2                	jg     4028eb <rio_writen+0x18>
  402909:	e8 d2 e5 ff ff       	callq  400ee0 <__errno_location@plt>
  40290e:	83 38 04             	cmpl   $0x4,(%rax)
  402911:	75 15                	jne    402928 <rio_writen+0x55>
  402913:	b8 00 00 00 00       	mov    $0x0,%eax
  402918:	eb d1                	jmp    4028eb <rio_writen+0x18>
  40291a:	4c 89 e8             	mov    %r13,%rax
  40291d:	48 83 c4 08          	add    $0x8,%rsp
  402921:	5b                   	pop    %rbx
  402922:	5d                   	pop    %rbp
  402923:	41 5c                	pop    %r12
  402925:	41 5d                	pop    %r13
  402927:	c3                   	retq   
  402928:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  40292f:	eb ec                	jmp    40291d <rio_writen+0x4a>

0000000000402931 <rio_read>:
  402931:	41 55                	push   %r13
  402933:	41 54                	push   %r12
  402935:	55                   	push   %rbp
  402936:	53                   	push   %rbx
  402937:	48 83 ec 08          	sub    $0x8,%rsp
  40293b:	48 89 fb             	mov    %rdi,%rbx
  40293e:	49 89 f5             	mov    %rsi,%r13
  402941:	49 89 d4             	mov    %rdx,%r12
  402944:	eb 0a                	jmp    402950 <rio_read+0x1f>
  402946:	e8 95 e5 ff ff       	callq  400ee0 <__errno_location@plt>
  40294b:	83 38 04             	cmpl   $0x4,(%rax)
  40294e:	75 5c                	jne    4029ac <rio_read+0x7b>
  402950:	8b 6b 04             	mov    0x4(%rbx),%ebp
  402953:	85 ed                	test   %ebp,%ebp
  402955:	7f 24                	jg     40297b <rio_read+0x4a>
  402957:	48 8d 6b 10          	lea    0x10(%rbx),%rbp
  40295b:	8b 3b                	mov    (%rbx),%edi
  40295d:	ba 00 20 00 00       	mov    $0x2000,%edx
  402962:	48 89 ee             	mov    %rbp,%rsi
  402965:	e8 36 e6 ff ff       	callq  400fa0 <read@plt>
  40296a:	89 43 04             	mov    %eax,0x4(%rbx)
  40296d:	85 c0                	test   %eax,%eax
  40296f:	78 d5                	js     402946 <rio_read+0x15>
  402971:	85 c0                	test   %eax,%eax
  402973:	74 40                	je     4029b5 <rio_read+0x84>
  402975:	48 89 6b 08          	mov    %rbp,0x8(%rbx)
  402979:	eb d5                	jmp    402950 <rio_read+0x1f>
  40297b:	89 e8                	mov    %ebp,%eax
  40297d:	49 39 c4             	cmp    %rax,%r12
  402980:	77 03                	ja     402985 <rio_read+0x54>
  402982:	44 89 e5             	mov    %r12d,%ebp
  402985:	4c 63 e5             	movslq %ebp,%r12
  402988:	48 8b 73 08          	mov    0x8(%rbx),%rsi
  40298c:	4c 89 e2             	mov    %r12,%rdx
  40298f:	4c 89 ef             	mov    %r13,%rdi
  402992:	e8 79 e6 ff ff       	callq  401010 <memcpy@plt>
  402997:	4c 01 63 08          	add    %r12,0x8(%rbx)
  40299b:	29 6b 04             	sub    %ebp,0x4(%rbx)
  40299e:	4c 89 e0             	mov    %r12,%rax
  4029a1:	48 83 c4 08          	add    $0x8,%rsp
  4029a5:	5b                   	pop    %rbx
  4029a6:	5d                   	pop    %rbp
  4029a7:	41 5c                	pop    %r12
  4029a9:	41 5d                	pop    %r13
  4029ab:	c3                   	retq   
  4029ac:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  4029b3:	eb ec                	jmp    4029a1 <rio_read+0x70>
  4029b5:	b8 00 00 00 00       	mov    $0x0,%eax
  4029ba:	eb e5                	jmp    4029a1 <rio_read+0x70>

00000000004029bc <rio_readlineb>:
  4029bc:	41 55                	push   %r13
  4029be:	41 54                	push   %r12
  4029c0:	55                   	push   %rbp
  4029c1:	53                   	push   %rbx
  4029c2:	48 83 ec 18          	sub    $0x18,%rsp
  4029c6:	49 89 fd             	mov    %rdi,%r13
  4029c9:	49 89 d4             	mov    %rdx,%r12
  4029cc:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  4029d3:	00 00 
  4029d5:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  4029da:	31 c0                	xor    %eax,%eax
  4029dc:	48 89 f5             	mov    %rsi,%rbp
  4029df:	bb 01 00 00 00       	mov    $0x1,%ebx
  4029e4:	4c 39 e3             	cmp    %r12,%rbx
  4029e7:	73 47                	jae    402a30 <rio_readlineb+0x74>
  4029e9:	48 8d 74 24 07       	lea    0x7(%rsp),%rsi
  4029ee:	ba 01 00 00 00       	mov    $0x1,%edx
  4029f3:	4c 89 ef             	mov    %r13,%rdi
  4029f6:	e8 36 ff ff ff       	callq  402931 <rio_read>
  4029fb:	83 f8 01             	cmp    $0x1,%eax
  4029fe:	75 1c                	jne    402a1c <rio_readlineb+0x60>
  402a00:	48 8d 45 01          	lea    0x1(%rbp),%rax
  402a04:	0f b6 54 24 07       	movzbl 0x7(%rsp),%edx
  402a09:	88 55 00             	mov    %dl,0x0(%rbp)
  402a0c:	80 7c 24 07 0a       	cmpb   $0xa,0x7(%rsp)
  402a11:	74 1a                	je     402a2d <rio_readlineb+0x71>
  402a13:	48 83 c3 01          	add    $0x1,%rbx
  402a17:	48 89 c5             	mov    %rax,%rbp
  402a1a:	eb c8                	jmp    4029e4 <rio_readlineb+0x28>
  402a1c:	85 c0                	test   %eax,%eax
  402a1e:	75 32                	jne    402a52 <rio_readlineb+0x96>
  402a20:	48 83 fb 01          	cmp    $0x1,%rbx
  402a24:	75 0a                	jne    402a30 <rio_readlineb+0x74>
  402a26:	b8 00 00 00 00       	mov    $0x0,%eax
  402a2b:	eb 0a                	jmp    402a37 <rio_readlineb+0x7b>
  402a2d:	48 89 c5             	mov    %rax,%rbp
  402a30:	c6 45 00 00          	movb   $0x0,0x0(%rbp)
  402a34:	48 89 d8             	mov    %rbx,%rax
  402a37:	48 8b 4c 24 08       	mov    0x8(%rsp),%rcx
  402a3c:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
  402a43:	00 00 
  402a45:	75 14                	jne    402a5b <rio_readlineb+0x9f>
  402a47:	48 83 c4 18          	add    $0x18,%rsp
  402a4b:	5b                   	pop    %rbx
  402a4c:	5d                   	pop    %rbp
  402a4d:	41 5c                	pop    %r12
  402a4f:	41 5d                	pop    %r13
  402a51:	c3                   	retq   
  402a52:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  402a59:	eb dc                	jmp    402a37 <rio_readlineb+0x7b>
  402a5b:	e8 e0 e4 ff ff       	callq  400f40 <__stack_chk_fail@plt>

0000000000402a60 <urlencode>:
  402a60:	41 54                	push   %r12
  402a62:	55                   	push   %rbp
  402a63:	53                   	push   %rbx
  402a64:	48 83 ec 10          	sub    $0x10,%rsp
  402a68:	48 89 fb             	mov    %rdi,%rbx
  402a6b:	48 89 f5             	mov    %rsi,%rbp
  402a6e:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  402a75:	00 00 
  402a77:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  402a7c:	31 c0                	xor    %eax,%eax
  402a7e:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  402a85:	f2 ae                	repnz scas %es:(%rdi),%al
  402a87:	48 f7 d1             	not    %rcx
  402a8a:	8d 41 ff             	lea    -0x1(%rcx),%eax
  402a8d:	eb 0f                	jmp    402a9e <urlencode+0x3e>
  402a8f:	44 88 45 00          	mov    %r8b,0x0(%rbp)
  402a93:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
  402a97:	48 83 c3 01          	add    $0x1,%rbx
  402a9b:	44 89 e0             	mov    %r12d,%eax
  402a9e:	44 8d 60 ff          	lea    -0x1(%rax),%r12d
  402aa2:	85 c0                	test   %eax,%eax
  402aa4:	0f 84 a8 00 00 00    	je     402b52 <urlencode+0xf2>
  402aaa:	44 0f b6 03          	movzbl (%rbx),%r8d
  402aae:	41 80 f8 2a          	cmp    $0x2a,%r8b
  402ab2:	0f 94 c2             	sete   %dl
  402ab5:	41 80 f8 2d          	cmp    $0x2d,%r8b
  402ab9:	0f 94 c0             	sete   %al
  402abc:	08 c2                	or     %al,%dl
  402abe:	75 cf                	jne    402a8f <urlencode+0x2f>
  402ac0:	41 80 f8 2e          	cmp    $0x2e,%r8b
  402ac4:	74 c9                	je     402a8f <urlencode+0x2f>
  402ac6:	41 80 f8 5f          	cmp    $0x5f,%r8b
  402aca:	74 c3                	je     402a8f <urlencode+0x2f>
  402acc:	41 8d 40 d0          	lea    -0x30(%r8),%eax
  402ad0:	3c 09                	cmp    $0x9,%al
  402ad2:	76 bb                	jbe    402a8f <urlencode+0x2f>
  402ad4:	41 8d 40 bf          	lea    -0x41(%r8),%eax
  402ad8:	3c 19                	cmp    $0x19,%al
  402ada:	76 b3                	jbe    402a8f <urlencode+0x2f>
  402adc:	41 8d 40 9f          	lea    -0x61(%r8),%eax
  402ae0:	3c 19                	cmp    $0x19,%al
  402ae2:	76 ab                	jbe    402a8f <urlencode+0x2f>
  402ae4:	41 80 f8 20          	cmp    $0x20,%r8b
  402ae8:	74 56                	je     402b40 <urlencode+0xe0>
  402aea:	41 8d 40 e0          	lea    -0x20(%r8),%eax
  402aee:	3c 5f                	cmp    $0x5f,%al
  402af0:	0f 96 c2             	setbe  %dl
  402af3:	41 80 f8 09          	cmp    $0x9,%r8b
  402af7:	0f 94 c0             	sete   %al
  402afa:	08 c2                	or     %al,%dl
  402afc:	74 4f                	je     402b4d <urlencode+0xed>
  402afe:	48 89 e7             	mov    %rsp,%rdi
  402b01:	45 0f b6 c0          	movzbl %r8b,%r8d
  402b05:	48 8d 0d bc 13 00 00 	lea    0x13bc(%rip),%rcx        # 403ec8 <trans_char+0xa8>
  402b0c:	ba 08 00 00 00       	mov    $0x8,%edx
  402b11:	be 01 00 00 00       	mov    $0x1,%esi
  402b16:	b8 00 00 00 00       	mov    $0x0,%eax
  402b1b:	e8 d0 e5 ff ff       	callq  4010f0 <__sprintf_chk@plt>
  402b20:	0f b6 04 24          	movzbl (%rsp),%eax
  402b24:	88 45 00             	mov    %al,0x0(%rbp)
  402b27:	0f b6 44 24 01       	movzbl 0x1(%rsp),%eax
  402b2c:	88 45 01             	mov    %al,0x1(%rbp)
  402b2f:	0f b6 44 24 02       	movzbl 0x2(%rsp),%eax
  402b34:	88 45 02             	mov    %al,0x2(%rbp)
  402b37:	48 8d 6d 03          	lea    0x3(%rbp),%rbp
  402b3b:	e9 57 ff ff ff       	jmpq   402a97 <urlencode+0x37>
  402b40:	c6 45 00 2b          	movb   $0x2b,0x0(%rbp)
  402b44:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
  402b48:	e9 4a ff ff ff       	jmpq   402a97 <urlencode+0x37>
  402b4d:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402b52:	48 8b 74 24 08       	mov    0x8(%rsp),%rsi
  402b57:	64 48 33 34 25 28 00 	xor    %fs:0x28,%rsi
  402b5e:	00 00 
  402b60:	75 09                	jne    402b6b <urlencode+0x10b>
  402b62:	48 83 c4 10          	add    $0x10,%rsp
  402b66:	5b                   	pop    %rbx
  402b67:	5d                   	pop    %rbp
  402b68:	41 5c                	pop    %r12
  402b6a:	c3                   	retq   
  402b6b:	e8 d0 e3 ff ff       	callq  400f40 <__stack_chk_fail@plt>

0000000000402b70 <submitr>:
  402b70:	41 57                	push   %r15
  402b72:	41 56                	push   %r14
  402b74:	41 55                	push   %r13
  402b76:	41 54                	push   %r12
  402b78:	55                   	push   %rbp
  402b79:	53                   	push   %rbx
  402b7a:	48 81 ec 68 a0 00 00 	sub    $0xa068,%rsp
  402b81:	49 89 fd             	mov    %rdi,%r13
  402b84:	89 74 24 14          	mov    %esi,0x14(%rsp)
  402b88:	49 89 d7             	mov    %rdx,%r15
  402b8b:	48 89 4c 24 08       	mov    %rcx,0x8(%rsp)
  402b90:	4c 89 44 24 18       	mov    %r8,0x18(%rsp)
  402b95:	4d 89 ce             	mov    %r9,%r14
  402b98:	48 8b 9c 24 a0 a0 00 	mov    0xa0a0(%rsp),%rbx
  402b9f:	00 
  402ba0:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  402ba7:	00 00 
  402ba9:	48 89 84 24 58 a0 00 	mov    %rax,0xa058(%rsp)
  402bb0:	00 
  402bb1:	31 c0                	xor    %eax,%eax
  402bb3:	c7 44 24 2c 00 00 00 	movl   $0x0,0x2c(%rsp)
  402bba:	00 
  402bbb:	ba 00 00 00 00       	mov    $0x0,%edx
  402bc0:	be 01 00 00 00       	mov    $0x1,%esi
  402bc5:	bf 02 00 00 00       	mov    $0x2,%edi
  402bca:	e8 31 e5 ff ff       	callq  401100 <socket@plt>
  402bcf:	85 c0                	test   %eax,%eax
  402bd1:	0f 88 c8 01 00 00    	js     402d9f <submitr+0x22f>
  402bd7:	89 c5                	mov    %eax,%ebp
  402bd9:	4c 89 ef             	mov    %r13,%rdi
  402bdc:	e8 ef e3 ff ff       	callq  400fd0 <gethostbyname@plt>
  402be1:	48 85 c0             	test   %rax,%rax
  402be4:	0f 84 03 02 00 00    	je     402ded <submitr+0x27d>
  402bea:	4c 8d 64 24 30       	lea    0x30(%rsp),%r12
  402bef:	48 c7 44 24 30 00 00 	movq   $0x0,0x30(%rsp)
  402bf6:	00 00 
  402bf8:	48 c7 44 24 38 00 00 	movq   $0x0,0x38(%rsp)
  402bff:	00 00 
  402c01:	66 c7 44 24 30 02 00 	movw   $0x2,0x30(%rsp)
  402c08:	48 63 50 14          	movslq 0x14(%rax),%rdx
  402c0c:	48 8b 40 18          	mov    0x18(%rax),%rax
  402c10:	48 8b 30             	mov    (%rax),%rsi
  402c13:	48 8d 7c 24 34       	lea    0x34(%rsp),%rdi
  402c18:	b9 0c 00 00 00       	mov    $0xc,%ecx
  402c1d:	e8 be e3 ff ff       	callq  400fe0 <__memmove_chk@plt>
  402c22:	0f b7 44 24 14       	movzwl 0x14(%rsp),%eax
  402c27:	66 c1 c8 08          	ror    $0x8,%ax
  402c2b:	66 89 44 24 32       	mov    %ax,0x32(%rsp)
  402c30:	ba 10 00 00 00       	mov    $0x10,%edx
  402c35:	4c 89 e6             	mov    %r12,%rsi
  402c38:	89 ef                	mov    %ebp,%edi
  402c3a:	e8 91 e4 ff ff       	callq  4010d0 <connect@plt>
  402c3f:	85 c0                	test   %eax,%eax
  402c41:	0f 88 0d 02 00 00    	js     402e54 <submitr+0x2e4>
  402c47:	48 c7 c6 ff ff ff ff 	mov    $0xffffffffffffffff,%rsi
  402c4e:	b8 00 00 00 00       	mov    $0x0,%eax
  402c53:	48 89 f1             	mov    %rsi,%rcx
  402c56:	4c 89 f7             	mov    %r14,%rdi
  402c59:	f2 ae                	repnz scas %es:(%rdi),%al
  402c5b:	48 f7 d1             	not    %rcx
  402c5e:	48 89 ca             	mov    %rcx,%rdx
  402c61:	48 89 f1             	mov    %rsi,%rcx
  402c64:	4c 89 ff             	mov    %r15,%rdi
  402c67:	f2 ae                	repnz scas %es:(%rdi),%al
  402c69:	48 f7 d1             	not    %rcx
  402c6c:	49 89 c8             	mov    %rcx,%r8
  402c6f:	48 89 f1             	mov    %rsi,%rcx
  402c72:	48 8b 7c 24 08       	mov    0x8(%rsp),%rdi
  402c77:	f2 ae                	repnz scas %es:(%rdi),%al
  402c79:	48 f7 d1             	not    %rcx
  402c7c:	4d 8d 44 08 fe       	lea    -0x2(%r8,%rcx,1),%r8
  402c81:	48 89 f1             	mov    %rsi,%rcx
  402c84:	48 8b 7c 24 18       	mov    0x18(%rsp),%rdi
  402c89:	f2 ae                	repnz scas %es:(%rdi),%al
  402c8b:	48 89 c8             	mov    %rcx,%rax
  402c8e:	48 f7 d0             	not    %rax
  402c91:	49 8d 4c 00 ff       	lea    -0x1(%r8,%rax,1),%rcx
  402c96:	48 8d 44 52 fd       	lea    -0x3(%rdx,%rdx,2),%rax
  402c9b:	48 8d 84 01 80 00 00 	lea    0x80(%rcx,%rax,1),%rax
  402ca2:	00 
  402ca3:	48 3d 00 20 00 00    	cmp    $0x2000,%rax
  402ca9:	0f 87 fe 01 00 00    	ja     402ead <submitr+0x33d>
  402caf:	48 8d b4 24 50 40 00 	lea    0x4050(%rsp),%rsi
  402cb6:	00 
  402cb7:	b9 00 04 00 00       	mov    $0x400,%ecx
  402cbc:	b8 00 00 00 00       	mov    $0x0,%eax
  402cc1:	48 89 f7             	mov    %rsi,%rdi
  402cc4:	f3 48 ab             	rep stos %rax,%es:(%rdi)
  402cc7:	4c 89 f7             	mov    %r14,%rdi
  402cca:	e8 91 fd ff ff       	callq  402a60 <urlencode>
  402ccf:	85 c0                	test   %eax,%eax
  402cd1:	0f 88 48 02 00 00    	js     402f1f <submitr+0x3af>
  402cd7:	4c 8d a4 24 50 20 00 	lea    0x2050(%rsp),%r12
  402cde:	00 
  402cdf:	41 55                	push   %r13
  402ce1:	48 8d 84 24 58 40 00 	lea    0x4058(%rsp),%rax
  402ce8:	00 
  402ce9:	50                   	push   %rax
  402cea:	4d 89 f9             	mov    %r15,%r9
  402ced:	4c 8b 44 24 18       	mov    0x18(%rsp),%r8
  402cf2:	48 8d 0d 5f 11 00 00 	lea    0x115f(%rip),%rcx        # 403e58 <trans_char+0x38>
  402cf9:	ba 00 20 00 00       	mov    $0x2000,%edx
  402cfe:	be 01 00 00 00       	mov    $0x1,%esi
  402d03:	4c 89 e7             	mov    %r12,%rdi
  402d06:	b8 00 00 00 00       	mov    $0x0,%eax
  402d0b:	e8 e0 e3 ff ff       	callq  4010f0 <__sprintf_chk@plt>
  402d10:	b8 00 00 00 00       	mov    $0x0,%eax
  402d15:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  402d1c:	4c 89 e7             	mov    %r12,%rdi
  402d1f:	f2 ae                	repnz scas %es:(%rdi),%al
  402d21:	48 f7 d1             	not    %rcx
  402d24:	48 8d 51 ff          	lea    -0x1(%rcx),%rdx
  402d28:	4c 89 e6             	mov    %r12,%rsi
  402d2b:	89 ef                	mov    %ebp,%edi
  402d2d:	e8 a1 fb ff ff       	callq  4028d3 <rio_writen>
  402d32:	48 83 c4 10          	add    $0x10,%rsp
  402d36:	48 85 c0             	test   %rax,%rax
  402d39:	0f 88 6a 02 00 00    	js     402fa9 <submitr+0x439>
  402d3f:	4c 8d 64 24 40       	lea    0x40(%rsp),%r12
  402d44:	89 ee                	mov    %ebp,%esi
  402d46:	4c 89 e7             	mov    %r12,%rdi
  402d49:	e8 43 fb ff ff       	callq  402891 <rio_readinitb>
  402d4e:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
  402d55:	00 
  402d56:	ba 00 20 00 00       	mov    $0x2000,%edx
  402d5b:	4c 89 e7             	mov    %r12,%rdi
  402d5e:	e8 59 fc ff ff       	callq  4029bc <rio_readlineb>
  402d63:	48 85 c0             	test   %rax,%rax
  402d66:	0f 8e ab 02 00 00    	jle    403017 <submitr+0x4a7>
  402d6c:	48 8d 4c 24 2c       	lea    0x2c(%rsp),%rcx
  402d71:	48 8d 94 24 50 60 00 	lea    0x6050(%rsp),%rdx
  402d78:	00 
  402d79:	48 8d bc 24 50 20 00 	lea    0x2050(%rsp),%rdi
  402d80:	00 
  402d81:	4c 8d 84 24 50 80 00 	lea    0x8050(%rsp),%r8
  402d88:	00 
  402d89:	48 8d 35 3f 11 00 00 	lea    0x113f(%rip),%rsi        # 403ecf <trans_char+0xaf>
  402d90:	b8 00 00 00 00       	mov    $0x0,%eax
  402d95:	e8 b6 e2 ff ff       	callq  401050 <__isoc99_sscanf@plt>
  402d9a:	e9 b3 03 00 00       	jmpq   403152 <submitr+0x5e2>
  402d9f:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402da6:	3a 20 43 
  402da9:	48 89 03             	mov    %rax,(%rbx)
  402dac:	48 b8 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rax
  402db3:	20 75 6e 
  402db6:	48 89 43 08          	mov    %rax,0x8(%rbx)
  402dba:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402dc1:	74 6f 20 
  402dc4:	48 89 43 10          	mov    %rax,0x10(%rbx)
  402dc8:	48 b8 63 72 65 61 74 	movabs $0x7320657461657263,%rax
  402dcf:	65 20 73 
  402dd2:	48 89 43 18          	mov    %rax,0x18(%rbx)
  402dd6:	c7 43 20 6f 63 6b 65 	movl   $0x656b636f,0x20(%rbx)
  402ddd:	66 c7 43 24 74 00    	movw   $0x74,0x24(%rbx)
  402de3:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402de8:	e9 18 03 00 00       	jmpq   403105 <submitr+0x595>
  402ded:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
  402df4:	3a 20 44 
  402df7:	48 89 03             	mov    %rax,(%rbx)
  402dfa:	48 b8 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rax
  402e01:	20 75 6e 
  402e04:	48 89 43 08          	mov    %rax,0x8(%rbx)
  402e08:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402e0f:	74 6f 20 
  402e12:	48 89 43 10          	mov    %rax,0x10(%rbx)
  402e16:	48 b8 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rax
  402e1d:	76 65 20 
  402e20:	48 89 43 18          	mov    %rax,0x18(%rbx)
  402e24:	48 b8 73 65 72 76 65 	movabs $0x6120726576726573,%rax
  402e2b:	72 20 61 
  402e2e:	48 89 43 20          	mov    %rax,0x20(%rbx)
  402e32:	c7 43 28 64 64 72 65 	movl   $0x65726464,0x28(%rbx)
  402e39:	66 c7 43 2c 73 73    	movw   $0x7373,0x2c(%rbx)
  402e3f:	c6 43 2e 00          	movb   $0x0,0x2e(%rbx)
  402e43:	89 ef                	mov    %ebp,%edi
  402e45:	e8 46 e1 ff ff       	callq  400f90 <close@plt>
  402e4a:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402e4f:	e9 b1 02 00 00       	jmpq   403105 <submitr+0x595>
  402e54:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
  402e5b:	3a 20 55 
  402e5e:	48 89 03             	mov    %rax,(%rbx)
  402e61:	48 b8 6e 61 62 6c 65 	movabs $0x6f7420656c62616e,%rax
  402e68:	20 74 6f 
  402e6b:	48 89 43 08          	mov    %rax,0x8(%rbx)
  402e6f:	48 b8 20 63 6f 6e 6e 	movabs $0x7463656e6e6f6320,%rax
  402e76:	65 63 74 
  402e79:	48 89 43 10          	mov    %rax,0x10(%rbx)
  402e7d:	48 b8 20 74 6f 20 74 	movabs $0x20656874206f7420,%rax
  402e84:	68 65 20 
  402e87:	48 89 43 18          	mov    %rax,0x18(%rbx)
  402e8b:	c7 43 20 73 65 72 76 	movl   $0x76726573,0x20(%rbx)
  402e92:	66 c7 43 24 65 72    	movw   $0x7265,0x24(%rbx)
  402e98:	c6 43 26 00          	movb   $0x0,0x26(%rbx)
  402e9c:	89 ef                	mov    %ebp,%edi
  402e9e:	e8 ed e0 ff ff       	callq  400f90 <close@plt>
  402ea3:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402ea8:	e9 58 02 00 00       	jmpq   403105 <submitr+0x595>
  402ead:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
  402eb4:	3a 20 52 
  402eb7:	48 89 03             	mov    %rax,(%rbx)
  402eba:	48 b8 65 73 75 6c 74 	movabs $0x747320746c757365,%rax
  402ec1:	20 73 74 
  402ec4:	48 89 43 08          	mov    %rax,0x8(%rbx)
  402ec8:	48 b8 72 69 6e 67 20 	movabs $0x6f6f7420676e6972,%rax
  402ecf:	74 6f 6f 
  402ed2:	48 89 43 10          	mov    %rax,0x10(%rbx)
  402ed6:	48 b8 20 6c 61 72 67 	movabs $0x202e656772616c20,%rax
  402edd:	65 2e 20 
  402ee0:	48 89 43 18          	mov    %rax,0x18(%rbx)
  402ee4:	48 b8 49 6e 63 72 65 	movabs $0x6573616572636e49,%rax
  402eeb:	61 73 65 
  402eee:	48 89 43 20          	mov    %rax,0x20(%rbx)
  402ef2:	48 b8 20 53 55 42 4d 	movabs $0x5254494d42555320,%rax
  402ef9:	49 54 52 
  402efc:	48 89 43 28          	mov    %rax,0x28(%rbx)
  402f00:	48 b8 5f 4d 41 58 42 	movabs $0x46554258414d5f,%rax
  402f07:	55 46 00 
  402f0a:	48 89 43 30          	mov    %rax,0x30(%rbx)
  402f0e:	89 ef                	mov    %ebp,%edi
  402f10:	e8 7b e0 ff ff       	callq  400f90 <close@plt>
  402f15:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402f1a:	e9 e6 01 00 00       	jmpq   403105 <submitr+0x595>
  402f1f:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
  402f26:	3a 20 52 
  402f29:	48 89 03             	mov    %rax,(%rbx)
  402f2c:	48 b8 65 73 75 6c 74 	movabs $0x747320746c757365,%rax
  402f33:	20 73 74 
  402f36:	48 89 43 08          	mov    %rax,0x8(%rbx)
  402f3a:	48 b8 72 69 6e 67 20 	movabs $0x6e6f6320676e6972,%rax
  402f41:	63 6f 6e 
  402f44:	48 89 43 10          	mov    %rax,0x10(%rbx)
  402f48:	48 b8 74 61 69 6e 73 	movabs $0x6e6120736e696174,%rax
  402f4f:	20 61 6e 
  402f52:	48 89 43 18          	mov    %rax,0x18(%rbx)
  402f56:	48 b8 20 69 6c 6c 65 	movabs $0x6c6167656c6c6920,%rax
  402f5d:	67 61 6c 
  402f60:	48 89 43 20          	mov    %rax,0x20(%rbx)
  402f64:	48 b8 20 6f 72 20 75 	movabs $0x72706e7520726f20,%rax
  402f6b:	6e 70 72 
  402f6e:	48 89 43 28          	mov    %rax,0x28(%rbx)
  402f72:	48 b8 69 6e 74 61 62 	movabs $0x20656c6261746e69,%rax
  402f79:	6c 65 20 
  402f7c:	48 89 43 30          	mov    %rax,0x30(%rbx)
  402f80:	48 b8 63 68 61 72 61 	movabs $0x6574636172616863,%rax
  402f87:	63 74 65 
  402f8a:	48 89 43 38          	mov    %rax,0x38(%rbx)
  402f8e:	66 c7 43 40 72 2e    	movw   $0x2e72,0x40(%rbx)
  402f94:	c6 43 42 00          	movb   $0x0,0x42(%rbx)
  402f98:	89 ef                	mov    %ebp,%edi
  402f9a:	e8 f1 df ff ff       	callq  400f90 <close@plt>
  402f9f:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402fa4:	e9 5c 01 00 00       	jmpq   403105 <submitr+0x595>
  402fa9:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402fb0:	3a 20 43 
  402fb3:	48 89 03             	mov    %rax,(%rbx)
  402fb6:	48 b8 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rax
  402fbd:	20 75 6e 
  402fc0:	48 89 43 08          	mov    %rax,0x8(%rbx)
  402fc4:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402fcb:	74 6f 20 
  402fce:	48 89 43 10          	mov    %rax,0x10(%rbx)
  402fd2:	48 b8 77 72 69 74 65 	movabs $0x6f74206574697277,%rax
  402fd9:	20 74 6f 
  402fdc:	48 89 43 18          	mov    %rax,0x18(%rbx)
  402fe0:	48 b8 20 74 68 65 20 	movabs $0x7365722065687420,%rax
  402fe7:	72 65 73 
  402fea:	48 89 43 20          	mov    %rax,0x20(%rbx)
  402fee:	48 b8 75 6c 74 20 73 	movabs $0x7672657320746c75,%rax
  402ff5:	65 72 76 
  402ff8:	48 89 43 28          	mov    %rax,0x28(%rbx)
  402ffc:	66 c7 43 30 65 72    	movw   $0x7265,0x30(%rbx)
  403002:	c6 43 32 00          	movb   $0x0,0x32(%rbx)
  403006:	89 ef                	mov    %ebp,%edi
  403008:	e8 83 df ff ff       	callq  400f90 <close@plt>
  40300d:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  403012:	e9 ee 00 00 00       	jmpq   403105 <submitr+0x595>
  403017:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  40301e:	3a 20 43 
  403021:	48 89 03             	mov    %rax,(%rbx)
  403024:	48 b8 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rax
  40302b:	20 75 6e 
  40302e:	48 89 43 08          	mov    %rax,0x8(%rbx)
  403032:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  403039:	74 6f 20 
  40303c:	48 89 43 10          	mov    %rax,0x10(%rbx)
  403040:	48 b8 72 65 61 64 20 	movabs $0x7269662064616572,%rax
  403047:	66 69 72 
  40304a:	48 89 43 18          	mov    %rax,0x18(%rbx)
  40304e:	48 b8 73 74 20 68 65 	movabs $0x6564616568207473,%rax
  403055:	61 64 65 
  403058:	48 89 43 20          	mov    %rax,0x20(%rbx)
  40305c:	48 b8 72 20 66 72 6f 	movabs $0x72206d6f72662072,%rax
  403063:	6d 20 72 
  403066:	48 89 43 28          	mov    %rax,0x28(%rbx)
  40306a:	48 b8 65 73 75 6c 74 	movabs $0x657320746c757365,%rax
  403071:	20 73 65 
  403074:	48 89 43 30          	mov    %rax,0x30(%rbx)
  403078:	c7 43 38 72 76 65 72 	movl   $0x72657672,0x38(%rbx)
  40307f:	c6 43 3c 00          	movb   $0x0,0x3c(%rbx)
  403083:	89 ef                	mov    %ebp,%edi
  403085:	e8 06 df ff ff       	callq  400f90 <close@plt>
  40308a:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40308f:	eb 74                	jmp    403105 <submitr+0x595>
  403091:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  403098:	3a 20 43 
  40309b:	48 89 03             	mov    %rax,(%rbx)
  40309e:	48 b8 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rax
  4030a5:	20 75 6e 
  4030a8:	48 89 43 08          	mov    %rax,0x8(%rbx)
  4030ac:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  4030b3:	74 6f 20 
  4030b6:	48 89 43 10          	mov    %rax,0x10(%rbx)
  4030ba:	48 b8 72 65 61 64 20 	movabs $0x6165682064616572,%rax
  4030c1:	68 65 61 
  4030c4:	48 89 43 18          	mov    %rax,0x18(%rbx)
  4030c8:	48 b8 64 65 72 73 20 	movabs $0x6f72662073726564,%rax
  4030cf:	66 72 6f 
  4030d2:	48 89 43 20          	mov    %rax,0x20(%rbx)
  4030d6:	48 b8 6d 20 74 68 65 	movabs $0x657220656874206d,%rax
  4030dd:	20 72 65 
  4030e0:	48 89 43 28          	mov    %rax,0x28(%rbx)
  4030e4:	48 b8 73 75 6c 74 20 	movabs $0x72657320746c7573,%rax
  4030eb:	73 65 72 
  4030ee:	48 89 43 30          	mov    %rax,0x30(%rbx)
  4030f2:	c7 43 38 76 65 72 00 	movl   $0x726576,0x38(%rbx)
  4030f9:	89 ef                	mov    %ebp,%edi
  4030fb:	e8 90 de ff ff       	callq  400f90 <close@plt>
  403100:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  403105:	48 8b 9c 24 58 a0 00 	mov    0xa058(%rsp),%rbx
  40310c:	00 
  40310d:	64 48 33 1c 25 28 00 	xor    %fs:0x28,%rbx
  403114:	00 00 
  403116:	0f 85 fb 01 00 00    	jne    403317 <submitr+0x7a7>
  40311c:	48 81 c4 68 a0 00 00 	add    $0xa068,%rsp
  403123:	5b                   	pop    %rbx
  403124:	5d                   	pop    %rbp
  403125:	41 5c                	pop    %r12
  403127:	41 5d                	pop    %r13
  403129:	41 5e                	pop    %r14
  40312b:	41 5f                	pop    %r15
  40312d:	c3                   	retq   
  40312e:	85 c0                	test   %eax,%eax
  403130:	74 4e                	je     403180 <submitr+0x610>
  403132:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
  403139:	00 
  40313a:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
  40313f:	ba 00 20 00 00       	mov    $0x2000,%edx
  403144:	e8 73 f8 ff ff       	callq  4029bc <rio_readlineb>
  403149:	48 85 c0             	test   %rax,%rax
  40314c:	0f 8e 3f ff ff ff    	jle    403091 <submitr+0x521>
  403152:	0f b6 94 24 50 20 00 	movzbl 0x2050(%rsp),%edx
  403159:	00 
  40315a:	b8 0d 00 00 00       	mov    $0xd,%eax
  40315f:	29 d0                	sub    %edx,%eax
  403161:	75 cb                	jne    40312e <submitr+0x5be>
  403163:	0f b6 94 24 51 20 00 	movzbl 0x2051(%rsp),%edx
  40316a:	00 
  40316b:	b8 0a 00 00 00       	mov    $0xa,%eax
  403170:	29 d0                	sub    %edx,%eax
  403172:	75 ba                	jne    40312e <submitr+0x5be>
  403174:	0f b6 84 24 52 20 00 	movzbl 0x2052(%rsp),%eax
  40317b:	00 
  40317c:	f7 d8                	neg    %eax
  40317e:	eb ae                	jmp    40312e <submitr+0x5be>
  403180:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
  403187:	00 
  403188:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
  40318d:	ba 00 20 00 00       	mov    $0x2000,%edx
  403192:	e8 25 f8 ff ff       	callq  4029bc <rio_readlineb>
  403197:	48 85 c0             	test   %rax,%rax
  40319a:	7e 66                	jle    403202 <submitr+0x692>
  40319c:	44 8b 44 24 2c       	mov    0x2c(%rsp),%r8d
  4031a1:	41 81 f8 c8 00 00 00 	cmp    $0xc8,%r8d
  4031a8:	0f 85 d7 00 00 00    	jne    403285 <submitr+0x715>
  4031ae:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
  4031b5:	00 
  4031b6:	48 89 df             	mov    %rbx,%rdi
  4031b9:	e8 52 dd ff ff       	callq  400f10 <strcpy@plt>
  4031be:	89 ef                	mov    %ebp,%edi
  4031c0:	e8 cb dd ff ff       	callq  400f90 <close@plt>
  4031c5:	0f b6 03             	movzbl (%rbx),%eax
  4031c8:	ba 4f 00 00 00       	mov    $0x4f,%edx
  4031cd:	29 c2                	sub    %eax,%edx
  4031cf:	0f 85 e9 00 00 00    	jne    4032be <submitr+0x74e>
  4031d5:	0f b6 4b 01          	movzbl 0x1(%rbx),%ecx
  4031d9:	b8 4b 00 00 00       	mov    $0x4b,%eax
  4031de:	29 c8                	sub    %ecx,%eax
  4031e0:	0f 85 da 00 00 00    	jne    4032c0 <submitr+0x750>
  4031e6:	0f b6 4b 02          	movzbl 0x2(%rbx),%ecx
  4031ea:	b8 0a 00 00 00       	mov    $0xa,%eax
  4031ef:	29 c8                	sub    %ecx,%eax
  4031f1:	0f 85 c9 00 00 00    	jne    4032c0 <submitr+0x750>
  4031f7:	0f b6 43 03          	movzbl 0x3(%rbx),%eax
  4031fb:	f7 d8                	neg    %eax
  4031fd:	e9 be 00 00 00       	jmpq   4032c0 <submitr+0x750>
  403202:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  403209:	3a 20 43 
  40320c:	48 89 03             	mov    %rax,(%rbx)
  40320f:	48 b8 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rax
  403216:	20 75 6e 
  403219:	48 89 43 08          	mov    %rax,0x8(%rbx)
  40321d:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  403224:	74 6f 20 
  403227:	48 89 43 10          	mov    %rax,0x10(%rbx)
  40322b:	48 b8 72 65 61 64 20 	movabs $0x6174732064616572,%rax
  403232:	73 74 61 
  403235:	48 89 43 18          	mov    %rax,0x18(%rbx)
  403239:	48 b8 74 75 73 20 6d 	movabs $0x7373656d20737574,%rax
  403240:	65 73 73 
  403243:	48 89 43 20          	mov    %rax,0x20(%rbx)
  403247:	48 b8 61 67 65 20 66 	movabs $0x6d6f726620656761,%rax
  40324e:	72 6f 6d 
  403251:	48 89 43 28          	mov    %rax,0x28(%rbx)
  403255:	48 b8 20 72 65 73 75 	movabs $0x20746c7573657220,%rax
  40325c:	6c 74 20 
  40325f:	48 89 43 30          	mov    %rax,0x30(%rbx)
  403263:	c7 43 38 73 65 72 76 	movl   $0x76726573,0x38(%rbx)
  40326a:	66 c7 43 3c 65 72    	movw   $0x7265,0x3c(%rbx)
  403270:	c6 43 3e 00          	movb   $0x0,0x3e(%rbx)
  403274:	89 ef                	mov    %ebp,%edi
  403276:	e8 15 dd ff ff       	callq  400f90 <close@plt>
  40327b:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  403280:	e9 80 fe ff ff       	jmpq   403105 <submitr+0x595>
  403285:	4c 8d 8c 24 50 80 00 	lea    0x8050(%rsp),%r9
  40328c:	00 
  40328d:	48 8d 0d 04 0c 00 00 	lea    0xc04(%rip),%rcx        # 403e98 <trans_char+0x78>
  403294:	48 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%rdx
  40329b:	be 01 00 00 00       	mov    $0x1,%esi
  4032a0:	48 89 df             	mov    %rbx,%rdi
  4032a3:	b8 00 00 00 00       	mov    $0x0,%eax
  4032a8:	e8 43 de ff ff       	callq  4010f0 <__sprintf_chk@plt>
  4032ad:	89 ef                	mov    %ebp,%edi
  4032af:	e8 dc dc ff ff       	callq  400f90 <close@plt>
  4032b4:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4032b9:	e9 47 fe ff ff       	jmpq   403105 <submitr+0x595>
  4032be:	89 d0                	mov    %edx,%eax
  4032c0:	f7 d8                	neg    %eax
  4032c2:	0f 84 3d fe ff ff    	je     403105 <submitr+0x595>
  4032c8:	b9 05 00 00 00       	mov    $0x5,%ecx
  4032cd:	48 8d 3d 0c 0c 00 00 	lea    0xc0c(%rip),%rdi        # 403ee0 <trans_char+0xc0>
  4032d4:	48 89 de             	mov    %rbx,%rsi
  4032d7:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
  4032d9:	0f 97 c0             	seta   %al
  4032dc:	0f 92 c1             	setb   %cl
  4032df:	29 c8                	sub    %ecx,%eax
  4032e1:	0f be c0             	movsbl %al,%eax
  4032e4:	85 c0                	test   %eax,%eax
  4032e6:	0f 84 19 fe ff ff    	je     403105 <submitr+0x595>
  4032ec:	85 d2                	test   %edx,%edx
  4032ee:	75 13                	jne    403303 <submitr+0x793>
  4032f0:	0f b6 43 01          	movzbl 0x1(%rbx),%eax
  4032f4:	ba 4b 00 00 00       	mov    $0x4b,%edx
  4032f9:	29 c2                	sub    %eax,%edx
  4032fb:	75 06                	jne    403303 <submitr+0x793>
  4032fd:	0f b6 53 02          	movzbl 0x2(%rbx),%edx
  403301:	f7 da                	neg    %edx
  403303:	89 d0                	mov    %edx,%eax
  403305:	f7 d8                	neg    %eax
  403307:	0f 84 f8 fd ff ff    	je     403105 <submitr+0x595>
  40330d:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  403312:	e9 ee fd ff ff       	jmpq   403105 <submitr+0x595>
  403317:	e8 24 dc ff ff       	callq  400f40 <__stack_chk_fail@plt>

000000000040331c <init_timeout>:
  40331c:	85 ff                	test   %edi,%edi
  40331e:	74 20                	je     403340 <init_timeout+0x24>
  403320:	53                   	push   %rbx
  403321:	89 fb                	mov    %edi,%ebx
  403323:	85 ff                	test   %edi,%edi
  403325:	78 1b                	js     403342 <init_timeout+0x26>
  403327:	48 8d 35 75 f5 ff ff 	lea    -0xa8b(%rip),%rsi        # 4028a3 <sigalrm_handler>
  40332e:	bf 0e 00 00 00       	mov    $0xe,%edi
  403333:	e8 88 dc ff ff       	callq  400fc0 <signal@plt>
  403338:	89 df                	mov    %ebx,%edi
  40333a:	e8 41 dc ff ff       	callq  400f80 <alarm@plt>
  40333f:	5b                   	pop    %rbx
  403340:	f3 c3                	repz retq 
  403342:	bb 00 00 00 00       	mov    $0x0,%ebx
  403347:	eb de                	jmp    403327 <init_timeout+0xb>

0000000000403349 <init_driver>:
  403349:	41 54                	push   %r12
  40334b:	55                   	push   %rbp
  40334c:	53                   	push   %rbx
  40334d:	48 83 ec 20          	sub    $0x20,%rsp
  403351:	48 89 fd             	mov    %rdi,%rbp
  403354:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  40335b:	00 00 
  40335d:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
  403362:	31 c0                	xor    %eax,%eax
  403364:	be 01 00 00 00       	mov    $0x1,%esi
  403369:	bf 0d 00 00 00       	mov    $0xd,%edi
  40336e:	e8 4d dc ff ff       	callq  400fc0 <signal@plt>
  403373:	be 01 00 00 00       	mov    $0x1,%esi
  403378:	bf 1d 00 00 00       	mov    $0x1d,%edi
  40337d:	e8 3e dc ff ff       	callq  400fc0 <signal@plt>
  403382:	be 01 00 00 00       	mov    $0x1,%esi
  403387:	bf 1d 00 00 00       	mov    $0x1d,%edi
  40338c:	e8 2f dc ff ff       	callq  400fc0 <signal@plt>
  403391:	ba 00 00 00 00       	mov    $0x0,%edx
  403396:	be 01 00 00 00       	mov    $0x1,%esi
  40339b:	bf 02 00 00 00       	mov    $0x2,%edi
  4033a0:	e8 5b dd ff ff       	callq  401100 <socket@plt>
  4033a5:	85 c0                	test   %eax,%eax
  4033a7:	0f 88 99 00 00 00    	js     403446 <init_driver+0xfd>
  4033ad:	89 c3                	mov    %eax,%ebx
  4033af:	48 8d 3d 2f 0b 00 00 	lea    0xb2f(%rip),%rdi        # 403ee5 <trans_char+0xc5>
  4033b6:	e8 15 dc ff ff       	callq  400fd0 <gethostbyname@plt>
  4033bb:	48 85 c0             	test   %rax,%rax
  4033be:	0f 84 ce 00 00 00    	je     403492 <init_driver+0x149>
  4033c4:	48 c7 04 24 00 00 00 	movq   $0x0,(%rsp)
  4033cb:	00 
  4033cc:	48 c7 44 24 08 00 00 	movq   $0x0,0x8(%rsp)
  4033d3:	00 00 
  4033d5:	66 c7 04 24 02 00    	movw   $0x2,(%rsp)
  4033db:	48 63 50 14          	movslq 0x14(%rax),%rdx
  4033df:	48 8b 40 18          	mov    0x18(%rax),%rax
  4033e3:	48 8b 30             	mov    (%rax),%rsi
  4033e6:	48 8d 7c 24 04       	lea    0x4(%rsp),%rdi
  4033eb:	b9 0c 00 00 00       	mov    $0xc,%ecx
  4033f0:	e8 eb db ff ff       	callq  400fe0 <__memmove_chk@plt>
  4033f5:	66 c7 44 24 02 3c 9a 	movw   $0x9a3c,0x2(%rsp)
  4033fc:	ba 10 00 00 00       	mov    $0x10,%edx
  403401:	48 89 e6             	mov    %rsp,%rsi
  403404:	89 df                	mov    %ebx,%edi
  403406:	e8 c5 dc ff ff       	callq  4010d0 <connect@plt>
  40340b:	85 c0                	test   %eax,%eax
  40340d:	0f 88 e7 00 00 00    	js     4034fa <init_driver+0x1b1>
  403413:	89 df                	mov    %ebx,%edi
  403415:	e8 76 db ff ff       	callq  400f90 <close@plt>
  40341a:	66 c7 45 00 4f 4b    	movw   $0x4b4f,0x0(%rbp)
  403420:	c6 45 02 00          	movb   $0x0,0x2(%rbp)
  403424:	b8 00 00 00 00       	mov    $0x0,%eax
  403429:	48 8b 4c 24 18       	mov    0x18(%rsp),%rcx
  40342e:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
  403435:	00 00 
  403437:	0f 85 10 01 00 00    	jne    40354d <init_driver+0x204>
  40343d:	48 83 c4 20          	add    $0x20,%rsp
  403441:	5b                   	pop    %rbx
  403442:	5d                   	pop    %rbp
  403443:	41 5c                	pop    %r12
  403445:	c3                   	retq   
  403446:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  40344d:	3a 20 43 
  403450:	48 89 45 00          	mov    %rax,0x0(%rbp)
  403454:	48 b8 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rax
  40345b:	20 75 6e 
  40345e:	48 89 45 08          	mov    %rax,0x8(%rbp)
  403462:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  403469:	74 6f 20 
  40346c:	48 89 45 10          	mov    %rax,0x10(%rbp)
  403470:	48 b8 63 72 65 61 74 	movabs $0x7320657461657263,%rax
  403477:	65 20 73 
  40347a:	48 89 45 18          	mov    %rax,0x18(%rbp)
  40347e:	c7 45 20 6f 63 6b 65 	movl   $0x656b636f,0x20(%rbp)
  403485:	66 c7 45 24 74 00    	movw   $0x74,0x24(%rbp)
  40348b:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  403490:	eb 97                	jmp    403429 <init_driver+0xe0>
  403492:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
  403499:	3a 20 44 
  40349c:	48 89 45 00          	mov    %rax,0x0(%rbp)
  4034a0:	48 b8 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rax
  4034a7:	20 75 6e 
  4034aa:	48 89 45 08          	mov    %rax,0x8(%rbp)
  4034ae:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  4034b5:	74 6f 20 
  4034b8:	48 89 45 10          	mov    %rax,0x10(%rbp)
  4034bc:	48 b8 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rax
  4034c3:	76 65 20 
  4034c6:	48 89 45 18          	mov    %rax,0x18(%rbp)
  4034ca:	48 b8 73 65 72 76 65 	movabs $0x6120726576726573,%rax
  4034d1:	72 20 61 
  4034d4:	48 89 45 20          	mov    %rax,0x20(%rbp)
  4034d8:	c7 45 28 64 64 72 65 	movl   $0x65726464,0x28(%rbp)
  4034df:	66 c7 45 2c 73 73    	movw   $0x7373,0x2c(%rbp)
  4034e5:	c6 45 2e 00          	movb   $0x0,0x2e(%rbp)
  4034e9:	89 df                	mov    %ebx,%edi
  4034eb:	e8 a0 da ff ff       	callq  400f90 <close@plt>
  4034f0:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4034f5:	e9 2f ff ff ff       	jmpq   403429 <init_driver+0xe0>
  4034fa:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
  403501:	3a 20 55 
  403504:	48 89 45 00          	mov    %rax,0x0(%rbp)
  403508:	48 b8 6e 61 62 6c 65 	movabs $0x6f7420656c62616e,%rax
  40350f:	20 74 6f 
  403512:	48 89 45 08          	mov    %rax,0x8(%rbp)
  403516:	48 b8 20 63 6f 6e 6e 	movabs $0x7463656e6e6f6320,%rax
  40351d:	65 63 74 
  403520:	48 89 45 10          	mov    %rax,0x10(%rbp)
  403524:	48 b8 20 74 6f 20 73 	movabs $0x76726573206f7420,%rax
  40352b:	65 72 76 
  40352e:	48 89 45 18          	mov    %rax,0x18(%rbp)
  403532:	66 c7 45 20 65 72    	movw   $0x7265,0x20(%rbp)
  403538:	c6 45 22 00          	movb   $0x0,0x22(%rbp)
  40353c:	89 df                	mov    %ebx,%edi
  40353e:	e8 4d da ff ff       	callq  400f90 <close@plt>
  403543:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  403548:	e9 dc fe ff ff       	jmpq   403429 <init_driver+0xe0>
  40354d:	e8 ee d9 ff ff       	callq  400f40 <__stack_chk_fail@plt>

0000000000403552 <driver_post>:
  403552:	53                   	push   %rbx
  403553:	4c 89 cb             	mov    %r9,%rbx
  403556:	45 85 c0             	test   %r8d,%r8d
  403559:	75 18                	jne    403573 <driver_post+0x21>
  40355b:	48 85 ff             	test   %rdi,%rdi
  40355e:	74 05                	je     403565 <driver_post+0x13>
  403560:	80 3f 00             	cmpb   $0x0,(%rdi)
  403563:	75 37                	jne    40359c <driver_post+0x4a>
  403565:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
  40356a:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
  40356e:	44 89 c0             	mov    %r8d,%eax
  403571:	5b                   	pop    %rbx
  403572:	c3                   	retq   
  403573:	48 89 ca             	mov    %rcx,%rdx
  403576:	48 8d 35 80 09 00 00 	lea    0x980(%rip),%rsi        # 403efd <trans_char+0xdd>
  40357d:	bf 01 00 00 00       	mov    $0x1,%edi
  403582:	b8 00 00 00 00       	mov    $0x0,%eax
  403587:	e8 e4 da ff ff       	callq  401070 <__printf_chk@plt>
  40358c:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
  403591:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
  403595:	b8 00 00 00 00       	mov    $0x0,%eax
  40359a:	eb d5                	jmp    403571 <driver_post+0x1f>
  40359c:	48 83 ec 08          	sub    $0x8,%rsp
  4035a0:	41 51                	push   %r9
  4035a2:	49 89 c9             	mov    %rcx,%r9
  4035a5:	49 89 d0             	mov    %rdx,%r8
  4035a8:	48 89 f9             	mov    %rdi,%rcx
  4035ab:	48 89 f2             	mov    %rsi,%rdx
  4035ae:	be 9a 3c 00 00       	mov    $0x3c9a,%esi
  4035b3:	48 8d 3d 2b 09 00 00 	lea    0x92b(%rip),%rdi        # 403ee5 <trans_char+0xc5>
  4035ba:	e8 b1 f5 ff ff       	callq  402b70 <submitr>
  4035bf:	48 83 c4 10          	add    $0x10,%rsp
  4035c3:	eb ac                	jmp    403571 <driver_post+0x1f>

00000000004035c5 <check>:
  4035c5:	89 f8                	mov    %edi,%eax
  4035c7:	c1 e8 1c             	shr    $0x1c,%eax
  4035ca:	85 c0                	test   %eax,%eax
  4035cc:	74 1d                	je     4035eb <check+0x26>
  4035ce:	b9 00 00 00 00       	mov    $0x0,%ecx
  4035d3:	83 f9 1f             	cmp    $0x1f,%ecx
  4035d6:	7f 0d                	jg     4035e5 <check+0x20>
  4035d8:	89 f8                	mov    %edi,%eax
  4035da:	d3 e8                	shr    %cl,%eax
  4035dc:	3c 0a                	cmp    $0xa,%al
  4035de:	74 11                	je     4035f1 <check+0x2c>
  4035e0:	83 c1 08             	add    $0x8,%ecx
  4035e3:	eb ee                	jmp    4035d3 <check+0xe>
  4035e5:	b8 01 00 00 00       	mov    $0x1,%eax
  4035ea:	c3                   	retq   
  4035eb:	b8 00 00 00 00       	mov    $0x0,%eax
  4035f0:	c3                   	retq   
  4035f1:	b8 00 00 00 00       	mov    $0x0,%eax
  4035f6:	c3                   	retq   

00000000004035f7 <gencookie>:
  4035f7:	53                   	push   %rbx
  4035f8:	83 c7 01             	add    $0x1,%edi
  4035fb:	e8 f0 d8 ff ff       	callq  400ef0 <srandom@plt>
  403600:	e8 2b da ff ff       	callq  401030 <random@plt>
  403605:	89 c3                	mov    %eax,%ebx
  403607:	89 c7                	mov    %eax,%edi
  403609:	e8 b7 ff ff ff       	callq  4035c5 <check>
  40360e:	85 c0                	test   %eax,%eax
  403610:	74 ee                	je     403600 <gencookie+0x9>
  403612:	89 d8                	mov    %ebx,%eax
  403614:	5b                   	pop    %rbx
  403615:	c3                   	retq   
  403616:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40361d:	00 00 00 

0000000000403620 <__libc_csu_init>:
  403620:	41 57                	push   %r15
  403622:	41 56                	push   %r14
  403624:	41 89 ff             	mov    %edi,%r15d
  403627:	41 55                	push   %r13
  403629:	41 54                	push   %r12
  40362b:	4c 8d 25 f6 17 20 00 	lea    0x2017f6(%rip),%r12        # 604e28 <__CTOR_LIST__>
  403632:	55                   	push   %rbp
  403633:	48 8d 2d ee 17 20 00 	lea    0x2017ee(%rip),%rbp        # 604e28 <__CTOR_LIST__>
  40363a:	53                   	push   %rbx
  40363b:	49 89 f6             	mov    %rsi,%r14
  40363e:	49 89 d5             	mov    %rdx,%r13
  403641:	4c 29 e5             	sub    %r12,%rbp
  403644:	48 83 ec 08          	sub    $0x8,%rsp
  403648:	48 c1 fd 03          	sar    $0x3,%rbp
  40364c:	e8 47 d8 ff ff       	callq  400e98 <_init>
  403651:	48 85 ed             	test   %rbp,%rbp
  403654:	74 20                	je     403676 <__libc_csu_init+0x56>
  403656:	31 db                	xor    %ebx,%ebx
  403658:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40365f:	00 
  403660:	4c 89 ea             	mov    %r13,%rdx
  403663:	4c 89 f6             	mov    %r14,%rsi
  403666:	44 89 ff             	mov    %r15d,%edi
  403669:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
  40366d:	48 83 c3 01          	add    $0x1,%rbx
  403671:	48 39 eb             	cmp    %rbp,%rbx
  403674:	75 ea                	jne    403660 <__libc_csu_init+0x40>
  403676:	48 83 c4 08          	add    $0x8,%rsp
  40367a:	5b                   	pop    %rbx
  40367b:	5d                   	pop    %rbp
  40367c:	41 5c                	pop    %r12
  40367e:	41 5d                	pop    %r13
  403680:	41 5e                	pop    %r14
  403682:	41 5f                	pop    %r15
  403684:	c3                   	retq   
  403685:	90                   	nop
  403686:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40368d:	00 00 00 

0000000000403690 <__libc_csu_fini>:
  403690:	f3 c3                	repz retq 
  403692:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  403699:	00 00 00 
  40369c:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004036a0 <__do_global_ctors_aux>:
  4036a0:	48 8b 05 81 17 20 00 	mov    0x201781(%rip),%rax        # 604e28 <__CTOR_LIST__>
  4036a7:	48 83 f8 ff          	cmp    $0xffffffffffffffff,%rax
  4036ab:	74 28                	je     4036d5 <__do_global_ctors_aux+0x35>
  4036ad:	55                   	push   %rbp
  4036ae:	48 89 e5             	mov    %rsp,%rbp
  4036b1:	53                   	push   %rbx
  4036b2:	48 8d 1d 6f 17 20 00 	lea    0x20176f(%rip),%rbx        # 604e28 <__CTOR_LIST__>
  4036b9:	48 83 ec 08          	sub    $0x8,%rsp
  4036bd:	0f 1f 00             	nopl   (%rax)
  4036c0:	48 83 eb 08          	sub    $0x8,%rbx
  4036c4:	ff d0                	callq  *%rax
  4036c6:	48 8b 03             	mov    (%rbx),%rax
  4036c9:	48 83 f8 ff          	cmp    $0xffffffffffffffff,%rax
  4036cd:	75 f1                	jne    4036c0 <__do_global_ctors_aux+0x20>
  4036cf:	48 83 c4 08          	add    $0x8,%rsp
  4036d3:	5b                   	pop    %rbx
  4036d4:	5d                   	pop    %rbp
  4036d5:	f3 c3                	repz retq 

Desmontagem da seção .fini:

00000000004036d8 <_fini>:
  4036d8:	48 83 ec 08          	sub    $0x8,%rsp
  4036dc:	e8 ff da ff ff       	callq  4011e0 <__do_global_dtors_aux>
  4036e1:	48 83 c4 08          	add    $0x8,%rsp
  4036e5:	c3                   	retq   
