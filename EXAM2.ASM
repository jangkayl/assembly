; Filename: EXAM2.ASM
; CS243 Lab Hands-on Exam No. 2
; First Semester SY 2024-2025
; Student Name: JOHN KYLE A. VILLARAZO
; Date Finished: 09/28/2024

.model small
.stack 200h
.data
    choice db 100 dup ('$')
    num1 db 1000 dup ('$')
    num2 db 1000 dup ('$')
    calculator      db 0dh, 0ah, 'THE CALCULATOR', 0dh, 0ah
                    db 'Created by: JOHN KYLE A. VILLARAZO', 0dh, 0ah
                    db 'Date: 09/28/2024', 0dh, 0ah, 0dh, 0ah
                    db 'Main Menu', 0dh, 0ah
                    db 'a - Addition', 0dh, 0ah
                    db 's - Subtraction', 0dh, 0ah
                    db 'm - Multiplication', 0dh, 0ah
                    db 'd - Division', 0dh, 0ah
                    db 'e - Exit', 0dh, 0ah
                    db 'Enter your choice: $'
    addition        db 0dh, 0ah, 0dh, 0ah, 'Addition', 0dh, 0ah
                    db 'Enter first addend: $'
    addition2       db 0dh, 0ah, 'Enter second addend: $'
    addend1         db 0dh, 0ah, 'First addend is: $'
    addend2         db 0dh, 0ah, 'Second addend is: $'
    subtraction     db 0dh, 0ah, 0dh, 0ah, 'Subtraction', 0dh, 0ah
                    db 'Enter minuend: $'
    subtraction2    db 0dh, 0ah, 'Enter subtrahend: $'
    minuend1        db 0dh, 0ah, 'Minuend is: $'
    minuend2        db 0dh, 0ah, 'Subtrahend is: $'
    multiplication  db 0dh, 0ah, 0dh, 0ah, 'Multiplication', 0dh, 0ah
                    db 'Enter multiplicand: $'
    multiplication2 db 0dh, 0ah, 'Enter multiplier: $'
    multiplicand1   db 0dh, 0ah, 'Multiplicand is: $'
    multiplicand2   db 0dh, 0ah, 'Multiplier is: $'
    division        db 0dh, 0ah, 0dh, 0ah, 'Division', 0dh, 0ah
                    db 'Enter dividend: $'
    division2       db 0dh, 0ah, 'Enter divisor: $'
    dividend1       db 0dh, 0ah, 'Dividend is: $'
    dividend2       db 0dh, 0ah, 'Divisor is: $'
    endProgram     db 0dh, 0ah, 0dh, 0ah, 'Exit Program$'
    invalid         db 0dh, 0ah, 0dh, 0ah, 'INVALID CHOICE!$' 
    thankYou        db 0dh, 0ah, 0dh, 0ah, 'Thank you.', 0dh, 0ah, '$'

.code
ProgramStart:
    mov ax, @data
    mov ds, ax

    mov ax, 3
    int 10h

    ; Background Colors
    mov ah, 06h
    xor al, al
    xor cx, cx
    mov ch, 6
    mov cl, 0
    mov dh, 6
    mov dl, 11
    mov bh, 68h
    int 10h

    mov ah, 06h
    mov ch, 7
    mov cl, 0
    mov dh, 7
    mov dl, 14
    mov bh, 28h
    int 10h

    mov ah, 06h
    mov ch, 8
    mov cl, 0
    mov dh, 8
    mov dl, 17
    mov bh, 18h
    int 10h

    mov ah, 06h
    mov ch, 9
    mov cl, 0
    mov dh, 9
    mov dl, 11
    mov bh, 58h
    int 10h

    mov ah, 06h
    mov ch, 10
    mov cl, 0
    mov dh, 10
    mov dl, 7
    mov bh, 78h
    int 10h

    lea dx, calculator
    mov ah, 09h
    int 21h

    lea dx, choice
    mov ah, 0Ah
    int 21h

    mov al, choice+2

    cmp al, 'a'
    je caseAdd
    cmp al, 's'
    je caseSubtract
    cmp al, 'm'
    je caseMultiply
    cmp al, 'd'
    je caseDivide
    cmp al, 'e'
    je caseExit
    jmp caseInvalid

caseAdd:
    call AdditionProc
    jmp ExitProgram

caseSubtract:
    call SubtractionProc
    jmp ExitProgram

caseMultiply:
    call MultiplicationProc
    jmp ExitProgram

