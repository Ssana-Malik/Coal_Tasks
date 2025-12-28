; LAB # 8 Loops     
; Question 2
; Write a program that input a character from user. The program will display it 10 times on screen in newline.


mov ah, 1
int 21h

mov bl, al

mov cx, 10

L1:
    ;newLine
    mov dl, 10
    mov ah, 2
    int 21h
    
    mov dl, 13
    mov ah, 2
    int 21h 
    
    mov dl, bl
    mov ah, 2
    int 21h

Loop L1    
    