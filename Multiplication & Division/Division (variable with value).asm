; LAB # 7 Multiplication & Division
; Division (Variable) 

.model small
.stack 100h

.data
qt DB 'Quotient: $'
rm DB 'Remainder: $'

.code
main proc
    mov ax, 27
    mov bl, 5
    
    DIV bl
    
    mov cl, al
    mov ch, ah
    
    mov ax, @data
    mov ds, ax
    
    ;print msg qt
    mov dx, offset qt
    mov ah, 9
    int 21h
    
    ;print quotient value
    mov dl, cl
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
    
    ;print msg rm
    mov dx, offset rm
    mov ah, 9
    int 21h
    
    ;print remainder value
    mov dl, ch
    ADD dl, 48
    mov ah, 2
    int 21h
    
    ;Exit program
    mov ah, 4ch
    int 21h
    
main endp
end main