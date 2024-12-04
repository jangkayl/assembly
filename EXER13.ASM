; Filename: EXER13.ASM
; Programmer Name: JOHN KYLE VILLARAZO
; Date: 9/20/2024
; Description: This assembly language program will display multiple string variables on separate lines.

.model small
.stack 200h
.data
    String1 db 'Line1', 0dh, 0ah, '$'
    String2 db 'Line2', 0dh, 0ah, '$'
    String3 db 'Line3', 0dh, 0ah, '$'
.code
ProgramStart:
    mov ax, @data
    mov ds, ax
    mov ah, 9               ; DOS print string function
    mov dx, offset String1  ; 1st string to print
    int 21h                 ; invoke DOS to print string

    mov dx, offset String2
    int 21h

    mov dx, offset String3
    int 21h

    mov ah, 4ch
    int 21h

end ProgramStart
