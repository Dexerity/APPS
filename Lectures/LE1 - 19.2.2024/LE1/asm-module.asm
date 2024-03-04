    bits 64
    section .data
    
    extern x, y, l, retezec, suma, max, pole

    section .text
    global na_velka
na_velka:       ;for(int i = 0, i != '\0', i++)
    mov rcx, 0      ;i = 0
.back:
    cmp byte [retezec + rcx], 0     ;i == '\0'
    je .end

    sub byte [retezec + rcx], 'a' - 'A'    

    inc rcx         ;i++
    jmp .back
.end:
    ret

    global suma_pole
suma_pole:          ;for(int i = 0; i < 10; i++)
    mov eax, 0      ;suma = 0
    mov rcx, 0      ;i = 0
.back:
    cmp rcx, 10     ;i >= 10
    jge .spEnd

    add eax, [pole + rcx * 4]

    inc rcx         ;i++
    jmp .back
.spEnd:
    mov [suma], eax
    ret

    global minmax
minmax:
    mov eax, [x]
    mov [max], eax      ;max = x
    cmp eax, [y]        ;if x > y
    jge .mmEnd
    mov eax, [y]        
    mov [max], eax      ;max = y
.mmEnd:
    ret

    global cosi
cosi:
    mov eax, [x]                
    mov ecx, [y]
    mov [x], ecx
    mov [y], eax                    ;"vymena 2 znaku"

    ;movsx rax, eax
    ;mov [1], rax

    mov byte [retezec + 4], '!'     ;retezec[4] = '!'

    mov dword [suma] , 0;           ;suma = 0
    mov eax, [x]
    add [suma], eax                 ;suma += x
    mov eax, [y]
    add [suma], eax                 ;suma += y
    ret