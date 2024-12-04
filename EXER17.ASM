; Filename: EXER17.ASM
; Programmer Name: JOHN KYLE VILLARAZO
; Date: 9/20/2024
; Description: This assembly language program will get string in put and display back string.

.model small
.stack 100h
.data
    MAXIMUM_STRING_LENGTH EQU 1000
    StringInput db MAXIMUM_STRING_LENGTH DUP (?)
    InputPrompt db 'Enter text: $'

.code
ProgramStart: 
    mov ax, @data
    mov ds, ax

    mov dx, offset InputPrompt
    mov ah, 9
    int 21h

    mov ah, 3fh                     ; DOS read from handle function
    mov bx, 0                       ; standard input handle
    mov cx, MAXIMUM_STRING_LENGTH   ; read up to maximum number of characters

    mov dx, offset StringInput  ; Store the string here
    int 21h                     ; get the string
    and ax, ax                  ; were any character read?
    jz Done                     ; no, so you're done
    mov cx, ax                  ; put string length in CX you can use it as a counter
    
    push cx                     ; save the string length
    mov bx, offset StringInput

    pop cx                      ; get back the string length
    mov ah, 40h                 ; DOS write form handle function
    mov bx, 1                   ; standard output handle
    mov dx, offset StringInput  ; prepare to print the string
    int 21h

Done:
    mov ah, 4ch        
    int 21h

end ProgramStart
