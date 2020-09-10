.MODEL SMALL
.DATA

 STR1 DB "ENTER THE FIRST NUM: $" 
 STR2 DB "ENTER THE SECOND NUM: $"
 
.CODE

MAIN PROC
    
    MOV AH,1
    INT 21H
    
  
    SUB AL,30H
    mov BL,AL
    
    MOV DL,0AH
    MOV AH,2
    INT 21H
    
    MOV DL,0DH
    MOV AH,2
    INT 21H
    
    MOV AH,1
    INT 21H
    
    SUB AL,30H
    MOV BH,AL
    
    MOV DL,0AH
    MOV AH,2
    INT 21H   
    
    MOV DL,0DH
    MOV AH,2
    INT 21H
    
    CMP BL,BH
    
    JGE A
    
    ADD BH,30H
    MOV AH,2
    MOV DL,BH
    INT 21H
    JMP EXIT
    
    A:
    
    ADD BL,30H
    MOV AH,2
    MOV DL,BL
    INT 21H
    JMP EXIT
    
    EXIT:
    MOV AH,4DH
    INT 21H
    MAIN ENDP
END MAIN
    
    
    
  