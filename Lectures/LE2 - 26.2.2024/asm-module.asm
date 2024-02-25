bits 64
section .data

    

section .text

    ;rdi rsi rdx rcx r8 r9
    global add_int
add_int:
    ;enter 0,0

    mov eax, edi    ;ret = a
    add eax, esi    ;ret += b

    ;leave
    ret

    ;rdi rsi rdx rcx r8 r9
    global add_long
add_long:
    mov rax, rdi    ;ret = a
    add rax, rsi    ;ret += b

    ret

    ;rdi rsi rdx rcx r8 r9
    global str_len
str_len:
    ;while (ptr[len] != 0) len++
    mov rcx, 0      ;len = 0
.back:
    cmp byte [rdi, rcx], 0
    je .end

    inc rcx
    jmp .back
.end:
    mov eax, ecx
    ret

    global sum_int
sum_int:
    ; for(int i = 0; i < N; i++) suma += pole[i]
    mov eax, 0
    movsx rsi, esi      ;rsi = N    (signed expand)
    mov rcx, 0
.back:
    cmp rcx, rsi
    jge .end

    add eax, [rdi + rcx * 4]

    inc rcx
    jmp .back
.end:   
    ret

    global navelka
navelka:
    ;while...
    ;if(ptr[i] >= 'a' && prt[i] <= 'z') ptr[i] -= 'a' - 'A'
    mov rcx, 0
.back:
    cmp byte [rdi + rcx], 0
    je .end

    cmp byte [rdi + rcx], 'a'       
    jl .cont                        ;if(ptr[i] < 'a') exit
    cmp byte [rdi + rcx], 'z'       
    jg .cont                        ;if(ptr[i] > 'z') exit

    sub byte [rdi + rcx], 'a' - 'A'     ;ptr[i] - ('a' - 'A')


.cont:
    inc rcx
    jmp .back
.end:
    ret

    global smallPos
smallPos:

    movsx rsi, esi
    mov rax, 0x7FFFFFFFFFFFFF
    mov rcx, 0
.back:
    cmp rcx, rsi
    jge .end

    cmp qword [rdi + rcx * 8], 0
    jl .cont
    cmp qword [rdi + rcx * 8], rax
    jg .cont

    mov rax, qword [rdi + rcx * 8]

.cont:
    inc rcx
    jmp .back
.end:
    ret

    global pocetZavorek
pocetZavorek:
    mov eax, 0
    mov rcx, 0
.back:
    cmp byte [rdi + rcx], 0
    je .end

    cmp byte [rdi + rcx], '('
    je .true
    cmp byte [rdi + rcx], ')'
    je .true
    jmp .cont

.true:
    inc eax
.cont:
    inc rcx
    jmp .back
.end:
    ret