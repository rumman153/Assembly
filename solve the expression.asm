 ;SOLVE THIS EXPRESSION     Z =(A+B)/(C*D)  byte
 .model small
 .data
 
 A db 04h
 B db 04h
 C db 02h
 D db 02h
 E db '?'
 F db '?'
 
 .code  
 main proc
    
mov ax,@data
mov ds,ax

mov al,A
add al,B
mov E,al

mov al,C
mov bl,D
    mul bl
mov F,al
 

mov al,E
    div F


mov ah,4ch
int 21h

    main endp
 end main ;
 
 