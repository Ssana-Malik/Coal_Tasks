; LAB # 4 Syntax and Semantic
; Question 1: 
; Write an assembly program to print your SAP ID in characters.

; 63377 is my sapID

mov dl, '6'
mov ah, 2
int 21h  

mov dl, '3'
mov ah, 2
int 21h

mov dl, '3'
mov ah, 2
int 21h

mov dl, '7'
mov ah, 2
int 21h

mov dl, '7'
mov ah, 2
int 21h