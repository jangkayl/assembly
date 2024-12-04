; Filename: EXER19.ASM
; Programmer Name: JOHN KYLE VILLARAZO
; Date: 9/20/2024

.model small
.stack 100h
.data
    firstChar db ?      
    secondChar db ?
    thirdChar db ?
    firstMsg db 'Enter first character: $'
    secondMsg db  0dh, 0ah, 'Enter second character: $'
    thirdMsg db  0dh, 0ah, 'Enter third character: $'
    firstOutput db  0dh, 0ah, 'The first character is $'
    secondOutput db  0dh, 0ah, 'The second character is $'
    thirdOutput db  0dh, 0ah, 'The third character is $'
    dot db '.', 0dh, 0ah, '$'
.code
Main:
    ; initialize the data segment
    mov ax, @data
    mov ds, ax

    ; display the input prompt message
    mov dx, offset firstMsg
    mov ah, 09h
    int 21h

    ; read a character from the keyboard
    mov ah, 01h     ; function to read a character
    int 21h             ; call DOS interrupt
    mov firstChar, al   ; store the character in inputChar

    mov ah, 02h 
	mov dl, 0Ah
	int 21h   

    ; display the input prompt message
    mov dx, offset secondMsg
    mov ah, 09h
    int 21h

    ; read a character from the keyboard
    mov ah, 01h     ; function to read a character
    int 21h             ; call DOS interrupt
    mov secondChar, al   ; store the character in inputChar

    mov ah, 02h 
	mov dl, 0Ah
	int 21h   

    ; display the input prompt message
    mov dx, offset thirdMsg
    mov ah, 09h
    int 21h

    ; read a character from the keyboard
    mov ah, 01h     ; function to read a character
    int 21h             ; call DOS interrupt
    mov thirdChar, al   ; store the character in inputChar

    mov ah, 02h 
	mov dl, 0Ah
	int 21h   

    mov dx, offset firstOutput
    mov ah, 09h
    int 21h

    ; display the character back
    mov dl, firstChar   ; load the character to DL
    mov ah, 02h         ; function to display a character
    int 21h

    mov dx, offset dot
    mov ah, 09h
    int 21h

    mov dx, offset secondOutput
    mov ah, 09h
    int 21h

    mov dl, secondChar   ; load the character to DL
    mov ah, 02h         ; function to display a character
    int 21h

    mov dx, offset dot
    mov ah, 09h
    int 21h

    mov dx, offset thirdOutput
    mov ah, 09h
    int 21h

    mov dl, thirdChar   ; load the character to DL
    mov ah, 02h         ; function to display a character
    int 21h

    mov dx, offset dot
    mov ah, 09h
    int 21h

    



    ; exit program
    mov ax, 4C00h
    int 21h

end Main