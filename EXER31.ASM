; Filename: EXER31.ASM 
; Programmer Name: JOHN KYLE A. VILLARAZO
; Date: 09/28/2024

.model small
.stack 200h
.data 
    num         db 0
    message     db 0dh, 0ah, 'Enter an integer: $'
    newLine     db 0dh, 0ah, '$'
.code
Start:

    mov ax, @data
    mov ds, ax

    lea dx, message
    mov ah, 09h
    int 21h

    mov ah, 01h
    int 21h
    sub al, '0'    
    mov num, al

    mov cl, 1  

    lea dx, newLine
    mov ah, 09h
    int 21h

LoopInteger:
    cmp cl, num        
    jg Exit           

    mov al, cl   

    add al, '0'           
    mov dl, al
    mov ah, 02h
    int 21h

    lea dx, newline       
    mov ah, 09h
    int 21h

    inc cl                
    jmp LoopInteger       

Exit:
    mov ax, 4C00h
    int 21h

end Start