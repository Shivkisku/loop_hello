section .data
    hello db 'Hello, World!', 10  ; The string to print, with a newline character

section .text
    global _start

_start:
    ; Initialize loop counter
    mov ecx, 5  ; Repeat 5 times

print_loop:
    ; Print "Hello, World!"
    mov eax, 4
    mov ebx, 1
    mov ecx, hello
    mov edx, 13  ; Length of the string
    int 0x80

    ; Decrement the loop counter
    loop print_loop

    ; Exit the program
    mov eax, 1
    xor ebx, ebx
    int 0x80
