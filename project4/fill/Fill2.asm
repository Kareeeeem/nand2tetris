// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.

// Runs an infinite loop that listens to the keyboard input.
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel. When no key is pressed,
// the screen should be cleared.

// Fills the whole screen when a key is pressed, starts listening to clear it
// afterwards

// INIT the @start, @i, and @end variables
    @SCREEN
    D=A
    @start
    M=D

    @i
    M=D

    @8192  // number of registers in screenspace (256 * 512) / 16
    D=D+A
    @end
    M=D

(LISTEN)
    @KBD
    D=M
    @LISTEN
    D;JEQ  // jmp if keyboard input == 0

    (DRAWLOOP)
    @i
    A=M
    M=-1
    @i
    DM=M+1
    @end
    D=D-M
    @DRAWLOOP
    D;JNE

(LISTENFORCLEAR)
    @KBD
    D=M
    @LISTENFORCLEAR
    D;JNE  // jmp if keyboard input != 0

(CLEARLOOP)
    @i
    A=M
    M=0
    @i
    DM=M-1
    @start
    D=D-M
    @CLEARLOOP
    D;JGE

    @LISTEN
    0;JMP
