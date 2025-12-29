;  Lab # 9 Jumps
;  Question 1:
;  Write an assembly language that compares the values A and B and prints a message if the value in A is greater than B, less than B.    


.model small
.stack 100h

.data
msg1 DB 10, 13,  'Enter value A: $' 
msg2 DB 10, 13,  'Enter value B: $'
msg3 DB 10, 13,  'Value A is greater than value B.$'
msg4 DB 10, 13,  'Value A is less than value B.$'  

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
    
    mov dx, offset msg2
    mov ah, 9
    int 21h  
    
    mov ah, 1
    int 21h
    
    mov dl, al
    
    cmp dl, bl
    
    je Label1
    
    mov dx, offset msg4
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