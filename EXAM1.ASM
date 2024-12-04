; Filename: EXAM1.ASM
; MULTIPLICATION TABLE
; Created by: VILLARAZO, JOHN KYLE A.
; Date: August 30, 2024

.model small
.code
.stack 100
start:

; TITLE
	mov ah, 02h 
	mov dl, 'M' 
	int 21h 

	mov ah, 02h 
	mov dl, 'U' 
	int 21h 

	mov ah, 02h 
	mov dl, 'L' 
	int 21h 

	mov ah, 02h 
	mov dl, 'T' 
	int 21h 

	mov ah, 02h 
	mov dl, 'I' 
	int 21h 

	mov ah, 02h 
	mov dl, 'P' 
	int 21h 

	mov ah, 02h 
	mov dl, 'L' 
	int 21h 

	mov ah, 02h 
	mov dl, 'I' 
	int 21h 

	mov ah, 02h 
	mov dl, 'C' 
	int 21h 

	mov ah, 02h 
	mov dl, 'A' 
	int 21h 

	mov ah, 02h 
	mov dl, 'T' 
	int 21h 

	mov ah, 02h 
	mov dl, 'I' 
	int 21h 
	
	mov ah, 02h 
	mov dl, 'O' 
	int 21h 

	mov ah, 02h 
	mov dl, 'N' 
	int 21h 

	mov ah, 02h 
	mov dl, ' ' 
	int 21h 

	mov ah, 02h 
	mov dl, 'T' 
	int 21h 

	mov ah, 02h 
	mov dl, 'A' 
	int 21h 

	mov ah, 02h 
	mov dl, 'B' 
	int 21h 

	mov ah, 02h 
	mov dl, 'L' 
	int 21h 

	mov ah, 02h 
	mov dl, 'E' 
	int 21h 

	mov ah, 02h 
	mov dl, 0Ah
	int 21h 

; NAME
	
	mov ah, 02h 
	mov dl, 'C' 
	int 21h 

	mov ah, 02h 
	mov dl, 'r' 
	int 21h 

	mov ah, 02h 
	mov dl, 'e' 
	int 21h 

	mov ah, 02h 
	mov dl, 'a' 
	int 21h 

	mov ah, 02h 
	mov dl, 't' 
	int 21h 

	mov ah, 02h 
	mov dl, 'e' 
	int 21h 

	mov ah, 02h 
	mov dl, 'd' 
	int 21h 

	mov ah, 02h 
	mov dl, ' ' 
	int 21h 

	mov ah, 02h 
	mov dl, 'b' 
	int 21h 

	mov ah, 02h 
	mov dl, 'y' 
	int 21h 

	mov ah, 02h 
	mov dl, ':' 
	int 21h 

	mov ah, 02h 
	mov dl, ' ' 
	int 21h 

	mov ah, 02h 
	mov dl, 'V' 
	int 21h 

	mov ah, 02h 
	mov dl, 'I' 
	int 21h 

	mov ah, 02h 
	mov dl, 'L' 
	int 21h 

	mov ah, 02h 
	mov dl, 'L' 
	int 21h 

	mov ah, 02h 
	mov dl, 'A' 
	int 21h 

	mov ah, 02h 
	mov dl, 'R' 
	int 21h 

	mov ah, 02h 
	mov dl, 'A' 
	int 21h 

	mov ah, 02h 
	mov dl, 'Z' 
	int 21h 

	mov ah, 02h 
	mov dl, 'O' 
	int 21h 

	mov ah, 02h 
	mov dl, ',' 
	int 21h 

	mov ah, 02h 
	mov dl, ' ' 
	int 21h 

	mov ah, 02h 
	mov dl, 'J' 
	int 21h 

	mov ah, 02h 
	mov dl, 'O' 
	int 21h 

	mov ah, 02h 
	mov dl, 'H' 
	int 21h 

	mov ah, 02h 
	mov dl, 'N' 
	int 21h 

	mov ah, 02h 
	mov dl, ' ' 
	int 21h 

	mov ah, 02h 
	mov dl, 'K' 
	int 21h 

	mov ah, 02h 
	mov dl, 'Y' 
	int 21h 

	mov ah, 02h 
	mov dl, 'L' 
	int 21h 

	mov ah, 02h 
	mov dl, 'E' 
	int 21h 

	mov ah, 02h 
	mov dl, ' ' 
	int 21h 

	mov ah, 02h 
	mov dl, 'A' 
	int 21h 

	mov ah, 02h 
	mov dl, '.' 
	int 21h 

	mov ah, 02h 
	mov dl, 0Ah
	int 21h 

; MULTIPLICATION TABLE

