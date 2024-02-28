bits 64
section .data

    extern data, count, result_num, iterations, text, from, replace_to

section .text

    global count_ones
count_ones:
    mov rcx, 0
    mov eax, [data]
    mov ebx, 0
.back:
    cmp rcx, 32
    jge .end

    test eax, 1
    je .cont

    inc ebx

.cont:
    shr eax, 1
    inc rcx
    jmp .back
.end:
    mov [count], ebx
    ret

    global fibb
fibb:
        movsx rcx, dword [iterations]
        mov eax, 0
        mov ebx, 1
    .back:
        cmp rcx, 0
        jle .end
    
        mov edx, 0
        add edx, eax
        add edx, ebx

        mov eax, ebx
        mov ebx, edx
    
        dec rcx
        jmp .back
    .end:
        mov [result_num], ebx
        ret

    global replace_char
replace_char:
    mov rcx, 0
    mov al, [from]
    mov bl, [replace_to]
.back:
    cmp byte [text + rcx], 0
    je .end

    cmp [text + rcx], al
    je .equals

    inc rcx
    jmp .back
.end:
    ret

.equals:
    mov byte [text + rcx], bl
    jmp .back