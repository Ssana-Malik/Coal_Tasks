;  Lab # 11 Stacks
;  Question 1
;  Write a program to print your name & sap id in reverse order.


.model small
.stack 100h

.data
myName DB 'Sana$'
mySapID DB '63377$'

.code
main proc
    mov ax, @data
    mov ds, ax
    
    mov si, offset myName 
    mov cx, 4
    
    push1:
        mov ax, [si]
        push ax
        
        INC si
        
    Loop push1
    
    mov cx, 4
    
    pop1:
        pop ax
        mov dx, ax
        mov ah, 2
        int 21h
        
    Loop pop1
    
    ;newLine
    mov dl, 10
    mov ah, 2
    int 21h
    
    mov dl, 13
    mov ah, 2
    int 21h
    
    mov si, offset mySapID
    mov cx, 5
    
    push2:
        mov ax, [si]
        push ax
        
        INC si
        
    Loop push2
    
    mov cx, 5
    
    pop2:
        pop ax
        mov dx, ax
        mov ah, 2
        int 21h
        
    Loop pop2
            
    ; Exit program
    mov ah, 4ch
    int 21h 
    
main endp
end main