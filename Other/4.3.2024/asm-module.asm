bits 64
section .data

    extern facNum

section .text

    global factorial
factorial:
    mov ebx, [facNum]
    mov eax, 1
.back:
    cmp ebx, 0
    jle .end

    imul eax, ebx

    dec ebx
    jmp .back
.end:
    ret

    global twoSum
twoSum:
    mov eax, edi
    add eax, esi
    ret

    global arrRead
arrRead:
    mov rcx, 0
.back:
    cmp rcx, rsi
    jge .end

    mov edx, [rdi + rcx * 4]

    inc rcx
    jmp .back
.end:
    ret
    
    global intCmp
intCmp:
    mov eax, edi
    mov ebx, esi

    cmp eax, ebx
    je .equal
    jmp .nonEqual

.equal:
    mov eax, 0
    ret
.nonEqual:
    mov eax, 1
    ret