caseDivide:
    call DivisionProc
    jmp ExitProgram

caseExit:
    call Exit
    jmp ExitProgram

caseInvalid:
    call InvalidInputProc
    jmp ExitProgram

AdditionProc proc near
    mov ah, 06h
    xor al, al
    xor cx, cx
    mov ch, 13
    mov cl, 0
    mov dh, 13
    mov dl, 7
    mov bh, 68h
    int 10h

    lea dx, addition
    mov ah, 09h
    int 21h

    lea dx, num1
    mov ah, 0Ah
    int 21h

    lea dx, addition2
    mov ah, 09h
    int 21h   

    lea dx, num2
    mov ah, 0Ah
    int 21h

    lea dx, addend1
    mov ah, 09h
    int 21h 

    lea dx, num1 + 2
    mov ah, 09h
    int 21h 

    lea dx, addend2
    mov ah, 09h
    int 21h 

    lea dx, num2 + 2
    mov ah, 09h
    int 21h

    call DisplayAll
    ret
AdditionProc endp

SubtractionProc proc near
    mov ah, 06h
    xor al, al
    xor cx, cx
    mov ch, 13
    mov cl, 0
    mov dh, 13
    mov dl, 10
    mov bh, 28h
    int 10h

    lea dx, subtraction
    mov ah, 09h
    int 21h

    lea dx, num1
    mov ah, 0Ah
    int 21h

    lea dx, subtraction2
    mov ah, 09h
    int 21h   

    lea dx, num2
    mov ah, 0Ah
    int 21h

    lea dx, minuend1
    mov ah, 09h
    int 21h 

    lea dx, num1 + 2
    mov ah, 09h
    int 21h 

    lea dx, minuend2
    mov ah, 09h
    int 21h 

    lea dx, num2 + 2
    mov ah, 09h
    int 21h

    call DisplayAll
    ret
SubtractionProc endp

MultiplicationProc proc near
    mov ah, 06h
    xor al, al
    xor cx, cx
    mov ch, 13
    mov cl, 0
    mov dh, 13
    mov dl, 13
    mov bh, 18h
    int 10h

    lea dx, multiplication
    mov ah, 09h
    int 21h

    lea dx, num1
    mov ah, 0Ah
    int 21h

    lea dx, multiplication2
    mov ah, 09h
    int 21h   

    lea dx, num2
    mov ah, 0Ah
    int 21h

    lea dx, multiplicand1
    mov ah, 09h
    int 21h 

    lea dx, num1 + 2
    mov ah, 09h
    int 21h 

    lea dx, multiplicand2
    mov ah, 09h
    int 21h 

    lea dx, num2 + 2
    mov ah, 09h
    int 21h

    call DisplayAll
    ret
MultiplicationProc endp

DivisionProc proc near
    mov ah, 06h
    xor al, al
    xor cx, cx
    mov ch, 13
    mov cl, 0
    mov dh, 13
    mov dl, 7
    mov bh, 58h
    int 10h

    lea dx, division
    mov ah, 09h
    int 21h

    lea dx, num1
    mov ah, 0Ah
    int 21h

    lea dx, division2
    mov ah, 09h
    int 21h   

    lea dx, num2
    mov ah, 0Ah
    int 21h

    lea dx, dividend1
    mov ah, 09h
    int 21h 

    lea dx, num1 + 2
    mov ah, 09h
    int 21h 

    lea dx, dividend2
    mov ah, 09h
    int 21h 

    lea dx, num2 + 2
    mov ah, 09h
    int 21h

    call DisplayAll
    ret
DivisionProc endp

Exit proc near 
    mov ah, 06h
    xor al, al
    xor cx, cx
    mov ch, 13
    mov cl, 0
    mov dh, 13
    mov dl, 11
    mov bh, 78h
    int 10h

    lea dx, endProgram
    mov ah, 09h
    int 21h
    call DisplayAll
    ret
Exit endp

InvalidInputProc proc near
    mov ah, 06h
    xor al, al
    xor cx, cx
    mov ch, 13
    mov cl, 0
    mov dh, 13
    mov dl, 14
    mov bh, 0CEh
    int 10h

    lea dx, invalid
    mov ah, 09h
    int 21h
    call DisplayAll
    ret
InvalidInputProc endp

DisplayAll proc near
    lea dx, thankYou
    mov ah, 09h
    int 21h
    ret
DisplayAll endp

ExitProgram:
    mov ax, 4C00h         
    int 21h

end ProgramStart
