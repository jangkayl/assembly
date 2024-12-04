; Filename: PRELIM.ASM
; CS243 Lab Prelim Exam First Semester SY 2024-2025
; Student Name: Villarazo, John Kyle A.
; Date Finished: 09/13/2024

.model small
.stack 100h
.data
    space db    '   $', 0
    school db   '                Cebu Institute of Technology - University     $', 0  
    vehicle db  '                     VEHICLE STICKER APPPLICATION FORM', 0Ah, 0Dh, '$' 
    fill db     '                        Please fill out form below.', 0Ah, 0Dh, '$' 
    personel db '   Personnel Type:            $', 0
    stickerType db '  Vehicle Sticker Type: $', 0
    driver db   '   Name of Applicant/Driver:  $', 0
    id db       '    ID Number:            $', 0
    mobile db   '   Mobile Number:             $', 0
    address db       '    Address:              $', 0
    makes db   '   Vehicle Make(s)/Brand:     $', 0
    plate db       '    Plate Number:         $', 0
    color db   '   Vehicle Color:             $', 0
    vehiType db       '  Vehicle Type:         $', 0
    spaceSubmit db   '                                    $', 0
    submit db   ' SUBMIT', 0Ah, 0Dh, '$' 
    copyright db '                      Copyright 2024 JOHN KYLE VILLARAZO', 0Ah, 0Dh, '$' 
    thankyou db  '                                  Thank you!', 0Ah, 0Dh, '$' 

    fillup db   '$', 0
    spacev db        '          $', 0
    v db        ' V$', 0
 
 