; BORDER TOP

	mov ah, 02h 
	mov dl, ' ' 
	int 21h 

	mov ah, 02h 
	mov dl, '_' 
	int 21h 

	mov ah, 02h 
	mov dl, '_' 
	int 21h 

	mov ah, 02h 
	mov dl, '_' 
	int 21h 

	mov ah, 02h 
	mov dl, '_' 
	int 21h 

	mov ah, 02h 
	mov dl, '_' 
	int 21h 

	mov ah, 02h 
	mov dl, '_' 
	int 21h 

	mov ah, 02h 
	mov dl, '_' 
	int 21h 

	mov ah, 02h 
	mov dl, '_' 
	int 21h 

	mov ah, 02h 
	mov dl, '_' 
	int 21h 

	mov ah, 02h 
	mov dl, '_' 
	int 21h 

	mov ah, 02h 
	mov dl, '_' 
	int 21h 

	mov ah, 02h 
	mov dl, '_' 
	int 21h 

	mov ah, 02h 
	mov dl, '_' 
	int 21h 

	mov ah, 02h 
	mov dl, '_' 
	int 21h 

	mov ah, 02h 
	mov dl, '_' 
	int 21h 

	mov ah, 02h 
	mov dl, '_' 
	int 21h 

	mov ah, 02h 
	mov dl, '_' 
	int 21h 

	mov ah, 02h 
	mov dl, '_' 
	int 21h 

	mov ah, 02h 
	mov dl, '_' 
	int 21h 

	mov ah, 02h 
	mov dl, '_' 
	int 21h 

	mov ah, 02h 
	mov dl, '_' 
	int 21h 

	mov ah, 02h 
	mov dl, '_' 
	int 21h 

	mov ah, 02h 
	mov dl, '_' 
	int 21h 

	mov ah, 02h 
	mov dl, '_' 
	int 21h 

	mov ah, 02h 
	mov dl, '_' 
	int 21h 

	mov ah, 02h 
	mov dl, '_' 
	int 21h 

	mov ah, 02h 
	mov dl, '_' 
	int 21h 

	mov ah, 02h 
	mov dl, '_' 
	int 21h 

	mov ah, 02h 
	mov dl, '_' 
	int 21h 

	mov ah, 02h 
	mov dl, '_' 
	int 21h 

	mov ah, 02h 
	mov dl, '_' 
	int 21h 

	mov ah, 02h 
	mov dl, '_' 
	int 21h 

	mov ah, 02h 
	mov dl, '_' 
	int 21h 

	mov ah, 02h 
	mov dl, '_' 
	int 21h 

	mov ah, 02h 
	mov dl, '_' 
	int 21h 

	mov ah, 02h 
	mov dl, '_' 
	int 21h 

	mov ah, 02h 
	mov dl, '_' 
	int 21h 

	mov ah, 02h 
	mov dl, '_' 
	int 21h 

	mov ah, 02h 
	mov dl, '_' 
	int 21h 

	mov ah, 02h 
	mov dl, '_' 
	int 21h 

	mov ah, 02h 
	mov dl, '_' 
	int 21h 

	mov ah, 02h 
	mov dl, '_' 
	int 21h 

	mov ah, 02h 
	mov dl, '_' 
	int 21h 

	mov ah, 02h 
	mov dl, '_' 
	int 21h 

	mov ah, 02h 
	mov dl, '_' 
	int 21h 

	mov ah, 02h 
	mov dl, '_' 
	int 21h 

	mov ah, 02h 
	mov dl, 0Ah 
	int 21h 
	
; FIRST ROW

	mov ah, 02h 
	mov dl, ' ' 
	int 21h 

	mov ah, 02h 
	mov dl, '|' 
	int 21h 

	mov ah, 02h 
	mov dl, ' ' 
	int 21h 

	mov ah, 02h 
	mov dl, 'X' 
	int 21h 

	mov ah, 02h 
	mov dl, ' ' 
	int 21h 

	mov ah, 02h 
	mov dl, '|' 
	int 21h 

	mov ah, 02h 
	mov dl, ' ' 
	int 21h 

	mov ah, 02h 
	mov dl, '1' 
	int 21h 

	mov ah, 02h 
	mov dl, ' ' 
	int 21h 

	mov ah, 02h 
	mov dl, '|' 
	int 21h 

	mov ah, 02h 
	mov dl, ' ' 
	int 21h 

	mov ah, 02h 
	mov dl, '2' 
	int 21h 

	mov ah, 02h 
	mov dl, ' ' 
	int 21h 

	mov ah, 02h 
	mov dl, '|' 
	int 21h 

	mov ah, 02h 
	mov dl, ' ' 
	int 21h 

	mov ah, 02h 
	mov dl, '3' 
	int 21h 

	mov ah, 02h 
	mov dl, ' ' 
	int 21h 

	mov ah, 02h 
	mov dl, '|' 
	int 21h 

	mov ah, 02h 
	mov dl, ' ' 
	int 21h 

	mov ah, 02h 
	mov dl, '4' 
	int 21h 

	mov ah, 02h 
	mov dl, ' ' 
	int 21h 

	mov ah, 02h 
	mov dl, '|' 
	int 21h 

	mov ah, 02h 
	mov dl, ' ' 
	int 21h 

	mov ah, 02h 
	mov dl, '5' 
	int 21h 

	mov ah, 02h 
	mov dl, ' ' 
	int 21h 

	mov ah, 02h 
	mov dl, '|' 
	int 21h 

	mov ah, 02h 
	mov dl, ' ' 
	int 21h 

	mov ah, 02h 
	mov dl, '6' 
	int 21h 

	mov ah, 02h 
	mov dl, ' ' 
	int 21h 

	mov ah, 02h 
	mov dl, '|' 
	int 21h 

	mov ah, 02h 
	mov dl, ' ' 
	int 21h 

	mov ah, 02h 
	mov dl, '7' 
	int 21h 

	mov ah, 02h 
	mov dl, ' ' 
	int 21h 

	mov ah, 02h 
	mov dl, '|' 
	int 21h 

	mov ah, 02h 
	mov dl, ' ' 
	int 21h 

	mov ah, 02h 
	mov dl, '8' 
	int 21h 

	mov ah, 02h 
	mov dl, ' ' 
	int 21h 

	mov ah, 02h 
	mov dl, '|' 
	int 21h 

	mov ah, 02h 
	mov dl, ' ' 
	int 21h 

	mov ah, 02h 
	mov dl, '9' 
	int 21h 

	mov ah, 02h 
	mov dl, ' ' 
	int 21h 

	mov ah, 02h 
	mov dl, '|' 
	int 21h 

	mov ah, 02h 
	mov dl, ' ' 
	int 21h 

	mov ah, 02h 
	mov dl, '1' 
	int 21h 

	mov ah, 02h 
	mov dl, '0' 
	int 21h 

	mov ah, 02h 
	mov dl, ' ' 
	int 21h 

	mov ah, 02h 
	mov dl, '|' 
	int 21h 

	mov ah, 02h 
	mov dl, 0Ah
	int 21h 

	; BORDER TOP

	mov ah, 02h 
	mov dl, ' ' 
	int 21h 

	mov ah, 02h 
	mov dl, '-' 
	int 21h 

	mov ah, 02h 
	mov dl, '-' 
	int 21h 

	mov ah, 02h 
	mov dl, '-' 
	int 21h 

	mov ah, 02h 
	mov dl, '-' 
	int 21h 

	mov ah, 02h 
	mov dl, '-' 
	int 21h 

	mov ah, 02h 
	mov dl, '-' 
	int 21h 

	mov ah, 02h 
	mov dl, '-' 
	int 21h 

	mov ah, 02h 
	mov dl, '-' 
	int 21h 

	mov ah, 02h 
	mov dl, '-' 
	int 21h 

	mov ah, 02h 
	mov dl, '-' 
	int 21h 

	mov ah, 02h 
	mov dl, '-' 
	int 21h 

	mov ah, 02h 
	mov dl, '-' 
	int 21h 

	mov ah, 02h 
	mov dl, '-' 
	int 21h 

	mov ah, 02h 
	mov dl, '-' 
	int 21h 

	mov ah, 02h 
	mov dl, '-' 
	int 21h 

	mov ah, 02h 
	mov dl, '-' 
	int 21h 

	mov ah, 02h 
	mov dl, '-'  
	int 21h 

	mov ah, 02h 
	mov dl, '-' 
	int 21h 

	mov ah, 02h 
	mov dl, '-' 
	int 21h 

	mov ah, 02h 
	mov dl, '-' 
	int 21h 

	mov ah, 02h 
	mov dl, '-' 
	int 21h 

	mov ah, 02h 
	mov dl, '-'  
	int 21h 

	mov ah, 02h 
	mov dl, '-' 
	int 21h 

	mov ah, 02h 
	mov dl, '-' 
	int 21h 

	mov ah, 02h 
	mov dl, '-' 
	int 21h 

	mov ah, 02h 
	mov dl, '-' 
	int 21h 

	mov ah, 02h 
	mov dl, '-' 
	int 21h 

	mov ah, 02h 
	mov dl, '-' 
	int 21h 

	mov ah, 02h 
	mov dl, '-' 
	int 21h 

	mov ah, 02h 
	mov dl, '-' 
	int 21h 

	mov ah, 02h 
	mov dl, '-' 
	int 21h 

	mov ah, 02h 
	mov dl, '-' 
	int 21h 

	mov ah, 02h 
	mov dl, '-' 
	int 21h 

	mov ah, 02h 
	mov dl, '-' 
	int 21h 

	mov ah, 02h 
	mov dl, '-' 
	int 21h 

	mov ah, 02h 
	mov dl, '-' 
	int 21h 

	mov ah, 02h 
	mov dl, '-' 
	int 21h 

	mov ah, 02h 
	mov dl, '-' 
	int 21h 

	mov ah, 02h 
	mov dl, '-' 
	int 21h 

	mov ah, 02h 
	mov dl, '-' 
	int 21h 

	mov ah, 02h 
	mov dl, '-' 
	int 21h 

	mov ah, 02h 
	mov dl, '-' 
	int 21h 

	mov ah, 02h 
	mov dl, '-' 
	int 21h 

	mov ah, 02h 
	mov dl, '-' 
	int 21h 

	mov ah, 02h 
	mov dl, '-' 
	int 21h 

	mov ah, 02h 
	mov dl, '-' 
	int 21h 

	mov ah, 02h 
	mov dl, 0Ah 
	int 21h 
	
