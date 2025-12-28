; LAB # 5 Airthmetic Operation
; Question 2: 
; Take a two-digit number, subtract them and display output like that i.e 3-1=2

mov ah, 1
int 21h

mov bl, al

mov dl, '-'
mov ah, 2
int 21h

mov ah, 1
int 21h

SUB bl, al

mov dl, '='
mov ah, 2
int 21h

mov dl, bl

ADD dl, 48
mov ah, 2
int 21h

