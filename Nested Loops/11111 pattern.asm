;  Lab # 12 Nested Loops
;  Question 2
;  Write an assembly program to print the following output using nested loops.

; 1 1 1 1 1
; 1 1 1 1 1
; 1 1 1 1 1
; 1 1 1 1 1
; 1 1 1 1 1


.model small
.stack 100h

.data

.code
main proc
    mov bx, 5
    mov cx, 5
    
    L1:
        push cx
        mov cx, bx
        
        L2:
            mov dl, '1'
            mov ah, 2
            int 21h
            
        Loop L2
        
       ; newLine
       mov dl, 10
       mov ah, 2
       int 21h
       
       mov dl, 13
       mov ah, 2
       int 21h
       
       pop cx
       
    Loop L1       
           
    ; Exit program
    mov ah, 4ch
    int 21h 
    
main endp
end main