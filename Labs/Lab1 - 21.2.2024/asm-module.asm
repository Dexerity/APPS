bits 64
section .data

    extern g_int_x, g_int_y, g_char_arr, g_char_str, g_long_arr

section .text

    global setNums
setNums:
    mov dword [g_int_x], -654321
    mov dword [g_int_y], 0x53705041
    ret

    global moveBytes
moveBytes:
    mov eax, dword [g_int_y]
    mov [g_char_arr], eax
    ret

    global changeWord
changeWord:
    mov byte [g_char_str + 10], 'A'
    mov byte [g_char_str + 11], 'S'
    mov byte [g_char_str + 12], 'M' 
    ret

    global intoArr
intoArr:
    movsx rax, dword [g_int_x]
    mov [g_long_arr], rax
    movsx rax, dword [g_int_y]
    mov [g_long_arr + 1 * 8], rax 
    ret
    