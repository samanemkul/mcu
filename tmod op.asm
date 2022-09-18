MOV TMOD,#01H ; Timer 0 mode 1(16-bit mode)
HERE: MOV TL0,#0F2H; TLO=F2H, the low byte
MOV TH0, #0FFH; TH0=FFH, the high byte
CPL P1.5 ; TOGGLE P1.5
ACALL DELAY
SJMP HERE; short jump
DELAY:
SETB TR0 ; start timer 0
AGAIN: JNB TF0,AGAIN ; Monitor timer falg 0 untilit rolls over
CLR TR0 ;Stop timer 0
CLR TF0 ; Clear timer 0 flag
RET; Return from subroutine