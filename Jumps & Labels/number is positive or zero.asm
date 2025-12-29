;  Lab # 9 Jumps
;  Question 2:
;  Write an assembly language program that allow user to input one-digit number and determine the number is positive or zero.


.model small
.stack 100h

.data
msg1 DB 10, 13,  'Enter one digit-number: $' 
msg2 DB 10, 13,  'The entered number is positive.$'
msg3 DB 10, 13,  'The enetered number is zero.$' 

.code
main proc
    mov ax, @data
    mov ds, ax
    
    mov dx, offset msg1
    mov ah, 9
    int 21h
    
    mov ah, 1
    int 21h
    
    mov bl, al
    
    mov dl, '0'
    
    cmp dl, bl
    
    je Label1
    
    mov dx, offset msg2
    mov ah, 9
    int 21h
    
    ; Exit program
    mov ah, 4ch
    int 21h
    
    Label1: 
        mov dx, offset msg3
        mov ah, 9
        int 21h
        
    ; Exit program
    mov ah, 4ch
    int 21h 
    
main endp
end main