.code
start:

    mov ax, @data
    mov ds, ax
 
    ; Print two new lines
    mov ah, 02h
    mov dl, 0Dh           ; Carriage return character
    int 21h
    mov dl, 0Ah           ; Line feed character
    int 21h

    mov ah, 09h          
    mov al, ' '          
    mov bl, 7Fh           
    mov cx, 100           
    int 10h 

    mov ah, 09h           
    mov dx, offset space 
    int 21h 

    mov ah, 09h          
    mov al, ' '          
    mov bl, 4Fh           
    mov cx, 75          
    int 10h              

    mov ah, 09h           
    mov dx, offset school 
    int 21h     

    ; Print two new lines
    mov ah, 02h
    mov dl, 0Dh           ; Carriage return character
    int 21h
    mov dl, 0Ah           ; Line feed character
    int 21h

    mov ah, 09h           
    mov dx, offset space 
    int 21h 

    mov ah, 09h          
    mov al, ' '          
    mov bl, 4Fh           
    mov cx, 75            
    int 10h          

    mov ah, 09h           
    mov dx, offset vehicle 
    int 21h    

    mov ah, 09h          
    mov al, ' '          
    mov bl, 7Fh           
    mov cx, 5           
    int 10h 

    mov ah, 09h           
    mov dx, offset space 
    int 21h  
    
    mov ah, 09h
    mov al, ' '  
    mov bl, 0CEh  
    mov cx, 75
    int 10h

    mov ah, 09h           
    mov dx, offset fill 
    int 21h      
 
    mov ah, 09h          
    mov al, ' '          
    mov bl, 70h          
    mov cx, 80           
    int 10h              

    ; Print new lines for proper spacing
    mov ah, 02h
    mov dl, 0Dh           ; Carriage return character
    int 21h
    mov dl, 0Ah           ; Line feed character
    int 21h

    mov ah, 09h           
    mov dx, offset personel 
    int 21h 

    mov ah, 09h           
    mov dx, offset fillup 
    int 21h

    mov ah, 09h          
    mov al, ' '          
    mov bl, 47h          
    mov cx, 10       
    int 10h   

    mov ah, 09h          
    mov al, ' '          
    mov bl, 37h          
    mov cx, 10       
    int 10h  

    mov ah, 09h           
    mov dx, offset spacev 
    int 21h 

    mov ah, 09h          
    mov al, ' '          
    mov bl, 4Fh          
    mov cx, 3      
    int 10h  

    mov ah, 09h           
    mov dx, offset v 
    int 21h 

    mov ah, 09h           
    mov dx, offset stickerType 
    int 21h 

    mov ah, 09h           
    mov dx, offset fillup 
    int 21h

    mov ah, 09h          
    mov al, ' '          
    mov bl, 4Fh          
    mov cx, 10       
    int 10h   

    mov ah, 09h          
    mov al, ' '          
    mov bl, 37h          
    mov cx, 10       
    int 10h  

    mov ah, 09h           
    mov dx, offset spacev 
    int 21h 

    mov ah, 09h          
    mov al, ' '          
    mov bl, 4Fh          
    mov cx, 3      
    int 10h  

    mov ah, 09h           
    mov dx, offset v 
    int 21h 

    ; Print two new lines
    mov ah, 02h
    mov dl, 0Dh           ; Carriage return character
    int 21h
    mov dl, 0Ah           ; Line feed character
    int 21h

    ; Print two new lines
    mov ah, 02h
    mov dl, 0Dh           ; Carriage return character
    int 21h
    mov dl, 0Ah           ; Line feed character
    int 21h

    mov ah, 09h           
    mov dx, offset driver
    int 21h 

     mov ah, 09h           
    mov dx, offset fillup 
    int 21h

    mov ah, 09h          
    mov al, ' '          
    mov bl, 37h          
    mov cx, 13       
    int 10h  

    mov ah, 09h           
    mov dx, offset spacev 
    int 21h 

    mov ah, 09h           
    mov dx, offset id
    int 21h 

     mov ah, 09h           
    mov dx, offset fillup 
    int 21h

    mov ah, 09h          
    mov al, ' '          
    mov bl, 37h          
    mov cx, 13       
    int 10h  

    mov ah, 09h           
    mov dx, offset spacev 
    int 21h 

    ; Print two new lines
    mov ah, 02h
    mov dl, 0Dh           ; Carriage return character
    int 21h
    mov dl, 0Ah           ; Line feed character
    int 21h

    ; Print two new lines
    mov ah, 02h
    mov dl, 0Dh           ; Carriage return character
    int 21h
    mov dl, 0Ah           ; Line feed character
    int 21h

    mov ah, 09h           
    mov dx, offset mobile
    int 21h 

     mov ah, 09h           
    mov dx, offset fillup 
    int 21h

    mov ah, 09h          
    mov al, ' '          
    mov bl, 37h          
    mov cx, 13       
    int 10h  

    mov ah, 09h           
    mov dx, offset spacev 
    int 21h 

    mov ah, 09h           
    mov dx, offset address
    int 21h 

     mov ah, 09h           
    mov dx, offset fillup 
    int 21h

    mov ah, 09h          
    mov al, ' '          
    mov bl, 37h          
    mov cx, 13       
    int 10h  

    mov ah, 09h           
    mov dx, offset spacev 
    int 21h 

    ; Print two new lines
    mov ah, 02h
    mov dl, 0Dh           ; Carriage return character
    int 21h
    mov dl, 0Ah           ; Line feed character
    int 21h

    ; Print two new lines
    mov ah, 02h
    mov dl, 0Dh           ; Carriage return character
    int 21h
    mov dl, 0Ah           ; Line feed character
    int 21h

    mov ah, 09h           
    mov dx, offset makes
    int 21h 

     mov ah, 09h           
    mov dx, offset fillup 
    int 21h

    mov ah, 09h          
    mov al, ' '          
    mov bl, 37h          
    mov cx, 13       
    int 10h  

    mov ah, 09h           
    mov dx, offset spacev 
    int 21h 

    mov ah, 09h           
    mov dx, offset plate
    int 21h 

     mov ah, 09h           
    mov dx, offset fillup 
    int 21h

    mov ah, 09h          
    mov al, ' '          
    mov bl, 37h          
    mov cx, 13       
    int 10h  

    mov ah, 09h           
    mov dx, offset spacev 
    int 21h 

    ; Print two new lines
    mov ah, 02h
    mov dl, 0Dh           ; Carriage return character
    int 21h
    mov dl, 0Ah           ; Line feed character
    int 21h

    ; Print two new lines
    mov ah, 02h
    mov dl, 0Dh           ; Carriage return character
    int 21h
    mov dl, 0Ah           ; Line feed character
    int 21h

    mov ah, 09h           
    mov dx, offset color 
    int 21h 

    mov ah, 09h           
    mov dx, offset fillup 
    int 21h

    mov ah, 09h          
    mov al, ' '          
    mov bl, 47h          
    mov cx, 10       
    int 10h   

    mov ah, 09h          
    mov al, ' '          
    mov bl, 37h          
    mov cx, 10       
    int 10h  

    mov ah, 09h           
    mov dx, offset spacev 
    int 21h 

    mov ah, 09h          
    mov al, ' '          
    mov bl, 4Fh          
    mov cx, 3      
    int 10h  

    mov ah, 09h           
    mov dx, offset v 
    int 21h 

    mov ah, 09h           
    mov dx, offset vehiType 
    int 21h 

     mov ah, 09h           
    mov dx, offset fillup 
    int 21h

    mov ah, 09h          
    mov al, ' '          
    mov bl, 47h          
    mov cx, 10       
    int 10h   

    mov ah, 09h          
    mov al, ' '          
    mov bl, 37h          
    mov cx, 10       
    int 10h  

    mov ah, 09h           
    mov dx, offset spacev 
    int 21h 

    mov ah, 09h          
    mov al, ' '          
    mov bl, 4Fh          
    mov cx, 3      
    int 10h  

    mov ah, 09h           
    mov dx, offset v 
    int 21h 

    ; Print two new lines
    mov ah, 02h
    mov dl, 0Dh           ; Carriage return character
    int 21h
    mov dl, 0Ah           ; Line feed character
    int 21h

    ; Print two new lines
    mov ah, 02h
    mov dl, 0Dh           ; Carriage return character
    int 21h
    mov dl, 0Ah           ; Line feed character
    int 21h

    mov ah, 09h           
    mov dx, offset spaceSubmit 
    int 21h 

    mov ah, 09h          
    mov al, ' '          
    mov bl, 4Eh          
    mov cx, 8      
    int 10h  

    mov ah, 09h           
    mov dx, offset submit 
    int 21h 

    ; Print two new lines
    mov ah, 02h
    mov dl, 0Dh           ; Carriage return character
    int 21h
    mov dl, 0Ah           ; Line feed character
    int 21h

    mov ah, 09h           
    mov dx, offset copyright 
    int 21h 

     ; Print new lines for proper spacing
    mov ah, 02h
    mov dl, 0Dh           ; Carriage return character
    int 21h
    mov dl, 0Ah           ; Line feed character
    int 21h

    mov ah, 09h          
    mov al, ' '          
    mov bl, 0Eh          
    mov cx, 80      
    int 10h  
    
     ; Print new lines for proper spacing
    mov ah, 02h
    mov dl, 0Dh           ; Carriage return character
    int 21h
    mov dl, 0Ah           ; Line feed character
    int 21h

    mov ah, 09h
    mov bl, 8Eh  
    mov al, ' '
    mov cx, 80
    int 10h

    mov ah, 09h           
    mov dx, offset thankyou 
    int 21h 
   
 
    ; Exit program properly
    mov ax, 4C00h
    int 21h
    
end start