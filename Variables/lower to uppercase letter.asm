; LAB # 6 Variables
; Question 3: 
; Write a program that input a character from user is in lowercase, the program will convert it to uppercase and will display it on console after conversion. Show messages stored in variable strings to the user.  

.model small
.stack 100h 

.data
msg1 DB 'Enter a lowercase letter: $'
msg2 DB 'After conversion to uppercase: $'
char DB ?

.code
main proc
    mov ax, @data
    mov ds, ax 
    
    ; print msg1
    mov dx, offset msg1
    mov ah, 9
    int 21h
    
    ; input a character from user in lowercase
    mov ah, 1
    int 21h
    
    mov char, al    ; store that character in char variable
    
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
    SUB dl, 32
    mov ah, 2
    int 21h
    
    
    ;Exit program
    mov ah, 4ch
    int 21h
    
main endp
end main