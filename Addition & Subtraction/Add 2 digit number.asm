; LAB # 5 Airthmetic Operation
; Question 1: 
; Take a two-digit number , add them and display output like that i.e 1+3=4.

mov ah, 1
int 21h

mov bl, al

mov dl, '+'
mov ah, 2
int 21h

mov ah, 1
int 21h

ADD bl, al

mov dl, '='
mov ah, 2
int 21h

mov dl, bl

SUB dl, 48
mov ah, 2
int 21h

