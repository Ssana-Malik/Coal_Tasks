; LAB # 6 Variables
; Question 1: 
; Write a program in assembly language to print your CV or Biodata.

.model small
.stack 100h 

.data
myName DB 'Name: Sana Malik$'
myDegree DB 'Degree: Computer Science$'
myUni DB 'University: Riphah International$'
myCGPA DB 'CGPA: 3.98$' 

.code
main proc
    mov ax, @data
    mov ds, ax 
    
    ; print Name
    mov dx, offset myName
    mov ah, 9
    int 21h
    
    ;NewLine
    mov dl, 10
    mov ah, 2
    int 21h
    
    mov dl, 13 
    mov ah, 2
    int 21h
    
    ;Print Degree
    mov dx, offset myDegree
    mov ah, 9
    int 21h
    
    ;NewLine
    mov dl, 10
    mov ah, 2
    int 21h
    
    mov dl, 13 
    mov ah, 2
    int 21h
    
    ;Print University
    mov dx, offset myUni
    mov ah, 9
    int 21h
    
    ;NewLine
    mov dl, 10
    mov ah, 2
    int 21h
    
    mov dl, 13 
    mov ah, 2
    int 21h
    
    ;Print CGPA
    mov dx, offset myCGPA
    mov ah, 9
    int 21h
    
    ;Exit program
    mov ah, 4ch
    int 21h
    
main endp
end main