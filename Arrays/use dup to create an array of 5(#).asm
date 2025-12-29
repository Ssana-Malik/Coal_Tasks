;  Lab # 9 Arrays
;  Question 2:
;  Use DUP to create an array of 5 �#� characters and display them.


.model small
.stack 100h

.data
arr DB 5 DUP('#') 

.code
main proc
    mov ax, @data
    mov ds, ax
    
    mov si, offset arr
    mov cx, 5
    
    Loop1:
        mov dl, [si]
        mov ah, 2
        int 21h 
        
        INC si
        
    Loop Loop1
    
        
    ; Exit program
    mov ah, 4ch
    int 21h 
    
main endp
end main