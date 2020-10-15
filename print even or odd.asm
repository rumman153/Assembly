.model small
.stack 100h

.data
    
    msg1 db ': odd$'    
    msg2 db ': even$'
    
.code
main proc
    
     
    mov ax, @data
    mov ds, ax
     
    
   
    
        
        mov ah, 1
        int 21h
        
       
        mov bl, 2
        div bl             
    
        cmp ah, 1
        je odd
      
        
        mov ah, 9
        lea dx, msg2
        int 21h
          mov ah,4ch
int 21h 
            
      
            
        odd:    
        mov ah, 9
        lea dx, msg1
        int 21h
          mov ah,4ch
int 21h
                   
       
      
         
         
        
    
main endp
end main