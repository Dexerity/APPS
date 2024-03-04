bits 64
section .data

    extern facNum, printf

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

    global binSearch
binSearch: 
    mov ebx, esi         ;edi, esi, edx
    ;sub ebx, 1
    mov eax, 0
.back:
    cmp ebx, eax
    jz .notF

    shr esi, 1

    mov ecx, esi
    add ecx, eax

    cmp edx, [edi + ecx * 4]
    jl .less
    je .equal
    jg .greater

.greater:
    mov eax, ecx
    inc eax
    jmp .back

.less:
    mov ebx, ecx
    jmp .back

.equal:
    mov eax, ecx
    ret

.notF:
    mov eax, -1
    ret