; SECOND ROW

	mov ah, 02h 
	mov dl, ' ' 
	int 21h 

	mov ah, 02h 
	mov dl, '|' 
	int 21h 

	mov ah, 02h 
	mov dl, ' ' 
	int 21h 

	mov ah, 02h 
	mov dl, '1' 
	int 21h 

	mov ah, 02h 
	mov dl, ' ' 
	int 21h 

	mov ah, 02h 
	mov dl, '|' 
	int 21h 

	mov ah, 02h 
	mov dl, ' ' 
	int 21h 

	mov ah, 02h 
	mov dl, '1' 
	int 21h 

	mov ah, 02h 
	mov dl, ' ' 
	int 21h 

	mov ah, 02h 
	mov dl, '|' 
	int 21h 

	mov ah, 02h 
	mov dl, ' ' 
	int 21h 

	mov ah, 02h 
	mov dl, '2' 
	int 21h 

	mov ah, 02h 
	mov dl, ' ' 
	int 21h 

	mov ah, 02h 
	mov dl, '|' 
	int 21h 

	mov ah, 02h 
	mov dl, ' ' 
	int 21h 

	mov ah, 02h 
	mov dl, '3' 
	int 21h 

	mov ah, 02h 
	mov dl, ' ' 
	int 21h 

	mov ah, 02h 
	mov dl, '|' 
	int 21h 

	mov ah, 02h 
	mov dl, ' ' 
	int 21h 

	mov ah, 02h 
	mov dl, '4' 
	int 21h 

	mov ah, 02h 
	mov dl, ' ' 
	int 21h 

	mov ah, 02h 
	mov dl, '|' 
	int 21h 

	mov ah, 02h 
	mov dl, ' ' 
	int 21h 

	mov ah, 02h 
	mov dl, '5' 
	int 21h 

	mov ah, 02h 
	mov dl, ' ' 
	int 21h 

	mov ah, 02h 
	mov dl, '|' 
	int 21h 

	mov ah, 02h 
	mov dl, ' ' 
	int 21h 

	mov ah, 02h 
	mov dl, '6' 
	int 21h 

	mov ah, 02h 
	mov dl, ' ' 
	int 21h 

	mov ah, 02h 
	mov dl, '|' 
	int 21h 

	mov ah, 02h 
	mov dl, ' ' 
	int 21h 

	mov ah, 02h 
	mov dl, '7' 
	int 21h 

	mov ah, 02h 
	mov dl, ' ' 
	int 21h 

	mov ah, 02h 
	mov dl, '|' 
	int 21h 

	mov ah, 02h 
	mov dl, ' ' 
	int 21h 

	mov ah, 02h 
	mov dl, '8' 
	int 21h 

	mov ah, 02h 
	mov dl, ' ' 
	int 21h 

	mov ah, 02h 
	mov dl, '|' 
	int 21h 

	mov ah, 02h 
	mov dl, ' ' 
	int 21h 

	mov ah, 02h 
	mov dl, '9' 
	int 21h 

	mov ah, 02h 
	mov dl, ' ' 
	int 21h 

	mov ah, 02h 
	mov dl, '|' 
	int 21h 

	mov ah, 02h 
	mov dl, ' ' 
	int 21h 

	mov ah, 02h 
	mov dl, '1' 
	int 21h 

	mov ah, 02h 
	mov dl, '0' 
	int 21h 

	mov ah, 02h 
	mov dl, ' ' 
	int 21h 

	mov ah, 02h 
	mov dl, '|' 
	int 21h 

	mov ah, 02h 
	mov dl, 0Ah
	int 21h 

	; BORDER TOP

	mov ah, 02h 
	mov dl, ' ' 
	int 21h 

	mov ah, 02h 
	mov dl, '-' 
	int 21h 

	mov ah, 02h 
	mov dl, '-' 
	int 21h 

	mov ah, 02h 
	mov dl, '-' 
	int 21h 

	mov ah, 02h 
	mov dl, '-' 
	int 21h 

	mov ah, 02h 
	mov dl, '-' 
	int 21h 

	mov ah, 02h 
	mov dl, '-' 
	int 21h 

	mov ah, 02h 
	mov dl, '-' 
	int 21h 

	mov ah, 02h 
	mov dl, '-' 
	int 21h 

	mov ah, 02h 
	mov dl, '-' 
	int 21h 

	mov ah, 02h 
	mov dl, '-' 
	int 21h 

	mov ah, 02h 
	mov dl, '-' 
	int 21h 

	mov ah, 02h 
	mov dl, '-' 
	int 21h 

	mov ah, 02h 
	mov dl, '-' 
	int 21h 

	mov ah, 02h 
	mov dl, '-' 
	int 21h 

	mov ah, 02h 
	mov dl, '-' 
	int 21h 

	mov ah, 02h 
	mov dl, '-' 
	int 21h 

	mov ah, 02h 
	mov dl, '-'  
	int 21h 

	mov ah, 02h 
	mov dl, '-' 
	int 21h 

	mov ah, 02h 
	mov dl, '-' 
	int 21h 

	mov ah, 02h 
	mov dl, '-' 
	int 21h 

	mov ah, 02h 
	mov dl, '-' 
	int 21h 

	mov ah, 02h 
	mov dl, '-'  
	int 21h 

	mov ah, 02h 
	mov dl, '-' 
	int 21h 

	mov ah, 02h 
	mov dl, '-' 
	int 21h 

	mov ah, 02h 
	mov dl, '-' 
	int 21h 

	mov ah, 02h 
	mov dl, '-' 
	int 21h 

	mov ah, 02h 
	mov dl, '-' 
	int 21h 

	mov ah, 02h 
	mov dl, '-' 
	int 21h 

	mov ah, 02h 
	mov dl, '-' 
	int 21h 

	mov ah, 02h 
	mov dl, '-' 
	int 21h 

	mov ah, 02h 
	mov dl, '-' 
	int 21h 

	mov ah, 02h 
	mov dl, '-' 
	int 21h 

	mov ah, 02h 
	mov dl, '-' 
	int 21h 

	mov ah, 02h 
	mov dl, '-' 
	int 21h 

	mov ah, 02h 
	mov dl, '-' 
	int 21h 

	mov ah, 02h 
	mov dl, '-' 
	int 21h 

	mov ah, 02h 
	mov dl, '-' 
	int 21h 

	mov ah, 02h 
	mov dl, '-' 
	int 21h 

	mov ah, 02h 
	mov dl, '-' 
	int 21h 

	mov ah, 02h 
	mov dl, '-' 
	int 21h 

	mov ah, 02h 
	mov dl, '-' 
	int 21h 

	mov ah, 02h 
	mov dl, '-' 
	int 21h 

	mov ah, 02h 
	mov dl, '-' 
	int 21h 

	mov ah, 02h 
	mov dl, '-' 
	int 21h 

	mov ah, 02h 
	mov dl, '-' 
	int 21h 

	mov ah, 02h 
	mov dl, '-' 
	int 21h 

	mov ah, 02h 
	mov dl, 0Ah 
	int 21h 
	
