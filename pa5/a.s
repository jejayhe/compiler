(spim) load "example.s"
(spim) breakpoint Main_init
(spim) run
Stats -- #instructions : 98
         #reads : 15  #writes 12  #branches 23  #other 48
Breakpoint encountered at 0x00401254
(spim) step 500
[0x00401254]	0xafbe0000  sw $30, 0($29)                  ; 433: sw	$fp 0($sp)
[0x00401258]	0x27bdfffc  addiu $29, $29, -4              ; 434: addiu	$sp $sp -4
[0x0040125c]	0xafbf0000  sw $31, 0($29)                  ; 435: sw	$ra 0($sp)
[0x00401260]	0x27bdfffc  addiu $29, $29, -4              ; 436: addiu	$sp $sp -4
[0x00401264]	0xafb00000  sw $16, 0($29)                  ; 437: sw	$s0 0($sp)
[0x00401268]	0x27bdfffc  addiu $29, $29, -4              ; 438: addiu	$sp $sp -4
[0x0040126c]	0x00048021  addu $16, $0, $4                ; 439: move	$s0 $a0
[0x00401270]	0x0c10067c  jal 0x004019f0 [Object_init]    ; 440: jal	Object_init
[0x004019f0]	0xafbe0000  sw $30, 0($29)                  ; 972: sw	$fp 0($sp)
[0x004019f4]	0x27bdfffc  addiu $29, $29, -4              ; 973: addiu	$sp $sp -4
[0x004019f8]	0xafbf0000  sw $31, 0($29)                  ; 974: sw	$ra 0($sp)
[0x004019fc]	0x27bdfffc  addiu $29, $29, -4              ; 975: addiu	$sp $sp -4
[0x00401a00]	0xafb00000  sw $16, 0($29)                  ; 976: sw	$s0 0($sp)
[0x00401a04]	0x27bdfffc  addiu $29, $29, -4              ; 977: addiu	$sp $sp -4
[0x00401a08]	0x00048021  addu $16, $0, $4                ; 978: move	$s0 $a0
[0x00401a0c]	0x00102021  addu $4, $0, $16                ; 979: move	$a0 $s0
[0x00401a10]	0x8fb00004  lw $16, 4($29)                  ; 980: lw	$s0 4($sp)
[0x00401a14]	0x8fbf0008  lw $31, 8($29)                  ; 981: lw	$ra 8($sp)
[0x00401a18]	0x8fbe000c  lw $30, 12($29)                 ; 982: lw	$fp 12($sp)
[0x00401a1c]	0x27bd000c  addiu $29, $29, 12              ; 983: addiu	$sp $sp 12
[0x00401a20]	0x03e00008  jr $31                          ; 984: jr	$ra	
[0x00401274]	0x3c011001  lui $1, 4097 [Bazz_protObj]     ; 441: la	$a0 Bazz_protObj
[0x00401278]	0x34240668  ori $4, $1, 1640 [Bazz_protObj]
[0x0040127c]	0x0c100073  jal 0x004001cc [Object.copy]    ; 442: jal	Object.copy
[0x004001cc]	0x27bdfff8  addiu $29, $29, -8              ; 552: addiu	$sp $sp -8			# create stack frame
[0x004001d0]	0xafbf0008  sw $31, 8($29)                  ; 553: sw	$ra 8($sp)
[0x004001d4]	0xafa40004  sw $4, 4($29)                   ; 554: sw	$a0 4($sp)
[0x004001d8]	0x0c1001dc  jal 0x00400770 [_MemMgr_Test]   ; 556: jal	_MemMgr_Test			# test GC area
[0x00400770]	0x3c011001  lui $1, 4097 [_MemMgr_TEST]     ; 1181: la	$t0 _MemMgr_TEST		# Check if testing enabled
[0x00400774]	0x34280238  ori $8, $1, 568 [_MemMgr_TEST]
[0x00400778]	0x8d080000  lw $8, 0($8)                    ; 1182: lw	$t0 0($t0)
[0x0040077c]	0x1100000b  beq $8, $0, 44 [_MemMgr_Test_end-0x0040077c]; 1183: beqz	$t0 _MemMgr_Test_end
[0x004007a8]	0x03e00008  jr $31                          ; 1197: jr	$ra
[0x004001dc]	0x8fa40004  lw $4, 4($29)                   ; 558: lw	$a0 4($sp)			# get object size
[0x004001e0]	0x8c840004  lw $4, 4($4)                    ; 559: lw	$a0 obj_size($a0)
[0x004001e4]	0x1880002a  blez $4 168 [_objcopy_error-0x004001e4]; 560: blez	$a0 _objcopy_error		# check for invalid size
[0x004001e8]	0x00042080  sll $4, $4, 2                   ; 561: sll	$a0 $a0 2			# convert words to bytes
[0x004001ec]	0x24840004  addiu $4, $4, 4                 ; 562: addiu	$a0 $a0 4			# account for eyecatcher
[0x004001f0]	0x0c1001bb  jal 0x004006ec [_MemMgr_Alloc]  ; 563: jal	_MemMgr_Alloc			# allocate storage
[0x004006ec]	0x0384e020  add $28, $28, $4                ; 1108: add	$gp $gp $a0			# attempt to allocate storage
[0x004006f0]	0x0397082a  slt $1, $28, $23                ; 1109: blt	$gp $s7 _MemMgr_Alloc_end	# check allocation
[0x004006f4]	0x1420000e  bne $1, $0, 56 [_MemMgr_Alloc_end-0x004006f4]
[0x0040072c]	0x03842022  sub $4, $28, $4                 ; 1123: sub	$a0 $gp $a0
[0x00400730]	0x03e00008  jr $31                          ; 1124: jr	$ra				# return
[0x004001f4]	0x24850004  addiu $5, $4, 4                 ; 564: addiu	$a1 $a0 4			# pointer to new object
[0x004001f8]	0x8fa40004  lw $4, 4($29)                   ; 566: lw	$a0 4($sp)			# the self object
[0x004001fc]	0x8fbf0008  lw $31, 8($29)                  ; 567: lw	$ra 8($sp)			# restore return address
[0x00400200]	0x27bd0008  addiu $29, $29, 8               ; 568: addiu	$sp $sp 8			# remove frame
[0x00400204]	0x8c880004  lw $8, 4($4)                    ; 569: lw	$t0 obj_size($a0)		# get size of object
[0x00400208]	0x00084080  sll $8, $8, 2                   ; 570: sll	$t0 $t0 2			# convert words to bytes
[0x0040020c]	0x04010015  bgez $0 84 [_objcopy_allocated-0x0040020c]; 571: b	_objcopy_allocated		# get on with the copy
[0x00400260]	0x2409ffff  addiu $9, $0, -1                ; 598: addiu	$t1 $0 -1
[0x00400264]	0xaca9fffc  sw $9, -4($5)                   ; 599: sw	$t1 obj_eyecatch($a1)		# store eyecatcher
[0x00400268]	0x01044020  add $8, $8, $4                  ; 600: add	$t0 $t0 $a0			# find limit of copy
[0x0040026c]	0x00054821  addu $9, $0, $5                 ; 601: move	$t1 $a1				# save source
[0x00400270]	0x8c820000  lw $2, 0($4)                    ; 603: lw	$v0 0($a0)			# copy word
[0x00400274]	0xad220000  sw $2, 0($9)                    ; 604: sw	$v0 0($t1)
[0x00400278]	0x24840004  addiu $4, $4, 4                 ; 605: addiu	$a0 $a0 4			# update source
[0x0040027c]	0x25290004  addiu $9, $9, 4                 ; 606: addiu	$t1 $t1 4			# update destination
[0x00400280]	0x1488fffc  bne $4, $8, -16 [_objcopy_loop-0x00400280]; 607: bne	$a0 $t0 _objcopy_loop		# loop
[0x00400270]	0x8c820000  lw $2, 0($4)                    ; 603: lw	$v0 0($a0)			# copy word
[0x00400274]	0xad220000  sw $2, 0($9)                    ; 604: sw	$v0 0($t1)
[0x00400278]	0x24840004  addiu $4, $4, 4                 ; 605: addiu	$a0 $a0 4			# update source
[0x0040027c]	0x25290004  addiu $9, $9, 4                 ; 606: addiu	$t1 $t1 4			# update destination
[0x00400280]	0x1488fffc  bne $4, $8, -16 [_objcopy_loop-0x00400280]; 607: bne	$a0 $t0 _objcopy_loop		# loop
[0x00400270]	0x8c820000  lw $2, 0($4)                    ; 603: lw	$v0 0($a0)			# copy word
[0x00400274]	0xad220000  sw $2, 0($9)                    ; 604: sw	$v0 0($t1)
[0x00400278]	0x24840004  addiu $4, $4, 4                 ; 605: addiu	$a0 $a0 4			# update source
[0x0040027c]	0x25290004  addiu $9, $9, 4                 ; 606: addiu	$t1 $t1 4			# update destination
[0x00400280]	0x1488fffc  bne $4, $8, -16 [_objcopy_loop-0x00400280]; 607: bne	$a0 $t0 _objcopy_loop		# loop
[0x00400270]	0x8c820000  lw $2, 0($4)                    ; 603: lw	$v0 0($a0)			# copy word
[0x00400274]	0xad220000  sw $2, 0($9)                    ; 604: sw	$v0 0($t1)
[0x00400278]	0x24840004  addiu $4, $4, 4                 ; 605: addiu	$a0 $a0 4			# update source
[0x0040027c]	0x25290004  addiu $9, $9, 4                 ; 606: addiu	$t1 $t1 4			# update destination
[0x00400280]	0x1488fffc  bne $4, $8, -16 [_objcopy_loop-0x00400280]; 607: bne	$a0 $t0 _objcopy_loop		# loop
[0x00400270]	0x8c820000  lw $2, 0($4)                    ; 603: lw	$v0 0($a0)			# copy word
[0x00400274]	0xad220000  sw $2, 0($9)                    ; 604: sw	$v0 0($t1)
[0x00400278]	0x24840004  addiu $4, $4, 4                 ; 605: addiu	$a0 $a0 4			# update source
[0x0040027c]	0x25290004  addiu $9, $9, 4                 ; 606: addiu	$t1 $t1 4			# update destination
[0x00400280]	0x1488fffc  bne $4, $8, -16 [_objcopy_loop-0x00400280]; 607: bne	$a0 $t0 _objcopy_loop		# loop
[0x00400270]	0x8c820000  lw $2, 0($4)                    ; 603: lw	$v0 0($a0)			# copy word
[0x00400274]	0xad220000  sw $2, 0($9)                    ; 604: sw	$v0 0($t1)
[0x00400278]	0x24840004  addiu $4, $4, 4                 ; 605: addiu	$a0 $a0 4			# update source
[0x0040027c]	0x25290004  addiu $9, $9, 4                 ; 606: addiu	$t1 $t1 4			# update destination
[0x00400280]	0x1488fffc  bne $4, $8, -16 [_objcopy_loop-0x00400280]; 607: bne	$a0 $t0 _objcopy_loop		# loop
[0x00400284]	0x00052021  addu $4, $0, $5                 ; 609: move	$a0 $a1				# put new object in $a0
[0x00400288]	0x03e00008  jr $31                          ; 610: jr	$ra				# return
[0x00401280]	0x0c1004b7  jal 0x004012dc [Bazz_init]      ; 443: jal	Bazz_init
[0x004012dc]	0xafbe0000  sw $30, 0($29)                  ; 464: sw	$fp 0($sp)
[0x004012e0]	0x27bdfffc  addiu $29, $29, -4              ; 465: addiu	$sp $sp -4
[0x004012e4]	0xafbf0000  sw $31, 0($29)                  ; 466: sw	$ra 0($sp)
[0x004012e8]	0x27bdfffc  addiu $29, $29, -4              ; 467: addiu	$sp $sp -4
[0x004012ec]	0xafb00000  sw $16, 0($29)                  ; 468: sw	$s0 0($sp)
[0x004012f0]	0x27bdfffc  addiu $29, $29, -4              ; 469: addiu	$sp $sp -4
[0x004012f4]	0x00048021  addu $16, $0, $4                ; 470: move	$s0 $a0
[0x004012f8]	0x0c10066e  jal 0x004019b8 [IO_init]        ; 471: jal	IO_init
[0x004019b8]	0xafbe0000  sw $30, 0($29)                  ; 957: sw	$fp 0($sp)
[0x004019bc]	0x27bdfffc  addiu $29, $29, -4              ; 958: addiu	$sp $sp -4
[0x004019c0]	0xafbf0000  sw $31, 0($29)                  ; 959: sw	$ra 0($sp)
[0x004019c4]	0x27bdfffc  addiu $29, $29, -4              ; 960: addiu	$sp $sp -4
[0x004019c8]	0xafb00000  sw $16, 0($29)                  ; 961: sw	$s0 0($sp)
[0x004019cc]	0x27bdfffc  addiu $29, $29, -4              ; 962: addiu	$sp $sp -4
[0x004019d0]	0x00048021  addu $16, $0, $4                ; 963: move	$s0 $a0
[0x004019d4]	0x0c10067c  jal 0x004019f0 [Object_init]    ; 964: jal	Object_init
[0x004019f0]	0xafbe0000  sw $30, 0($29)                  ; 972: sw	$fp 0($sp)
[0x004019f4]	0x27bdfffc  addiu $29, $29, -4              ; 973: addiu	$sp $sp -4
[0x004019f8]	0xafbf0000  sw $31, 0($29)                  ; 974: sw	$ra 0($sp)
[0x004019fc]	0x27bdfffc  addiu $29, $29, -4              ; 975: addiu	$sp $sp -4
[0x00401a00]	0xafb00000  sw $16, 0($29)                  ; 976: sw	$s0 0($sp)
[0x00401a04]	0x27bdfffc  addiu $29, $29, -4              ; 977: addiu	$sp $sp -4
[0x00401a08]	0x00048021  addu $16, $0, $4                ; 978: move	$s0 $a0
[0x00401a0c]	0x00102021  addu $4, $0, $16                ; 979: move	$a0 $s0
[0x00401a10]	0x8fb00004  lw $16, 4($29)                  ; 980: lw	$s0 4($sp)
[0x00401a14]	0x8fbf0008  lw $31, 8($29)                  ; 981: lw	$ra 8($sp)
[0x00401a18]	0x8fbe000c  lw $30, 12($29)                 ; 982: lw	$fp 12($sp)
[0x00401a1c]	0x27bd000c  addiu $29, $29, 12              ; 983: addiu	$sp $sp 12
[0x00401a20]	0x03e00008  jr $31                          ; 984: jr	$ra	
[0x004019d8]	0x00102021  addu $4, $0, $16                ; 965: move	$a0 $s0
[0x004019dc]	0x8fb00004  lw $16, 4($29)                  ; 966: lw	$s0 4($sp)
[0x004019e0]	0x8fbf0008  lw $31, 8($29)                  ; 967: lw	$ra 8($sp)
[0x004019e4]	0x8fbe000c  lw $30, 12($29)                 ; 968: lw	$fp 12($sp)
[0x004019e8]	0x27bd000c  addiu $29, $29, 12              ; 969: addiu	$sp $sp 12
[0x004019ec]	0x03e00008  jr $31                          ; 970: jr	$ra	
[0x004012fc]	0x3c011001  lui $1, 4097 [int_const1]       ; 472: la	$a0 int_const1
[0x00401300]	0x342404b0  ori $4, $1, 1200 [int_const1]
[0x00401304]	0xae04000c  sw $4, 12($16)                  ; 473: sw	$a0 12($s0)
[0x00401308]	0x00102021  addu $4, $0, $16                ; 475: move	$a0 $s0
[0x0040130c]	0x10800032  beq $4, $0, 200 [label6-0x0040130c]; 476: beqz	$a0 label6
[0x00401310]	0x8c890000  lw $9, 0($4)                    ; 477: lw	$t1 0($a0)
[0x00401314]	0x340a0004  ori $10, $0, 4                  ; 480: li	$t2 4
[0x00401318]	0x112a0010  beq $9, $10, 64 [label1-0x00401318]; 482: beq	$t1 $t2 label1
[0x00401358]	0xafa40000  sw $4, 0($29)                   ; 501: sw	$a0 0($sp)
[0x0040135c]	0x27bdfffc  addiu $29, $29, -4              ; 502: addiu	$sp $sp -4
[0x00401360]	0x3c011001  lui $1, 4097 [Foo_protObj]      ; 503: la	$a0 Foo_protObj
[0x00401364]	0x342406e4  ori $4, $1, 1764 [Foo_protObj]
[0x00401368]	0x0c100073  jal 0x004001cc [Object.copy]    ; 504: jal	Object.copy
[0x004001cc]	0x27bdfff8  addiu $29, $29, -8              ; 552: addiu	$sp $sp -8			# create stack frame
[0x004001d0]	0xafbf0008  sw $31, 8($29)                  ; 553: sw	$ra 8($sp)
[0x004001d4]	0xafa40004  sw $4, 4($29)                   ; 554: sw	$a0 4($sp)
[0x004001d8]	0x0c1001dc  jal 0x00400770 [_MemMgr_Test]   ; 556: jal	_MemMgr_Test			# test GC area
[0x00400770]	0x3c011001  lui $1, 4097 [_MemMgr_TEST]     ; 1181: la	$t0 _MemMgr_TEST		# Check if testing enabled
[0x00400774]	0x34280238  ori $8, $1, 568 [_MemMgr_TEST]
[0x00400778]	0x8d080000  lw $8, 0($8)                    ; 1182: lw	$t0 0($t0)
[0x0040077c]	0x1100000b  beq $8, $0, 44 [_MemMgr_Test_end-0x0040077c]; 1183: beqz	$t0 _MemMgr_Test_end
[0x004007a8]	0x03e00008  jr $31                          ; 1197: jr	$ra
[0x004001dc]	0x8fa40004  lw $4, 4($29)                   ; 558: lw	$a0 4($sp)			# get object size
[0x004001e0]	0x8c840004  lw $4, 4($4)                    ; 559: lw	$a0 obj_size($a0)
[0x004001e4]	0x1880002a  blez $4 168 [_objcopy_error-0x004001e4]; 560: blez	$a0 _objcopy_error		# check for invalid size
[0x004001e8]	0x00042080  sll $4, $4, 2                   ; 561: sll	$a0 $a0 2			# convert words to bytes
[0x004001ec]	0x24840004  addiu $4, $4, 4                 ; 562: addiu	$a0 $a0 4			# account for eyecatcher
[0x004001f0]	0x0c1001bb  jal 0x004006ec [_MemMgr_Alloc]  ; 563: jal	_MemMgr_Alloc			# allocate storage
[0x004006ec]	0x0384e020  add $28, $28, $4                ; 1108: add	$gp $gp $a0			# attempt to allocate storage
[0x004006f0]	0x0397082a  slt $1, $28, $23                ; 1109: blt	$gp $s7 _MemMgr_Alloc_end	# check allocation
[0x004006f4]	0x1420000e  bne $1, $0, 56 [_MemMgr_Alloc_end-0x004006f4]
[0x0040072c]	0x03842022  sub $4, $28, $4                 ; 1123: sub	$a0 $gp $a0
[0x00400730]	0x03e00008  jr $31                          ; 1124: jr	$ra				# return
[0x004001f4]	0x24850004  addiu $5, $4, 4                 ; 564: addiu	$a1 $a0 4			# pointer to new object
[0x004001f8]	0x8fa40004  lw $4, 4($29)                   ; 566: lw	$a0 4($sp)			# the self object
[0x004001fc]	0x8fbf0008  lw $31, 8($29)                  ; 567: lw	$ra 8($sp)			# restore return address
[0x00400200]	0x27bd0008  addiu $29, $29, 8               ; 568: addiu	$sp $sp 8			# remove frame
[0x00400204]	0x8c880004  lw $8, 4($4)                    ; 569: lw	$t0 obj_size($a0)		# get size of object
[0x00400208]	0x00084080  sll $8, $8, 2                   ; 570: sll	$t0 $t0 2			# convert words to bytes
[0x0040020c]	0x04010015  bgez $0 84 [_objcopy_allocated-0x0040020c]; 571: b	_objcopy_allocated		# get on with the copy
[0x00400260]	0x2409ffff  addiu $9, $0, -1                ; 598: addiu	$t1 $0 -1
[0x00400264]	0xaca9fffc  sw $9, -4($5)                   ; 599: sw	$t1 obj_eyecatch($a1)		# store eyecatcher
[0x00400268]	0x01044020  add $8, $8, $4                  ; 600: add	$t0 $t0 $a0			# find limit of copy
[0x0040026c]	0x00054821  addu $9, $0, $5                 ; 601: move	$t1 $a1				# save source
[0x00400270]	0x8c820000  lw $2, 0($4)                    ; 603: lw	$v0 0($a0)			# copy word
[0x00400274]	0xad220000  sw $2, 0($9)                    ; 604: sw	$v0 0($t1)
[0x00400278]	0x24840004  addiu $4, $4, 4                 ; 605: addiu	$a0 $a0 4			# update source
[0x0040027c]	0x25290004  addiu $9, $9, 4                 ; 606: addiu	$t1 $t1 4			# update destination
[0x00400280]	0x1488fffc  bne $4, $8, -16 [_objcopy_loop-0x00400280]; 607: bne	$a0 $t0 _objcopy_loop		# loop
[0x00400270]	0x8c820000  lw $2, 0($4)                    ; 603: lw	$v0 0($a0)			# copy word
[0x00400274]	0xad220000  sw $2, 0($9)                    ; 604: sw	$v0 0($t1)
[0x00400278]	0x24840004  addiu $4, $4, 4                 ; 605: addiu	$a0 $a0 4			# update source
[0x0040027c]	0x25290004  addiu $9, $9, 4                 ; 606: addiu	$t1 $t1 4			# update destination
[0x00400280]	0x1488fffc  bne $4, $8, -16 [_objcopy_loop-0x00400280]; 607: bne	$a0 $t0 _objcopy_loop		# loop
[0x00400270]	0x8c820000  lw $2, 0($4)                    ; 603: lw	$v0 0($a0)			# copy word
[0x00400274]	0xad220000  sw $2, 0($9)                    ; 604: sw	$v0 0($t1)
[0x00400278]	0x24840004  addiu $4, $4, 4                 ; 605: addiu	$a0 $a0 4			# update source
[0x0040027c]	0x25290004  addiu $9, $9, 4                 ; 606: addiu	$t1 $t1 4			# update destination
[0x00400280]	0x1488fffc  bne $4, $8, -16 [_objcopy_loop-0x00400280]; 607: bne	$a0 $t0 _objcopy_loop		# loop
[0x00400270]	0x8c820000  lw $2, 0($4)                    ; 603: lw	$v0 0($a0)			# copy word
[0x00400274]	0xad220000  sw $2, 0($9)                    ; 604: sw	$v0 0($t1)
[0x00400278]	0x24840004  addiu $4, $4, 4                 ; 605: addiu	$a0 $a0 4			# update source
[0x0040027c]	0x25290004  addiu $9, $9, 4                 ; 606: addiu	$t1 $t1 4			# update destination
[0x00400280]	0x1488fffc  bne $4, $8, -16 [_objcopy_loop-0x00400280]; 607: bne	$a0 $t0 _objcopy_loop		# loop
[0x00400270]	0x8c820000  lw $2, 0($4)                    ; 603: lw	$v0 0($a0)			# copy word
[0x00400274]	0xad220000  sw $2, 0($9)                    ; 604: sw	$v0 0($t1)
[0x00400278]	0x24840004  addiu $4, $4, 4                 ; 605: addiu	$a0 $a0 4			# update source
[0x0040027c]	0x25290004  addiu $9, $9, 4                 ; 606: addiu	$t1 $t1 4			# update destination
[0x00400280]	0x1488fffc  bne $4, $8, -16 [_objcopy_loop-0x00400280]; 607: bne	$a0 $t0 _objcopy_loop		# loop
[0x00400270]	0x8c820000  lw $2, 0($4)                    ; 603: lw	$v0 0($a0)			# copy word
[0x00400274]	0xad220000  sw $2, 0($9)                    ; 604: sw	$v0 0($t1)
[0x00400278]	0x24840004  addiu $4, $4, 4                 ; 605: addiu	$a0 $a0 4			# update source
[0x0040027c]	0x25290004  addiu $9, $9, 4                 ; 606: addiu	$t1 $t1 4			# update destination
[0x00400280]	0x1488fffc  bne $4, $8, -16 [_objcopy_loop-0x00400280]; 607: bne	$a0 $t0 _objcopy_loop		# loop
[0x00400270]	0x8c820000  lw $2, 0($4)                    ; 603: lw	$v0 0($a0)			# copy word
[0x00400274]	0xad220000  sw $2, 0($9)                    ; 604: sw	$v0 0($t1)
[0x00400278]	0x24840004  addiu $4, $4, 4                 ; 605: addiu	$a0 $a0 4			# update source
[0x0040027c]	0x25290004  addiu $9, $9, 4                 ; 606: addiu	$t1 $t1 4			# update destination
[0x00400280]	0x1488fffc  bne $4, $8, -16 [_objcopy_loop-0x00400280]; 607: bne	$a0 $t0 _objcopy_loop		# loop
[0x00400270]	0x8c820000  lw $2, 0($4)                    ; 603: lw	$v0 0($a0)			# copy word
[0x00400274]	0xad220000  sw $2, 0($9)                    ; 604: sw	$v0 0($t1)
[0x00400278]	0x24840004  addiu $4, $4, 4                 ; 605: addiu	$a0 $a0 4			# update source
[0x0040027c]	0x25290004  addiu $9, $9, 4                 ; 606: addiu	$t1 $t1 4			# update destination
[0x00400280]	0x1488fffc  bne $4, $8, -16 [_objcopy_loop-0x00400280]; 607: bne	$a0 $t0 _objcopy_loop		# loop
[0x00400284]	0x00052021  addu $4, $0, $5                 ; 609: move	$a0 $a1				# put new object in $a0
[0x00400288]	0x03e00008  jr $31                          ; 610: jr	$ra				# return
[0x0040136c]	0x0c1005c2  jal 0x00401708 [Foo_init]       ; 505: jal	Foo_init
[0x00401708]	0xafbe0000  sw $30, 0($29)                  ; 765: sw	$fp 0($sp)
[0x0040170c]	0x27bdfffc  addiu $29, $29, -4              ; 766: addiu	$sp $sp -4
[0x00401710]	0xafbf0000  sw $31, 0($29)                  ; 767: sw	$ra 0($sp)
[0x00401714]	0x27bdfffc  addiu $29, $29, -4              ; 768: addiu	$sp $sp -4
[0x00401718]	0xafb00000  sw $16, 0($29)                  ; 769: sw	$s0 0($sp)
[0x0040171c]	0x27bdfffc  addiu $29, $29, -4              ; 770: addiu	$sp $sp -4
[0x00401720]	0x00048021  addu $16, $0, $4                ; 771: move	$s0 $a0
[0x00401724]	0x0c1004b7  jal 0x004012dc [Bazz_init]      ; 772: jal	Bazz_init
[0x004012dc]	0xafbe0000  sw $30, 0($29)                  ; 464: sw	$fp 0($sp)
[0x004012e0]	0x27bdfffc  addiu $29, $29, -4              ; 465: addiu	$sp $sp -4
[0x004012e4]	0xafbf0000  sw $31, 0($29)                  ; 466: sw	$ra 0($sp)
[0x004012e8]	0x27bdfffc  addiu $29, $29, -4              ; 467: addiu	$sp $sp -4
[0x004012ec]	0xafb00000  sw $16, 0($29)                  ; 468: sw	$s0 0($sp)
[0x004012f0]	0x27bdfffc  addiu $29, $29, -4              ; 469: addiu	$sp $sp -4
[0x004012f4]	0x00048021  addu $16, $0, $4                ; 470: move	$s0 $a0
[0x004012f8]	0x0c10066e  jal 0x004019b8 [IO_init]        ; 471: jal	IO_init
[0x004019b8]	0xafbe0000  sw $30, 0($29)                  ; 957: sw	$fp 0($sp)
[0x004019bc]	0x27bdfffc  addiu $29, $29, -4              ; 958: addiu	$sp $sp -4
[0x004019c0]	0xafbf0000  sw $31, 0($29)                  ; 959: sw	$ra 0($sp)
[0x004019c4]	0x27bdfffc  addiu $29, $29, -4              ; 960: addiu	$sp $sp -4
[0x004019c8]	0xafb00000  sw $16, 0($29)                  ; 961: sw	$s0 0($sp)
[0x004019cc]	0x27bdfffc  addiu $29, $29, -4              ; 962: addiu	$sp $sp -4
[0x004019d0]	0x00048021  addu $16, $0, $4                ; 963: move	$s0 $a0
[0x004019d4]	0x0c10067c  jal 0x004019f0 [Object_init]    ; 964: jal	Object_init
[0x004019f0]	0xafbe0000  sw $30, 0($29)                  ; 972: sw	$fp 0($sp)
[0x004019f4]	0x27bdfffc  addiu $29, $29, -4              ; 973: addiu	$sp $sp -4
[0x004019f8]	0xafbf0000  sw $31, 0($29)                  ; 974: sw	$ra 0($sp)
[0x004019fc]	0x27bdfffc  addiu $29, $29, -4              ; 975: addiu	$sp $sp -4
[0x00401a00]	0xafb00000  sw $16, 0($29)                  ; 976: sw	$s0 0($sp)
[0x00401a04]	0x27bdfffc  addiu $29, $29, -4              ; 977: addiu	$sp $sp -4
[0x00401a08]	0x00048021  addu $16, $0, $4                ; 978: move	$s0 $a0
[0x00401a0c]	0x00102021  addu $4, $0, $16                ; 979: move	$a0 $s0
[0x00401a10]	0x8fb00004  lw $16, 4($29)                  ; 980: lw	$s0 4($sp)
[0x00401a14]	0x8fbf0008  lw $31, 8($29)                  ; 981: lw	$ra 8($sp)
[0x00401a18]	0x8fbe000c  lw $30, 12($29)                 ; 982: lw	$fp 12($sp)
[0x00401a1c]	0x27bd000c  addiu $29, $29, 12              ; 983: addiu	$sp $sp 12
[0x00401a20]	0x03e00008  jr $31                          ; 984: jr	$ra	
[0x004019d8]	0x00102021  addu $4, $0, $16                ; 965: move	$a0 $s0
[0x004019dc]	0x8fb00004  lw $16, 4($29)                  ; 966: lw	$s0 4($sp)
[0x004019e0]	0x8fbf0008  lw $31, 8($29)                  ; 967: lw	$ra 8($sp)
[0x004019e4]	0x8fbe000c  lw $30, 12($29)                 ; 968: lw	$fp 12($sp)
[0x004019e8]	0x27bd000c  addiu $29, $29, 12              ; 969: addiu	$sp $sp 12
[0x004019ec]	0x03e00008  jr $31                          ; 970: jr	$ra	
[0x004012fc]	0x3c011001  lui $1, 4097 [int_const1]       ; 472: la	$a0 int_const1
[0x00401300]	0x342404b0  ori $4, $1, 1200 [int_const1]
[0x00401304]	0xae04000c  sw $4, 12($16)                  ; 473: sw	$a0 12($s0)
[0x00401308]	0x00102021  addu $4, $0, $16                ; 475: move	$a0 $s0
[0x0040130c]	0x10800032  beq $4, $0, 200 [label6-0x0040130c]; 476: beqz	$a0 label6
[0x00401310]	0x8c890000  lw $9, 0($4)                    ; 477: lw	$t1 0($a0)
[0x00401314]	0x340a0004  ori $10, $0, 4                  ; 480: li	$t2 4
[0x00401318]	0x112a0010  beq $9, $10, 64 [label1-0x00401318]; 482: beq	$t1 $t2 label1
[0x0040131c]	0x340a0005  ori $10, $0, 5                  ; 483: li	$t2 5
[0x00401320]	0x112a0016  beq $9, $10, 88 [label2-0x00401320]; 485: beq	$t1 $t2 label2
[0x00401324]	0x340a0007  ori $10, $0, 7                  ; 486: li	$t2 7
[0x00401328]	0x112a001c  beq $9, $10, 112 [label3-0x00401328]; 488: beq	$t1 $t2 label3
[0x00401398]	0xafa40000  sw $4, 0($29)                   ; 519: sw	$a0 0($sp)
[0x0040139c]	0x27bdfffc  addiu $29, $29, -4              ; 520: addiu	$sp $sp -4
[0x004013a0]	0x3c011001  lui $1, 4097 [Razz_protObj]     ; 521: la	$a0 Razz_protObj
[0x004013a4]	0x34240684  ori $4, $1, 1668 [Razz_protObj]
[0x004013a8]	0x0c100073  jal 0x004001cc [Object.copy]    ; 522: jal	Object.copy
[0x004001cc]	0x27bdfff8  addiu $29, $29, -8              ; 552: addiu	$sp $sp -8			# create stack frame
[0x004001d0]	0xafbf0008  sw $31, 8($29)                  ; 553: sw	$ra 8($sp)
[0x004001d4]	0xafa40004  sw $4, 4($29)                   ; 554: sw	$a0 4($sp)
[0x004001d8]	0x0c1001dc  jal 0x00400770 [_MemMgr_Test]   ; 556: jal	_MemMgr_Test			# test GC area
[0x00400770]	0x3c011001  lui $1, 4097 [_MemMgr_TEST]     ; 1181: la	$t0 _MemMgr_TEST		# Check if testing enabled
[0x00400774]	0x34280238  ori $8, $1, 568 [_MemMgr_TEST]
[0x00400778]	0x8d080000  lw $8, 0($8)                    ; 1182: lw	$t0 0($t0)
[0x0040077c]	0x1100000b  beq $8, $0, 44 [_MemMgr_Test_end-0x0040077c]; 1183: beqz	$t0 _MemMgr_Test_end
[0x004007a8]	0x03e00008  jr $31                          ; 1197: jr	$ra
[0x004001dc]	0x8fa40004  lw $4, 4($29)                   ; 558: lw	$a0 4($sp)			# get object size
[0x004001e0]	0x8c840004  lw $4, 4($4)                    ; 559: lw	$a0 obj_size($a0)
[0x004001e4]	0x1880002a  blez $4 168 [_objcopy_error-0x004001e4]; 560: blez	$a0 _objcopy_error		# check for invalid size
[0x004001e8]	0x00042080  sll $4, $4, 2                   ; 561: sll	$a0 $a0 2			# convert words to bytes
[0x004001ec]	0x24840004  addiu $4, $4, 4                 ; 562: addiu	$a0 $a0 4			# account for eyecatcher
[0x004001f0]	0x0c1001bb  jal 0x004006ec [_MemMgr_Alloc]  ; 563: jal	_MemMgr_Alloc			# allocate storage
[0x004006ec]	0x0384e020  add $28, $28, $4                ; 1108: add	$gp $gp $a0			# attempt to allocate storage
[0x004006f0]	0x0397082a  slt $1, $28, $23                ; 1109: blt	$gp $s7 _MemMgr_Alloc_end	# check allocation
[0x004006f4]	0x1420000e  bne $1, $0, 56 [_MemMgr_Alloc_end-0x004006f4]
[0x0040072c]	0x03842022  sub $4, $28, $4                 ; 1123: sub	$a0 $gp $a0
[0x00400730]	0x03e00008  jr $31                          ; 1124: jr	$ra				# return
[0x004001f4]	0x24850004  addiu $5, $4, 4                 ; 564: addiu	$a1 $a0 4			# pointer to new object
[0x004001f8]	0x8fa40004  lw $4, 4($29)                   ; 566: lw	$a0 4($sp)			# the self object
[0x004001fc]	0x8fbf0008  lw $31, 8($29)                  ; 567: lw	$ra 8($sp)			# restore return address
[0x00400200]	0x27bd0008  addiu $29, $29, 8               ; 568: addiu	$sp $sp 8			# remove frame
[0x00400204]	0x8c880004  lw $8, 4($4)                    ; 569: lw	$t0 obj_size($a0)		# get size of object
[0x00400208]	0x00084080  sll $8, $8, 2                   ; 570: sll	$t0 $t0 2			# convert words to bytes
[0x0040020c]	0x04010015  bgez $0 84 [_objcopy_allocated-0x0040020c]; 571: b	_objcopy_allocated		# get on with the copy
[0x00400260]	0x2409ffff  addiu $9, $0, -1                ; 598: addiu	$t1 $0 -1
[0x00400264]	0xaca9fffc  sw $9, -4($5)                   ; 599: sw	$t1 obj_eyecatch($a1)		# store eyecatcher
[0x00400268]	0x01044020  add $8, $8, $4                  ; 600: add	$t0 $t0 $a0			# find limit of copy
[0x0040026c]	0x00054821  addu $9, $0, $5                 ; 601: move	$t1 $a1				# save source
[0x00400270]	0x8c820000  lw $2, 0($4)                    ; 603: lw	$v0 0($a0)			# copy word
[0x00400274]	0xad220000  sw $2, 0($9)                    ; 604: sw	$v0 0($t1)
[0x00400278]	0x24840004  addiu $4, $4, 4                 ; 605: addiu	$a0 $a0 4			# update source
[0x0040027c]	0x25290004  addiu $9, $9, 4                 ; 606: addiu	$t1 $t1 4			# update destination
[0x00400280]	0x1488fffc  bne $4, $8, -16 [_objcopy_loop-0x00400280]; 607: bne	$a0 $t0 _objcopy_loop		# loop
[0x00400270]	0x8c820000  lw $2, 0($4)                    ; 603: lw	$v0 0($a0)			# copy word
[0x00400274]	0xad220000  sw $2, 0($9)                    ; 604: sw	$v0 0($t1)
[0x00400278]	0x24840004  addiu $4, $4, 4                 ; 605: addiu	$a0 $a0 4			# update source
[0x0040027c]	0x25290004  addiu $9, $9, 4                 ; 606: addiu	$t1 $t1 4			# update destination
[0x00400280]	0x1488fffc  bne $4, $8, -16 [_objcopy_loop-0x00400280]; 607: bne	$a0 $t0 _objcopy_loop		# loop
[0x00400270]	0x8c820000  lw $2, 0($4)                    ; 603: lw	$v0 0($a0)			# copy word
[0x00400274]	0xad220000  sw $2, 0($9)                    ; 604: sw	$v0 0($t1)
[0x00400278]	0x24840004  addiu $4, $4, 4                 ; 605: addiu	$a0 $a0 4			# update source
[0x0040027c]	0x25290004  addiu $9, $9, 4                 ; 606: addiu	$t1 $t1 4			# update destination
[0x00400280]	0x1488fffc  bne $4, $8, -16 [_objcopy_loop-0x00400280]; 607: bne	$a0 $t0 _objcopy_loop		# loop
[0x00400270]	0x8c820000  lw $2, 0($4)                    ; 603: lw	$v0 0($a0)			# copy word
[0x00400274]	0xad220000  sw $2, 0($9)                    ; 604: sw	$v0 0($t1)
[0x00400278]	0x24840004  addiu $4, $4, 4                 ; 605: addiu	$a0 $a0 4			# update source
[0x0040027c]	0x25290004  addiu $9, $9, 4                 ; 606: addiu	$t1 $t1 4			# update destination
[0x00400280]	0x1488fffc  bne $4, $8, -16 [_objcopy_loop-0x00400280]; 607: bne	$a0 $t0 _objcopy_loop		# loop
[0x00400270]	0x8c820000  lw $2, 0($4)                    ; 603: lw	$v0 0($a0)			# copy word
[0x00400274]	0xad220000  sw $2, 0($9)                    ; 604: sw	$v0 0($t1)
[0x00400278]	0x24840004  addiu $4, $4, 4                 ; 605: addiu	$a0 $a0 4			# update source
[0x0040027c]	0x25290004  addiu $9, $9, 4                 ; 606: addiu	$t1 $t1 4			# update destination
[0x00400280]	0x1488fffc  bne $4, $8, -16 [_objcopy_loop-0x00400280]; 607: bne	$a0 $t0 _objcopy_loop		# loop
[0x00400270]	0x8c820000  lw $2, 0($4)                    ; 603: lw	$v0 0($a0)			# copy word
[0x00400274]	0xad220000  sw $2, 0($9)                    ; 604: sw	$v0 0($t1)
[0x00400278]	0x24840004  addiu $4, $4, 4                 ; 605: addiu	$a0 $a0 4			# update source
[0x0040027c]	0x25290004  addiu $9, $9, 4                 ; 606: addiu	$t1 $t1 4			# update destination
[0x00400280]	0x1488fffc  bne $4, $8, -16 [_objcopy_loop-0x00400280]; 607: bne	$a0 $t0 _objcopy_loop		# loop
[0x00400270]	0x8c820000  lw $2, 0($4)                    ; 603: lw	$v0 0($a0)			# copy word
[0x00400274]	0xad220000  sw $2, 0($9)                    ; 604: sw	$v0 0($t1)
[0x00400278]	0x24840004  addiu $4, $4, 4                 ; 605: addiu	$a0 $a0 4			# update source
[0x0040027c]	0x25290004  addiu $9, $9, 4                 ; 606: addiu	$t1 $t1 4			# update destination
[0x00400280]	0x1488fffc  bne $4, $8, -16 [_objcopy_loop-0x00400280]; 607: bne	$a0 $t0 _objcopy_loop		# loop
[0x00400270]	0x8c820000  lw $2, 0($4)                    ; 603: lw	$v0 0($a0)			# copy word
[0x00400274]	0xad220000  sw $2, 0($9)                    ; 604: sw	$v0 0($t1)
[0x00400278]	0x24840004  addiu $4, $4, 4                 ; 605: addiu	$a0 $a0 4			# update source
[0x0040027c]	0x25290004  addiu $9, $9, 4                 ; 606: addiu	$t1 $t1 4			# update destination
[0x00400280]	0x1488fffc  bne $4, $8, -16 [_objcopy_loop-0x00400280]; 607: bne	$a0 $t0 _objcopy_loop		# loop
[0x00400270]	0x8c820000  lw $2, 0($4)                    ; 603: lw	$v0 0($a0)			# copy word
[0x00400274]	0xad220000  sw $2, 0($9)                    ; 604: sw	$v0 0($t1)
[0x00400278]	0x24840004  addiu $4, $4, 4                 ; 605: addiu	$a0 $a0 4			# update source
[0x0040027c]	0x25290004  addiu $9, $9, 4                 ; 606: addiu	$t1 $t1 4			# update destination
[0x00400280]	0x1488fffc  bne $4, $8, -16 [_objcopy_loop-0x00400280]; 607: bne	$a0 $t0 _objcopy_loop		# loop
[0x00400270]	0x8c820000  lw $2, 0($4)                    ; 603: lw	$v0 0($a0)			# copy word
[0x00400274]	0xad220000  sw $2, 0($9)                    ; 604: sw	$v0 0($t1)
[0x00400278]	0x24840004  addiu $4, $4, 4                 ; 605: addiu	$a0 $a0 4			# update source
[0x0040027c]	0x25290004  addiu $9, $9, 4                 ; 606: addiu	$t1 $t1 4			# update destination
[0x00400280]	0x1488fffc  bne $4, $8, -16 [_objcopy_loop-0x00400280]; 607: bne	$a0 $t0 _objcopy_loop		# loop
[0x00400284]	0x00052021  addu $4, $0, $5                 ; 609: move	$a0 $a1				# put new object in $a0
[0x00400288]	0x03e00008  jr $31                          ; 610: jr	$ra				# return
[0x004013ac]	0x0c10050d  jal 0x00401434 [Razz_init]      ; 523: jal	Razz_init
[0x00401434]	0xafbe0000  sw $30, 0($29)                  ; 564: sw	$fp 0($sp)
[0x00401438]	0x27bdfffc  addiu $29, $29, -4              ; 565: addiu	$sp $sp -4
[0x0040143c]	0xafbf0000  sw $31, 0($29)                  ; 566: sw	$ra 0($sp)
[0x00401440]	0x27bdfffc  addiu $29, $29, -4              ; 567: addiu	$sp $sp -4
[0x00401444]	0xafb00000  sw $16, 0($29)                  ; 568: sw	$s0 0($sp)
[0x00401448]	0x27bdfffc  addiu $29, $29, -4              ; 569: addiu	$sp $sp -4
[0x0040144c]	0x00048021  addu $16, $0, $4                ; 570: move	$s0 $a0
[0x00401450]	0x0c1005c2  jal 0x00401708 [Foo_init]       ; 571: rd	B
[0x00401708]	0xafbe0000  sw $30, 0($29)                  ; 765: sw	$fp 0($sp)
[0x0040170c]	0x27bdfffc  addiu $29, $29, -4              ; 766: addiu	$sp $sp -4
[0x00401710]	0xafbf0000  sw $31, 0($29)                  ; 767: sw	$ra 0($sp)
[0x00401714]	0x27bdfffc  addiu $29, $29, -4              ; 768: addiu	$sp $sp -4
[0x00401718]	0xafb00000  sw $16, 0($29)                  ; 769: sw	$s0 0($sp)
[0x0040171c]	0x27bdfffc  addiu $29, $29, -4              ; 770: addiu	$sp $sp -4
[0x00401720]	0x00048021  addu $16, $0, $4                ; 771: move	$s0 $a0
[0x00401724]	0x0c1004b7  jal 0x004012dc [Bazz_init]      ; 772: jal	Bazz_init
[0x004012dc]	0xafbe0000  sw $30, 0($29)                  ; 464: sw	$fp 0($sp)
[0x004012e0]	0x27bdfffc  addiu $29, $29, -4              ; 465: addiu	$sp $sp -4
[0x004012e4]	0xafbf0000  sw $31, 0($29)                  ; 466: sw	$ra 0($sp)
[0x004012e8]	0x27bdfffc  addiu $29, $29, -4              ; 467: addiu	$sp $sp -4
[0x004012ec]	0xafb00000  sw $16, 0($29)                  ; 468: sw	$s0 0($sp)
[0x004012f0]	0x27bdfffc  addiu $29, $29, -4              ; 469: addiu	$sp $sp -4
[0x004012f4]	0x00048021  addu $16, $0, $4                ; 470: move	$s0 $a0
[0x004012f8]	0x0c10066e  jal 0x004019b8 [IO_init]        ; 471: jal	IO_init
[0x004019b8]	0xafbe0000  sw $30, 0($29)                  ; 957: sw	$fp 0($sp)
[0x004019bc]	0x27bdfffc  addiu $29, $29, -4              ; 958: addiu	$sp $sp -4
[0x004019c0]	0xafbf0000  sw $31, 0($29)                  ; 959: sw	$ra 0($sp)
[0x004019c4]	0x27bdfffc  addiu $29, $29, -4              ; 960: addiu	$sp $sp -4
[0x004019c8]	0xafb00000  sw $16, 0($29)                  ; 961: sw	$s0 0($sp)
[0x004019cc]	0x27bdfffc  addiu $29, $29, -4              ; 962: addiu	$sp $sp -4
[0x004019d0]	0x00048021  addu $16, $0, $4                ; 963: move	$s0 $a0
[0x004019d4]	0x0c10067c  jal 0x004019f0 [Object_init]    ; 964: jal	Object_init
[0x004019f0]	0xafbe0000  sw $30, 0($29)                  ; 972: sw	$fp 0($sp)
[0x004019f4]	0x27bdfffc  addiu $29, $29, -4              ; 973: addiu	$sp $sp -4
[0x004019f8]	0xafbf0000  sw $31, 0($29)                  ; 974: sw	$ra 0($sp)
[0x004019fc]	0x27bdfffc  addiu $29, $29, -4              ; 975: addiu	$sp $sp -4
[0x00401a00]	0xafb00000  sw $16, 0($29)                  ; 976: sw	$s0 0($sp)
[0x00401a04]	0x27bdfffc  addiu $29, $29, -4              ; 977: addiu	$sp $sp -4
[0x00401a08]	0x00048021  addu $16, $0, $4                ; 978: move	$s0 $a0
[0x00401a0c]	0x00102021  addu $4, $0, $16                ; 979: move	$a0 $s0
[0x00401a10]	0x8fb00004  lw $16, 4($29)                  ; 980: lw	$s0 4($sp)
[0x00401a14]	0x8fbf0008  lw $31, 8($29)                  ; 981: lw	$ra 8($sp)
[0x00401a18]	0x8fbe000c  lw $30, 12($29)                 ; 982: lw	$fp 12($sp)
[0x00401a1c]	0x27bd000c  addiu $29, $29, 12              ; 983: addiu	$sp $sp 12
[0x00401a20]	0x03e00008  jr $31                          ; 984: jr	$ra	
[0x004019d8]	0x00102021  addu $4, $0, $16                ; 965: move	$a0 $s0
[0x004019dc]	0x8fb00004  lw $16, 4($29)                  ; 966: lw	$s0 4($sp)
[0x004019e0]	0x8fbf0008  lw $31, 8($29)                  ; 967: lw	$ra 8($sp)
[0x004019e4]	0x8fbe000c  lw $30, 12($29)                 ; 968: lw	$fp 12($sp)
[0x004019e8]	0x27bd000c  addiu $29, $29, 12              ; 969: addiu	$sp $sp 12
[0x004019ec]	0x03e00008  jr $31                          ; 970: jr	$ra	
[0x004012fc]	0x3c011001  lui $1, 4097 [int_const1]       ; 472: la	$a0 int_const1
[0x00401300]	0x342404b0  ori $4, $1, 1200 [int_const1]
[0x00401304]	0xae04000c  sw $4, 12($16)                  ; 473: sw	$a0 12($s0)
[0x00401308]	0x00102021  addu $4, $0, $16                ; 475: move	$a0 $s0
[0x0040130c]	0x10800032  beq $4, $0, 200 [label6-0x0040130c]; 476: beqz	$a0 label6
[0x00401310]	0x8c890000  lw $9, 0($4)                    ; 477: lw	$t1 0($a0)
[0x00401314]	0x340a0004  ori $10, $0, 4                  ; 480: li	$t2 4
[0x00401318]	0x112a0010  beq $9, $10, 64 [label1-0x00401318]; 482: beq	$t1 $t2 label1
[0x0040131c]	0x340a0005  ori $10, $0, 5                  ; 483: li	$t2 5
[0x00401320]	0x112a0016  beq $9, $10, 88 [label2-0x00401320]; 485: beq	$t1 $t2 label2
[0x00401378]	0xafa40000  sw $4, 0($29)                   ; 510: sw	$a0 0($sp)
[0x0040137c]	0x27bdfffc  addiu $29, $29, -4              ; 511: addiu	$sp $sp -4
[0x00401380]	0x3c011001  lui $1, 4097 [Bar_protObj]      ; 512: la	$a0 Bar_protObj
[0x00401384]	0x342406b0  ori $4, $1, 1712 [Bar_protObj]
[0x00401388]	0x0c100073  jal 0x004001cc [Object.copy]    ; 513: jal	Object.copy
[0x004001cc]	0x27bdfff8  addiu $29, $29, -8              ; 552: addiu	$sp $sp -8			# create stack frame
[0x004001d0]	0xafbf0008  sw $31, 8($29)                  ; 553: sw	$ra 8($sp)
[0x004001d4]	0xafa40004  sw $4, 4($29)                   ; 554: sw	$a0 4($sp)
[0x004001d8]	0x0c1001dc  jal 0x00400770 [_MemMgr_Test]   ; 556: jal	_MemMgr_Test			# test GC area
[0x00400770]	0x3c011001  lui $1, 4097 [_MemMgr_TEST]     ; 1181: la	$t0 _MemMgr_TEST		# Check if testing enabled
[0x00400774]	0x34280238  ori $8, $1, 568 [_MemMgr_TEST]
[0x00400778]	0x8d080000  lw $8, 0($8)                    ; 1182: lw	$t0 0($t0)
[0x0040077c]	0x1100000b  beq $8, $0, 44 [_MemMgr_Test_end-0x0040077c]; 1183: beqz	$t0 _MemMgr_Test_end
[0x004007a8]	0x03e00008  jr $31                          ; 1197: jr	$ra
[0x004001dc]	0x8fa40004  lw $4, 4($29)                   ; 558: lw	$a0 4($sp)			# get object size
[0x004001e0]	0x8c840004  lw $4, 4($4)                    ; 559: lw	$a0 obj_size($a0)
[0x004001e4]	0x1880002a  blez $4 168 [_objcopy_error-0x004001e4]; 560: blez	$a0 _objcopy_error		# check for invalid size
[0x004001e8]	0x00042080  sll $4, $4, 2                   ; 561: sll	$a0 $a0 2			# convert words to bytes
[0x004001ec]	0x24840004  addiu $4, $4, 4                 ; 562: addiu	$a0 $a0 4			# account for eyecatcher
[0x004001f0]	0x0c1001bb  jal 0x004006ec [_MemMgr_Alloc]  ; 563: jal	_MemMgr_Alloc			# allocate storage
[0x004006ec]	0x0384e020  add $28, $28, $4                ; 1108: add	$gp $gp $a0			# attempt to allocate storage
[0x004006f0]	0x0397082a  slt $1, $28, $23                ; 1109: blt	$gp $s7 _MemMgr_Alloc_end	# check allocation
[0x004006f4]	0x1420000e  bne $1, $0, 56 [_MemMgr_Alloc_end-0x004006f4]
[0x0040072c]	0x03842022  sub $4, $28, $4                 ; 1123: sub	$a0 $gp $a0
[0x00400730]	0x03e00008  jr $31                          ; 1124: jr	$ra				# return
[0x004001f4]	0x24850004  addiu $5, $4, 4                 ; 564: addiu	$a1 $a0 4			# pointer to new object
[0x004001f8]	0x8fa40004  lw $4, 4($29)                   ; 566: lw	$a0 4($sp)			# the self object
[0x004001fc]	0x8fbf0008  lw $31, 8($29)                  ; 567: lw	$ra 8($sp)			# restore return address
[0x00400200]	0x27bd0008  addiu $29, $29, 8               ; 568: addiu	$sp $sp 8			# remove frame
[0x00400204]	0x8c880004  lw $8, 4($4)                    ; 569: lw	$t0 obj_size($a0)		# get size of object
[0x00400208]	0x00084080  sll $8, $8, 2                   ; 570: sll	$t0 $t0 2			# convert words to bytes
[0x0040020c]	0x04010015  bgez $0 84 [_objcopy_allocated-0x0040020c]; 571: b	_objcopy_allocated		# get on with the copy
[0x00400260]	0x2409ffff  addiu $9, $0, -1                ; 598: addiu	$t1 $0 -1
[0x00400264]	0xaca9fffc  sw $9, -4($5)                   ; 599: sw	$t1 obj_eyecatch($a1)		# store eyecatcher
[0x00400268]	0x01044020  add $8, $8, $4                  ; 600: add	$t0 $t0 $a0			# find limit of copy
[0x0040026c]	0x00054821  addu $9, $0, $5                 ; 601: move	$t1 $a1				# save source
[0x00400270]	0x8c820000  lw $2, 0($4)                    ; 603: lw	$v0 0($a0)			# copy word
[0x00400274]	0xad220000  sw $2, 0($9)                    ; 604: sw	$v0 0($t1)
[0x00400278]	0x24840004  addiu $4, $4, 4                 ; 605: addiu	$a0 $a0 4			# update source
[0x0040027c]	0x25290004  addiu $9, $9, 4                 ; 606: addiu	$t1 $t1 4			# update destination
[0x00400280]	0x1488fffc  bne $4, $8, -16 [_objcopy_loop-0x00400280]; 607: bne	$a0 $t0 _objcopy_loop		# loop
[0x00400270]	0x8c820000  lw $2, 0($4)                    ; 603: lw	$v0 0($a0)			# copy word
[0x00400274]	0xad220000  sw $2, 0($9)                    ; 604: sw	$v0 0($t1)
[0x00400278]	0x24840004  addiu $4, $4, 4                 ; 605: addiu	$a0 $a0 4			# update source
[0x0040027c]	0x25290004  addiu $9, $9, 4                 ; 606: addiu	$t1 $t1 4			# update destination
[0x00400280]	0x1488fffc  bne $4, $8, -16 [_objcopy_loop-0x00400280]; 607: bne	$a0 $t0 _objcopy_loop		# loop
[0x00400270]	0x8c820000  lw $2, 0($4)                    ; 603: lw	$v0 0($a0)			# copy word
[0x00400274]	0xad220000  sw $2, 0($9)                    ; 604: sw	$v0 0($t1)
[0x00400278]	0x24840004  addiu $4, $4, 4                 ; 605: addiu	$a0 $a0 4			# update source
[0x0040027c]	0x25290004  addiu $9, $9, 4                 ; 606: addiu	$t1 $t1 4			# update destination
[0x00400280]	0x1488fffc  bne $4, $8, -16 [_objcopy_loop-0x00400280]; 607: bne	$a0 $t0 _objcopy_loop		# loop
[0x00400270]	0x8c820000  lw $2, 0($4)                    ; 603: lw	$v0 0($a0)			# copy word
[0x00400274]	0xad220000  sw $2, 0($9)                    ; 604: sw	$v0 0($t1)
[0x00400278]	0x24840004  addiu $4, $4, 4                 ; 605: addiu	$a0 $a0 4			# update source
[0x0040027c]	0x25290004  addiu $9, $9, 4                 ; 606: addiu	$t1 $t1 4			# update destination
[0x00400280]	0x1488fffc  bne $4, $8, -16 [_objcopy_loop-0x00400280]; 607: bne	$a0 $t0 _objcopy_loop		# loop
[0x00400270]	0x8c820000  lw $2, 0($4)                    ; 603: lw	$v0 0($a0)			# copy word
[0x00400274]	0xad220000  sw $2, 0($9)                    ; 604: sw	$v0 0($t1)
[0x00400278]	0x24840004  addiu $4, $4, 4                 ; 605: addiu	$a0 $a0 4			# update source
[0x0040027c]	0x25290004  addiu $9, $9, 4                 ; 606: addiu	$t1 $t1 4			# update destination
[0x00400280]	0x1488fffc  bne $4, $8, -16 [_objcopy_loop-0x00400280]; 607: bne	$a0 $t0 _objcopy_loop		# loop
[0x00400270]	0x8c820000  lw $2, 0($4)                    ; 603: lw	$v0 0($a0)			# copy word
[0x00400274]	0xad220000  sw $2, 0($9)                    ; 604: sw	$v0 0($t1)
[0x00400278]	0x24840004  addiu $4, $4, 4                 ; 605: addiu	$a0 $a0 4			# update source
[0x0040027c]	0x25290004  addiu $9, $9, 4                 ; 606: addiu	$t1 $t1 4			# update destination
[0x00400280]	0x1488fffc  bne $4, $8, -16 [_objcopy_loop-0x00400280]; 607: bne	$a0 $t0 _objcopy_loop		# loop
[0x00400270]	0x8c820000  lw $2, 0($4)                    ; 603: lw	$v0 0($a0)			# copy word
[0x00400274]	0xad220000  sw $2, 0($9)                    ; 604: sw	$v0 0($t1)
[0x00400278]	0x24840004  addiu $4, $4, 4                 ; 605: addiu	$a0 $a0 4			# update source
[0x0040027c]	0x25290004  addiu $9, $9, 4                 ; 606: addiu	$t1 $t1 4			# update destination
[0x00400280]	0x1488fffc  bne $4, $8, -16 [_objcopy_loop-0x00400280]; 607: bne	$a0 $t0 _objcopy_loop		# loop
[0x00400270]	0x8c820000  lw $2, 0($4)                    ; 603: lw	$v0 0($a0)			# copy word
[0x00400274]	0xad220000  sw $2, 0($9)                    ; 604: sw	$v0 0($t1)
[0x00400278]	0x24840004  addiu $4, $4, 4                 ; 605: addiu	$a0 $a0 4			# update source
[0x0040027c]	0x25290004  addiu $9, $9, 4                 ; 606: addiu	$t1 $t1 4			# update destination
[0x00400280]	0x1488fffc  bne $4, $8, -16 [_objcopy_loop-0x00400280]; 607: bne	$a0 $t0 _objcopy_loop		# loop
[0x00400270]	0x8c820000  lw $2, 0($4)                    ; 603: lw	$v0 0($a0)			# copy word
[0x00400274]	0xad220000  sw $2, 0($9)                    ; 604: sw	$v0 0($t1)
[0x00400278]	0x24840004  addiu $4, $4, 4                 ; 605: addiu	$a0 $a0 4			# update source
[0x0040027c]	0x25290004  addiu $9, $9, 4                 ; 606: addiu	$t1 $t1 4			# update destination
[0x00400280]	0x1488fffc  bne $4, $8, -16 [_objcopy_loop-0x00400280]; 607: bne	$a0 $t0 _objcopy_loop		# loop
[0x00400270]	0x8c820000  lw $2, 0($4)                    ; 603: lw	$v0 0($a0)			# copy word
[0x00400274]	0xad220000  sw $2, 0($9)                    ; 604: sw	$v0 0($t1)
[0x00400278]	0x24840004  addiu $4, $4, 4                 ; 605: addiu	$a0 $a0 4			# update source
[0x0040027c]	0x25290004  addiu $9, $9, 4                 ; 606: addiu	$t1 $t1 4			# update destination
Stats -- #instructions : 598
         #reads : 97  #writes 106  #branches 124  #other 271
