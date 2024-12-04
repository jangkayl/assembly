; Filename: EXER30.ASM 
; Programmer Name: JOHN KYLE A. VILLARAZO
; Date: 09/28/2024

.model small
.stack 200h
.data 
    num1    db ?
    num2    db ?
    firstMsg    db 0dh, 0ah, 'Enter first integer: $'
    secondMsg   db 0dh, 0ah, 'Enter second integer: $'
    bigMsg      db 0dh, 0ah, 'The bigger integer is: $'
    smallMsg    db 0dh, 0ah, 'The smaller integer is: $'
    equalMsg    db 0dh, 0ah, 'Both are equal$'
.code
Start:

    mov ax, @data
    mov ds, ax

    lea dx, firstMsg
    mov ah, 09h
    int 21h

    mov ah, 01h
    int 21h
    sub al, '0'    ; Convert from ASCII
    mov num1, al

    lea dx, secondMsg
    mov ah, 09h
    int 21h

    mov ah, 01h
    int 21h
    sub al, '0'    ; Convert from ASCII
    mov num2, al

    mov al, num1
    cmp al, num2
    jg Bigger
    jl Smaller
    jmp Equal

Bigger:
    mov dx, offset bigMsg
    mov ah, 09h
    int 21h
    mov al, num1
    
    add al, '0'
    mov dl, al
    mov ah, 02h
    int 21h

    mov dx, offset smallMsg
    mov ah, 09h
    int 21h
    mov al, num2
    
    add al, '0'
    mov dl, al
    mov ah, 02h
    int 21h

    jmp Exit

Smaller:
    mov dx, offset bigMsg
    mov ah, 09h
    int 21h
    mov al, num2
    
    add al, '0'
    mov dl, al
    mov ah, 02h
    int 21h

    mov dx, offset smallMsg
    mov ah, 09h
    int 21h
    mov al, num1
    
    add al, '0'
    mov dl, al
    mov ah, 02h
    int 21h

    jmp Exit

Equal:
    mov dx, offset equalMsg
    mov ah, 09h
    int 21h

    jmp Exit

Exit:
    mov ah, 02h
    mov cl, 0ah     
    mov dl, cl
    int 21h

    mov ax, 4C00h
    int 21h

end Start