; THIRD ROW

	mov ah, 02h 
	mov dl, ' ' 
	int 21h 

	mov ah, 02h 
	mov dl, '|' 
	int 21h 

	mov ah, 02h 
	mov dl, ' ' 
	int 21h 

	mov ah, 02h 
	mov dl, '3' 
	int 21h 

	mov ah, 02h 
	mov dl, ' ' 
	int 21h 

	mov ah, 02h 
	mov dl, '|' 
	int 21h 

	mov ah, 02h 
	mov dl, ' ' 
	int 21h 

	mov ah, 02h 
	mov dl, '3' 
	int 21h 

	mov ah, 02h 
	mov dl, ' ' 
	int 21h 

	mov ah, 02h 
	mov dl, '|' 
	int 21h 

	mov ah, 02h 
	mov dl, ' ' 
	int 21h 

	mov ah, 02h 
	mov dl, '6' 
	int 21h 

	mov ah, 02h 
	mov dl, ' ' 
	int 21h 

	mov ah, 02h 
	mov dl, '|' 
	int 21h 

	mov ah, 02h 
	mov dl, ' ' 
	int 21h 

	mov ah, 02h 
	mov dl, '8' 
	int 21h 

	mov ah, 02h 
	mov dl, ' ' 
	int 21h 

	mov ah, 02h 
	mov dl, '|' 
	int 21h 

	mov ah, 02h 
	mov dl, ' ' 
	int 21h 

	mov ah, 02h 
	mov dl, '1' 
	int 21h 

	mov ah, 02h 
	mov dl, '0' 
	int 21h 

	mov ah, 02h 
	mov dl, ' ' 
	int 21h 

	mov ah, 02h 
	mov dl, '|' 
	int 21h 

	mov ah, 02h 
	mov dl, ' ' 
	int 21h 

	mov ah, 02h 
	mov dl, '1' 
	int 21h 

	mov ah, 02h 
	mov dl, '2' 
	int 21h 

	mov ah, 02h 
	mov dl, ' ' 
	int 21h 

	mov ah, 02h 
	mov dl, '|' 
	int 21h 

	mov ah, 02h 
	mov dl, ' ' 
	int 21h 

	mov ah, 02h 
	mov dl, '1' 
	int 21h 

	mov ah, 02h 
	mov dl, '4' 
	int 21h 

	mov ah, 02h 
	mov dl, ' ' 
	int 21h 

	mov ah, 02h 
	mov dl, '|' 
	int 21h 

	mov ah, 02h 
	mov dl, ' ' 
	int 21h 

	mov ah, 02h 
	mov dl, '1' 
	int 21h 
		
	mov ah, 02h 
	mov dl, '6' 
	int 21h 

	mov ah, 02h 
	mov dl, ' ' 
	int 21h 

	mov ah, 02h 
	mov dl, '|' 
	int 21h 

	mov ah, 02h 
	mov dl, ' ' 
	int 21h 

	mov ah, 02h 
	mov dl, '1' 
	int 21h 

	mov ah, 02h 
	mov dl, '8' 
	int 21h 

	mov ah, 02h 
	mov dl, ' ' 
	int 21h 

	mov ah, 02h 
	mov dl, '|' 
	int 21h 

	mov ah, 02h 
	mov dl, ' ' 
	int 21h 

	mov ah, 02h 
	mov dl, '2' 
	int 21h 

	mov ah, 02h 
	mov dl, '0' 
	int 21h 

	mov ah, 02h 
	mov dl, ' ' 
	int 21h 


	mov ah, 02h 
	mov dl, '|' 
	int 21h 

	mov ah, 02h 
	mov dl, 0Ah
	int 21h 

	; BORDER TOP

	mov ah, 02h 
	mov dl, ' ' 
	int 21h 

	mov ah, 02h 
	mov dl, '-' 
	int 21h 

	mov ah, 02h 
	mov dl, '-' 
	int 21h 

	mov ah, 02h 
	mov dl, '-' 
	int 21h 

	mov ah, 02h 
	mov dl, '-' 
	int 21h 

	mov ah, 02h 
	mov dl, '-' 
	int 21h 

	mov ah, 02h 
	mov dl, '-' 
	int 21h 

	mov ah, 02h 
	mov dl, '-' 
	int 21h 

	mov ah, 02h 
	mov dl, '-' 
	int 21h 

	mov ah, 02h 
	mov dl, '-' 
	int 21h 

	mov ah, 02h 
	mov dl, '-' 
	int 21h 

	mov ah, 02h 
	mov dl, '-' 
	int 21h 

	mov ah, 02h 
	mov dl, '-' 
	int 21h 

	mov ah, 02h 
	mov dl, '-' 
	int 21h 

	mov ah, 02h 
	mov dl, '-' 
	int 21h 

	mov ah, 02h 
	mov dl, '-' 
	int 21h 

	mov ah, 02h 
	mov dl, '-' 
	int 21h 

	mov ah, 02h 
	mov dl, '-'  
	int 21h 

	mov ah, 02h 
	mov dl, '-' 
	int 21h 

	mov ah, 02h 
	mov dl, '-' 
	int 21h 

	mov ah, 02h 
	mov dl, '-' 
	int 21h 

	mov ah, 02h 
	mov dl, '-' 
	int 21h 

	mov ah, 02h 
	mov dl, '-'  
	int 21h 

	mov ah, 02h 
	mov dl, '-' 
	int 21h 

	mov ah, 02h 
	mov dl, '-' 
	int 21h 

	mov ah, 02h 
	mov dl, '-' 
	int 21h 

	mov ah, 02h 
	mov dl, '-' 
	int 21h 

	mov ah, 02h 
	mov dl, '-' 
	int 21h 

	mov ah, 02h 
	mov dl, '-' 
	int 21h 

	mov ah, 02h 
	mov dl, '-' 
	int 21h 

	mov ah, 02h 
	mov dl, '-' 
	int 21h 

	mov ah, 02h 
	mov dl, '-' 
	int 21h 

	mov ah, 02h 
	mov dl, '-' 
	int 21h 

	mov ah, 02h 
	mov dl, '-' 
	int 21h 

	mov ah, 02h 
	mov dl, '-' 
	int 21h 

	mov ah, 02h 
	mov dl, '-' 
	int 21h 

	mov ah, 02h 
	mov dl, '-' 
	int 21h 

	mov ah, 02h 
	mov dl, '-' 
	int 21h 

	mov ah, 02h 
	mov dl, '-' 
	int 21h 

	mov ah, 02h 
	mov dl, '-' 
	int 21h 

	mov ah, 02h 
	mov dl, '-' 
	int 21h 

	mov ah, 02h 
	mov dl, '-' 
	int 21h 

	mov ah, 02h 
	mov dl, '-' 
	int 21h 

	mov ah, 02h 
	mov dl, '-' 
	int 21h 

	mov ah, 02h 
	mov dl, '-' 
	int 21h 

	mov ah, 02h 
	mov dl, '-' 
	int 21h 

	mov ah, 02h 
	mov dl, '-' 
	int 21h 

	mov ah, 02h 
	mov dl, 0Ah 
	int 21h 
	
