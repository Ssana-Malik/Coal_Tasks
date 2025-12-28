; LAB # 7 Multiplication & Division
; Question 3: 
; Write an assembly language program that find the cube of a number entered by user. Print the result on screen.


mov ah, 1
int 21h

SUB al, 48
mov bl, al

MUL bl
MUL bl

mov dl, al
ADD dl, 48
mov ah, 2
int 21h