; LAB # 8 Loops     
; Question 1
; Write a program print small letters. 


mov dl, 97
mov cx, 26

L1:
    mov ah, 2
    int 21h
    
    INC dl
    
Loop L1