.model small
.stack 100h

.data
    ; Prompts and messages
    prompt_register_name db 'Enter username: $'
    prompt_register_pass db 'Enter password: $'
    prompt_login_name db 'Enter your username to login: $'
    prompt_login_pass db 'Enter your password: $'
    success_msg db 'Login successful!$'
    failure_msg db 'Invalid credentials. Try again.$'
    
    ; Newline character to move the cursor to the next line
    newline db 0Ah, 0Dh, '$'

    ; Buffers to store user inputs and credentials
    input_buffer db 1000 dup('$')        ; User input for name and password
    input_password db 1000 dup('$')      ; Password input buffer
    customer_name db 1000 dup('$')       ; Store customer name
    customer_password db 1000 dup('$')   ; Store customer password

.code
main:
    ; Initialize the data segment
    mov ax, @data
    mov ds, ax

    ; Show the registration screen and register the user
    call RegisterUser

    ; After registration, show the login prompt
    call LoginUser

    ; Exit program
    mov ah, 4Ch
    int 21h

; -----------------------------
; Register User Procedure
; -----------------------------
RegisterUser:
    ; Display prompt for username
    mov ah, 09h
    lea dx, prompt_register_name
    int 21h
    
    ; Print newline after the prompt
    lea dx, newline
    mov ah, 09h
    int 21h

    ; Get the username input
    lea dx, input_buffer
    call GetInput

    ; Copy the input (skip the first two bytes) to customer_name
    lea si, input_buffer + 2  ; Skip the first two bytes (buffer metadata)
    lea di, customer_name
    call CopyString

    ; Display prompt for password
    mov ah, 09h
    lea dx, prompt_register_pass
    int 21h
    
    ; Print newline after the prompt
    lea dx, newline
    mov ah, 09h
    int 21h

    ; Get the password input
    lea dx, input_password
    call GetInput

    ; Copy the input (skip the first two bytes) to customer_password
    lea si, input_password + 2  ; Skip the first two bytes (buffer metadata)
    lea di, customer_password
    call CopyString

    ret

; -----------------------------
; Login User Procedure
; -----------------------------
LoginUser:
    ; Display prompt for login username
    mov ah, 09h
    lea dx, prompt_login_name
    int 21h
    
    ; Print newline after the prompt
    lea dx, newline
    mov ah, 09h
    int 21h

    ; Get the login username input
    lea dx, input_buffer
    call GetInput

    ; Compare input (skip the first two bytes) with stored customer name
    lea si, input_buffer + 2  ; Skip the first two bytes
    lea di, customer_name
    call CompareStrings
    jc InvalidLogin

    ; Display prompt for login password
    mov ah, 09h
    lea dx, prompt_login_pass
    int 21h
    
    ; Print newline after the prompt
    lea dx, newline
    mov ah, 09h
    int 21h

    ; Get the login password input
    lea dx, input_password
    call GetInput

    ; Compare input (skip the first two bytes) with stored customer password
    lea si, input_password + 2  ; Skip the first two bytes
    lea di, customer_password
    call CompareStrings
    jc InvalidLogin

    ; Success message
    mov ah, 09h
    lea dx, success_msg
    int 21h
    jmp EndProgram

InvalidLogin:
    ; Failure message
    mov ah, 09h
    lea dx, failure_msg
    int 21h

EndProgram:
    ret

; -----------------------------
; Get Input from User
; -----------------------------
GetInput:
    ; This function gets input from the user, terminated by Enter (0Dh)
    ; Input is stored in the buffer pointed by DX
    mov ah, 0Ah         ; DOS Input Function
    int 21h
    ret

; -----------------------------
; Copy String (from SI to DI)
; -----------------------------
CopyString:
    ; Copies string from SI to DI until '$' is found
    copy_loop:
        mov al, [si]
        cmp al, '$'
        je copy_done
        mov [di], al
        inc si
        inc di
        jmp copy_loop
    copy_done:
        mov byte ptr [di], '$' ; Null-terminate the string
        ret

; -----------------------------
; Compare Strings (SI with DI)
; -----------------------------
CompareStrings:
    ; Compare strings byte by byte
    ; If the strings are equal, carry flag is clear, otherwise it's set
    compare_loop:
        mov al, [si]
        mov bl, [di]
        cmp al, bl
        jne compare_done
        inc si
        inc di
        cmp al, '$'
        je compare_done
        jmp compare_loop
    compare_done:
        ; Set carry flag if strings are not equal
        ret

end main
