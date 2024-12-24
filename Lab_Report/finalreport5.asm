;; 5. Write an Assembly code to take five numbers from user and display them reversely using stack instructions (PUSH and POP).

org 100h

.CODE

MOV CX, 5 ;; number of push

INPUT_LOOP:
    MOV AH, 1
    INT 21H
    SUB AL, 30H
    PUSH AX
    LOOP INPUT_LOOP

MOV CX, 5 ;; number of pop

OUTPUT_LOOP: 
    ;;space
    MOV AH,2 
    MOV DX, 10
    INT 21H
    MOV DX,13
    INT 21H
    
    POP AX
    ADD AL, 30H
    MOV DL, AL
    MOV AH, 2
    INT 21H

    LOOP OUTPUT_LOOP
