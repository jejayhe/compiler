# start of generated code
	.data
	.align	2
	.globl	class_nameTab
	.globl	Main_protObj
	.globl	Int_protObj
	.globl	String_protObj
	.globl	bool_const0
	.globl	bool_const1
	.globl	_int_tag
	.globl	_bool_tag
	.globl	_string_tag
	.globl	class_parentTab
_int_tag:
	.word	1
_bool_tag:
	.word	2
_string_tag:
	.word	0
	.globl	_MemMgr_INITIALIZER
_MemMgr_INITIALIZER:
	.word	_NoGC_Init
	.globl	_MemMgr_COLLECTOR
_MemMgr_COLLECTOR:
	.word	_NoGC_Collect
	.globl	_MemMgr_TEST
_MemMgr_TEST:
	.word	0
	.word	-1
str_const15:
	.word	0
	.word	6
	.word	String_dispTab
	.word	int_const4
	.ascii	"Main"
	.byte	0	
	.align	2
	.word	-1
str_const14:
	.word	0
	.word	6
	.word	String_dispTab
	.word	int_const5
	.ascii	"String"
	.byte	0	
	.align	2
	.word	-1
str_const13:
	.word	0
	.word	6
	.word	String_dispTab
	.word	int_const4
	.ascii	"Bool"
	.byte	0	
	.align	2
	.word	-1
str_const12:
	.word	0
	.word	5
	.word	String_dispTab
	.word	int_const6
	.ascii	"Int"
	.byte	0	
	.align	2
	.word	-1
str_const11:
	.word	0
	.word	5
	.word	String_dispTab
	.word	int_const1
	.ascii	"IO"
	.byte	0	
	.align	2
	.word	-1
str_const10:
	.word	0
	.word	6
	.word	String_dispTab
	.word	int_const5
	.ascii	"Object"
	.byte	0	
	.align	2
	.word	-1
str_const9:
	.word	0
	.word	7
	.word	String_dispTab
	.word	int_const7
	.ascii	"_prim_slot"
	.byte	0	
	.align	2
	.word	-1
str_const8:
	.word	0
	.word	7
	.word	String_dispTab
	.word	int_const8
	.ascii	"SELF_TYPE"
	.byte	0	
	.align	2
	.word	-1
str_const7:
	.word	0
	.word	7
	.word	String_dispTab
	.word	int_const8
	.ascii	"_no_class"
	.byte	0	
	.align	2
	.word	-1
str_const6:
	.word	0
	.word	8
	.word	String_dispTab
	.word	int_const9
	.ascii	"<basic class>"
	.byte	0	
	.align	2
	.word	-1
str_const5:
	.word	0
	.word	5
	.word	String_dispTab
	.word	int_const0
	.byte	0	
	.align	2
	.word	-1
str_const4:
	.word	0
	.word	7
	.word	String_dispTab
	.word	int_const10
	.ascii	"continue"
	.byte	0	
	.align	2
	.word	-1
str_const3:
	.word	0
	.word	6
	.word	String_dispTab
	.word	int_const4
	.ascii	"halt"
	.byte	0	
	.align	2
	.word	-1
str_const2:
	.word	0
	.word	7
	.word	String_dispTab
	.word	int_const11
	.ascii	" is prime.\n"
	.byte	0	
	.align	2
	.word	-1
str_const1:
	.word	0
	.word	10
	.word	String_dispTab
	.word	int_const12
	.ascii	"2 is trivially prime.\n"
	.byte	0	
	.align	2
	.word	-1
str_const0:
	.word	0
	.word	7
	.word	String_dispTab
	.word	int_const11
	.ascii	"./primes.cl"
	.byte	0	
	.align	2
	.word	-1
int_const12:
	.word	1
	.word	4
	.word	Int_dispTab
	.word	22
	.word	-1
int_const11:
	.word	1
	.word	4
	.word	Int_dispTab
	.word	11
	.word	-1
int_const10:
	.word	1
	.word	4
	.word	Int_dispTab
	.word	8
	.word	-1
int_const9:
	.word	1
	.word	4
	.word	Int_dispTab
	.word	13
	.word	-1
int_const8:
	.word	1
	.word	4
	.word	Int_dispTab
	.word	9
	.word	-1
