; LAB # 7 Multiplication & Division
; Division 
; Variable with no value

.model small
.stack 100h

.data
qt DB ?
rm DB ?

.code
main proc
    mov ax, 30
    mov bl, 5
    
    DIV bl
    
    mov qt, al
    mov rm, ah
    
    ;print quotient
    mov dl, qt
    ADD dl, 48
    mov ah, 2
    int 21h
    
    ;newLine
    mov dl, 10
    mov ah, 2
    int 21h
    
    mov dl, 13
    mov ah, 2
    int 21h
    
    ;print remainder
    mov dl, rm
    ADD dl, 48
    mov ah, 2
    int 21h 
    
    ;Exit program
    mov ah, 4ch
    int 21h
    
main endp
end main