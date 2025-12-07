.global _start
_start:
    mov x0, 1          // stdout
    ldr x1, =msg       // Adresse der Nachricht
    mov x2, 12         // Länge der Nachricht
    mov x8, 64         // syscall write
    svc 0

    mov x8, 93         // syscall exit
    mov x0, 0
    svc 0

.data
msg: .ascii "Hello ARM64\n"
