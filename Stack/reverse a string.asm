;  Lab # 11 Stacks
;  Program to reverse a string


.model small
.stack 100h

.data
string DB 'Sana$'

.code
main proc
    mov ax, @data
    mov ds, ax
    
    mov si, offset string 
    mov cx, 4
    
    push:
        mov ax, [si]
        push ax
        
        INC si
        
    Loop push
    
    mov cx, 4
    
    pop:
        pop ax
        mov dx, ax
        mov ah, 2
        int 21h
        
    Loop pop
            
    ; Exit program
    mov ah, 4ch
    int 21h 
    
main endp
end main