// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)


	@R0
	D=M
	@x
	M=D //value R0 in x
	@R1
	D=M
	@y
	M=D //value R1 in y
(LOOP)
	@x
	D=M //get value x
	@y
	D=M //get value y
	@R2
	M=M+D //storing the value in memory location of 2
	@y
	M=M-D
	@LOOP
	0;JEQ //check if 'y' is = to 0, otherwise loop
//infinite loop
(END)
	@END
	0;JMP


