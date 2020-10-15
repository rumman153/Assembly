.model small
.data  

 result db '?' 
 str1 db "Enter 3 numbers: $" 
  
.code

main proc
    
               mov ax, @data
               mov ds,ax
                        
                        mov cl,03h
                         
                        mov ah,9 
                        lea dx,str1
                        int 21h 
                        
                        mov ah,1 
                                                             
                        mov result,0h
                        
                        
                        l: 
                        
                        
                        int 21h 
                        sub al,30h
                        add result,al 
                        mov dl, 0ah
                        loop l 
                        
                        
                                          
                        mov ah, 2                 
                        mov dl, 0dh               
                        int 21h                   

                        mov dl, 0ah               
                        int 21h
                        
                        
                        
                        mov ah,2
                        add result,30h
                        mov dl, result   
                        int 21h
                        
        
        mov ah,4ch
        int 21h
    main endp
end main



