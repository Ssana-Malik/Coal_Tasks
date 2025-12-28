; LAB # 8 Loops     
; Question 4
; Write a program to add first three numbers.

mov dl, 1
mov bl, 0
mov cx, 3

L1:
    ADD bl, dl 
    
    INC dl 
    
Loop L1


mov dl, bl
ADD dl, 48
mov ah, 2
int 21h