int_const7:
	.word	1
	.word	4
	.word	Int_dispTab
	.word	10
	.word	-1
int_const6:
	.word	1
	.word	4
	.word	Int_dispTab
	.word	3
	.word	-1
int_const5:
	.word	1
	.word	4
	.word	Int_dispTab
	.word	6
	.word	-1
int_const4:
	.word	1
	.word	4
	.word	Int_dispTab
	.word	4
	.word	-1
int_const3:
	.word	1
	.word	4
	.word	Int_dispTab
	.word	1
	.word	-1
int_const2:
	.word	1
	.word	4
	.word	Int_dispTab
	.word	500
	.word	-1
int_const1:
	.word	1
	.word	4
	.word	Int_dispTab
	.word	2
	.word	-1
int_const0:
	.word	1
	.word	4
	.word	Int_dispTab
	.word	0
	.word	-1
bool_const0:
	.word	2
	.word	4
	.word	Bool_dispTab
	.word	0
	.word	-1
bool_const1:
	.word	2
	.word	4
	.word	Bool_dispTab
	.word	1
class_nameTab:
	.word	str_const14
	.word	str_const12
	.word	str_const13
	.word	str_const15
	.word	str_const11
	.word	str_const10
Main_dispTab:
	.word	Object.abort
	.word	Object.type_name
	.word	Object.copy
	.word	IO.out_string
	.word	IO.out_int
	.word	IO.in_string
	.word	IO.in_int
	.word	Main.main
String_dispTab:
	.word	Object.abort
	.word	Object.type_name
	.word	Object.copy
	.word	String.length
	.word	String.concat
	.word	String.substr
Bool_dispTab:
	.word	Object.abort
	.word	Object.type_name
	.word	Object.copy
Int_dispTab:
	.word	Object.abort
	.word	Object.type_name
	.word	Object.copy
IO_dispTab:
	.word	Object.abort
	.word	Object.type_name
	.word	Object.copy
	.word	IO.out_string
	.word	IO.out_int
	.word	IO.in_string
	.word	IO.in_int
Object_dispTab:
	.word	Object.abort
	.word	Object.type_name
	.word	Object.copy
class_parentTab:
	.word	5
	.word	5
	.word	5
	.word	4
	.word	5
	.word	-2
	.word	-1
Main_protObj:
	.word	3
	.word	8
	.word	Main_dispTab
	.word	int_const0
	.word	int_const0
	.word	int_const0
	.word	int_const0
	.word	0
	.word	-1
String_protObj:
	.word	0
	.word	5
	.word	String_dispTab
	.word	int_const0
	.word	0
	.word	-1
Bool_protObj:
	.word	2
	.word	4
	.word	Bool_dispTab
	.word	0
	.word	-1
Int_protObj:
	.word	1
	.word	4
	.word	Int_dispTab
	.word	0
	.word	-1
IO_protObj:
	.word	4
	.word	3
	.word	IO_dispTab
	.word	-1
Object_protObj:
	.word	5
	.word	3
	.word	Object_dispTab
	.globl	heap_start
heap_start:
	.word	0
	.text
	.globl	Main_init
	.globl	Int_init
	.globl	String_init
	.globl	Bool_init
	.globl	Main.main
Main_init:
	sw	$fp 0($sp)
	addiu	$sp $sp -4
	sw	$ra 0($sp)
	addiu	$sp $sp -4
	sw	$s0 0($sp)
	addiu	$sp $sp -4
	move	$fp $sp
	move	$s0 $a0
	jal	IO_init
	la	$a0 str_const1
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# outputing self
	move	$a0 $s0
#code reached 02
	li	$t1 0
	bne	$a0 $t1 label0
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label0:
	lw	$t1 8($a0)
	lw	$t2 12($t1)
	jalr		$t2
	la	$a0 int_const1
	sw	$a0 12($s0)
	lw	$a0 12($s0)
	sw	$a0 16($s0)
	la	$a0 int_const2
	sw	$a0 24($s0)
