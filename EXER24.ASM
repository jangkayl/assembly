; Filename: EXER24.ASM
; Programmer Name: JOHN KYLE VILLARAZO
; Date: 9/20/2024

.model small
.stack 200h
.data
    personnelInput db 1000 dup ('$')
    nameInput db 1000 dup ('$')
    mobileInput db 1000 dup ('$')
    brandInput db 1000 dup ('$')
    colorInput db 1000 dup ('$')
    stickerInput db 1000 dup ('$')
    idInput db 1000 dup ('$')
    addressInput db 1000 dup ('$')
    plateInput db 1000 dup ('$')
    typeInput db 1000 dup ('$')
    cit db 0dh, 0ah, 'Cebu Institute of Technology - University', 0dh, 0ah, 'VEHICLE STICKER APPLICATION FORM', 0dh, 0ah, 'Please enter the needed information:', 0dh, 0ah, '$'
    personelPrompt db 0dh, 0ah, 'Personnel Type: $'
    namePrompt db 0dh, 0ah, 'Name of Applicant/Driver: $'
    mobilePrompt db 0dh, 0ah, 'Mobile Number: $'
    brandPrompt db 0dh, 0ah, 'Vehicle Make(s)/Brand: $'
    colorPrompt db 0dh, 0ah, 'Vehicle Color: $'
    stickerPrompt db 0dh, 0ah, 'Vehicle Sticker Type: $'
    idPrompt db 0dh, 0ah, 'ID Number: $'
    addressPrompt db 0dh, 0ah, 'Address: $'
    platePrompt db 0dh, 0ah, 'Plate Number: $'
    typePrompt db 0dh, 0ah, 'Vehicle Type: $'
    summary db 'SUMMARY$'
    text    db  0Ah, 0Dh, '                   Cebu Institute of Technology - University               ', 0Ah, 0Dh
            db  '                       VEHICLE STICKER APPPLICATION FORM', 0Ah, 0Dh
            db  '                           Please fill out form below.', 0Ah, 0Dh, 0Ah, 0dh 
            db  '   Personnel Type:                      V  Vehicle Sticker Type:           V ', 0Ah, 0Dh, 0Ah, 0Dh
            db  '   Name of Applicant/Driver:               ID Number:                        ', 0Ah, 0Dh, 0Ah, 0Dh
            db  '   Mobile Number:                          Address:                          ', 0Ah, 0Dh, 0Ah, 0Dh
            db  '   Vehicle Make(s)/Brand:                  Plate Number:                     ', 0Ah, 0Dh, 0Ah, 0Dh
            db  '   Vehicle Color:                       V  Vehicle Type:                   V ', 0Ah, 0Dh, 0Ah, 0Dh
            db  '                                    SUBMIT', 0Ah, 0Dh, 0Ah, 0Dh
            db  '                      Copyright 2024 JOHN KYLE VILLARAZO', 0Ah, 0Dh, 0Ah, 0Dh, 0Ah, 0Dh
            db  '                                  Thank you!', 0Ah, 0Dh, '$' 