; FOURTH ROW

	mov ah, 02h 
	mov dl, ' ' 
	int 21h 

	mov ah, 02h 
	mov dl, '|' 
	int 21h 

	mov ah, 02h 
	mov dl, ' ' 
	int 21h 

	mov ah, 02h 
	mov dl, '4' 
	int 21h 

	mov ah, 02h 
	mov dl, ' ' 
	int 21h 

	mov ah, 02h 
	mov dl, '|' 
	int 21h 

	mov ah, 02h 
	mov dl, ' ' 
	int 21h 

	mov ah, 02h 
	mov dl, '4' 
	int 21h 

	mov ah, 02h 
	mov dl, ' ' 
	int 21h 

	mov ah, 02h 
	mov dl, '|' 
	int 21h 

	mov ah, 02h 
	mov dl, ' ' 
	int 21h 

	mov ah, 02h 
	mov dl, '8' 
	int 21h 

	mov ah, 02h 
	mov dl, ' ' 
	int 21h 

	mov ah, 02h 
	mov dl, '|' 
	int 21h 

	mov ah, 02h 
	mov dl, ' ' 
	int 21h 

	mov ah, 02h 
	mov dl, '1' 
	int 21h 

	mov ah, 02h 
	mov dl, '2' 
	int 21h 

	mov ah, 02h 
	mov dl, ' ' 
	int 21h 

	mov ah, 02h 
	mov dl, '|' 
	int 21h 

	mov ah, 02h 
	mov dl, ' ' 
	int 21h 

	mov ah, 02h 
	mov dl, '1' 
	int 21h 

	mov ah, 02h 
	mov dl, '6' 
	int 21h 

	mov ah, 02h 
	mov dl, ' ' 
	int 21h 

	mov ah, 02h 
	mov dl, '|' 
	int 21h 

	mov ah, 02h 
	mov dl, ' ' 
	int 21h 

	mov ah, 02h 
	mov dl, '2' 
	int 21h 

	mov ah, 02h 
	mov dl, '0' 
	int 21h 

	mov ah, 02h 
	mov dl, ' ' 
	int 21h 

	mov ah, 02h 
	mov dl, '|' 
	int 21h 

	mov ah, 02h 
	mov dl, ' ' 
	int 21h 

	mov ah, 02h 
	mov dl, '2' 
	int 21h 

	mov ah, 02h 
	mov dl, '4' 
	int 21h 

	mov ah, 02h 
	mov dl, ' ' 
	int 21h 

	mov ah, 02h 
	mov dl, '|' 
	int 21h 

	mov ah, 02h 
	mov dl, ' ' 
	int 21h 

	mov ah, 02h 
	mov dl, '2' 
	int 21h 

	mov ah, 02h 
	mov dl, '8' 
	int 21h 

	mov ah, 02h 
	mov dl, ' ' 
	int 21h 

	mov ah, 02h 
	mov dl, '|' 
	int 21h 

	mov ah, 02h 
	mov dl, ' ' 
	int 21h 

	mov ah, 02h 
	mov dl, '3' 
	int 21h 

	mov ah, 02h 
	mov dl, '2' 
	int 21h 

	mov ah, 02h 
	mov dl, ' ' 
	int 21h 

	mov ah, 02h 
	mov dl, '|' 
	int 21h 

	mov ah, 02h 
	mov dl, ' ' 
	int 21h 

	mov ah, 02h 
	mov dl, '3' 
	int 21h 

	mov ah, 02h 
	mov dl, '6' 
	int 21h 

	mov ah, 02h 
	mov dl, ' ' 
	int 21h 

	mov ah, 02h 
	mov dl, '|' 
	int 21h 

	mov ah, 02h 
	mov dl, ' ' 
	int 21h 

	mov ah, 02h 
	mov dl, '4' 
	int 21h 

	mov ah, 02h 
	mov dl, '0' 
	int 21h 

	mov ah, 02h 
	mov dl, ' ' 
	int 21h 

	mov ah, 02h 
	mov dl, '|' 
	int 21h 

	mov ah, 02h 
	mov dl, 0Ah
	int 21h 

	; BORDER TOP

	mov ah, 02h 
	mov dl, ' ' 
	int 21h 

	mov ah, 02h 
	mov dl, '-' 
	int 21h 

	mov ah, 02h 
	mov dl, '-' 
	int 21h 

	mov ah, 02h 
	mov dl, '-' 
	int 21h 

	mov ah, 02h 
	mov dl, '-' 
	int 21h 

	mov ah, 02h 
	mov dl, '-' 
	int 21h 

	mov ah, 02h 
	mov dl, '-' 
	int 21h 

	mov ah, 02h 
	mov dl, '-' 
	int 21h 

	mov ah, 02h 
	mov dl, '-' 
	int 21h 

	mov ah, 02h 
	mov dl, '-' 
	int 21h 

	mov ah, 02h 
	mov dl, '-' 
	int 21h 

	mov ah, 02h 
	mov dl, '-' 
	int 21h 

	mov ah, 02h 
	mov dl, '-' 
	int 21h 

	mov ah, 02h 
	mov dl, '-' 
	int 21h 

	mov ah, 02h 
	mov dl, '-' 
	int 21h 

	mov ah, 02h 
	mov dl, '-' 
	int 21h 

	mov ah, 02h 
	mov dl, '-' 
	int 21h 

	mov ah, 02h 
	mov dl, '-'  
	int 21h 

	mov ah, 02h 
	mov dl, '-' 
	int 21h 

	mov ah, 02h 
	mov dl, '-' 
	int 21h 

	mov ah, 02h 
	mov dl, '-' 
	int 21h 

	mov ah, 02h 
	mov dl, '-' 
	int 21h 

	mov ah, 02h 
	mov dl, '-'  
	int 21h 

	mov ah, 02h 
	mov dl, '-' 
	int 21h 

	mov ah, 02h 
	mov dl, '-' 
	int 21h 

	mov ah, 02h 
	mov dl, '-' 
	int 21h 

	mov ah, 02h 
	mov dl, '-' 
	int 21h 

	mov ah, 02h 
	mov dl, '-' 
	int 21h 

	mov ah, 02h 
	mov dl, '-' 
	int 21h 

	mov ah, 02h 
	mov dl, '-' 
	int 21h 

	mov ah, 02h 
	mov dl, '-' 
	int 21h 

	mov ah, 02h 
	mov dl, '-' 
	int 21h 

	mov ah, 02h 
	mov dl, '-' 
	int 21h 

	mov ah, 02h 
	mov dl, '-' 
	int 21h 

	mov ah, 02h 
	mov dl, '-' 
	int 21h 

	mov ah, 02h 
	mov dl, '-' 
	int 21h 

	mov ah, 02h 
	mov dl, '-' 
	int 21h 

	mov ah, 02h 
	mov dl, '-' 
	int 21h 

	mov ah, 02h 
	mov dl, '-' 
	int 21h 

	mov ah, 02h 
	mov dl, '-' 
	int 21h 

	mov ah, 02h 
	mov dl, '-' 
	int 21h 

	mov ah, 02h 
	mov dl, '-' 
	int 21h 

	mov ah, 02h 
	mov dl, '-' 
	int 21h 

	mov ah, 02h 
	mov dl, '-' 
	int 21h 

	mov ah, 02h 
	mov dl, '-' 
	int 21h 

	mov ah, 02h 
	mov dl, '-' 
	int 21h 

	mov ah, 02h 
	mov dl, '-' 
	int 21h 

	mov ah, 02h 
	mov dl, 0Ah 
	int 21h 
	
