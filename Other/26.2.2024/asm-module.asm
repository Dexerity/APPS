bits 64
section .data

section .text

    global intMax
intMax:
    movsx rsi, esi
    mov eax, 0
    mov rcx, 0
.back:
    cmp rcx, rsi
    jge .end

    cmp dword [rdi + rcx * 4], eax
    jl .cont

    mov eax, [rdi + rcx * 4]

.cont:
    inc rcx
    jmp .back
.end:
    ret

    global intSum
intSum:
    movsx rsi, esi
    mov eax, 0
    mov rcx, 0
.back:
    cmp rcx, rsi
    jge .end

    add eax, [rdi + rcx * 4]

    inc rcx
    jmp .back
.end:
    ret

    global intArrAdd
intArrAdd:
    movsx rdx, edx
    mov rcx, 0
.back:
    cmp rcx, rdx
    jge .end

    mov eax, [rdi + rcx * 4]
    add eax, [rsi + rcx * 4]
    mov [rdi + rcx * 4], eax

    inc rcx
    jmp .back
.end:
    ret

    global isPowerOf2
isPowerOf2:
    cmp edi, 0
    jle .not

    mov eax, edi
    dec eax
    and eax, edi
    jnz .not

    mov eax, 1
    ret
.not:
    mov eax, 0
    ret

    global bitPairSwap
bitPairSwap:
    mov eax, edi
    and eax, 0x0F0F0F0F
    shl eax, 4

    mov ebx, edi
    and ebx, 0xF0F0F0F0
    shr ebx, 4

    or eax, ebx
    ret