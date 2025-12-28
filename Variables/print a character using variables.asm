; LAB # 6 Variables
; Question 2: 
; Write a program that input a character from user and print that again on screen in the given format.
; The user entered x character. 

.model small
.stack 100h 

.data
msg1 DB 'Enter a character: $'
msg2 DB 'The user entered $'
msg3 DB ' character.$'
char DB ? 

.code
main proc
    mov ax, @data
    mov ds, ax 
    
    ; print msg1
    mov dx, offset msg1
    mov ah, 9
    int 21h
    
    ; input a character from user
    mov ah, 1
    int 21h
    
    mov char, al    ; store character in char variable
    
    ;NewLine
    mov dl, 10
    mov ah, 2
    int 21h
    
    mov dl, 13 
    mov ah, 2
    int 21h
    
    ; print msg2
    mov dx, offset msg2
    mov ah, 9
    int 21h
    
    ; print that character
    mov dl, char
    mov ah, 2
    int 21h
    
    ;Print msg3
    mov dx, offset msg3
    mov ah, 9
    int 21h
    
    ;Exit program
    mov ah, 4ch
    int 21h
    
main endp
end main