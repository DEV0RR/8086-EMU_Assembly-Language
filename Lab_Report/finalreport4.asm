;;4. Write an Assembly code to display the odd numbers between 0-9 using Loop instruction.

org 100h

.CODE

MOV BL, 1 ;;first odd number        
MOV CL, 5 ;;Number of odd number to display

L1:       
    
    ;;Display BL
    MOV DL, BL   
    ADD DL, 30H  
    MOV AH, 2    
    INT 21H 
    
    ;;Space
    MOV AH,2 
    MOV DX,9
    INT 21H
    MOV DX,13
    INT 21H    

    ;;Increase by 2
    ADD BL, 2  
    LOOP L1      
