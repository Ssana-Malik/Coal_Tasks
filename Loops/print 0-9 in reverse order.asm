; LAB # 8 Loops     
; Question 3
; Write an assembly language program to print 0-9 in reverse order?


mov dl, 57
mov cx, 10

L1:
    mov ah, 2
    int 21h
    
    DEC dl
    
Loop L1