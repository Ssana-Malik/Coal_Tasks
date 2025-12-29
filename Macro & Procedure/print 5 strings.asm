;  Lab # 13 Macro & Procedure
;  Question 3
;  Write an Assembly program to print 5 strings with a procedure

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
myUni DB 'Riphah International$'
myDegree DB 'Computer Science$'
myCGPA DB '3.98$'

.code
main proc
    mov ax, @data
    mov ds, ax
    
    string myName
    call newLine
    
    string mySapID
    call newLine
    
    string myUni
    call newLine
    
    string myDegree
    call newLine
    
    string myCGPA
    
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