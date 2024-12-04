; Filename: EXER27.ASM 
; Programmer Name: JOHN KYLE A. VILLARAZO
; Date: 09/28/2024

.model small
.stack 200h
.data 
    num1    dw ?
    num2    dw ?
    diff    dw ?
    firstMsg    db 0dh, 0ah, 'Enter first integer: $'
    secondMsg   db 0dh, 0ah, 'Enter second integer: $'
    differenceMsg      db 0dh, 0ah, 'Difference: $'
.code
Start:

    mov ax, @data
    mov ds, ax

    lea dx, firstMsg
    mov ah, 09h
    int 21h

    mov ah, 01h
    int 21h
    sub al, '0'          
    mov ah, 0
    mov num1, ax

    lea dx, secondMsg
    mov ah, 09h
    int 21h

    mov ah, 01h
    int 21h
    sub al, '0'          
    mov ah, 0
    mov num2, ax

    mov dx, num1
    sub dx, num2
    mov diff, dx

    lea dx, differenceMsg
    mov ah, 09h
    int 21h

    mov ax, diff
    call Convert

    mov ax, 4C00h
    int 21h

Convert Proc
    push ax
    push bx
    push cx
    push dx
    mov cx, 0           
    mov bx, 10           
    converter_loop1:
        xor dx, dx           
        div bx               
        push dx              
        inc cx               
        cmp ax, 0            
        jne converter_loop1       
    converter_loop2:
        pop dx              
        add dl, '0'          
        mov ah, 02h          
        int 21h              
        dec cx               
        cmp cx, 0            
        jne converter_loop2      
    pop dx
    pop cx
    pop bx
    pop ax
    ret
Convert endp  

end Start