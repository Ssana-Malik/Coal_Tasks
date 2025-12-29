;  Lab # 10 Arrays
;  Question 1:
;  Define a character array: 'H', 'e', 'l', 'l', 'o' and print each character.


.model small
.stack 100h

.data
arr DB 'H', 'e', 'l', 'l', 'o'  

.code
main proc
    mov ax, @data
    mov ds, ax
    
    mov si, offset arr
    mov dx, [si]
    mov ah, 2
    int 21h 
    
    mov dl, [si+1]
    mov ah, 2
    int 21h
    
    mov dl, [si+2]
    mov ah, 2
    int 21h
    
    mov dl, [si+3]
    mov ah, 2
    int 21h
    
    mov dl, [si+4]
    mov ah, 2
    int 21h
    
        
    ; Exit program
    mov ah, 4ch
    int 21h 
    
main endp
end main