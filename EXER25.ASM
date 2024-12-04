; Filename: EXER25.ASM
; Programmer Name: JOHN KYLE A. VILLARAZO
; Date: 09/28/2024
; Description: This assembly language program will get 3 string inputs and display back the 3 strings on separate liens.

.model small
.stack 100h
.data
    inputString1 db 50 dup ('$')
    inputString2 db 50 dup ('$')
    inputString3 db 50 dup ('$')
    promptString1 db 'Enter first string: $'
    promptString2 db 'Enter second string: $'
    promptString3 db 'Enter third string: $'
    outputString1 db 'You entered first string: $'
    outputString2 db 'You entered second string: $'
    outputString3 db 'You entered third string: $'
.code
Main Proc
    ; Initialize data segment
    mov ax, @data
    mov ds, ax

    ; Prompt the user for input first string
    lea dx, promptString1
    mov ah, 09h             ; DOS function to display a string
    int 21h

    ; Read input first string
    lea dx, inputString1
    mov ah, 0ah             ; DOS function to read a string
    int 21h

    ; this is for displaying new line
    mov ah, 02h
    mov cl, 0ah     ; 0ah is new line
    mov dl, cl
    int 21h

    ; Prompt the user for input second string
    lea dx, promptString2
    mov ah, 09h
    int 21h

    ; Read input second string
    lea dx, inputString2
    mov ah, 0ah             ; DOS function to read a string
    int 21h

    ; this is for displaying new line
    mov ah, 02h
    mov cl, 0ah     ; 0ah is new line
    mov dl, cl
    int 21h

    ; Prompt the user for input third string
    lea dx, promptString3
    mov ah, 09h
    int 21h

    ; Read input third string
    lea dx, inputString3
    mov ah, 0ah             ; DOS function to read a string
    int 21h

    ; this is for displaying new line
    mov ah, 02h
    mov cl, 0ah     ; 0ah is new line
    mov dl, cl
    int 21h

    ; Display the output message for first string
    lea dx, outputString1
    mov ah, 09h             ; DOS function to display a string
    int 21h

    ; Display the entered first string
    lea dx, inputString1 + 2    ; Skip the first two bytes
    mov ah, 09h             ; DOS function to display a string
    int 21h

    ; this is for displaying new line
    mov ah, 02h
    mov cl, 0ah     ; 0ah is new line
    mov dl, cl
    int 21h

    ; Display the output message for second string
    lea dx, outputString2
    mov ah, 09h ; DOS function to display a string
    int 21h

    ; Display the entered second string
    lea dx, inputString2 + 2    ; Skip the first two bytes
    mov ah, 09h             ; DOS function to display a string
    int 21h

    ; this is for displaying new line
    mov ah, 02h
    mov cl, 0ah     ; 0ah is new line
    mov dl, cl
    int 21h

    ; Display the output message for third string
    lea dx, outputString3
    mov ah, 09h ; DOS function to display a string
    int 21h

    ; Display the entered third string
    lea dx, inputString3 + 2    ; Skip the first two bytes
    mov ah, 09h             ; DOS function to display a string
    int 21h

    ; this is for displaying new line
    mov ah, 02h
    mov cl, 0ah     ; 0ah is new line
    mov dl, cl
    int 21h

    mov ax, 4C00h
    int 21h

Main endp

End Main
