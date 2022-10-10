# MipsAssembler

An assembler for a subset of the MIPS instruction set implemented in C and executed on Linux.

Programm structure;
program has two amin sections:
  1.assembler.c -read and parses the contents of a simple MIPS program
  2.instructionprinter.c -generates an output file (program-name.out) and writes the results into the file.

How it works:
The assembler will read a binary file containing a MIPS program and execute that program.
This will occur in two steps:
   1.First, the program will generate the assembly code for the given MIPS program.

   2.The program will create an instruction-by-instruction simulation of the MIPS program. This
   simulation will execute instructions sequentially (non-pipelined) and output the contents of all
   registers and memory (the state of the processor and memory) after each instruction.

The assembler will take a file (eg test1.asm) written in assembly language as input on the command line
and will produce an output file containing the MIPS machine code(1KB of data segment and 512B of text segment).

Surpported instructions:
The assembler supports the following instruction set:
la
lw
sw
add
sub
addi
or
and
ori
andi
slt
slti
sll
srl
beq
j
jr
jal

Running the program
After compiling, run:
$ ./assembler test1.asm test.out

All known issues with the program
 1.Parts implemented with issues
    a.The input file should be in ASCII text.
    b.Each line in the input assembly file should contain either a mnemonic, a section header (such as .data) or a label (jump or branch target.
    c.The maximum length of a line is 128 bytes.
    d.Section headers such as .data and .text should be in a line by themselves with no other assembly mnemonic.
    e.The input assembly file should only contain one data section and one text section.
    f. A few of the specified instructions are actually pseudo-instructions, making the assembler replace each of them with a sequence of one or more other instructions,.
  
 2.Parts not implemented
   a.Implementing exception/interrupt handling
   b.Branch targets such as loop: will be on a line by themselves with no other assembly mnemonic.
   c.Instead of a 6 bit opcode, we will use a 5 bit opcode that is preceded by a valid bit
