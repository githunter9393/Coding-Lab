MOV R0,#08H
MOV R3,#08H

BEGIN: 
        INC DPTR         ; increase data pointer by 1
        MOVX A,@DPTR     ; move the value from RAM to A (DPTR points to the address of the value)
        MOV B,A          ; copy value of A into B 
        MUL A,B          ; calculate square of A , store result in A
        PUSH ACC         ; push result to the stack
        XCH A,R2         ; exchange the values of A and R2
        ADD A,R2         ; accumulate the sum of results in A
        XCH A,R2
        MOVX @DPTR,A     ; move the value of A to RAM 
        DJNZ R3,BEGIN    ; decrease R3 by 1, if value is not zero, jump to BEGIN (loop counts to 8)
        MOV A,R2         ;  A = sum of results
        MOV B,R0         ;  B = 8
        DIV AB           ; divide sum of results by 8 (mean value)
