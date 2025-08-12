// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)
// The algorithm is based on repetitive addition.

    // Init the result
    @R2
    M=0

(LOOP)
    // If R1 is 0 JMP to END
    @R1
    D=M
    @END
    D;JEQ

    // Should've just decremented and checked in one go. But the above was my
    // first attempt.
    // @R1
    // DM=M-1
    // @END
    // D;JLT

    // Add R0 to result
    @R0
    D=M
    @R2
    M=D+M

    // Decrement R1
    @R1
    M=M-1

    @LOOP
    0;JMP

(END)
    @END
    0;JMP
