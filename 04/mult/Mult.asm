// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)

//add X, Y times and store in result R2
	@R0
	D=M 			//D has value of R0
	@x				//variable x
	M=D 			//x = R0 

	@R1
	D=M
	@y
	M=D 

	@R2
	M=0 			//R2 = 0

(LOOP)
	@y
	D=M
	@END
	D;JLE			//bug?

	@x
	D=M 			//D register has value of x

	@R2
	M=M+D 			//adding x to itself in R2 

	@y
	M=M-1 			//decrement y by 1 
	D=M  

	@LOOP
	0;JMP 			//bug? JGT should work without above statement 

//infinite loop
(END)
	@END
	0;JMP



