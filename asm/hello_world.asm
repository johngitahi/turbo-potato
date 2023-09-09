section .data
    msg db "Hello, Assembly!", 0

section .text
    global _start

_start:
    mov eax, 4       ; Syscall number for sys_write (stdout)
    mov ebx, 1       ; File descriptor (stdout)
    mov ecx, msg     ; Message to print
    mov edx, 16      ; Length of the message
    int 0x80         ; Interrupt to invoke the syscall

    mov eax, 1       ; Syscall number for sys_exit
    xor ebx, ebx     ; Exit status (0)
    int 0x80         ; Invoke the syscall

