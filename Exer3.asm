; MULTIPLICATION TABLE
; Created by: VILLARAZO, JOHN KYLE A.
; Date: August 30, 2024

.model small
.code
.stack 100
start:
; NUMBERS 
	mov ah, 02h 
	mov cl, 30h
	mov dl, cl 
	int 21h 

	mov ah, 02h 
	mov cl, 20h
	mov dl, cl 
	int 21h 

	mov ah, 02h 
	mov cl, 31h
	mov dl, cl 
	int 21h 

	mov ah, 02h 
	mov cl, 20h
	mov dl, cl 
	int 21h 

	mov ah, 02h 
	mov cl, 32h
	mov dl, cl 
	int 21h 

	mov ah, 02h 
	mov cl, 20h
	mov dl, cl 
	int 21h 

	mov ah, 02h 
	mov cl, 33h
	mov dl, cl 
	int 21h 

	mov ah, 02h 
	mov cl, 20h
	mov dl, cl 
	int 21h 

	mov ah, 02h 
	mov cl, 34h
	mov dl, cl 
	int 21h 

	mov ah, 02h 
	mov cl, 20h
	mov dl, cl 
	int 21h 

	mov ah, 02h 
	mov cl, 35h
	mov dl, cl 
	int 21h 

	mov ah, 02h 
	mov cl, 20h
	mov dl, cl 
	int 21h 

	mov ah, 02h 
	mov cl, 36h
	mov dl, cl 
	int 21h 

	mov ah, 02h 
	mov cl, 20h
	mov dl, cl 
	int 21h 

	mov ah, 02h 
	mov cl, 37h
	mov dl, cl 
	int 21h 

	mov ah, 02h 
	mov cl, 20h
	mov dl, cl 
	int 21h 

	mov ah, 02h 
	mov cl, 38h
	mov dl, cl 
	int 21h 

	mov ah, 02h 
	mov cl, 20h
	mov dl, cl 
	int 21h 

	mov ah, 02h 
	mov cl, 39h
	mov dl, cl 
	int 21h 

	mov ah, 02h 
	mov cl, 0Ah
	mov dl, cl 
	int 21h 

; SPECIAL CHARACTERS
	mov ah, 02h 
	mov cl, 21h
	mov dl, cl 
	int 21h 

	mov ah, 02h 
	mov cl, 20h
	mov dl, cl 
	int 21h 

	mov ah, 02h 
	mov cl, 2Ah
	mov dl, cl 
	int 21h 

	mov ah, 02h 
	mov cl, 20h
	mov dl, cl 
	int 21h 

	mov ah, 02h 
	mov cl, 23h
	mov dl, cl 
	int 21h 

	mov ah, 02h 
	mov cl, 20h
	mov dl, cl 
	int 21h 

	mov ah, 02h 
	mov cl, 24h
	mov dl, cl 
	int 21h 

	mov ah, 02h 
	mov cl, 20h
	mov dl, cl 
	int 21h 

	mov ah, 02h 
	mov cl, 25h
	mov dl, cl 
	int 21h 

	mov ah, 02h 
	mov cl, 20h
	mov dl, cl 
	int 21h 

	mov ah, 02h 
	mov cl, 5Eh
	mov dl, cl 
	int 21h 

	mov ah, 02h 
	mov cl, 20h
	mov dl, cl 
	int 21h 

	mov ah, 02h 
	mov cl, 26h
	mov dl, cl 
	int 21h 

	mov ah, 02h 
	mov cl, 20h
	mov dl, cl 
	int 21h 

	mov ah, 02h 
	mov cl, 2Ah
	mov dl, cl 
	int 21h 

	mov ah, 02h 
	mov cl, 20h
	mov dl, cl 
	int 21h 

	mov ah, 02h 
	mov cl, 28h
	mov dl, cl 
	int 21h 

	mov ah, 02h 
	mov cl, 20h
	mov dl, cl 
	int 21h 

	mov ah, 02h 
	mov cl, 29h
	mov dl, cl 
	int 21h 

	mov ah, 02h 
	mov cl, 20h
	mov dl, cl 
	int 21h 

	mov ah, 02h 
	mov cl, 0Ah
	mov dl, cl 
	int 21h 

; SPECIAL 2
	mov ah, 02h 
	mov cl, 2Dh
	mov dl, cl 
	int 21h 

	mov ah, 02h 
	mov cl, 20h
	mov dl, cl 
	int 21h 

	mov ah, 02h 
	mov cl, 5Fh
	mov dl, cl 
	int 21h 

	mov ah, 02h 
	mov cl, 20h
	mov dl, cl 
	int 21h 

	mov ah, 02h 
	mov cl, 2Bh
	mov dl, cl 
	int 21h 

	mov ah, 02h 
	mov cl, 20h
	mov dl, cl 
	int 21h 

	mov ah, 02h 
	mov cl, 3Dh
	mov dl, cl 
	int 21h 

	mov ah, 02h 
	mov cl, 20h
	mov dl, cl 
	int 21h 

	mov ah, 02h 
	mov cl, 7Bh
	mov dl, cl 
	int 21h 

	mov ah, 02h 
	mov cl, 20h
	mov dl, cl 
	int 21h 

	mov ah, 02h 
	mov cl, 7Dh
	mov dl, cl 
	int 21h 

	mov ah, 02h 
	mov cl, 20h
	mov dl, cl 
	int 21h 










int 27h ; terminate
end start ; end program
