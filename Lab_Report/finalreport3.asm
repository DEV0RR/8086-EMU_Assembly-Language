;; 3. Write an Assembly program to display 0-9 using jump instructions.        

org 100h 

.CODE

;;Start number
MOV BL,0

L1:   

MOV DL,BL 
ADD DL, 30H
MOV AH,2
INT 21H
        
;;space between number
MOV AH,2 
MOV DX, 10
INT 21H
MOV DX,13
INT 21H
;;increase by 1 
ADD BL,1

;; comparison by end number
CMP BL,9
JLE L1  ;; Jump if less then equal
