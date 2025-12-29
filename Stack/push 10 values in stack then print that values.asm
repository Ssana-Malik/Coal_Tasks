;  Lab # 11 Stacks
;  Question 2
;  Write a program to declare 10 values in an array and push those values in stack.  Reverse the values of array with the help of stack.


.model small
.stack 100h

.data
arr DB '0', '1', '2', '3', '4', '5', '6', '7', '8', '9'

.code
main proc
    mov ax, @data
    mov ds, ax
    
    mov si, offset arr
    mov cx, 10
    
    push:
        mov ax, [si]
        push ax
        
        INC si
        
    Loop push
    
    mov cx, 10
    
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