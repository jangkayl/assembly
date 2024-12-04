; Filename: EXER20.ASM
; Programmer Name: JOHN KYLE VILLARAZO
; Date: 9/20/2024

.model small
.stack 100h
.data
    char db ?
    charMsg db 'Enter a character: $'
    YesMsg label byte
        db 0dh, 0ah, 13, 10, 'Yes, you have entered letter A.', 13, 10, '$'
    NoMsg label byte
        db 0dh, 0ah, 13, 10, 'No, you have not entered letter A. You entered character $'
    dot db '.$'
.code
Main:
    mov ax, @data
    mov ds, ax
    mov dx, offset charMsg
    mov ah, 9
    int 21h

    ; read a character from the keyboard
    mov ah, 01h     ; function to read a character
    int 21h             ; call DOS interrupt
    mov char, al   ; store the character in inputChar

    cmp al, 'a'        
    jz IsYes      
    cmp al, 'A'        
    jnz IsNo       

IsYes:
    mov dx, offset YesMsg     
    jmp DisplayAll                     

IsNo:
    mov dx, offset NoMsg  
    mov ah, 09h
    int 21h

    mov dl, char   ; load the character to DL
    mov ah, 02h         ; function to display a character
    int 21h

    mov dx, offset dot


DisplayAll:
    mov ah, 9           ; DOS print string function
    int 21h

    mov ah, 4ch         ; DOS terminate program function
    int 21h

end Main