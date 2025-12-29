;  Lab # 13 Macro & Procedure
;  Question 2
;  Write an Assembly program to print your name and sap id use both a procedure and macro

; *
; **
; ***
; ****
; *****


.model small
.stack 100h 

string macro p1
    mov dx, offset p1
    mov ah, 9
    int 21h
    
string endm

.data
myName DB 'Sana$'
mySapID DB '63377$'

.code
main proc
    mov ax, @data
    mov ds, ax
    
    string myName
    call newLine
    
    string mySapID
    
    ; Procedure
    newLine proc
        mov dl, 10
        mov ah, 2
        int 21h
        
        mov dl, 13
        mov ah, 2
        int 21h
        
        ret
    newLine endp     
           
    ; Exit program
    mov ah, 4ch
    int 21h 
    
end main