// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Fill.asm

// Runs an infinite loop that listens to the keyboard input. 
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel. When no key is pressed, the
// program clears the screen, i.e. writes "white" in every pixel.


(START_LOOP)
	@SCREEN
	D=A
	@CurrPos
	M=D 		//Current position of screen in CurrPos
	@KBD
	D=A
	@EndPoint
	M=D 		//Total number of words in TotalWords

//access Keyboard. check if key pressed. refer appropriate label
	@KBD
	D=M
	@WHITE
	D;JEQ
	@BLACK
	D;JGT

(WHITE)
	@CurrPos
	A=M
	M=0 		//color to fill, 0 being white

	@CurrPos
	M=M+1
	//M=D

	@EndPoint
	D=M
	@CurrPos
	D=D-M
	@WHITE
	D;JGT 		//if differnece is greater than 0, loop back and repeat white
	@START_LOOP
	0;JMP

(BLACK)
	@CurrPos
	A=M
	M=-1 		//FFFF, color fill black

	@CurrPos
	M=M+1
	//M=D

	@EndPoint
	D=M
	@CurrPos
	D=D-M
	@BLACK
	D;JGT 		//if differnece is greater than 0, loop back and repeat white
	@START_LOOP
	0;JMP

@START_LOOP
	0;JMP



	


