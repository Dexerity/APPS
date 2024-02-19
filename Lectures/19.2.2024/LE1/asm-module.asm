    bits 64
    section .data
    
    extern x, y, l, retezec, suma, max, pole

    section .text
    global na_velka
na_velka:
    mov rcx, 0
.back:
    cmp byte [retezec + rcx], 0
    je .end

    sub byte [retezec + rcx], 'a' - 'A'

    inc rcx
    jmp .back
.end:
    ret

    global suma_pole
suma_pole:
    mov eax, 0
    mov rcx, 0
.back:
    cmp rcx, 10
    jge .spEnd

    add eax, [pole + rcx * 4]

    inc rcx
    jmp .back
.spEnd:
    mov [suma], eax
    ret

    global minmax
minmax:
    mov eax, [x]
    mov [max], eax
    cmp eax, [y]
    jge .mmEnd
    mov eax, [y]
    mov [max], eax
.mmEnd:
    ret

    global cosi
cosi:
    mov eax, [x]
    mov ecx, [y]
    mov [x], ecx
    mov [y], eax

    movsx rax, eax
    mov [1], rax

    mov byte [retezec + 4], '!'

    mov dword [suma] , 0;
    mov eax, [x]
    add [suma], eax
    mov eax, [y]
    add [suma], eax
    ret