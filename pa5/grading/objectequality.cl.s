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
str_const13:
	.word	0
	.word	6
	.word	String_dispTab
	.word	int_const3
	.ascii	"Main"
	.byte	0	
	.align	2
	.word	-1
str_const12:
	.word	0
	.word	5
	.word	String_dispTab
	.word	int_const4
	.ascii	"B"
	.byte	0	
	.align	2
	.word	-1
str_const11:
	.word	0
	.word	5
	.word	String_dispTab
	.word	int_const4
	.ascii	"A"
	.byte	0	
	.align	2
	.word	-1
str_const10:
	.word	0
	.word	6
	.word	String_dispTab
	.word	int_const5
	.ascii	"String"
	.byte	0	
	.align	2
	.word	-1
str_const9:
	.word	0
	.word	6
	.word	String_dispTab
	.word	int_const3
	.ascii	"Bool"
	.byte	0	
	.align	2
	.word	-1
str_const8:
	.word	0
	.word	5
	.word	String_dispTab
	.word	int_const2
	.ascii	"Int"
	.byte	0	
	.align	2
	.word	-1
str_const7:
	.word	0
	.word	5
	.word	String_dispTab
	.word	int_const6
	.ascii	"IO"
	.byte	0	
	.align	2
	.word	-1
str_const6:
	.word	0
	.word	6
	.word	String_dispTab
	.word	int_const5
	.ascii	"Object"
	.byte	0	
	.align	2
	.word	-1
str_const5:
	.word	0
	.word	7
	.word	String_dispTab
	.word	int_const7
	.ascii	"_prim_slot"
	.byte	0	
	.align	2
	.word	-1
str_const4:
	.word	0
	.word	7
	.word	String_dispTab
	.word	int_const8
	.ascii	"SELF_TYPE"
	.byte	0	
	.align	2
	.word	-1
str_const3:
	.word	0
	.word	7
	.word	String_dispTab
	.word	int_const8
	.ascii	"_no_class"
	.byte	0	
	.align	2
	.word	-1
str_const2:
	.word	0
	.word	8
	.word	String_dispTab
	.word	int_const9
	.ascii	"<basic class>"
	.byte	0	
	.align	2
	.word	-1
str_const1:
	.word	0
	.word	5
	.word	String_dispTab
	.word	int_const1
	.byte	0	
	.align	2
	.word	-1
str_const0:
	.word	0
	.word	9
	.word	String_dispTab
	.word	int_const10
	.ascii	"./objectequality.cl"
	.byte	0	
	.align	2
	.word	-1
int_const10:
	.word	1
	.word	4
	.word	Int_dispTab
	.word	19
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
	.word	2
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
	.word	1
	.word	-1
int_const3:
	.word	1
	.word	4
	.word	Int_dispTab
	.word	4
	.word	-1
int_const2:
	.word	1
	.word	4
	.word	Int_dispTab
	.word	3
	.word	-1
int_const1:
	.word	1
	.word	4
	.word	Int_dispTab
	.word	0
	.word	-1
int_const0:
	.word	1
	.word	4
	.word	Int_dispTab
	.word	5
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
	.word	str_const10
	.word	str_const8
	.word	str_const9
	.word	str_const13
	.word	str_const12
	.word	str_const11
	.word	str_const7
	.word	str_const6
Main_dispTab:
	.word	Object.abort
	.word	Object.type_name
	.word	Object.copy
	.word	Main.main
B_dispTab:
	.word	Object.abort
	.word	Object.type_name
	.word	Object.copy
	.word	A.foo
A_dispTab:
	.word	Object.abort
	.word	Object.type_name
	.word	Object.copy
	.word	A.foo
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
	.word	7
	.word	7
	.word	7
	.word	7
	.word	5
	.word	7
	.word	7
	.word	-2
	.word	-1
Main_protObj:
	.word	3
	.word	3
	.word	Main_dispTab
	.word	-1
B_protObj:
	.word	4
	.word	4
	.word	B_dispTab
	.word	int_const1
	.word	-1
A_protObj:
	.word	5
	.word	4
	.word	A_dispTab
	.word	int_const1
	.word	-1
String_protObj:
	.word	0
	.word	5
	.word	String_dispTab
	.word	int_const1
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
	.word	6
	.word	3
	.word	IO_dispTab
	.word	-1
Object_protObj:
	.word	7
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
	jal	Object_init
	move	$a0 $s0
	lw	$s0 4($sp)
	lw	$ra 8($sp)
	lw	$fp 12($sp)
	addiu	$sp $sp 12
	jr	$ra	
B_init:
	sw	$fp 0($sp)
	addiu	$sp $sp -4
	sw	$ra 0($sp)
	addiu	$sp $sp -4
	sw	$s0 0($sp)
	addiu	$sp $sp -4
	move	$fp $sp
	move	$s0 $a0
	jal	A_init
	move	$a0 $s0
	lw	$s0 4($sp)
	lw	$ra 8($sp)
	lw	$fp 12($sp)
	addiu	$sp $sp 12
	jr	$ra	
A_init:
	sw	$fp 0($sp)
	addiu	$sp $sp -4
	sw	$ra 0($sp)
	addiu	$sp $sp -4
	sw	$s0 0($sp)
	addiu	$sp $sp -4
	move	$fp $sp
	move	$s0 $a0
	jal	Object_init
	la	$a0 int_const0
	sw	$a0 12($s0)
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
	la	$a0 B_protObj
	jal	Object.copy
	jal	B_init
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 -16($fp)
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 -16($fp)
	lw	$t1 4($sp)
	move	$t2 $a0
	addiu	$sp $sp 4
	la	$a0 bool_const1
	beq	$t1 $t2 label2
	la	$a0 bool_const0