(spim) step 200
[0x00400280]	0x1488fffc  bne $4, $8, -16 [_objcopy_loop-0x00400280]; 607: bne	$a0 $t0 _objcopy_loop		# loop
[0x00400270]	0x8c820000  lw $2, 0($4)                    ; 603: lw	$v0 0($a0)			# copy word
[0x00400274]	0xad220000  sw $2, 0($9)                    ; 604: sw	$v0 0($t1)
[0x00400278]	0x24840004  addiu $4, $4, 4                 ; 605: addiu	$a0 $a0 4			# update source
[0x0040027c]	0x25290004  addiu $9, $9, 4                 ; 606: addiu	$t1 $t1 4			# update destination
[0x00400280]	0x1488fffc  bne $4, $8, -16 [_objcopy_loop-0x00400280]; 607: bne	$a0 $t0 _objcopy_loop		# loop
[0x00400270]	0x8c820000  lw $2, 0($4)                    ; 603: lw	$v0 0($a0)			# copy word
[0x00400274]	0xad220000  sw $2, 0($9)                    ; 604: sw	$v0 0($t1)
[0x00400278]	0x24840004  addiu $4, $4, 4                 ; 605: addiu	$a0 $a0 4			# update source
[0x0040027c]	0x25290004  addiu $9, $9, 4                 ; 606: addiu	$t1 $t1 4			# update destination
[0x00400280]	0x1488fffc  bne $4, $8, -16 [_objcopy_loop-0x00400280]; 607: bne	$a0 $t0 _objcopy_loop		# loop
[0x00400284]	0x00052021  addu $4, $0, $5                 ; 609: move	$a0 $a1				# put new object in $a0
[0x00400288]	0x03e00008  jr $31                          ; 610: jr	$ra				# return
[0x0040138c]	0x0c10059e  jal 0x00401678 [Bar_init]       ; 514: jal	Bar_init
[0x00401678]	0xafbe0000  sw $30, 0($29)                  ; 724: sw	$fp 0($sp)
[0x0040167c]	0x27bdfffc  addiu $29, $29, -4              ; 725: addiu	$sp $sp -4
[0x00401680]	0xafbf0000  sw $31, 0($29)                  ; 726: sw	$ra 0($sp)
[0x00401684]	0x27bdfffc  addiu $29, $29, -4              ; 727: addiu	$sp $sp -4
[0x00401688]	0xafb00000  sw $16, 0($29)                  ; 728: sw	$s0 0($sp)
[0x0040168c]	0x27bdfffc  addiu $29, $29, -4              ; 729: addiu	$sp $sp -4
[0x00401690]	0x00048021  addu $16, $0, $4                ; 730: move	$s0 $a0
[0x00401694]	0x0c10050d  jal 0x00401434 [Razz_init]      ; 731: jal	Razz_init
[0x00401434]	0xafbe0000  sw $30, 0($29)                  ; 564: sw	$fp 0($sp)
[0x00401438]	0x27bdfffc  addiu $29, $29, -4              ; 565: addiu	$sp $sp -4
[0x0040143c]	0xafbf0000  sw $31, 0($29)                  ; 566: sw	$ra 0($sp)
[0x00401440]	0x27bdfffc  addiu $29, $29, -4              ; 567: addiu	$sp $sp -4
[0x00401444]	0xafb00000  sw $16, 0($29)                  ; 568: sw	$s0 0($sp)
[0x00401448]	0x27bdfffc  addiu $29, $29, -4              ; 569: addiu	$sp $sp -4
[0x0040144c]	0x00048021  addu $16, $0, $4                ; 570: move	$s0 $a0
[0x00401450]	0x0c1005c2  jal 0x00401708 [Foo_init]       ; 571: rd	B
[0x00401708]	0xafbe0000  sw $30, 0($29)                  ; 765: sw	$fp 0($sp)
[0x0040170c]	0x27bdfffc  addiu $29, $29, -4              ; 766: addiu	$sp $sp -4
[0x00401710]	0xafbf0000  sw $31, 0($29)                  ; 767: sw	$ra 0($sp)
[0x00401714]	0x27bdfffc  addiu $29, $29, -4              ; 768: addiu	$sp $sp -4
[0x00401718]	0xafb00000  sw $16, 0($29)                  ; 769: sw	$s0 0($sp)
[0x0040171c]	0x27bdfffc  addiu $29, $29, -4              ; 770: addiu	$sp $sp -4
[0x00401720]	0x00048021  addu $16, $0, $4                ; 771: move	$s0 $a0
[0x00401724]	0x0c1004b7  jal 0x004012dc [Bazz_init]      ; 772: jal	Bazz_init
[0x004012dc]	0xafbe0000  sw $30, 0($29)                  ; 464: sw	$fp 0($sp)
[0x004012e0]	0x27bdfffc  addiu $29, $29, -4              ; 465: addiu	$sp $sp -4
[0x004012e4]	0xafbf0000  sw $31, 0($29)                  ; 466: sw	$ra 0($sp)
[0x004012e8]	0x27bdfffc  addiu $29, $29, -4              ; 467: addiu	$sp $sp -4
[0x004012ec]	0xafb00000  sw $16, 0($29)                  ; 468: sw	$s0 0($sp)
[0x004012f0]	0x27bdfffc  addiu $29, $29, -4              ; 469: addiu	$sp $sp -4
[0x004012f4]	0x00048021  addu $16, $0, $4                ; 470: move	$s0 $a0
[0x004012f8]	0x0c10066e  jal 0x004019b8 [IO_init]        ; 471: jal	IO_init
[0x004019b8]	0xafbe0000  sw $30, 0($29)                  ; 957: sw	$fp 0($sp)
[0x004019bc]	0x27bdfffc  addiu $29, $29, -4              ; 958: addiu	$sp $sp -4
[0x004019c0]	0xafbf0000  sw $31, 0($29)                  ; 959: sw	$ra 0($sp)
[0x004019c4]	0x27bdfffc  addiu $29, $29, -4              ; 960: addiu	$sp $sp -4
[0x004019c8]	0xafb00000  sw $16, 0($29)                  ; 961: sw	$s0 0($sp)
[0x004019cc]	0x27bdfffc  addiu $29, $29, -4              ; 962: addiu	$sp $sp -4
[0x004019d0]	0x00048021  addu $16, $0, $4                ; 963: move	$s0 $a0
[0x004019d4]	0x0c10067c  jal 0x004019f0 [Object_init]    ; 964: jal	Object_init
[0x004019f0]	0xafbe0000  sw $30, 0($29)                  ; 972: sw	$fp 0($sp)
[0x004019f4]	0x27bdfffc  addiu $29, $29, -4              ; 973: addiu	$sp $sp -4
[0x004019f8]	0xafbf0000  sw $31, 0($29)                  ; 974: sw	$ra 0($sp)
[0x004019fc]	0x27bdfffc  addiu $29, $29, -4              ; 975: addiu	$sp $sp -4
[0x00401a00]	0xafb00000  sw $16, 0($29)                  ; 976: sw	$s0 0($sp)
[0x00401a04]	0x27bdfffc  addiu $29, $29, -4              ; 977: addiu	$sp $sp -4
[0x00401a08]	0x00048021  addu $16, $0, $4                ; 978: move	$s0 $a0
[0x00401a0c]	0x00102021  addu $4, $0, $16                ; 979: move	$a0 $s0
[0x00401a10]	0x8fb00004  lw $16, 4($29)                  ; 980: lw	$s0 4($sp)
[0x00401a14]	0x8fbf0008  lw $31, 8($29)                  ; 981: lw	$ra 8($sp)
[0x00401a18]	0x8fbe000c  lw $30, 12($29)                 ; 982: lw	$fp 12($sp)
[0x00401a1c]	0x27bd000c  addiu $29, $29, 12              ; 983: addiu	$sp $sp 12
[0x00401a20]	0x03e00008  jr $31                          ; 984: jr	$ra	
[0x004019d8]	0x00102021  addu $4, $0, $16                ; 965: move	$a0 $s0
[0x004019dc]	0x8fb00004  lw $16, 4($29)                  ; 966: lw	$s0 4($sp)
[0x004019e0]	0x8fbf0008  lw $31, 8($29)                  ; 967: lw	$ra 8($sp)
[0x004019e4]	0x8fbe000c  lw $30, 12($29)                 ; 968: lw	$fp 12($sp)
[0x004019e8]	0x27bd000c  addiu $29, $29, 12              ; 969: addiu	$sp $sp 12
[0x004019ec]	0x03e00008  jr $31                          ; 970: jr	$ra	
[0x004012fc]	0x3c011001  lui $1, 4097 [int_const1]       ; 472: la	$a0 int_const1
[0x00401300]	0x342404b0  ori $4, $1, 1200 [int_const1]
[0x00401304]	0xae04000c  sw $4, 12($16)                  ; 473: sw	$a0 12($s0)
[0x00401308]	0x00102021  addu $4, $0, $16                ; 475: move	$a0 $s0
[0x0040130c]	0x10800032  beq $4, $0, 200 [label6-0x0040130c]; 476: beqz	$a0 label6
[0x00401310]	0x8c890000  lw $9, 0($4)                    ; 477: lw	$t1 0($a0)
[0x00401314]	0x340a0004  ori $10, $0, 4                  ; 480: li	$t2 4
[0x00401318]	0x112a0010  beq $9, $10, 64 [label1-0x00401318]; 482: beq	$t1 $t2 label1
[0x0040131c]	0x340a0005  ori $10, $0, 5                  ; 483: li	$t2 5
[0x00401320]	0x112a0016  beq $9, $10, 88 [label2-0x00401320]; 485: beq	$t1 $t2 label2
[0x00401324]	0x340a0007  ori $10, $0, 7                  ; 486: li	$t2 7
[0x00401328]	0x112a001c  beq $9, $10, 112 [label3-0x00401328]; 488: beq	$t1 $t2 label3
[0x0040132c]	0x340a0006  ori $10, $0, 6                  ; 489: li	$t2 6
[0x00401330]	0x112a0022  beq $9, $10, 136 [label4-0x00401330]; 491: beq	$t1 $t2 label4
[0x004013b8]	0xafa40000  sw $4, 0($29)                   ; 528: sw	$a0 0($sp)
[0x004013bc]	0x27bdfffc  addiu $29, $29, -4              ; 529: addiu	$sp $sp -4
[0x004013c0]	0x3c01df08  lui $1, -8440                   ; 530: lw	$a0 -553096192($fp)
[0x004013c4]	0x003e0821  addu $1, $1, $30
[0x004013c8]	0x8c246c00  lw $4, 27648($1)
Exception occurred at PC=0x004013c8
  Bad address in data/stack read: 0xdf086c00
