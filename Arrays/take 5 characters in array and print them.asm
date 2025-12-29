;  Lab # 10 Arrays
;  Question 3:
;  Take 5 user inputs and store them in an array. Then display them.


.model small
.stack 100h

.data
arr DB 5 DUP(?)
msg1 DB 10, 13, 'Enter 5 characters: $'
msg2 DB 10, 13, 'The entered characters are: $' 

.code
main proc
    mov ax, @data
    mov ds, ax
    
    mov dx, offset msg1
    mov ah, 9
    int 21h
    
    mov si, offset arr
    mov cx, 5
    
    Input:
        mov ah, 1
        int 21h
        
        mov [si], al
        
        INC si
        
    Loop Input
    
    mov dx, offset msg2
    mov ah, 9
    int 21h
    
    mov si, offset arr
    mov cx, 5
              
    Output:
        mov dl, [si]
        mov ah, 2
        int 21h
        
        INC si
        
    Loop Output
            
    ; Exit program
    mov ah, 4ch
    int 21h 
    
main endp
end main