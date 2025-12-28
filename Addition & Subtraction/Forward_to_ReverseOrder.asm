; LAB # 5 Airthmetic Operation
; Question 3: 
; Take a two-digit number and display it in reverse order (e.g., 23->32).


mov ah, 1
int 21h

mov bl, al

mov ah, 1
int 21h

mov cl, al

mov dl, '-'
mov ah, 2
int 21h  

mov dl, '>'
mov ah, 2
int 21h

mov dl, cl
mov ah, 2
int 21h

mov dl, bl
mov ah, 2
int 21h