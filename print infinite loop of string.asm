.model small


.data
    
    msg db 'MASH$'
    
.code
main proc
    
     
    mov ax, @data
    mov ds, ax
     
    
    mov cx,0
    
    
    
 
 looping:   
    
   
      
    ;cmp cx,26
    ;jg return
        
        
    mov ah, 9
    lea dx, msg
    int 21h 
    
    mov ah,2
    mov dl, 0dh
    int 21h 
    
    mov dl,0ah
    int 21h
    
    dec cx
    
    
    jmp looping 
    
    
    
return:
mov ah,4ch
int 21h             

main endp
end main       