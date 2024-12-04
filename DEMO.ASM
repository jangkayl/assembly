; VILLARAZO, JOHN KYLE A.
; Date: August 30, 2024

.model small
.code
.stack 100
start:

; COLORS
	mov ah, 09h
	mov bl, 3Eh
	mov cx, 10
	int 10h 

	mov ah, 09h
	mov bl, 85h
	mov cx, 10
	int 10h 

	mov ah, 2
	mov dl, 03h
	int 21h 

; HELLO WORLD	
	mov ah, 02h 
	mov cl, 48h ; H
	mov dl, cl 
	int 21h 

	mov ah, 02h 
	mov cl, 45h ; E
	mov dl, cl
	int 21h 

	mov ah, 02h
	mov cl, 4Ch ; L
	mov dl, cl 
	int 21h 

	mov ah, 02h 
	mov cl, 4Ch ; L
	mov dl, cl
	int 21h

	mov ah, 02h 
	mov cl, 4Fh ; O
	mov dl, cl 
	int 21h

	mov ah, 02h 
	mov cl, 20h ; SPACE
	mov dl, cl
	int 21h

	mov ah, 02h 
	mov cl, 57h ; W
	mov dl, cl
	int 21h
	
	mov ah, 02h 
	mov cl, 4Fh ; O
	mov dl, cl
	int 21h

	mov ah, 02h 
	mov cl, 52h ; R
	mov dl, cl
	int 21h

	mov ah, 02h 
	mov cl, 4Ch ; L
	mov dl, cl
	int 21h

	mov ah, 02h 
	mov cl, 44h ; D
	mov dl, cl
	int 21h
	
	mov ah, 02h 
	mov cl, 21h ; !
	mov dl, cl
	int 21h

; THANK YOU
	mov ah, 02h 
	mov cl, 0Ah ; NEW LINE
	mov dl, cl
	int 21h

	mov ah, 02h 
	mov cl, 54h ; T
	mov dl, cl
	int 21h

	mov ah, 02h 
	mov cl, 48h ; H
	mov dl, cl
	int 21h

	mov ah, 02h 
	mov cl, 41h ; A
	mov dl, cl
	int 21h

	mov ah, 02h 
	mov cl, 4Eh ; N
	mov dl, cl
	int 21h

	mov ah, 02h 
	mov cl, 4Bh ; K
	mov dl, cl
	int 21h

	mov ah, 02h
	mov cl, 20h ; SPACE
	mov dl, cl
	int 21h

	mov ah, 02h 
	mov cl, 59h ; Y
	mov dl, cl
	int 21h

	mov ah, 02h 
	mov cl, 4Fh ; O
	mov dl, cl
	int 21h

	mov ah, 02h 
	mov cl, 55h ; U
	mov dl, cl
	int 21h

	mov ah, 02h 
	mov cl, 21h ; !
	mov dl, cl
	int 21h

int 27h ; terminate
end start ; end program
