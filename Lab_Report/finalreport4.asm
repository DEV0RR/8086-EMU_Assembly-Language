;;4. Write an Assembly code to display the odd numbers between 0-9 using Loop instruction.

org 100h

.CODE

MOV BL, 1  ;;start number
MOV CL, 5  ;;numer of odd number

L1:                
    
    ;;display ODD number
    MOV DL, BL
    ADD DL, 30H
    MOV AH, 2
    INT 21H
    
    ;;space
    MOV AH,2 
    MOV DX, 10
    INT 21H
    MOV DX,13
    INT 21H   

    ;;increase by 2
    ADD BL, 2
    LOOP L1
