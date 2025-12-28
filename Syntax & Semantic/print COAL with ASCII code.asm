; LAB # 4 Syntax and Semantic
; Question 2: 
; Write an assembly program to print COAL with ASCII code.


mov dl, 67
mov ah, 2
int 21h

mov dl, 79
mov ah, 2
int 21h

mov dl, 65
mov ah, 2
int 21h

mov dl, 76
mov ah, 2
int 21h
