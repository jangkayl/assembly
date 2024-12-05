.model large
.stack 100h

.data
    prompt db "Enter a name: $"
    newline db 0Dh, 0Ah, "$"
    end_msg db "End of input. Displaying all names:$"
    names db 200h  ; 10 names, 20 characters each (10 * 20 = 200 bytes)
    buffer db 20, 0  ; Buffer for reading a name (max 20 characters)
    max_names db 10  ; Maximum number of names

.code
main:
    ; Initialize the data segment
    mov ax, @data
    mov ds, ax

    ; Display prompt to input name
    mov ah, 09h
    lea dx, prompt
    int 21h

    ; Setup the loop to input names
    mov cx, 0  ; Counter for number of names entered

input_loop:
    ; Display the prompt for input
    lea dx, prompt
    mov ah, 09h
    int 21h

    ; Read user input into buffer
    lea dx, buffer
    mov ah, 0Ah
    int 21h

    ; Save the inputted name into the names array
    lea si, buffer + 2  ; SI points to the start of the user input in the buffer
    mov ax, cx           ; AX = current index (cx is used for counting)
    mov bx, 20           ; Each name is up to 20 bytes long
    mul bx               ; AX = cx * 20, result in AX
    lea di, [names] ; DI points to the correct position in the names array

    ; Store the name in the names array
    mov al, 20           ; Maximum name length (20 characters)
store_name:
    mov dl, [si]         ; Load a character from the input buffer
    cmp dl, 0Dh          ; Check if it's the Enter key (carriage return)
    je done_input        ; If Enter was pressed, stop reading the name
    mov [di], dl         ; Store the character in the names array
    inc si               ; Move to the next character in the input buffer
    inc di               ; Move to the next position in the names array
    dec al               ; Decrement remaining length
    jnz store_name       ; Repeat if there are more characters

done_input:
    mov byte ptr [di], 0  ; Null terminate the name

    ; Increment the name counter (CX)
    inc cx

    ; Ask the user if they want to continue entering names
    cmp cx, 10            ; Limit to 10 names
    je display_names      ; If we've entered 10 names, display all names
    jmp input_loop        ; Otherwise, continue the input loop

display_names:
    ; Display the end message
    lea dx, end_msg
    mov ah, 09h
    int 21h

    ; Loop to display all entered names
    mov cx, 0             ; Reset counter for names
    lea si, names         ; SI points to the start of the names array

display_loop:
    ; Calculate the address of the current name (max 20 chars per name)
    mov ax, cx            ; Move the index (cx) into ax
    mov bx, 20            ; Each name is 20 bytes long
    mul bx                ; AX = cx * 20, result in AX
    lea di, [names]  ; DI points to the correct name (names + index * 20)

    ; Display the current name
    lea dx, [di]          ; Load address of the current name into dx
    mov ah, 09h
    int 21h

    ; Display a newline after each name
    lea dx, newline
    mov ah, 09h
    int 21h

    ; Increment the counter
    inc cx

    ; Check if we've displayed all names
    cmp cx, 10
    jl display_loop

    ; Exit the program
    mov ah, 4Ch
    int 21h

end main
