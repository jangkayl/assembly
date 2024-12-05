; Mirambel Homes Car Parking Slot Management System
; Programmer Name: JOHN WINSTON W.TABADA
; Date: November 22, 2024
; Description: Parking slot system that takes an input from a user to either
;              add someone to the slots or remove someone from the slot after parking
;              then it updates th eslot when an add or remove action is done
;              then displays the parked cars in the slot
 
 
.model small
.stack 500h
.data   
    SPLASH  db  '     __  __   _                              _              _',13,10, \
                '    |  \/  | (_)  _ __    __ _   _ __ ___   | |__     ___  | |',13,10, \
                '    | |\/| | | | | ''__|  / _` | | ''_ ` _ \  | ''_ \   / _ \ | |',13,10, \
                '    | |  | | | | | |    | (_| | | | | | | | | |_) | |  __/ | |',13,10, \
                '    |_|  |_| |_| |_|     \__,_| |_| |_| |_| |_.__/   \___| |_|',13,10, \
                '              _   _',13,10, \
                '             | | | |   ___    _ __ ___     ___   ___',13,10, \
                '             | |_| |  / _ \  | `_  `_ \   / _ \ / __|',13,10, \
                '             |  _  | | (_) | | | | | | | |  __/ \__ \',13,10, \
                '             |_| |_|  \___/  |_| |_| |_|  \___| |___/',13,10,10, \
                '               Car Parking Slot Management System',13,10,10, '$'

    CREDITS db  '           JOHN WINSTON W. TABADA    NOVEMBER 22,2024',13,10,10,10,10,10,10, \
                '                    Press any key to continue....$'

    COMMANDS db '                    Enter the number of the Command!',13,10,10, \
                '                         > 1 : Clock in',13,10, \
                '                         > 2 : Clock out',13,10, \
                '                         > 3 : Check Slots',13,10, \
                '                         > 4 : Register (For New Resident)',13,10, \
                '                         > 5 : Exit Program',13,10,10,10, \
                '>>> Enter Choice: ', '$'

    LOG_IN_MSG db '                         Log In Page',13,10,10, \
                  '> Enter Family Last Name : $'
    LOG_IN_PASSWORD db 13,10,'> Enter password : $'
    LOG_IN_SUCCESS db 13,10,10,'Clocked in successfully! Press any key to continue...', 13, 10, '$'

    LOG_OUT_MSG db '                         Log Out Page',13,10,10, \
                  '> Enter Family Last Name : $'
    LOG_OUT_SUCCESS db 13,10,10,'Clocked out successfully! Press any key to continue...', 13, 10, '$'

    CHECK_SLOTS_MSG db '                         Mirambel Homes Parking Slot',13,10,10, \
                      '1. Warque',13,10, \
                      '2. Ugang',13,10,10,10,10, \
                      'Press any key to continue...', 13, 10, '$'

    REGISTER_MSG db '                         Register Page',13,10,10, \
                    '> Enter Family Last Name : $'

    REGISTER_SUCCESS db 13,10,10,'Registered successfully! Press any key to continue...', 13, 10, '$'


    EXIT_MSG db 'Have a Good Day!',13,10,'$'

    inputBuffer db 20 dup('$')
    inputLength db 0    

.code
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; ------------------- utility methods ------------------- ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; 

print PROC
    mov  ah, 09h
    int  21h
    ret
print ENDP
terminate PROC
    mov  ax, 4C00h
    int  21h
terminate ENDP
getInput PROC
    lea dx, inputBuffer
    mov ah, 0Ah  
    int 21h      

    mov al, inputBuffer[1]  
    mov inputLength, al
    ret
getInput ENDP
next PROC
    mov ah,01h
    int 21h

    ret
next ENDP
newLine PROC
    mov  ah, 02h
    mov  dl, 13
    int  21h
    mov  ah, 02h
    mov  dl, 10
    int  21h
    ret
newLine ENDP

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; ------------------- display methods ------------------- ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; 

SPLASH_SCREEN PROC
    mov  ax, 6
    int  10h

    lea dx, SPLASH
    call print
    lea dx, CREDITS
    call print

    call next
    call MENU
    ret
SPLASH_SCREEN ENDP

MENU PROC
    mov  ax, 6
    int  10h

    lea dx, COMMANDS
    call print

    call getInput

    lea si, inputBuffer + 2 
    mov al, inputLength
    mov ah, 0
    mov cx, ax

    cmp cx, 1
    jne invalid

    mov al, [si]
    cmp al, '1'
    je clockin
    cmp al, '2'
    je clockout
    cmp al, '3'
    je checkslots
    cmp al, '4'
    je register
    cmp al, '5'
    je exitProg
    
    invalid:
        call MENU
        ret
    clockin:
        call CLOCK_IN
        ret
    clockout:
        call CLOCK_OUT
        ret
    checkslots:
        call CHECK_SLOTS
        ret
    register:
        call SIGN_IN
        ret
    exitProg:
        call EXIT
        ret
MENU ENDP

CLOCK_IN PROC
    mov  ax, 6
    int  10h

    lea dx, LOG_IN_MSG
    call print
    call getInput

    lea dx, LOG_IN_PASSWORD
    call print
    call getInput

    lea dx, LOG_IN_SUCCESS
    call print
    call next

    call MENU
    ret
CLOCK_IN ENDP

CLOCK_OUT PROC
    mov  ax, 6
    int  10h

    lea dx, LOG_OUT_MSG
    call print
    call getInput
    
    lea dx, LOG_OUT_SUCCESS
    call print
    call next

    call MENU
    ret
CLOCK_OUT ENDP

CHECK_SLOTS PROC
    mov  ax, 6
    int  10h

    lea dx, CHECK_SLOTS_MSG
    call print
    call next

    call MENU
    ret
CHECK_SLOTS ENDP

SIGN_IN PROC
    mov  ax, 6
    int  10h

    lea dx, REGISTER_MSG
    call print
    call getInput

    lea dx, LOG_IN_PASSWORD
    call print
    call getInput

    lea dx, REGISTER_SUCCESS
    call print
    call next

    call MENU
    ret
SIGN_IN ENDP

EXIT PROC
    mov  ax, 6
    int  10h

    lea dx, EXIT_MSG
    call print

    call terminate
    ret
EXIT ENDP

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; ------------------- Main ------------------- ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; 
Main PROC        
    mov  ax, @data
    mov  ds, ax

    call SPLASH_SCREEN
Main ENDP
end Main