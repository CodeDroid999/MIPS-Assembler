# "Hello World" in MIPS assembly
.text

	# Declare main as a global function
	.globl	main
	
main:
	# Run the print_string syscall which has code 4
	li	$v0,4		# Code for syscall: print_string
	la	$a0, msg	# Pointer to string (load the address of msg)
	syscall
	li	$v0,10		# Code for syscall: exit
	syscall

	# All memory structures are placed after the
	# .data assembler directive
	.data

	# The .asciiz assembler directive creates
	# an ASCII string in memory terminated by
	# the null character. Note that strings are
	# surrounded by double-quotes
msg:	.asciiz	"Hello World!\n"