stack   segment stack 'stack'
        dw 32 dup (0)
stack   ends
data    segment

data    ends
code    segment
start   proc far
        assume ss: stack, cs: code, ds:data
        push ds
        sub ax, ax
        push ax
        mov ax, data
        mov ds, ax

        

        ret
start   endp
code    ends
        end start
