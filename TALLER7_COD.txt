section .data
    msg_equal db 'Los numeros son iguales', 0xA, 0
    msg_greater db 'El primer numero es mayor', 0xA, 0
    msg_smaller db 'El primer numero es menor', 0xA, 0
    msg_negative db 'El numero es negativo', 0xA, 0

section .bss
    num1 resb 1
    num2 resb 1

section .text
    global _start

_start:
    ; Leer los dos números
    ; (Código de lectura aquí...)
    
    ; Comparar los números
    mov al, [num1]      ; Cargar el primer número
    cmp al, [num2]      ; Comparar con el segundo número
    je  equal_flag      ; Si son iguales, saltar a equal_flag
    jl  smaller_flag    ; Si el primer número es menor, saltar a smaller_flag
    jg  greater_flag    ; Si el primer número es mayor, saltar a greater_flag

equal_flag:
    mov ecx, msg_equal
    jmp print_result

smaller_flag:
    mov ecx, msg_smaller
    jmp print_result

greater_flag:
    mov ecx, msg_greater
    jmp print_result

print_result:
    ; (Código para imprimir el resultado)
    ; (Código de salida aquí...)