; FIFTH ROW

	mov ah, 02h 
	mov dl, ' ' 
	int 21h 

	mov ah, 02h 
	mov dl, '|' 
	int 21h 

	mov ah, 02h 
	mov dl, ' ' 
	int 21h 

	mov ah, 02h 
	mov dl, '5' 
	int 21h 

	mov ah, 02h 
	mov dl, ' ' 
	int 21h 

	mov ah, 02h 
	mov dl, '|' 
	int 21h 

	mov ah, 02h 
	mov dl, ' ' 
	int 21h 

	mov ah, 02h 
	mov dl, '5' 
	int 21h 

	mov ah, 02h 
	mov dl, ' ' 
	int 21h 

	mov ah, 02h 
	mov dl, '|' 
	int 21h 

	mov ah, 02h 
	mov dl, ' ' 
	int 21h 

	mov ah, 02h 
	mov dl, '1' 
	int 21h 

	mov ah, 02h 
	mov dl, '0' 
	int 21h 

	mov ah, 02h 
	mov dl, ' ' 
	int 21h 

	mov ah, 02h 
	mov dl, '|' 
	int 21h 

	mov ah, 02h 
	mov dl, ' ' 
	int 21h 

	mov ah, 02h 
	mov dl, '1' 
	int 21h 

	mov ah, 02h 
	mov dl, '5' 
	int 21h 

	mov ah, 02h 
	mov dl, ' ' 
	int 21h 

	mov ah, 02h 
	mov dl, '|' 
	int 21h 

	mov ah, 02h 
	mov dl, ' ' 
	int 21h 

	mov ah, 02h 
	mov dl, '2' 
	int 21h 

	mov ah, 02h 
	mov dl, '0' 
	int 21h 

	mov ah, 02h 
	mov dl, ' ' 
	int 21h 

	mov ah, 02h 
	mov dl, '|' 
	int 21h 

	mov ah, 02h 
	mov dl, ' ' 
	int 21h 

	mov ah, 02h 
	mov dl, '2' 
	int 21h 

	mov ah, 02h 
	mov dl, '5' 
	int 21h 

	mov ah, 02h 
	mov dl, ' ' 
	int 21h 

	mov ah, 02h 
	mov dl, '|' 
	int 21h 

	mov ah, 02h 
	mov dl, ' ' 
	int 21h 

	mov ah, 02h 
	mov dl, '3' 
	int 21h 

	mov ah, 02h 
	mov dl, '0' 
	int 21h 

	mov ah, 02h 
	mov dl, ' ' 
	int 21h 

	mov ah, 02h 
	mov dl, '|' 
	int 21h 

	mov ah, 02h 
	mov dl, ' ' 
	int 21h 

	mov ah, 02h 
	mov dl, '3' 
	int 21h 

	mov ah, 02h 
	mov dl, '5' 
	int 21h 

	mov ah, 02h 
	mov dl, ' ' 
	int 21h 

	mov ah, 02h 
	mov dl, '|' 
	int 21h 

	mov ah, 02h 
	mov dl, ' ' 
	int 21h 

	mov ah, 02h 
	mov dl, '4' 
	int 21h 

	mov ah, 02h 
	mov dl, '0' 
	int 21h 

	mov ah, 02h 
	mov dl, ' ' 
	int 21h 

	mov ah, 02h 
	mov dl, '|' 
	int 21h 

	mov ah, 02h 
	mov dl, ' ' 
	int 21h 

	mov ah, 02h 
	mov dl, '4' 
	int 21h 

	mov ah, 02h 
	mov dl, '5' 
	int 21h 

	mov ah, 02h 
	mov dl, ' ' 
	int 21h 

	mov ah, 02h 
	mov dl, '|' 
	int 21h 

	mov ah, 02h 
	mov dl, ' ' 
	int 21h 

	mov ah, 02h 
	mov dl, '5' 
	int 21h 

	mov ah, 02h 
	mov dl, '0' 
	int 21h 

	mov ah, 02h 
	mov dl, ' ' 
	int 21h 

	mov ah, 02h 
	mov dl, '|' 
	int 21h 

	mov ah, 02h 
	mov dl, 0Ah
	int 21h 

	; BORDER TOP

	mov ah, 02h 
	mov dl, ' ' 
	int 21h 

	mov ah, 02h 
	mov dl, '-' 
	int 21h 

	mov ah, 02h 
	mov dl, '-' 
	int 21h 

	mov ah, 02h 
	mov dl, '-' 
	int 21h 

	mov ah, 02h 
	mov dl, '-' 
	int 21h 

	mov ah, 02h 
	mov dl, '-' 
	int 21h 

	mov ah, 02h 
	mov dl, '-' 
	int 21h 

	mov ah, 02h 
	mov dl, '-' 
	int 21h 

	mov ah, 02h 
	mov dl, '-' 
	int 21h 

	mov ah, 02h 
	mov dl, '-' 
	int 21h 

	mov ah, 02h 
	mov dl, '-' 
	int 21h 

	mov ah, 02h 
	mov dl, '-' 
	int 21h 

	mov ah, 02h 
	mov dl, '-' 
	int 21h 

	mov ah, 02h 
	mov dl, '-' 
	int 21h 

	mov ah, 02h 
	mov dl, '-' 
	int 21h 

	mov ah, 02h 
	mov dl, '-' 
	int 21h 

	mov ah, 02h 
	mov dl, '-' 
	int 21h 

	mov ah, 02h 
	mov dl, '-'  
	int 21h 

	mov ah, 02h 
	mov dl, '-' 
	int 21h 

	mov ah, 02h 
	mov dl, '-' 
	int 21h 

	mov ah, 02h 
	mov dl, '-' 
	int 21h 

	mov ah, 02h 
	mov dl, '-' 
	int 21h 

	mov ah, 02h 
	mov dl, '-'  
	int 21h 

	mov ah, 02h 
	mov dl, '-' 
	int 21h 

	mov ah, 02h 
	mov dl, '-' 
	int 21h 

	mov ah, 02h 
	mov dl, '-' 
	int 21h 

	mov ah, 02h 
	mov dl, '-' 
	int 21h 

	mov ah, 02h 
	mov dl, '-' 
	int 21h 

	mov ah, 02h 
	mov dl, '-' 
	int 21h 

	mov ah, 02h 
	mov dl, '-' 
	int 21h 

	mov ah, 02h 
	mov dl, '-' 
	int 21h 

	mov ah, 02h 
	mov dl, '-' 
	int 21h 

	mov ah, 02h 
	mov dl, '-' 
	int 21h 

	mov ah, 02h 
	mov dl, '-' 
	int 21h 

	mov ah, 02h 
	mov dl, '-' 
	int 21h 

	mov ah, 02h 
	mov dl, '-' 
	int 21h 

	mov ah, 02h 
	mov dl, '-' 
	int 21h 

	mov ah, 02h 
	mov dl, '-' 
	int 21h 

	mov ah, 02h 
	mov dl, '-' 
	int 21h 

	mov ah, 02h 
	mov dl, '-' 
	int 21h 

	mov ah, 02h 
	mov dl, '-' 
	int 21h 

	mov ah, 02h 
	mov dl, '-' 
	int 21h 

	mov ah, 02h 
	mov dl, '-' 
	int 21h 

	mov ah, 02h 
	mov dl, '-' 
	int 21h 

	mov ah, 02h 
	mov dl, '-' 
	int 21h 

	mov ah, 02h 
	mov dl, '-' 
	int 21h 

	mov ah, 02h 
	mov dl, '-' 
	int 21h 

	mov ah, 02h 
	mov dl, 0Ah 
	int 21h 
	