[0x80000080]	0x001b0821  addu $1, $0, $27                ; 229: move $at $k1	# Save $at
[0x80000084]	0x3c019000  lui $1, -28672                  ; 231: sw $v0 s1	# Not re-entrent and we can't trust $sp
[0x80000088]	0xac220204  sw $2, 516($1)
[0x8000008c]	0x3c019000  lui $1, -28672                  ; 232: sw $a0 s2
[0x80000090]	0xac240208  sw $4, 520($1)
[0x80000094]	0x401a6800  mfc0 $26, $13                   ; 233: mfc0 $k0 $13	# Cause
[0x80000098]	0x34010044  ori $1, $0, 68                  ; 234: sgt $v0 $k0 0x44 # ignore interrupt exceptions
[0x8000009c]	0x003a102a  slt $2, $1, $26
[0x800000a0]	0x1c400013  bgtz $2 76 [ret-0x800000a0]     ; 235: bgtz $v0 ret
[0x800000a4]	0x24000000  addiu $0, $0, 0                 ; 236: addu $0 $0 0
[0x800000a8]	0x34020004  ori $2, $0, 4                   ; 237: li $v0 4	# syscall 4 (print_str)
[0x800000ac]	0x3c049000  lui $4, -28672 [__m1_]          ; 238: la $a0 __m1_
[0x800000b0]	0x0000000c  syscall                         ; 239: syscall
  Exception [0x800000b4]	0x34020001  ori $2, $0, 1                   ; 240: li $v0 1	# syscall 1 (print_int)
