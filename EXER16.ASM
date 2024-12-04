; Filename: EXER16.ASM
; Programmer Name: JOHN KYLE VILLARAZO
; Date: 9/20/2024
; Description: This assembly language program will get character input and determine if input is 'y' or 'Y' to display good morning message else display good afternoon message.

.model small
.stack 200h
.data
    TimePrompt db 'Is it after 12 noon (Y/N)?$'
    GoodMorningMessage label byte
        db 13, 10, 'Good morning, world!', 13, 10, '$'
    GoodAfternoonMessage label byte
        db 13, 10, 'Good afternoon, world!', 13, 10, '$'

.code
ProgramStart:
    mov ax, @data
    mov ds, ax
    mov dx, offset TimePrompt
    mov ah, 9
    int 21h

    mov ah, 1           ; DOS get character function
    int 21h

    cmp al, 'y'         ; typed lowercase 'y' for after noon?
    jz IsAfterNoon      ; jz = jump if zero. Yes, it's afternoon
    cmp al, 'Y'         ; typed uppercase 'Y' for afternoon?
    jnz IsMorning       ; no, it's before noon

IsAfterNoon:
    mov dx, offset GoodAfternoonMessage     ; point to the afternoon greeting
    jmp DisplayGreeting                     ; point to the afternoon greeting

IsMorning:
    mov dx, offset GoodMorningMessage       ; point to before noon greeting

DisplayGreeting:
    mov ah, 9           ; DOS print string function
    int 21h

    mov ah, 4ch         ; DOS terminate program function
    int 21h

end ProgramStart