; SEVENTH ROW

	mov ah, 02h 
	mov dl, ' ' 
	int 21h 

	mov ah, 02h 
	mov dl, '|' 
	int 21h 

	mov ah, 02h 
	mov dl, ' ' 
	int 21h 

	mov ah, 02h 
	mov dl, '6' 
	int 21h 

	mov ah, 02h 
	mov dl, ' ' 
	int 21h 

	mov ah, 02h 
	mov dl, '|' 
	int 21h 

	mov ah, 02h 
	mov dl, ' ' 
	int 21h 

	mov ah, 02h 
	mov dl, '6' 
	int 21h 

	mov ah, 02h 
	mov dl, ' ' 
	int 21h 

	mov ah, 02h 
	mov dl, '|' 
	int 21h 

	mov ah, 02h 
	mov dl, ' ' 
	int 21h 

	mov ah, 02h 
	mov dl, '1' 
	int 21h 

	mov ah, 02h 
	mov dl, '2' 
	int 21h 

	mov ah, 02h 
	mov dl, ' ' 
	int 21h 

	mov ah, 02h 
	mov dl, '|' 
	int 21h 

	mov ah, 02h 
	mov dl, ' ' 
	int 21h 

	mov ah, 02h 
	mov dl, '1' 
	int 21h 

	mov ah, 02h 
	mov dl, '8' 
	int 21h 

	mov ah, 02h 
	mov dl, ' ' 
	int 21h 

	mov ah, 02h 
	mov dl, '|' 
	int 21h 

	mov ah, 02h 
	mov dl, ' ' 
	int 21h 

	mov ah, 02h 
	mov dl, '2' 
	int 21h 

	mov ah, 02h 
	mov dl, '4' 
	int 21h 

	mov ah, 02h 
	mov dl, ' ' 
	int 21h 

	mov ah, 02h 
	mov dl, '|' 
	int 21h 

	mov ah, 02h 
	mov dl, ' ' 
	int 21h 

	mov ah, 02h 
	mov dl, '3' 
	int 21h 

	mov ah, 02h 
	mov dl, '0' 
	int 21h 

	mov ah, 02h 
	mov dl, ' ' 
	int 21h 

	mov ah, 02h 
	mov dl, '|' 
	int 21h 

	mov ah, 02h 
	mov dl, ' ' 
	int 21h 

	mov ah, 02h 
	mov dl, '3' 
	int 21h 

	mov ah, 02h 
	mov dl, '6' 
	int 21h 

	mov ah, 02h 
	mov dl, ' ' 
	int 21h 

	mov ah, 02h 
	mov dl, '|' 
	int 21h 

	mov ah, 02h 
	mov dl, ' ' 
	int 21h 

	mov ah, 02h 
	mov dl, '4' 
	int 21h 

	mov ah, 02h 
	mov dl, '2' 
	int 21h 

	mov ah, 02h 
	mov dl, ' ' 
	int 21h 

	mov ah, 02h 
	mov dl, '|' 
	int 21h 

	mov ah, 02h 
	mov dl, ' ' 
	int 21h 

	mov ah, 02h 
	mov dl, '4' 
	int 21h 

	mov ah, 02h 
	mov dl, '8' 
	int 21h 

	mov ah, 02h 
	mov dl, ' ' 
	int 21h 

	mov ah, 02h 
	mov dl, '|' 
	int 21h 

	mov ah, 02h 
	mov dl, ' ' 
	int 21h 

	mov ah, 02h 
	mov dl, '5' 
	int 21h 

	mov ah, 02h 
	mov dl, '4' 
	int 21h 

	mov ah, 02h 
	mov dl, ' ' 
	int 21h 

	mov ah, 02h 
	mov dl, '|' 
	int 21h 

	mov ah, 02h 
	mov dl, ' ' 
	int 21h 

	mov ah, 02h 
	mov dl, '6' 
	int 21h 

	mov ah, 02h 
	mov dl, '0' 
	int 21h 

	mov ah, 02h 
	mov dl, ' ' 
	int 21h 

	mov ah, 02h 
	mov dl, '|' 
	int 21h 

	mov ah, 02h 
	mov dl, 0Ah
	int 21h 


int 27h ; terminate
end start ; end program
