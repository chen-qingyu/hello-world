; Assembly x86
; Emu8086 Version 4.08

org 100h

jmp start       ; jump over data declaration

msg:    db      "Hello World!", 0Ah, 0Dh, "$" ; "Hello World!\n"

start:  mov     dx, msg  ; load offset of msg into dx.
        mov     ah, 09h  ; print function is 9.
        int     21h      ; do it!
        
ret ; return to operating system.
