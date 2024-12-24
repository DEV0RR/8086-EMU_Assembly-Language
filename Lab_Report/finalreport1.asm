;; 1. Write an Assembly program to find and display the maximum of two numbers taken from user.

org 100h

.DATA
 
NUM1 db ?
NUM2 db ?
MSG1 DB "Enter first Number: $" 
MSG2 DB 10,13,"Enter second Number: $" 
MSG3 DB 10,13,"The Maximum Number is: $"

.CODE

;;First number
LEA DX, MSG1
MOV AH, 09
INT 21H 
MOV AH, 01
INT 21H    
SUB AL, 30H 
MOV NUM1, AL
      
;;Second number
LEA DX, MSG2
MOV AH, 09
INT 21H
MOV AH,01
INT 21H
SUB AL,30H 
MOV BL, AL
MOV NUM2,BL

;; Comparison

CMP NUM1, BL
JG L2

L1:
LEA DX, MSG3
MOV AH, 09
INT 21H

MOV DL,NUM2
ADD DL,30H
MOV Ah,02
INT 21H
HLT

L2:
LEA DX, MSG3
MOV AH, 09
INT 21H

MOV DL,NUM1
ADD DL,30H
MOV Ah,02
INT 21H  
HLT