; Filename: EXER23.ASM
; Programmer Name: JOHN KYLE VILLARAZO
; Date: 9/20/2024

.model small
.stack 200h
.data
    choice db ?
    cit db 0dh, 0ah, 'Cebu Institute of Technology - University', 0dh, 0ah, 'Automated Teller Machine', 0dh, 0ah, '$'
    menu db 0dh, 0ah, 'Main Menu', 0dh, 0ah, '1 Balance Inquiry', 0dh, 0ah, '2 Withdrawal', 0dh, 0ah, '3 Deposit', 0dh, 0ah, '4 Transfer', 0dh, 0ah, '5 Bills Payment', 0dh, 0ah, '6 Change Pin', 0dh, 0ah, '7 Exit$'
    enterNum db 0dh, 0ah, 'Enter number of your choice: $'
    thankYou db 0dh, 0ah, 'Thank you for banking with us!', 0dh, 0ah, 'Copyright 2024', 0dh, 0ah, 'Programmer: JOHN KYLE VILLARAZO$'
    BalancePrompt db 0dh, 0ah, 0dh, 0ah, 'You have chosen 1 Balance Inquiry.', 0dh, 0ah, '$'
    WithdrawalPrompt db 0dh, 0ah, 0dh, 0ah, 'You have chosen 2 Withdrawal.', 0dh, 0ah, '$'
    DepositPrompt db 0dh, 0ah, 0dh, 0ah, 'You have chosen 3 Deposit.', 0dh, 0ah, '$'
    TransferPrompt db 0dh, 0ah, 0dh, 0ah, 'You have chosen 4 Transfer.', 0dh, 0ah, '$'
    BillsPrompt db 0dh, 0ah, 0dh, 0ah, 'You have chosen 5 Bills Payment.', 0dh, 0ah, '$'
    ChangePinPrompt db 0dh, 0ah, 0dh, 0ah, 'You have chosen 6 Change Pin.', 0dh, 0ah, '$'
    ExitPrompt db 0dh, 0ah, 0dh, 0ah, 'You have chosen 7 Exit.', 0dh, 0ah, '$'
     
.code
ProgramStart:
    mov ax, @data
    mov ds, ax

    mov dx, offset cit
    mov ah, 9
    int 21h

    mov dx, offset menu
    mov ah, 9
    int 21h

    mov dx, offset enterNum
    mov ah, 9
    int 21h

    mov ah, 01h     
    int 21h            
    mov choice, al

    cmp al, '1'        
    jz BalInq   
    cmp al, '2'        
    jz Wthdwl  
    cmp al, '3'        
    jz Depo  
    cmp al, '4'        
    jz Trfr  
    cmp al, '5'        
    jz Payment  
    cmp al, '6'        
    jz Pin  
    cmp al, '7'        
    jz Exit          

BalInq:
    mov dx, offset BalancePrompt     
    jmp DisplayAll 

Wthdwl:
    mov dx, offset WithdrawalPrompt
    jmp DisplayAll 

Depo:
    mov dx, offset DepositPrompt  
    jmp DisplayAll 

Trfr:
    mov dx, offset TransferPrompt  
    jmp DisplayAll 

Payment:
    mov dx, offset BillsPrompt  
    jmp DisplayAll 

Pin:
    mov dx, offset ChangePinPrompt 
    jmp DisplayAll  

Exit:
    mov dx, offset ExitPrompt  
    jmp DisplayAll            

DisplayAll:
    mov ah, 9           ; DOS print string function
    int 21h

    mov dx, offset thankYou
    mov ah, 9
    int 21h

    mov ah, 4ch         ; DOS terminate program function
    int 21h

end ProgramStart    