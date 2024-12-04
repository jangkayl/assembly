; Filename: EXER12.ASM
; Programmer Name: JOHN KYLE VILLARAZO
; Date: 9/20/2024
; Description: This assembly language program will display multiple string variables on a single line.

.model small
.stack 200h
.data
    String1 db 'Line1', '$' ; DB = Define Byte String1 variable and assign 'Line1' value;
    String2 db 'Line2', '$'
    String3 db 'Line3', '$'

.code
ProgramStart: 
    mov ax, @data
    mov ds, ax
    mov ah, 9               ; DOS print string function
    mov dx, offset String1  ; 1st string to print
    int 21h                 ; invoke DOS to print string

    mov dx, offset String2  ; 2nd string to print
    int 21h                 ; invoke DOS to print string

    mov dx, offset String3  ; 3rd string to print
    int 21h

    mov ah, 4ch             ; DOS terminate program function
    int 21h

END ProgramStart
