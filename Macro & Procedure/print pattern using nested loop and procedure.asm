;  Lab # 13 Macro & Procedure
;  Question 1
;  Write an Assembly program to print pattern using nested loops and a procedure

; *
; **
; ***
; ****
; *****


.model small
.stack 100h

.data

.code
main proc
    mov bx, 1
    mov cx, 5
    
    L1:
        push cx
        mov cx, bx
        
        L2:
            mov dl, '*'
            mov ah, 2
            int 21h
            
        Loop L2
        
        call newLine
        
        INC bx
        pop cx
        
    Loop L1
    
    ; Procedure
    newLine proc
        mov dl, 10
        mov ah, 2
        int 21h
        
        mov dl, 13
        mov ah, 2
        int 21h
        
        ret
    newLine endp     
           
    ; Exit program
    mov ah, 4ch
    int 21h 
    
end main