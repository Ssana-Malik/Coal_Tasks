; LAB # 3 Addressing Modes 
; Question 2: 
; Write a program to print your name on screen with characters. 

; Sana     using ASCII codes

mov dl, 83
mov ah, 2
int 21h

mov dl, 97
mov ah, 2
int 21h

mov dl, 110
mov ah, 2
int 21h

mov dl, 97
mov ah, 2
int 21h