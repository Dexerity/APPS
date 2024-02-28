bits 64
    section .data

    extern g_int_array, g_int_output, pom

    section .text
    ;RDI, RSI, RDX, RCX, R8, R9
    global fce1
fce1:
    ;movsx edi, rdi  ;n = rdi
    mov ecx, 0      ;i = 0
    mov esp, 0      ;s = 0

    .zpet:
    cmp ecx, edi    ; i < n
    jge .hotovo

    mov eax, [ g_int_array + ecx * 4] 
    mov ebx, 2
    cdq
    idiv ebx

    cmp edx, 0
    je .soucet

    inc ecx
    jmp .zpet

    .soucet:
    add esp, [ g_int_array + ecx * 4]
    inc ecx
    jmp .zpet

    .hotovo:
    mov [ g_int_output ], esp
    ret