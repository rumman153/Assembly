.model small
.data  

msg db "Enter the first letter of your name $"



.code



main proc
        mov AX,@DATA
        mov DS,AX
        
        mov AH,2
        mov DL,7H
        int 21H
        
       
         
         mov AH,9
         LEA DX,MSG
         int 21H 
         
          mov AH,2
          mov DL,0AH
          int 21H
          
          mov DL,0DH
          int 21H
          
          
          
          mov AH, 1
          int 21H 
          
          
          
          sub AL,20H
          mov BH,AL
          
          
          mov BH,AL 
          
          
          
          mov AH,2
          mov DL,0AH
          int 21H
          
          mov DL,0DH
          int 21H
          
          
          mov DL,BH
          mov AH,2
          int 21H
          
          
         mov AH,4CH
         int 21H
    
    
    
    
    
    main endp

end main