label1:
	la	$a0 bool_const1
	lw	$t1 12($a0)
	beqz	$t1 label2
	lw	$a0 16($s0)
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	la	$a0 int_const3
	jal	Object.copy
	lw	$t1 4($sp)
	lw	$t2 12($t1)
	lw	$t3 12($a0)
	add	$t2 $t2 $t3
	sw	$t2 12($a0)
	addiu	$sp $sp 4
	sw	$a0 16($s0)
	la	$a0 int_const1
	sw	$a0 20($s0)
label3:
	lw	$a0 16($s0)
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 20($s0)
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 20($s0)
	jal	Object.copy
	lw	$t1 4($sp)
	lw	$t2 12($t1)
	lw	$t3 12($a0)
	mul	$t2 $t2 $t3
	sw	$t2 12($a0)
	addiu	$sp $sp 4
	lw	$t1 4($sp)
	move	$t2 $a0
	lw	$t1 12($t1)
	lw	$t2 12($t2)
	la	$a0 bool_const1
	blt	$t1 $t2 label7
	la	$a0 bool_const0
label7:
	addiu	$sp $sp 4
	lw	$t1 12($a0)
#code reached 03
	li	$t2 0
	beq	$t1 $t2 label6
	la	$a0 bool_const0
	b	label5
label6:
	lw	$a0 16($s0)
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 20($s0)
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 16($s0)
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 20($s0)
	jal	Object.copy
	lw	$t1 4($sp)
	lw	$t2 12($t1)
	lw	$t3 12($a0)
	div	$t2 $t2 $t3
	sw	$t2 12($a0)
	addiu	$sp $sp 4
	jal	Object.copy
	lw	$t1 4($sp)
	lw	$t2 12($t1)
	lw	$t3 12($a0)
	mul	$t2 $t2 $t3
	sw	$t2 12($a0)
	addiu	$sp $sp 4
	jal	Object.copy
	lw	$t1 4($sp)
	lw	$t2 12($t1)
	lw	$t3 12($a0)
	sub	$t2 $t2 $t3
	sw	$t2 12($a0)
	addiu	$sp $sp 4
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	la	$a0 int_const0
	lw	$t1 4($sp)
	move	$t2 $a0
	addiu	$sp $sp 4
	la	$a0 bool_const1
	la	$a1 bool_const0
	jal	equality_test
	lw	$t1 12($a0)
#code reached 03
	li	$t2 0
	beq	$t1 $t2 label9
	la	$a0 bool_const0
	b	label8
label9:
	la	$a0 bool_const1
label8:
label5:
	lw	$t1 12($a0)
	beqz	$t1 label4
	lw	$a0 20($s0)
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	la	$a0 int_const3
	jal	Object.copy
	lw	$t1 4($sp)
	lw	$t2 12($t1)
	lw	$t3 12($a0)
	add	$t2 $t2 $t3
	sw	$t2 12($a0)
	addiu	$sp $sp 4
	sw	$a0 20($s0)
	b	label3
label4:
	li	$a0 0
	lw	$a0 16($s0)
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 20($s0)
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 20($s0)
	jal	Object.copy
	lw	$t1 4($sp)
	lw	$t2 12($t1)
	lw	$t3 12($a0)
	mul	$t2 $t2 $t3
	sw	$t2 12($a0)
	addiu	$sp $sp 4
	lw	$t1 4($sp)
	move	$t2 $a0
	lw	$t1 12($t1)
	lw	$t2 12($t2)
	la	$a0 bool_const1
	blt	$t1 $t2 label12
	la	$a0 bool_const0
label12:
	addiu	$sp $sp 4
	lw	$t1 12($a0)
#code reached 03
	li	$t2 0
	beq	$t1 $t2 label11
	lw	$a0 16($s0)
	sw	$a0 12($s0)
	lw	$a0 12($s0)
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# outputing self
	move	$a0 $s0
#code reached 02
	li	$t1 0
	bne	$a0 $t1 label13
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label13:
	lw	$t1 8($a0)
	lw	$t2 16($t1)
	jalr		$t2
	la	$a0 str_const2
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# outputing self
	move	$a0 $s0
#code reached 02
	li	$t1 0
	bne	$a0 $t1 label14
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label14:
	lw	$t1 8($a0)
	lw	$t2 12($t1)
	jalr		$t2
	b	label10
label11:
	la	$a0 int_const0
