ORG 00h    ;  place the next command in address 00h

LJMP START  ; jump to start

RI_CHECK:    ;RI flag checks if the UART received any input

JNB RI,RI_CHECK    ; looping while RI = 0
CLR RI             ; set RI to '0'
RET                ; return to the line following the call to the function

START:

MOV TMOD,#20H    ;auto reload timer
MOV SCON,#50H    ;reset UART - enable input
MOV TH1,#0FDH    ;set baud rate to 9600 BPS
MOV TL1,#0FDH

SETB TR1        ;activate timer1

RECEIVE:

LCALL RI_CHECK   ; jump to the RI_CHECK. after the function continue to next line
MOV P1,SBUF      ;  move data from the serial buffer to P1 which controls the LED display 
SJMP RECEIVE     ; jump to RECEIVE 
END
