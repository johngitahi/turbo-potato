section .data
    prompt db "Enter the first number: ", 0
    prompt2 db "Enter the second number: ", 0
    result_msg db "Result: ", 0

section .bss
    num1 resd 1 ; Reserve space for the first number
    num2 resd 1 ; Reserve space for the second number
    result resd 1 ; Reserve space for the result

section .text
    global _start

_start:
    ; Ask user for the first number
    mov eax, 4
    mov ebx, 1
    mov ecx, prompt
    mov edx, 23
    int 0x80

    ; Read the first number
    mov eax, 3 ; syscall number for sys_read
    mov ebx, 0 ; file descriptor for stdin
    mov ecx, num1 ; buffer to store input
    mov edx, 4 ; number of bytes to read
    int 0x80

    ; Convert the string to integer
    mov eax, [num1]
    sub eax, '0'
    mov [num1], eax

    ; Ask user for the second number
    mov eax, 4
    mov ebx, 1
    mov ecx, prompt2
    mov edx, 24
    int 0x80

    ; Read the second number
    mov eax, 3
    mov ebx, 0
    mov ecx, num2
    mov edx, 4
    int 0x80

    ; Convert the string to integer
    mov eax, [num2]
    sub eax, '0'
    mov [num2], eax

    ; Perform addition
    mov eax, [num1]
    add eax, [num2]
    mov [result], eax
    ; Display the result of addition
    mov eax, 4
    mov ebx, 1
    mov ecx, result_msg
    mov edx, 7
    int 0x80

    ; Perform subtraction
    mov eax, [num1]
    sub eax, [num2]
    mov [result], eax
    ; Display the result of subtraction
    mov eax, 4
    mov ebx, 1
    mov ecx, result_msg
    mov edx, 7
    int 0x80

    ; Perform multiplication
    mov eax, [num1]
    imul eax, [num2]
    mov [result], eax
    ; Display the result of multiplication
    mov eax, 4
    mov ebx, 1
    mov ecx, result_msg
    mov edx, 7
    int 0x80

    ; Perform division
    mov eax, [num1]
    cdq ; sign extend eax into edx
    idiv dword [num2]
    mov [result], eax
    ; Display the result of division
    mov eax, 4
    mov ebx, 1
    mov ecx, result_msg
    mov edx, 7
    int 0x80

    ; Perform modulo
    mov eax, [num1]
    cdq
    idiv dword [num2]
    mov [result], edx
    ; Display the result of modulo
    mov eax, 4
    mov ebx, 1
    mov ecx, result_msg
    mov edx, 7
    int 0x80

    ; Exit the program
    mov eax, 1
    xor ebx, ebx
    int 0x80

