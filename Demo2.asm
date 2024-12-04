.model small
.stack 100h
.data
    ; Define the strings to be printed with a terminating dollar sign
    form db 0Dh, 0Ah, '                      COLLEGE ENROLLMENT FORM$', 0
    formMessage db 0Dh, 0Ah, '                  Complete the registration form$', 0
    fullName db 0Dh, 0Ah, '     Full Name$', 0
    border db'                  __________________     __________________ $', 0
    box db '   |__________________|$', 0
    skipBorder db'                  __________________     __________________ $', 0
    skipBox db '                 |__________________|$', 0
    birthBorder db'                  ________         ________         ________$', 0
    birthBox db '  |________|$', 0
    birthBox2 db '       |________|$', 0
    longBorder db'                  _________________________________________ $', 0
    longBox db '     |_________________________________________|$', 0
    firstName db '                  First name$', 0
    lastName db '             Last name$', 0
    address db 0Dh, 0Ah, '     Address$', 0
    streetAdd db 0Dh, 0Ah, '                  Street address$', 0
    birth db 0Dh, 0Ah, '     Birth Date$', 0
    month db '                  Month$', 0
    day db '            Day$', 0
    Year db '              Year$', 0
    studBorder db'                      ______________________________________ $', 0
    studNum db 0Dh, 0Ah, '     Student Number  |______________________________________|$', 0
    phoneStud db 0Dh, 0Ah, '                      Phone number$', 0
    studEmail db 0Dh, 0Ah, '     Student Email   |______________________________________|$', 0
    emailStud db 0Dh, 0Ah, '                      firstname.lastname@cit.edu$', 0


.code
main:
    ; Initialize data segment
    mov ax, @data
    mov ds, ax
    
    ; Print the form string
    mov ah, 09h        
    lea dx, form       
    int 21h             

    ; Print the formMessage string
    mov ah, 09h        
    lea dx, formMessage 
    int 21h   

    mov ah, 02h 
	mov dl, 0Ah
	int 21h      

    mov ah, 02h 
	mov dl, 0Ah
	int 21h 

    mov ah, 09h        
    lea dx, border
    int 21h     

    ; Print the fullName string
    mov ah, 09h        
    lea dx, fullName
    int 21h   

    ; Display input box
    mov ah, 09h        
    lea dx, box
    int 21h       

    mov ah, 09h        
    lea dx, box
    int 21h     

    mov ah, 02h 
	mov dl, 0Ah
	int 21h 

    mov ah, 09h        
    lea dx, firstName
    int 21h  

    mov ah, 09h        
    lea dx, lastName
    int 21h  

    mov ah, 02h 
	mov dl, 0Ah
	int 21h 

    mov ah, 09h        
    lea dx, longBorder
    int 21h 

    mov ah, 09h        
    lea dx, address
    int 21h 

    mov ah, 09h        
    lea dx, longBox
    int 21h 

    mov ah, 09h        
    lea dx, streetAdd
    int 21h 

    mov ah, 02h 
	mov dl, 0Ah
	int 21h 

    mov ah, 09h        
    lea dx, skipBorder
    int 21h       

    mov ah, 02h 
	mov dl, 0Ah
	int 21h 

    mov ah, 09h        
    lea dx, skipBox
    int 21h     

    mov ah, 09h        
    lea dx, box
    int 21h   

    mov ah, 02h 
	mov dl, 0Ah
	int 21h 

    mov ah, 09h        
    lea dx, firstName
    int 21h  

    mov ah, 09h        
    lea dx, lastName
    int 21h  

    mov ah, 02h 
	mov dl, 0Ah
	int 21h 

    mov ah, 09h        
    lea dx, birthBorder
    int 21h       

    mov ah, 09h        
    lea dx, birth
    int 21h  

    mov ah, 09h        
    lea dx, birthBox
    int 21h     

    mov ah, 09h        
    lea dx, birthBox2
    int 21h   

    mov ah, 09h        
    lea dx, birthBox2
    int 21h 

    mov ah, 02h 
	mov dl, 0Ah
	int 21h 

    mov ah, 09h        
    lea dx, month
    int 21h 

    mov ah, 09h        
    lea dx, day
    int 21h 

    mov ah, 09h        
    lea dx, year
    int 21h 

    mov ah, 02h 
	mov dl, 0Ah
	int 21h 

    mov ah, 09h        
    lea dx, studBorder
    int 21h 

    mov ah, 09h        
    lea dx, studNum
    int 21h 

    mov ah, 09h        
    lea dx, phoneStud
    int 21h 

    mov ah, 02h 
	mov dl, 0Ah
	int 21h 

    mov ah, 09h        
    lea dx, studBorder
    int 21h 

    mov ah, 09h        
    lea dx, studEmail
    int 21h 

    mov ah, 09h        
    lea dx, emailStud
    int 21h 

    mov ah, 02h 
	mov dl, 0Ah
	int 21h 



    mov ah, 02h 
	mov dl, 0Ah
	int 21h 

    mov ah, 02h 
	mov dl, 0Ah
	int 21h 

    mov ah, 02h 
	mov dl, 0Ah
	int 21h 

    ; Terminate the program
    mov ah, 4Ch      
    int 21h            

end main
