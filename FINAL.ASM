; Parking Slot Management System
; Description: A simple parking slot management system with CRUD capabilities.
; Programmer: Villarazo, John Kyle
; Date Written: November 22, 2024
; Course: CS243 - Computer Organization and Architecture
; Teacher: Roden J. Ugang

.model small
.stack 100h
.data
; Opening screen messages
welcome_msg db 'Parking Slot Management System', 0Dh, 0Ah, '$'
author_msg db 'Programmed by: Villarazo, John Kyle', 0Dh, 0Ah, '$'
date_msg db 'Date Written: November 22, 2024', 0Dh, 0Ah, '$'
course_msg db 'CS243 - Computer Organization and Architecture', 0Dh, 0Ah, '$'          

; ASCII Art Car
display_car db '                               _.-="_-         _', 0Dh, 0Ah
            db '                          _.-="   _-          | ||"""""""---._______     __..', 0Dh, 0Ah      
            db '              ___.===""""-.______-,,,,,,,,,,,,`-''----" """""       """""  __', 0Dh, 0Ah
            db '       __.--""     __        ,''                   o \           __        [__|', 0Dh, 0Ah
            db '  __-""=======.--""  ""--.=================================.--""  ""--.=======:', 0Dh, 0Ah
            db ' \___________:|          |: |========================|    :|          |:   _-"', 0Dh, 0Ah
            db '  \__________: \        / :_|=======================/_____: \        / :__-"', 0Dh, 0Ah
            db '  -----------''  "-____-"  `-------------------------------''  "-____-"', 0Dh, 0Ah, 0Dh, 0Ah, '$'

; ASCII Art Title
display_title db '                      __   ____  ____   __  _  ____  ____    ____ ', 0Dh, 0Ah
            db '                     /  ] /    ||    \ |  |/ ]|    ||    \  /    |', 0Dh, 0Ah      
            db '                    /  / |  o  ||  D  )|  | /  |  | |  _  ||   __|', 0Dh, 0Ah
            db '                   /  /  |     ||    / |    \  |  | |  |  ||  |  |', 0Dh, 0Ah
            db '                  /   \_ |  _  ||    \ |     | |  | |  |  ||  |_ |', 0Dh, 0Ah
            db '                  \     ||  |  ||  .  \|  |  | |  | |  |  ||     |', 0Dh, 0Ah
            db '                   \____||__|__||__|\_||__|\_||____||__|__||___,_| $' 


; General messages
main_menu_msg db 0Dh, 0Ah, 0Dh, 0Ah, 0Dh, 0Ah,'                               1. Register Customer', 0Dh, 0Ah, 
                        db '                              2. Log in Customer', 0Dh, 0Ah, 
                        db '                              3. Exit', 0Dh, 0Ah, 
                        db '                              Enter your choice: $'
register_msg db 0Dh, 0Ah, 'Registering a new customer...', 0Dh, 0Ah, 'Enter Name: $'
msg_equal db 'Strings are equal.$'
msg_unequal db 'Strings are not equal.$'
login_msg db 0Dh, 0Ah, 'Customer Log In...', 0Dh, 0Ah, 'Enter Name: $'
res_pass db 0Dh, 0Ah, 'Enter password: $' 
invalid_choice db 0Dh, 0Ah, 'Invalid choice. Try again.', 0Dh, 0Ah, '$'
invalid_account db 0Dh, 0Ah, 'Invalid account. Please register first.', 0Dh, 0Ah, '$'
goodbye_msg db 0Dh, 0Ah, 'Thank you for using the system. Goodbye!', 0Dh, 0Ah, '$'

; Buffers
input_buffer db 50 dup('$')  ; For user input
input_password db 50 dup('$')    ; Temporary buffer for password input
customer_name db 50 dup('$') ; Store up to 5 customer names (1000 bytes each)
customer_password db 50 dup('$') ; Store up to 5 customer passwords (1000 bytes each)
admin_name db 50 dup('$') ; Stores registered admin name
admin_password db 50 dup('$') ; Stores registered admin password

.code
main proc
    mov ax, @data    ; Initialize data segment
    mov ds, ax

main_menu:
    call clear_screen    ; Clear the screen

    ; Display ASCII Art Title
    LEA DX, display_car  ; Load the address of the ASCII art into DX
    MOV AH, 09h            ; Function to display a string
    INT 21h                ; Call DOS interrupt

    ; Display ASCII Art Title
    LEA DX, display_title  ; Load the address of the ASCII art into DX
    MOV AH, 09h            ; Function to display a string
    INT 21h                ; Call DOS interrupt

    lea dx, main_menu_msg
    mov ah, 09h          ; Print the main menu
    int 21h
    lea dx, input_buffer 
    call get_input       ; Get user's choice

    ; Process choice
    cmp input_buffer[2], '1' ; Register Customer
    je register_customer
    cmp input_buffer[2], '2' ; Log in Customer
    je login_customer
    cmp input_buffer[2], '3' ; Exit
    je exit_program

    ; Invalid choice
    lea dx, invalid_choice
    mov ah, 09h
    int 21h
    lea dx, input_buffer 
    call get_input
    jmp main_menu

