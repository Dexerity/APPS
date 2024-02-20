    bits 64             ; Architektura 64 bitů
    section .data       ; promenne
    extern binPass
    extern text

    extern cislo
    extern bajt0
    extern bajt1
    extern bajt2
    extern bajt3

    extern cpole, lpole
    

    section .text       ; funkce
    global prevedPass 
prevedPass:
    MOV rax, [binPass]
    MOV [text], rax
    MOV byte [text+8],0
    ret

    global rozdelIntDoCharu
rozdelIntDoCharu:
    MOV al, [cislo+3]
    MOV BYTE [bajt0], al
    MOV al, [cislo+2]
    MOV BYTE [bajt1], al
    MOV al, [cislo+1]
    MOV BYTE [bajt2], al
    MOV al, [cislo+0]
    MOV BYTE [bajt3], al
    ret

    global cpoleDoLpole
cpoleDoLpole:
    MOVSX RAX,BYTE [cpole]
    MOV [lpole],RAX
    MOVSX RAX,BYTE[cpole+1]
    MOV [lpole+1*8],RAX
    MOVSX RAX,BYTE[cpole+2]
    MOV [lpole+2*8],RAX
    MOVSX RAX,BYTE[cpole+3]
    MOV [lpole+3*8],RAX
    ret
    global nullHorniBajt
nullHorniBajt:
    ret