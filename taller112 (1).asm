section .data
    message db "La suma de los valores es: ", 0
    newline db 10, 0           ; Nueva línea para la salida

section .bss
    buffer resb 4              ; Buffer para convertir números a caracteres

section .text
    global _start

_start:
    ; Imprime el mensaje inicial
    PRINT_STRING message

    ; Imprime la suma de los valores
    PRINT_SUM

    ; Salir del programa
    mov eax, 1                ; Syscall para 'exit'
    mov ebx, 0                ; Código de salida
    int 0x80

