.model small

.data 

 MSG DB "Enter the first letter of your name $"    

.code

main proc
        mov ax,@data
        mov ds,ax
    
    
        mov ah,2
        mov dl, 7H
        int 21h 
        
        
        mov ah,9
        lea dx,msg
        int 21h
        
        mov ah,2
        mov dl, 0AH
        int 21h
        
        mov dl, 0DH
        int 21h
        
     
        
        mov ah,1
        int 21h
        
        mov bh,al
        
        mov ah,2
        mov dl, 0AH
        int 21h
        
        mov dl, 0DH
        int 21h 
        
        mov ah,2
        mov dl,bh
        int 21h
        
    
        mov ah,4ch
        int 21h
        
        
    
    
    main endp

end main

