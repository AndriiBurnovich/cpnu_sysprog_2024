global _start

section .text
_start:
    ; Підготовка до системного виклику write
    mov rax, 1          ; Номер системного виклику write
    mov rdi, 1          ; Файловий дескриптор (1 = stdout)
    mov rsi, message    ; Адреса повідомлення
    mov rdx, 17         ; Довжина повідомлення (враховуємо 16 символів + символ нового рядка)
    syscall             ; Виклик системного виклику

    ; Підготовка до системного виклику exit
    mov rax, 60         ; Номер системного виклику exit
    xor rdi, rdi        ; Статус виходу 0
    syscall             ; Виклик системного виклику

section .data
message: db "KI-233 Pylnik", 10 ; 10 - це символ нового рядка