.code
ProgramStart:
    mov ax, @data
    mov ds, ax

    mov dx, offset cit
    mov ah, 9
    int 21h

    mov dx, offset personelPrompt
    mov ah, 9
    int 21h

    lea dx, personnelInput
    mov ah, 0Ah
    int 21h

    mov dx, offset namePrompt
    mov ah, 9
    int 21h

    lea dx, nameInput
    mov ah, 0Ah
    int 21h

    mov dx, offset mobilePrompt
    mov ah, 9
    int 21h

    lea dx, mobileInput
    mov ah, 0Ah
    int 21h

    mov dx, offset brandPrompt
    mov ah, 9
    int 21h

    lea dx, brandInput
    mov ah, 0Ah
    int 21h

    mov dx, offset colorPrompt
    mov ah, 9
    int 21h

    lea dx, colorInput
    mov ah, 0Ah
    int 21h

    mov dx, offset stickerPrompt
    mov ah, 9
    int 21h

    lea dx, stickerInput
    mov ah, 0Ah
    int 21h

    mov dx, offset idPrompt
    mov ah, 9
    int 21h

    lea dx, idInput
    mov ah, 0Ah
    int 21h

    mov dx, offset addressPrompt
    mov ah, 9
    int 21h

    lea dx, addressInput
    mov ah, 0Ah
    int 21h

    mov dx, offset platePrompt
    mov ah, 9
    int 21h

    lea dx, plateInput
    mov ah, 0Ah
    int 21h

    mov dx, offset typePrompt
    mov ah, 9
    int 21h

    lea dx, typeInput
    mov ah, 0Ah
    int 21h

    mov ax, 3
    int 10h

    ; Gray background
    mov ah, 06h
    xor al, al
    xor cx, cx
    mov ch, 1
    mov cl, 2
    mov dh, 18
    mov dl, 77
    mov bh, 070h
    int 10h

    ; Header red
    mov ah, 06h
    mov cl, 3
    mov ch, 1
    mov dh, 3
    mov dl, 76
    mov bh, 4Fh
    int 10h

    ; Yellow text
    mov ah, 06h
    mov ch, 3
    mov cl, 3
    mov dh, 3
    mov dl, 76
    mov bh, 0CEh
    int 10h

    mov ah, 06h
    mov ch, 20
    mov cl, 20
    mov dh, 20
    mov dl, 76
    mov bh, 8Eh
    int 10h

    ; Skyblue background in left
    mov ah, 06h
    mov ch, 5
    mov dh, 5
    mov cl, 29
    mov dl, 38
    mov bh, 30h
    int 10h

    mov ah, 06h
    mov ch, 7
    mov dh, 7
    mov cl, 29
    mov dl, 41
    mov bh, 30h
    int 10h

    mov ah, 06h
    mov ch, 9
    mov dh, 9
    mov cl, 29
    mov dl, 41
    mov bh, 30h
    int 10h

    mov ah, 06h
    mov ch, 11
    mov dh, 11
    mov cl, 29
    mov dl, 41
    mov bh, 30h
    int 10h

    mov ah, 06h
    mov ch, 13
    mov dh, 13
    mov cl, 29
    mov dl, 38
    mov bh, 30h
    int 10h

    ; Skyblue background in right
    mov ah, 06h
    mov ch, 5
    mov dh, 5
    mov cl, 65
    mov dl, 74
    mov bh, 30h
    int 10h

    mov ah, 06h
    mov ch, 7
    mov dh, 7
    mov cl, 65
    mov dl, 76
    mov bh, 30h
    int 10h

    mov ah, 06h
    mov ch, 9
    mov dh, 9
    mov cl, 65
    mov dl, 76
    mov bh, 30h
    int 10h

    mov ah, 06h
    mov ch, 11
    mov dh, 11
    mov cl, 65
    mov dl, 76
    mov bh, 30h
    int 10h

    mov ah, 06h
    mov ch, 13
    mov dh, 13
    mov cl, 65
    mov dl, 74
    mov bh, 30h
    int 10h

    ; Red background V
    mov ah, 06h
    mov ch, 5
    mov dh, 5
    mov cl, 39
    mov dl, 41
    mov bh, 4Fh
    int 10h

    mov ah, 06h
    mov ch, 13
    mov dh, 13
    mov cl, 39
    mov dl, 41
    mov bh, 4Fh
    int 10h

    mov ah, 06h
    mov ch, 5
    mov dh, 5
    mov cl, 74
    mov dl, 76
    mov bh, 4Fh
    int 10h

    mov ah, 06h
    mov ch, 13
    mov dh, 13
    mov cl, 74
    mov dl, 76
    mov bh, 4Fh
    int 10h

    ; Submit color
    mov ah, 06h
    mov ch, 15
    mov dh, 15
    mov cl, 35
    mov dl, 42
    mov bh, 4Eh
    int 10h

    mov ah, 09h
    lea dx, text
    int 21h

    ; Left outputs
    mov ah, 02h       
    mov bh, 0          
    mov dh, 0          
    mov dl, 0         
    int 10h            

    mov ah, 09h        
    lea dx, summary      
    int 21h  

    mov ah, 02h       
    mov bh, 0          
    mov dh, 5          
    mov dl, 29         
    int 10h            

    mov ah, 09h        
    lea dx, personnelInput + 2      
    int 21h         

    mov ah, 02h       
    mov bh, 0          
    mov dh, 7          
    mov dl, 29         
    int 10h            

    mov ah, 09h        
    lea dx, nameInput + 2      
    int 21h     

    mov ah, 02h       
    mov bh, 0          
    mov dh, 9          
    mov dl, 29         
    int 10h            

    mov ah, 09h        
    lea dx, mobileInput + 2      
    int 21h     

    mov ah, 02h       
    mov bh, 0          
    mov dh, 11          
    mov dl, 29         
    int 10h            

    mov ah, 09h        
    lea dx, brandInput + 2      
    int 21h  

    mov ah, 02h       
    mov bh, 0          
    mov dh, 13          
    mov dl, 29         
    int 10h            

    mov ah, 09h        
    lea dx, colorInput + 2      
    int 21h  

    ; Right outputs
    mov ah, 02h       
    mov bh, 0          
    mov dh, 5     
    mov dl, 65         
    int 10h            

    mov ah, 09h        
    lea dx, stickerInput + 2      
    int 21h  

    mov ah, 02h       
    mov bh, 0          
    mov dh, 7     
    mov dl, 65         
    int 10h            

    mov ah, 09h        
    lea dx, idInput + 2      
    int 21h  

    mov ah, 02h       
    mov bh, 0          
    mov dh, 9     
    mov dl, 65         
    int 10h            

    mov ah, 09h        
    lea dx, addressInput + 2      
    int 21h  

    mov ah, 02h       
    mov bh, 0          
    mov dh, 11     
    mov dl, 65         
    int 10h            

    mov ah, 09h        
    lea dx, plateInput + 2      
    int 21h  

    mov ah, 02h       
    mov bh, 0          
    mov dh, 13     
    mov dl, 65         
    int 10h            

    mov ah, 09h        
    lea dx, typeInput + 2      
    int 21h  

    mov ah, 02h       
    mov bh, 0        
    mov dh, 22          
    mov dl, 0         
    int 10h            

    mov ah, 4ch         
    int 21h

end ProgramStart