; LAB # 7 Multiplication & Division
; Question 1: 
; Perform multiplication of two numbers entered by user. Print the result on screen.   like 3*3=9


mov ah, 1
int 21h

SUB al, 48
mov bl, al

mov dl, '*'
mov ah, 2
int 21h

mov ah, 1
int 21h

SUB al, 48
mov cl, al 

mov dl, '='
mov ah, 2
int 21h 

mov al, bl

MUL cl

mov dl, al
ADD dl, 48
mov ah, 2
int 21h