label10:
	lw	$a0 24($s0)
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 16($s0)
	lw	$t1 4($sp)
	move	$t2 $a0
	lw	$t1 12($t1)
	lw	$t2 12($t2)
	la	$a0 bool_const1
	ble	$t1 $t2 label17
	la	$a0 bool_const0
label17:
	addiu	$sp $sp 4
	lw	$t1 12($a0)
#code reached 03
	li	$t2 0
	beq	$t1 $t2 label16
	la	$a0 str_const3
#code reached 02
	li	$t1 0
	bne	$a0 $t1 label18
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label18:
	lw	$t1 8($a0)
	lw	$t2 0($t1)
	jalr		$t2
	b	label15
label16:
	la	$a0 str_const4
label15:
	b	label1
label2:
	li	$a0 0
	sw	$a0 28($s0)
	move	$a0 $s0
	lw	$s0 4($sp)
	lw	$ra 8($sp)
	lw	$fp 12($sp)
	addiu	$sp $sp 12
	jr	$ra	
String_init:
	sw	$fp 0($sp)
	addiu	$sp $sp -4
	sw	$ra 0($sp)
	addiu	$sp $sp -4
	sw	$s0 0($sp)
	addiu	$sp $sp -4
	move	$fp $sp
	move	$s0 $a0
	jal	Object_init
	move	$a0 $s0
	lw	$s0 4($sp)
	lw	$ra 8($sp)
	lw	$fp 12($sp)
	addiu	$sp $sp 12
	jr	$ra	
Bool_init:
	sw	$fp 0($sp)
	addiu	$sp $sp -4
	sw	$ra 0($sp)
	addiu	$sp $sp -4
	sw	$s0 0($sp)
	addiu	$sp $sp -4
	move	$fp $sp
	move	$s0 $a0
	jal	Object_init
	move	$a0 $s0
	lw	$s0 4($sp)
	lw	$ra 8($sp)
	lw	$fp 12($sp)
	addiu	$sp $sp 12
	jr	$ra	
Int_init:
	sw	$fp 0($sp)
	addiu	$sp $sp -4
	sw	$ra 0($sp)
	addiu	$sp $sp -4
	sw	$s0 0($sp)
	addiu	$sp $sp -4
	move	$fp $sp
	move	$s0 $a0
	jal	Object_init
	move	$a0 $s0
	lw	$s0 4($sp)
	lw	$ra 8($sp)
	lw	$fp 12($sp)
	addiu	$sp $sp 12
	jr	$ra	
IO_init:
	sw	$fp 0($sp)
	addiu	$sp $sp -4
	sw	$ra 0($sp)
	addiu	$sp $sp -4
	sw	$s0 0($sp)
	addiu	$sp $sp -4
	move	$fp $sp
	move	$s0 $a0
	jal	Object_init
	move	$a0 $s0
	lw	$s0 4($sp)
	lw	$ra 8($sp)
	lw	$fp 12($sp)
	addiu	$sp $sp 12
	jr	$ra	
Object_init:
	sw	$fp 0($sp)
	addiu	$sp $sp -4
	sw	$ra 0($sp)
	addiu	$sp $sp -4
	sw	$s0 0($sp)
	addiu	$sp $sp -4
	move	$fp $sp
	move	$s0 $a0
	move	$a0 $s0
	lw	$s0 4($sp)
	lw	$ra 8($sp)
	lw	$fp 12($sp)
	addiu	$sp $sp 12
	jr	$ra	
Main.main:
	sw	$fp 0($sp)
	addiu	$sp $sp -4
	addiu	$fp $sp 8
	sw	$ra 0($sp)
	addiu	$sp $sp -4
	sw	$s0 0($sp)
	addiu	$sp $sp -4
	move	$s0 $a0
	la	$a0 int_const0
	lw	$s0 -12($fp)
	lw	$ra -8($fp)
	lw	$fp -4($fp)
	addiu	$sp $sp 12
	jr	$ra	
class_objTab:
	.word	String_protObj
	.word	String_init
	.word	Int_protObj
	.word	Int_init
	.word	Bool_protObj
	.word	Bool_init
	.word	Main_protObj
	.word	Main_init
	.word	IO_protObj
	.word	IO_init
	.word	Object_protObj
	.word	Object_init

# end of generated code
