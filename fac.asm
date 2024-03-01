    BITS 64
    section .text
    global my_add

my_add:
    xor rcx, rcx
    mov al, byte [rsi, rcx]

    .first:
    cmp byte[rcx, rdx], 0
    je .search
    inc rcx
    jmp .first

    .search:
    mov al, [rax, rcx]
    add al, 1
    je .first

    .no_result
    ret '@'

    .end:
    ret
