; x86 asm

org 100h

jmp start       ; jump over data declaration

msg:    db      "Hello World!$"

start:  mov     dx, msg  ; load offset of msg into dx.
        mov     ah, 09h  ; print function is 9.
        int     21h      ; do it!
        
ret ; return to operating system.
