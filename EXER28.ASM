; Filename: EXER28.ASM 
; Programmer Name: JOHN KYLE A. VILLARAZO
; Date: 09/28/2024

.model small
.stack 200h
.data 
    num1    dw ?
    num2    dw ?
    prod     dw ?
    firstMsg    db 0dh, 0ah, 'Enter first integer: $'
    secondMsg   db 0dh, 0ah, 'Enter second integer: $'
    productMsg      db 0dh, 0ah, 'Product: $'
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

    mov ax, num1
    mov bx, num2
    mul bx
    mov prod, ax

    lea dx, productMsg
    mov ah, 09h
    int 21h

    mov ax, prod
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