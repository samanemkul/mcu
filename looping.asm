; WAP to clear acc then add 3 to the accumulator 10 times
ORG 0000H
MOV A, #0 ;A=0, clear acc
MOV R2, #10 ;load counter r2=10
AGAIN: ADD A, #03 ; add 03
DJNZ R2, AGAIN ;repeat until R2=0(10 times)
MOV R5, A ;save A in R5
END
