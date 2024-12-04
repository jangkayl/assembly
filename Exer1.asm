; VILLARAZO, JOHN KYLE A.
; Date: August 30, 2024

.model small
.stack 200h
.data
	smallLetters db 0ah, 'abcdefghijklmnopqrstuvwxyz$'
	bigLetters db 0ah, 'A B C D E F G H I J K L M N O P Q R S T U V W X Y Z$'
.code
start:
	mov ax, @data
	mov ds, ax
	
	lea dx, smallLetters
	mov ah, 9
	int 21h
	
	lea dx, bigLetters
	mov ah, 9
	int 21h

	mov ah, 4Ch
	int 27h ; terminate
end start ; end program