register_customer:
    call clear_screen
    lea dx, register_msg            ; Load address of the registration message
    mov ah, 09h
    int 21h                          ; Display registration message
    
    lea dx, customer_name           ; Prompt for customer name
    mov ah, 0Ah
    int 21h

    lea dx, res_pass                 ; Prompt for password
    mov ah, 09h
    int 21h

    lea dx, customer_password       ; Prompt for customer name
    mov ah, 0Ah
    int 21h

    jmp main_menu                    ; Return to main menu

; LOGIN CUSTOMER
login_customer:
    call clear_screen              ; Clear the screen

    ; Display customer_name
    mov ah, 09h        
    lea dx, customer_name + 2      ; Skip length and size byte
    int 21h    

    ; Line feed (LF)
    mov dl, 0Ah
    mov ah, 02h
    int 21h

    ; Display customer_password
    mov ah, 09h        
    lea dx, customer_password + 2  ; Skip length and size byte
    int 21h  

    ; Display login message
    lea dx, login_msg              
    mov ah, 09h
    int 21h                        ; Display login message

    lea dx, input_buffer 
    call get_input                 ; Get the login name input from the user

    ; Compare customer_name and input_buffer
    lea si, input_buffer + 2     ; SI points to customer_name (skipping length byte)
    lea di, customer_name + 2       ; DI points to input_buffer (skip length byte)
    mov cx, 50                   ; Set a maximum length for the comparison (adjust as needed)

compare_loop:
    mov al, [si]      ; Load the current byte of str1
    mov bl, [di]      ; Load the current byte of str2
    cmp al, bl        ; Compare the characters
    jne login_failed     ; If characters are not equal, jump to not_equal

    ; Check if we reached the end of the strings
    cmp al, '$'       ; If we reach the null terminator, strings are equal
    je login_success
    inc si            ; Move to the next character in str1
    inc di            ; Move to the next character in str2
    loop compare_loop ; Repeat the comparison for the next character

login_success:
    jmp menu_logged_in              ; Jump to the logged-in menu

    
menu_logged_in:
    lea dx, welcome_msg            ; Load address of welcome message
    mov ah, 09h
    int 21h                         ; Display the welcome message
    ret
    
login_failed:
    lea dx, invalid_account         ; Load address of the registration message
    mov ah, 09h
    int 21h
    jmp main_menu                   ; If names don't match, jump to main menu

exit_program:
    call clear_screen
    lea dx, goodbye_msg
    mov ah, 09h
    int 21h
    mov ax, 4C00h          ; Exit program
    int 21h

; opening_screen proc
;     call clear_screen
;     lea dx, welcome_msg
;     mov ah, 09h
;     int 21h
;     lea dx, author_msg
;     mov ah, 09h
;     int 21h
;     lea dx, date_msg
;     mov ah, 09h
;     int 21h
;     lea dx, course_msg
;     mov ah, 09h
;     int 21h
;     ret
; opening_screen endp

clear_screen:
    mov ah, 06h          ; Clear screen and scroll up
    mov al, 0            ; Clear all rows
    mov bh, 07h          ; Attribute (white on black)
    mov cx, 0000h        ; Upper-left corner
    mov dx, 184Fh        ; Lower-right corner
    int 10h              ; BIOS video interrupt
    ret

get_input:
    mov ah, 0Ah           ; DOS input string function
    int 21h
    ret

get_password:
    lea dx, input_password  ; Input buffer for password
    mov ah, 0Ah            ; DOS function to input a string
    int 21h                ; Call DOS interrupt
    ret

; copy_string proc
;     ; Skip the first two bytes of input_buffer (size and length byte)
;     lea si, input_buffer + 2        ; SI points to the start of the actual string
;     lea di, customer_name           ; DI points to the start of customer_name buffer
;     mov cx, 50                     ; Max string length to copy (adjust as needed)
; next_char:
;     lodsb                           ; Load byte from input_buffer (SI) into AL
;     cmp al, '$'                     ; Check if the byte is the end of the string ('$')
;     je done_copying                 ; If end of string reached, stop copying
;     stosb                           ; Store byte from AL into customer_name (DI)
;     loop next_char                  ; Continue copying if not end of string
; done_copying:
;     ret
; copy_string endp

; copy_password proc
;     ; Ensure the password input is copied properly
;     lea si, input_password + 2  ; Skip the first two bytes for size in the input buffer
;     lea di, customer_password    ; Load the address of customer_password buffer
;     mov cx, 50                  ; Max length for the password (adjust as needed)
; next_pass:
;     lodsb                       ; Load byte from input_password buffer into AL
;     stosb                       ; Store byte from AL to customer_password buffer
;     cmp al, '$'                 ; Check if byte is the string terminator
;     je done_copying_pass        ; If '$' is found, stop copying
;     loop next_pass              ; Continue copying until '$' or max length
; done_copying_pass:
;     ret
; copy_password endp

main endp
end main
