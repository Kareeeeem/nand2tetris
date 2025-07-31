// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.

// Runs an infinite loop that listens to the keyboard input.
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel. When no key is pressed,
// the screen should be cleared.

//// Replace this comment with your code.
(LOOP)

// Check the keyboard register
// If 0 > JMP LOOP
// Set a reg to the number of registers in the screen mem space
// Set each reg in the screen mem space to 0b1111111111111111
// decrement the reg holding the number of screen regs and if 0 JMP END

@LOOP
0;JMP