[0x800000b8]	0x001a2082  srl $4, $26, 2                  ; 241: srl $a0 $k0 2	# shift Cause reg
[0x800000bc]	0x0000000c  syscall                         ; 242: syscall
7[0x800000c0]	0x34020004  ori $2, $0, 4                   ; 243: li $v0 4	# syscall 4 (print_str)
[0x800000c4]	0x3c019000  lui $1, -28672                  ; 244: lw $a0 __excp($k0)
[0x800000c8]	0x003a0821  addu $1, $1, $26
[0x800000cc]	0x8c2401bc  lw $4, 444($1)
[0x800000d0]	0x0000000c  syscall                         ; 245: syscall
  [Bad address in data/stack read] [0x800000d4]	0x34020004  ori $2, $0, 4                   ; 246: li $v0 4
[0x800000d8]	0x3c019000  lui $1, -28672 [__m2_]          ; 247: la $a0 __m2_
[0x800000dc]	0x3424000d  ori $4, $1, 13 [__m2_]
[0x800000e0]	0x0000000c  syscall                         ; 248: syscall
 Execution aborted
[0x800000e4]	0x3402000a  ori $2, $0, 10                  ; 249: li $v0 10	# Exit upon all exceptions
[0x800000e8]	0x0000000c  syscall                         ; 250: syscall		# syscall 10 (exit)
Stats -- #instructions : 716
         #reads : 108  #writes 130  #branches 142  #other 336

