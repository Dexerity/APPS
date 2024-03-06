bits 64
section .data

    

section .text

    global my_strchr
my_strchr:
    mov rcx, 0
.back:
    cmp byte [rdi + rcx], 0
    je .endL
    cmp byte [rdi + rcx], sil
    je .equal

    inc rcx
    jmp .back

.equal:

    mov rax, rcx
    
    cmp rsi, 'a'
    jl .cont
    cmp rsi, 'z'
    jg .cont

    mov rbx, rsi
    sub rbx, 32 
    jmp .start

.cont:

    cmp rsi, 'A'
    jl .start
    cmp rsi, 'Z'
    jg .start

    mov rbx, rsi
    add rbx, 32 
    jmp .start

.start:
    mov rcx, 0
.backL:
    cmp byte [rdi + rcx], 0
    je .endL   

    cmp byte [rdi + rcx], sil
    je .incr
    cmp byte [rdi + rcx], bl
    je .incr


    inc rcx
    jmp .backL
.endL:
    ret

.incr: 
    inc dword [rdx]
    inc rcx
    jmp .backL

    global str2int
str2int:
    mov rax, 0
    mov rcx, 0

.back:
    cmp byte [rdi + rcx], 0
    je .end

    movsx rbx, byte [rdi + rcx]
    sub rbx, '0'

    mov rdx, rax
    shl rax, 1
    shl rdx, 3
    add rax, rdx

    add rax, rbx


    inc rcx
    jmp .back
.end:
    mov [rsi], rax
    ret

    global not_bits
not_bits:
    mov rbx, 0
    mov rcx, 0
    mov r8, 0
.back:
    cmp rcx, rdx
    jge .end

    movsx rax, byte [rsi + rcx]
    
.backIn: 

    cmp rbx, rax
    je .equal

    inc rbx
    shl r8, 1
    jmp .back

.equal:
    add r8, 1
    inc rcx
    jmp .back



    inc rcx
    jmp .back
.end:

    mov rax, r8

    xor rax, [rdi]
    ret


    