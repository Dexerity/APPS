bits 64
section .data

    extern facNum

section .text

    global pozice_max
pozice_max:
    mov eax, 0
    mov edx, edi
    movsx rsi, esi
    mov rcx, 0
.back:
    cmp rcx, rsi
    jge .end

    cmp edx, [rdi + rcx * 4]
    cmovl edx, [rdi + rcx * 4]
    cmovl eax, ecx

    inc rcx
    jmp .back
.end:
    ret

    global int2str
int2str:
    mov rcx, 0
    mov eax, edi        ;number
    mov r8d, 10         ;zaklad
.back:
    cdq                 ;eax -> eax-edx
    idiv r8d            ;eax /= 10
    add dl, '0'
    mov [rsi + rcx], dl
    inc rcx
    cmp eax, 0          ;num = 0    
    jne .back

    mov [rsi + rcx], byte 0

    add rcx, rsi
    dec rcx
  
.swap:
    cmp rsi, rcx
    jge .end

    mov ah, [rsi]
    mov al, [rcx]
    mov [rsi], al
    mov [rcx], ah
    inc rsi
    dec rcx
    jmp .swap
.end:
    ret

    global cetnost
cetnost:
    enter 256*4, 0
    mov rsi, rbp
    sub rsi, 256*4          ;citac[0]

    mov rcx, 0
.zeroBack:
    cmp rcx, 256
    jge .zero

    mov [rsi + rcx * 4], dword 0        ;citace[i] = 0

    inc rcx
    jmp .zeroBack
.zero:

    mov rcx, 0
    mov rdx, 0
.back:
    cmp [rdi + rcx], byte 0     ;str[i] == 0
    je .end

    mov dl, [rdi + rcx]         ;znak = str[i]
    inc dword [rsi + rdx * 4]       ;citace[znak]++

    inc rcx
    jmp .back
.end:

    mov rdi, rsi
    mov rsi, 256
    call pozice_max             ;pozice_max(citace, 256)

    leave
    ret    
    
