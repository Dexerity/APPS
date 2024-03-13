bits 64
section .data

section .text
    global fill_pyramid_numbers
fill_pyramid_numbers:
    mov rcx, 0
    mov r11, 6
.back:
    cmp rcx, rsi
    jg .end

    mov rax, rcx
    inc rax
    

    mov rbx, rax
    mov r9, rax
    imul r9, 2
    add r9, 1
    add rbx, 1
    imul rax, rbx
    imul rax, r9
    cqo
    idiv r11

    mov [rdi + rcx * 8], rax    

    inc rcx

    jmp .back
.end:
    ret






    global multiples
multiples:
    mov rbx, 0
    mov rcx, rdx
    mov r8, 0
.back:
    cmp rbx, rsi
    jge .end

    mov rax, [rdi + rbx * 8]
    cqo
    idiv rcx
    cmp rdx, 0
    je .jeDel
    jmp .neniDel
.cont:


    inc rbx
    jmp .back
.end:
    mov rax, r8
    ret

.jeDel:
    inc r8
    jmp .cont

.neniDel:
    mov r10, [rdi + rbx * 8]
    imul r10, rcx
    mov [rdi + rbx * 8], r10
    jmp .cont






    global factorial
factorial:
    mov rcx, 0
.back:
    cmp rcx, rsi
    jge .end

    jmp .fact
.cont:

    inc rcx
    jmp .back
.end:
    ret

.fact:
    mov rbx, 1
    mov rax, 1
.backF:
    movsx r8, dword [rdi + rcx * 4]
    cmp rbx, r8
    jg .endF

    imul rax, rbx

    inc rbx
    jmp .backF
.endF:
    mov [rdi + rcx * 4], rax
    jmp .cont