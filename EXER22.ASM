; Filename: EXER22.ASM
; Programmer Name: JOHN KYLE VILLARAZO
; Date: 9/20/2024

.model small
.stack 200h
.data
    studId db 1000 dup ('$')
    firstName db 1000 dup ('$')
    middleName db 1000 dup ('$')
    lastName db 1000 dup ('$')
    addressInput db 1000 dup ('$')
    courseInput db 1000 dup ('$')
    yearInput db 8 dup ('$')
    birthMonthInput db 1000 dup ('$')
    birthDayInput db 1000 dup ('$')
    birthYearInput db 1000 dup ('$')
    emailInput db 1000 dup ('$')
    form db 0dh, 0ah, 'Cebu Institute of Technology - University', 0dh, 0ah, 'STUDENT ENROLLMENT FORM', 0dh, 0ah, '$'
    info db 0dh, 0ah, 'Please enter the following information:$'
    id db 0dh, 0ah, 'Student ID Number: $'
    firstNameMsg db 0dh, 0ah, 'First Name: $'
    middleNameMsg db 0dh, 0ah, 'Middle Name: $'
    lastNameMsg db 0dh, 0ah, 'Last Name: $'
    address db 0dh, 0ah, 'Address: $'
    course db 0dh, 0ah, 'Course: $'
    year db 0dh, 0ah, 'Year: $'
    birthMonth db 0dh, 0ah, 'Birth Month: $'
    birthDay db 0dh, 0ah, 'Birth Day: $'
    birthYear db 0dh, 0ah, 'Birth Year: $'
    email db 0dh, 0ah, 'Email Address: $'
    summary db 0dh, 0ah, 0dh, 0ah,'SUMMARY', 0dh, 0ah, 'Please check if all information are correct.$'
    idPrompt db 0dh, 0ah, 'ID Number: $'
    fullNamePrompt db 0dh, 0ah, 'Full Name: $'
    addressPrompt db 0dh, 0ah, 'Address: $'
    coursePrompt db 0dh, 0ah, 'Course & Year: $'
    birthdayPrompt db 0dh, 0ah, 'Birthday: $'
    emailPrompt db 0dh, 0ah, 'Email Address: $'
    thankYou db 0dh, 0ah, 0dh, 0ah, 'Thank you for enrolling at CIT-U.', 0dh, 0ah, 'Copyright 2024', 0dh, 0ah, 'Programmer: JOHN KYLE VILLARAZO$'
.code
ProgramStart:
    mov ax, @data
    mov ds, ax

    mov dx, offset form
    mov ah, 9
    int 21h

    mov dx, offset info
    mov ah, 9
    int 21h

    mov dx, offset id
    mov ah, 9
    int 21h

    lea dx, studId
    mov ah, 0Ah
    int 21h

    mov dx, offset firstNameMsg
    mov ah, 9
    int 21h

    lea dx, firstName
    mov ah, 0Ah
    int 21h

    mov dx, offset middleNameMsg
    mov ah, 9
    int 21h

    lea dx, middleName
    mov ah, 0Ah
    int 21h

    mov dx, offset lastNameMsg
    mov ah, 9
    int 21h

    lea dx, lastName
    mov ah, 0Ah
    int 21h

    mov byte ptr addressInput, 100 
    mov dx, offset address
    mov ah, 9
    int 21h

    lea dx, addressInput
    mov ah, 0Ah
    int 21h

    mov dx, offset course
    mov ah, 9
    int 21h

    lea dx, courseInput
    mov ah, 0Ah
    int 21h

    mov dx, offset year
    mov ah, 9
    int 21h

    lea dx, yearInput
    mov ah, 0Ah
    int 21h

    mov dx, offset birthMonth
    mov ah, 9
    int 21h

    lea dx, birthMonthInput
    mov ah, 0Ah
    int 21h

    mov dx, offset birthDay
    mov ah, 9
    int 21h

    lea dx, birthDayInput
    mov ah, 0Ah
    int 21h

    mov dx, offset birthYear
    mov ah, 9
    int 21h

    lea dx, birthYearInput
    mov ah, 0Ah
    int 21h

    mov dx, offset email
    mov ah, 9
    int 21h

    lea dx, emailInput
    mov ah, 0Ah
    int 21h

    mov dx, offset summary
    mov ah, 9
    int 21h

    lea dx, idPrompt
    mov ah, 09h              
    int 21h

    lea dx, studId + 2  
    mov ah, 09h              
    int 21h

    lea dx, fullNamePrompt
    mov ah, 09h              
    int 21h

    lea si, lastName + 2           
    mov cl, [lastName+1]
    
DisplayLastName:
    mov dl, [si]                    
    mov ah, 02h                     
    int 21h
    inc si                         
    loop DisplayLastName          
 
    mov dl, ','
    mov ah, 02h
    int 21h

    mov dl, ' '
    mov ah, 02h
    int 21h
 
    lea si, firstName + 2           
    mov cl, [firstName+1]   
            
DisplayFirstName:
    mov dl, [si]                    
    mov ah, 02h                     
    int 21h
    inc si                         
    loop DisplayFirstName          
 
    mov dl, ' '
    mov ah, 02h
    int 21h

    lea si, middleName + 2           
    mov cl, [middleName+1]    
          
DisplayMiddleName:
    mov dl, [si]                    
    mov ah, 02h                     
    int 21h
    inc si                         
    loop DisplayMiddleName       

    lea dx, addressPrompt
    mov ah, 09h              
    int 21h

    lea dx, addressInput + 2  
    mov ah, 09h              
    int 21h

    lea dx, coursePrompt
    mov ah, 09h              
    int 21h

    lea si, courseInput + 2           
    mov cl, [courseInput+1]
    
DisplayYearCourse:
    mov dl, [si]                    
    mov ah, 02h                     
    int 21h
    inc si                         
    loop DisplayYearCourse          
 
    mov dl, ' '
    mov ah, 02h
    int 21h
 
    lea si, yearInput + 2           
    mov cl, [yearInput+1]   
            
DisplayYearInput:
    mov dl, [si]                    
    mov ah, 02h                     
    int 21h
    inc si                         
    loop DisplayYearInput          
 
    lea dx, birthdayPrompt
    mov ah, 09h              
    int 21h

    lea si, birthMonthInput + 2           
    mov cl, [birthMonthInput+1] 

DisplayMonth:
    mov dl, [si]                    
    mov ah, 02h                     
    int 21h
    inc si                         
    loop DisplayMonth 

    mov dl, ' '
    mov ah, 02h
    int 21h
 
    lea si, birthDayInput + 2           
    mov cl, [birthDayInput+1]   

DisplayDay:
    mov dl, [si]                    
    mov ah, 02h                     
    int 21h
    inc si                         
    loop DisplayDay 

    mov dl, ','
    mov ah, 02h
    int 21h

    mov dl, ' '
    mov ah, 02h
    int 21h
 
    lea si, birthYearInput + 2           
    mov cl, [birthYearInput+1]   

DisplayYear:
    mov dl, [si]                    
    mov ah, 02h                     
    int 21h
    inc si                         
    loop DisplayYear 

    lea dx, emailPrompt
    mov ah, 09h              
    int 21h

    lea dx, emailInput + 2
    mov ah, 09h              
    int 21h

    lea dx, thankYou
    mov ah, 09h              
    int 21h

    
    mov ah, 4ch         ; DOS terminate program function
    int 21h

end ProgramStart