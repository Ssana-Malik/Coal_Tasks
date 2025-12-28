; LAB # 3 Addressing Modes 
; Question 3: 
;  Write a program that input a character from user is in lowercase, the program will convert it to uppercase and will display it on console after conversion.

mov ah, 1
int 21h

mov dl, al

SUB dl, 32

mov ah, 2
int 21h
