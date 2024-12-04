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
login_msg db 0Dh, 0Ah, 'Customer Log In...', 0Dh, 0Ah, 'Enter Name: $'
res_pass db 0Dh, 0Ah, 'Enter password: $' 
invalid_choice db 0Dh, 0Ah, 'Invalid choice. Try again.', 0Dh, 0Ah, '$'
invalid_account db 0Dh, 0Ah, 'Invalid account. Please register first.', 0Dh, 0Ah, '$'
goodbye_msg db 0Dh, 0Ah, 'Thank you for using the system. Goodbye!', 0Dh, 0Ah, '$'

; Buffers
input_buffer db 1000 dup('$')  ; For user input
input_password db 1000 dup('$')    ; Temporary buffer for password input
customer_name db 1000 dup('$') ; Stores registered customer name
customer_password db 1000 dup('$') ; Stores registered customer password
admin_name db 1000 dup('$') ; Stores registered admin name
admin_password db 1000 dup('$') ; Stores registered admin password

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
    call get_input
    jmp main_menu

register_customer:
    call clear_screen               ; Clear the screen
    lea dx, register_msg            ; Load address of the registration message
    mov ah, 09h
    int 21h                          ; Display registration message
    call get_input                   ; Get customer name input
    lea si, input_buffer             ; Load the address of the input buffer into SI
    lea di, customer_name            ; Load the address of customer_name into DI
    call copy_string                 ; Copy the input from input_buffer to customer_name
    
    ; lea dx, res_pass          
    ; mov ah, 09h
    ; int 21h
    ; call get_password                   ; Get customer name input
    ; lea si, input_password            ; Load the address of the input buffer into SI
    ; lea di, customer_password        ; Load the address of customer_name into DI
    ; call copy_password                 ; Copy the input from input_buffer to customer_name

    jmp main_menu                    ; Jump to the main menu

login_customer:
    call clear_screen          ; Clear the screen
    lea dx, login_msg          ; Display login message
    mov ah, 09h
    int 21h

    ; Get the login name input from the user
    call get_input             ; Get login name input from the user

    lea dx, res_pass          
    mov ah, 09h
    int 21h

    ; Get the login name input from the user
    call get_password             ; Get login name input from the user

    ; Set up pointers for input and customer_name
    lea si, input_buffer + 2   ; Skip the first two bytes for length in input_buffer
    lea di, customer_name      ; DI points to customer_name
    mov cx, 1000                 ; Compare up to 50 bytes (maximum size for the input)

    lea si, input_password + 2   ; Skip the first two bytes for length in input_buffer
    lea di, customer_password     ; DI points to customer_name
    mov cx, 1000                 ; Compare up to 50 bytes (maximum size for the input)

    ; Start comparing the strings byte by byte
compare_loop:
    lodsb                      ; Load byte from input_buffer (SI) into AL
    scasb                      ; Compare byte in AL with byte at customer_name (DI)
    jne strings_differ         ; If they don't match, jump to strings_differ
    cmp al, '$'                ; Check if the end of the string is reached
    je strings_equal           ; If end of string reached and no difference, it's a match
    loop compare_loop          ; Continue comparing next byte

strings_differ:
    lea dx, invalid_account     ; Display the error message if strings don't match
    mov ah, 09h
    int 21h
    call get_input
    jmp main_menu              ; Go back to the main menu if they don't match

strings_equal:
    lea dx, welcome_msg        ; If strings match, show welcome message
    mov ah, 09h
    int 21h
    call get_input
    jmp main_menu              ; Go to main menu after successful login

login_success:
    lea dx, welcome_msg   ; If login is successful, display welcome message
    mov ah, 09h
    int 21h
    call get_input
    jmp main_menu          ; Return to the main menu after successful login

exit_program:
    call clear_screen
    lea dx, goodbye_msg
    mov ah, 09h
    int 21h
    mov ax, 4C00h          ; Exit program
    int 21h

opening_screen proc
    call clear_screen
    lea dx, welcome_msg
    mov ah, 09h
    int 21h
    lea dx, author_msg
    mov ah, 09h
    int 21h
    lea dx, date_msg
    mov ah, 09h
    int 21h
    lea dx, course_msg
    mov ah, 09h
    int 21h
    ret
opening_screen endp

clear_screen proc
    mov ah, 06h          ; Clear screen and scroll up
    mov al, 0            ; Clear all rows
    mov bh, 07h          ; Attribute (white on black)
    mov cx, 0000h        ; Upper-left corner
    mov dx, 184Fh        ; Lower-right corner
    int 10h              ; BIOS video interrupt
    ret
clear_screen endp

get_input proc
    lea dx, input_buffer  ; Input buffer
    mov ah, 0Ah           ; DOS input string function
    int 21h
    ret
get_input endp

get_password proc
    lea dx, input_password  ; Input buffer for password
    mov ah, 0Ah            ; DOS function to input a string
    int 21h                ; Call DOS interrupt
    ret
get_password endp

copy_string proc
    ; Copy string from SI to DI until '$' is encountered
    lea si, input_buffer + 2 ; Skip size and length byte in input_buffer
    lea di, customer_name    ; Load the address of customer_name
    mov cx, 50               ; Max string length to copy (adjust as needed)
next_char:
    lodsb                    ; Load byte from SI (input_buffer) to AL
    stosb                    ; Store byte from AL to DI (customer_name)
    cmp al, '$'              ; Check if byte is the '$' (string terminator)
    je done_copying          ; If '$' is found, stop copying
    loop next_char           ; Loop until 50 characters or '$' is found
    ; Append '$' to ensure proper string termination if not present
    mov al, '$'
    stosb                    ; Store '$' at the end of the string
done_copying:
    ret
copy_string endp

copy_password proc
    ; Ensure the password input is copied properly
    lea si, input_password + 2  ; Skip the first two bytes for size in the input buffer
    lea di, customer_password    ; Load the address of customer_password buffer
    mov cx, 50                  ; Max length for the password (adjust as needed)
next_pass:
    lodsb                       ; Load byte from input_password buffer into AL
    stosb                       ; Store byte from AL to customer_password buffer
    cmp al, '$'                 ; Check if byte is the string terminator
    je done_copying_pass        ; If '$' is found, stop copying
    loop next_pass              ; Continue copying until '$' or max length
done_copying_pass:
    ret
copy_password endp


main endp
end main
