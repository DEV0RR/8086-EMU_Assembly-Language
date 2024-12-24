;; 2. Write an Assembly program to determine and display whether a number is odd or even.
ORG 100h

.DATA
NUM1 DB ?                   
MSG1 DB "Enter a Number: $" 
MSG2 DB 10,13,"Odd Number $" 
MSG3 DB 10,13,"Even Number $" 

.CODE

;;Enter Number
LEA DX, MSG1
MOV AH, 09
INT 21H
MOV AH, 01
INT 21H
SUB AL, 30H                
MOV NUM1, AL              

;; Divide by 2
MOV BL, 02               
DIV BL                     

;; Comparison
CMP AH, 0                  
JE L2              

L1:
LEA DX, MSG2
MOV AH, 09
INT 21H           
HLT          

L2:
LEA DX, MSG3
MOV AH, 09
INT 21H
HLT
                   
