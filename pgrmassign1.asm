;If the registers r1, r2 and r3 contain the values 0, 15 and 12 respectively,what will be the
;value in register r4 after execution of the following code  segment?
;Assume that the registers are 32-bits in size. 
;MVN r0, r1 
;AND r4, r0,r2 
;EOR r4, r4, r3

    AREA PRG1, CODE, READONLY   ; Define a named code section "PRG1" that is read-only
START
    MOV R1, #0             ; Load immediate value 0 into register R1
    MOV R2, #15            ; Load immediate value 15 (0xF) into register R2
    MOV R3, #12            ; Load immediate value 12 (0xC) into register R3
    MVN R0, R1             ; Invert all bits of R1 (i.e., R0 = NOT 0 = 0xFFFFFFFF)
    AND R4, R0, R2         ; Perform bitwise AND between R0 and R2, store result in R4
    EOR R4, R4, R3         ; Perform bitwise XOR between R4 and R3, store result in R4
HERE B HERE                 ; Infinite loop to halt execution
    END                         ; End of program