label2:
	lw	$t1 12($a0)
#code reached 03
	li	$t2 0
	beq	$t1 $t2 label1
	la	$a0 int_const1
	b	label0
label1:
# outputing self
	move	$a0 $s0
#code reached 02
	li	$t1 0
	bne	$a0 $t1 label3
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label3:
	lw	$t1 8($a0)
	lw	$t2 0($t1)
	jalr		$t2
label0:
	lw	$a0 -16($fp)
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	la	$a0 B_protObj
	jal	Object.copy
	jal	B_init
	lw	$t1 4($sp)
	move	$t2 $a0
	addiu	$sp $sp 4
	la	$a0 bool_const1
	beq	$t1 $t2 label6
	la	$a0 bool_const0
label6:
	lw	$t1 12($a0)
#code reached 03
	li	$t2 0
	beq	$t1 $t2 label5
# outputing self
	move	$a0 $s0
#code reached 02
	li	$t1 0
	bne	$a0 $t1 label7
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label7:
	lw	$t1 8($a0)
	lw	$t2 0($t1)
	jalr		$t2
	b	label4
label5:
	la	$a0 int_const1
label4:
	la	$a0 A_protObj
	jal	Object.copy
	jal	A_init
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	la	$a0 A_protObj
	jal	Object.copy
	jal	A_init
	lw	$t1 4($sp)
	move	$t2 $a0
	addiu	$sp $sp 4
	la	$a0 bool_const1
	beq	$t1 $t2 label10
	la	$a0 bool_const0
label10:
	lw	$t1 12($a0)
#code reached 03
	li	$t2 0
	beq	$t1 $t2 label9
# outputing self
	move	$a0 $s0
#code reached 02
	li	$t1 0
	bne	$a0 $t1 label11
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label11:
	lw	$t1 8($a0)
	lw	$t2 0($t1)
	jalr		$t2
	b	label8
label9:
	la	$a0 int_const1
label8:
	lw	$a0 -16($fp)
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 -20($fp)
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 -16($fp)
	lw	$t1 4($sp)
	move	$t2 $a0
	addiu	$sp $sp 4
	la	$a0 bool_const1
	beq	$t1 $t2 label14
	la	$a0 bool_const0
label14:
	lw	$t1 12($a0)
#code reached 03
	li	$t2 0
	beq	$t1 $t2 label13
	la	$a0 int_const1
	b	label12
label13:
# outputing self
	move	$a0 $s0
#code reached 02
	li	$t1 0
	bne	$a0 $t1 label15
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label15:
	lw	$t1 8($a0)
	lw	$t2 0($t1)
	jalr		$t2
label12:
	la	$a0 int_const2
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 -20($fp)
#code reached 02
	li	$t1 0
	bne	$a0 $t1 label18
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label18:
	lw	$t1 8($a0)
	lw	$t2 12($t1)
	jalr		$t2
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 -16($fp)
	lw	$t1 4($sp)
	move	$t2 $a0
	addiu	$sp $sp 4
	la	$a0 bool_const1
	beq	$t1 $t2 label19
	la	$a0 bool_const0
label19:
	lw	$t1 12($a0)
#code reached 03
	li	$t2 0
	beq	$t1 $t2 label17
	la	$a0 int_const1
	b	label16
label17:
# outputing self
	move	$a0 $s0
#code reached 02
	li	$t1 0
	bne	$a0 $t1 label20
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label20:
	lw	$t1 8($a0)
	lw	$t2 0($t1)
	jalr		$t2
label16:
	addiu	$sp $sp 4
	addiu	$sp $sp 4
	li	$a0 0
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	li	$a0 0
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 -16($fp)
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 -20($fp)
	lw	$t1 4($sp)
	move	$t2 $a0
	addiu	$sp $sp 4
	la	$a0 bool_const1
	beq	$t1 $t2 label23
	la	$a0 bool_const0
label23:
	lw	$t1 12($a0)
#code reached 03
	li	$t2 0
	beq	$t1 $t2 label22
	la	$a0 int_const1
	b	label21
label22:
# outputing self
	move	$a0 $s0
#code reached 02
	li	$t1 0
	bne	$a0 $t1 label24
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label24:
	lw	$t1 8($a0)
	lw	$t2 0($t1)
	jalr		$t2
label21:
	addiu	$sp $sp 4
	addiu	$sp $sp 4
	lw	$s0 -12($fp)
	lw	$ra -8($fp)
	lw	$fp -4($fp)
	addiu	$sp $sp 12
	jr	$ra	
A.foo:
	sw	$fp 0($sp)
	addiu	$sp $sp -4
	addiu	$fp $sp 8
	sw	$ra 0($sp)
	addiu	$sp $sp -4
	sw	$s0 0($sp)
	addiu	$sp $sp -4
	move	$s0 $a0
	lw	$a0 0($fp)
	sw	$a0 12($s0)
# outputing self
	move	$a0 $s0
	lw	$s0 -12($fp)
	lw	$ra -8($fp)
	lw	$fp -4($fp)
	addiu	$sp $sp 16
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
	.word	B_protObj
	.word	B_init
	.word	A_protObj
	.word	A_init
	.word	IO_protObj
	.word	IO_init
	.word	Object_protObj
	.word	Object_init

# end of generated code
