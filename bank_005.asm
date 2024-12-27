; Disassembly of "cvlegends.gb"
; This file was created with:
; mgbdis v2.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $005", ROMX[$4000], BANK[$5]

    call Call_000_0597
    ld a, $28
    ld [$C7DE], a
    ld a, $19
    ld [$C7DD], a
    ld hl, $C500

jr_005_4010:
    push hl
    call Call_005_4027
    pop hl
    ld bc, $0100
    add hl, bc
    ld a, [$C7DD]
    dec a
    ld [$C7DD], a
    jr nz, jr_005_4010

    xor a
    ld [$C72D], a
    ret


Call_005_4027:
    push hl
    ld a, l
    or $0E
    ld l, a
    ld a, [hl]
    pop hl
    bit 0, a
    jr z, jr_005_4046

    ld [$C72A], a
    ld a, l
    or $07
    ld l, a
    ld a, [hl+]
    ld c, a
    inc hl
    inc hl
    inc hl
    inc hl
    ld a, [hl+]
    ld b, a
    ld a, [hl]
    call Call_005_404E
    ret


jr_005_4046:
    ld a, [$C7DE]
    dec a
    ld [$C7DE], a
    ret


Call_005_404E:
    ld hl, $40AA
    call $DDE1
    ld a, [de]
    inc de
    ld [$C7D0], a
    ld h, a
    ld a, [$C7DE]
    sub h
    ld [$C7DE], a
    ret c

    ld h, $DC
    ld a, [$C72D]
    ld l, a

Jump_005_4068:
    ld a, [$C72A]
    bit 6, a
    ld a, [de]
    inc de
    jp z, Jump_005_4075

    cpl
    sub $0F

Jump_005_4075:
    add c
    add $10
    ld [hl+], a
    ld a, [$C72A]
    bit 5, a
    ld a, [de]
    inc de
    jp z, Jump_005_4086

    cpl
    sub $07

Jump_005_4086:
    add b
    add $08
    ld [hl+], a
    ld a, [de]
    inc de
    ld [hl+], a
    push bc
    ld a, [$C72A]
    ld b, a
    ld a, [de]
    inc de
    xor b
    ld [hl+], a
    pop bc
    ld a, [$C72D]
    add $04
    ld [$C72D], a
    ld a, [$C7D0]
    dec a
    ld [$C7D0], a
    jp nz, Jump_005_4068

    ret


    db $1C, $42, $2D, $42, $36, $42, $47, $42, $58, $42, $69, $42, $7A, $42, $8B, $42
    db $98, $42, $A9, $42, $BA, $42, $CB, $42, $DC, $42

    db $ED
    ld b, d

    db $ED, $42, $FA, $42, $0B, $43, $1C, $43, $2D, $43, $3E, $43, $4F, $43, $64, $43
    db $75, $43, $8E, $43, $A7, $43, $AC, $43, $B1, $43, $BA, $43, $C3, $43

    ret z

    ld b, e
    call $0D43
    ld b, l

    db $D2, $43, $D7, $43, $DC, $43, $E1, $43, $E6, $43, $EB, $43

    ldh a, [rSCX]

    db $F9, $43, $02, $44, $0B, $44, $14, $44, $19, $44, $1E, $44, $23, $44, $28, $44
    db $31, $44, $3A, $44, $43, $44, $4C, $44, $2E, $45, $37, $45, $40, $45, $49, $45
    db $52, $45, $5B, $45, $64, $45, $75, $45, $82, $45, $93, $45, $A8, $45, $C1, $45
    db $D2, $45, $E3, $45, $1C, $46, $41, $46, $6E, $46, $A7, $46

    add sp, $46
    ld bc, $1A47
    ld b, a
    dec hl
    ld b, a
    inc a
    ld b, a
    ld c, l
    ld b, a
    ld e, [hl]
    ld b, a
    ld h, a
    ld b, a
    ld [hl], b
    ld b, a
    adc c
    ld b, a
    and d
    ld b, a
    cp e
    ld b, a
    ret nc

    ld b, a
    pop hl
    ld b, a
    ld [$1347], a
    ld c, b
    jr c, jr_005_419E

    ld b, l
    ld c, b
    ld d, [hl]
    ld c, b
    ld h, a
    ld c, b
    ld a, b
    ld c, b
    adc c
    ld c, b
    adc [hl]
    ld c, b
    rst $08
    ld c, b
    nop
    ld c, c
    ld b, c
    ld c, c
    ld l, d
    ld c, c
    sbc e
    ld c, c
    and h
    ld c, c
    call $FA49
    ld c, c
    cpl
    ld c, d
    jr c, jr_005_41C0

    ld b, c
    ld c, d
    ld c, d
    ld c, d
    ld c, a
    ld c, d

    db $55, $44, $5A, $44, $5F, $44

    ld h, h
    ld b, h
    ld l, c
    ld b, h
    sub d
    ld b, h
    cp e
    ld b, h
    db $E4
    ld b, h
    ld e, b
    ld c, d
    ld [hl], e
    ld c, d
    ld a, b
    ld c, d
    ld a, l
    ld c, d
    add d
    ld c, d
    adc e
    ld c, d
    sub h
    ld c, d
    sbc l
    ld c, d
    and [hl]
    ld c, d

jr_005_419E:
    or a
    ld c, d
    ret z

    ld c, d
    reti


    ld c, d
    ld [$FB4A], a
    ld c, d
    inc b
    ld c, e
    dec d
    ld c, e
    ld h, $4B
    scf
    ld c, e
    ld c, b
    ld c, e
    ld d, c
    ld c, e
    ld e, d
    ld c, e
    ld [hl], e
    ld c, e
    sub h
    ld c, e
    or l
    ld c, e
    jp c, $F34B

    ld c, e

jr_005_41C0:
    jr nz, jr_005_420E

    ld c, c
    ld c, h
    ld d, d
    ld c, h
    ld d, a
    ld c, h
    ld h, b
    ld c, h
    ld l, c
    ld c, h
    ld [hl], d
    ld c, h
    cp e
    ld c, h
    inc b
    ld c, l
    dec e
    ld c, l
    ld [hl], $4D
    ld c, e
    ld c, l
    ld h, b
    ld c, l
    ld h, l
    ld c, l
    adc d
    ld c, l
    or e
    ld c, l
    call nc, $FD4D
    ld c, l
    ld [hl+], a
    ld c, [hl]
    ld c, a
    ld c, [hl]
    add h
    ld c, [hl]
    and l
    ld c, [hl]
    add $4E
    rst $08
    ld c, [hl]
    ret c

    ld c, [hl]
    pop hl
    ld c, [hl]
    ld [bc], a
    ld c, a
    inc hl
    ld c, a
    inc a
    ld c, a
    ld c, l
    ld c, a
    ld h, [hl]
    ld c, a
    ld a, a
    ld c, a
    adc b
    ld c, a
    sub c
    ld c, a
    sbc d
    ld c, a
    cp e
    ld c, a
    db $EC
    ld c, a
    dec e
    ld d, b
    ld c, [hl]
    ld d, b

jr_005_420E:
    add e
    ld d, b
    cp h
    ld d, b
    push af
    ld d, b
    ld h, d
    ld d, c
    ld h, c
    ld c, d
    ld l, d
    ld c, d
    cp e
    ld d, c

    db $04, $F0, $F8, $00, $00, $F0, $00, $02, $00, $00, $F8, $04, $00, $00, $00, $06
    db $00, $02, $F0, $FC, $08, $00, $00, $FC, $0A, $00, $04, $F0, $F8, $0C, $00, $F0
    db $00, $0E, $00, $00, $F8, $10, $00, $00, $00, $12, $00, $04, $F0, $F8, $3A, $00
    db $F0, $00, $3C, $00, $00, $F8, $04, $00, $00, $00, $06, $00, $04, $F0, $F8, $3E
    db $00, $F0, $00, $40, $00, $00, $F8, $04, $00, $00, $00, $06, $00, $04, $F0, $FB
    db $42, $00, $F0, $03, $44, $00, $00, $F8, $04, $00, $00, $00, $06, $00, $04, $F0
    db $F8, $00, $00, $F0, $00, $02, $00, $00, $F8, $1C, $00, $00, $00, $1E, $00, $03
    db $F0, $FC, $08, $00, $00, $F9, $4A, $00, $00, $01, $4C, $00, $04, $F0, $F8, $0C
    db $00, $F0, $00, $0E, $00, $00, $F8, $46, $00, $00, $00, $48, $00, $04, $F0, $F8
    db $3A, $00, $F0, $00, $3C, $00, $00, $F8, $1C, $00, $00, $00, $1E, $00, $04, $F0
    db $F8, $3E, $00, $F0, $00, $40, $00, $00, $F8, $1C, $00, $00, $00, $1E, $00, $04
    db $F0, $FB, $42, $00, $F0, $03, $44, $00, $00, $F8, $1C, $00, $00, $00, $1E, $00
    db $04, $F0, $F9, $14, $00, $F0, $01, $16, $00, $00, $F8, $18, $00, $00, $00, $1A
    db $00, $03, $FE, $F4, $20, $00, $FE, $FC, $22, $00, $FE, $04, $24, $00, $04, $F0
    db $F8, $26, $00, $F0, $00, $28, $00, $00, $F8, $2A, $00, $00, $00, $2C, $00, $04
    db $F0, $F8, $28, $20, $F0, $00, $26, $20, $00, $F8, $2C, $20, $00, $00, $2A, $20
    db $04, $F0, $F8, $2E, $00, $F0, $00, $30, $00, $00, $F8, $2A, $00, $00, $00, $2C
    db $00, $04, $F0, $F8, $32, $00, $F0, $00, $34, $00, $00, $F8, $2A, $00, $00, $00
    db $2C, $00, $04, $F0, $F8, $32, $00, $F0, $00, $34, $00, $00, $F8, $2A, $00, $00
    db $00, $2C, $00, $05, $F0, $F8, $26, $00, $F0, $00, $36, $00, $F0, $08, $38, $00
    db $00, $F8, $2A, $00, $00, $00, $2C, $00, $04, $F0, $F8, $00, $00, $F0, $00, $02
    db $00, $00, $F8, $4E, $00, $00, $00, $50, $00, $06, $F0, $F0, $52, $00, $F0, $F8
    db $54, $00, $F0, $00, $56, $00, $F0, $08, $58, $00, $00, $F8, $5A, $00, $00, $00
    db $5C, $00, $06, $F0, $F0, $5E, $00, $F0, $F8, $60, $00, $F0, $00, $62, $00, $F0
    db $08, $64, $00, $00, $F8, $5A, $00, $00, $00, $5C, $00, $01, $F8, $00, $66, $00
    db $01, $F8, $00, $68, $00, $02, $FC, $00, $6A, $00, $FC, $08, $6C, $00, $02, $FC
    db $00, $6E, $00, $FC, $08, $70, $00, $01, $F8, $FC, $7A, $00

    ld bc, $FCF8
    ld a, h
    nop
    ld bc, $FCF8
    ld a, [hl]
    nop

    db $01, $F8, $FD, $F0, $00, $01, $F8, $FD, $F2, $00, $01, $F4, $FC, $F4, $00, $01
    db $F4, $FC, $F6, $00, $01, $F8, $FC, $F8, $00, $01, $F8, $FC, $FA, $00

    ld [bc], a
    ld hl, sp-$08
    db $FC
    nop
    ld hl, sp+$00
    cp $00

    db $02, $F8, $F8, $F4, $00, $F8, $00, $F6, $00, $02, $F8, $F8, $F8, $00, $F8, $00
    db $FA, $00, $02, $F8, $F8, $FC, $00, $F8, $00, $FE, $00, $01, $F8, $FC, $72, $00
    db $01, $F8, $FC, $74, $00, $01, $F8, $FC, $76, $00, $01, $F8, $FC, $78, $00, $02
    db $F8, $F8, $E0, $00, $F8, $00, $E2, $00, $02, $F8, $F8, $E4, $00, $F8, $00, $E6
    db $00, $02, $F8, $F8, $E8, $00, $F8, $00, $EA, $00, $02, $F8, $F8, $EC, $00, $F8
    db $00, $EE, $00, $02, $F8, $F8, $F0, $00, $F8, $00, $F2, $00, $01, $00, $00, $02
    db $00, $01, $00, $00, $04, $00, $01, $00, $00, $06, $00

    ld bc, $0000
    nop
    nop
    ld a, [bc]
    nop
    nop
    ld [bc], a
    nop
    nop
    ld [$0004], sp
    nop
    db $10
    inc b
    nop
    nop
    jr @+$08

    nop
    nop
    jr nz, @+$0A

    nop
    stop
    ld a, [bc]
    nop
    db $10
    ld [$000C], sp
    db $10
    db $10
    ld c, $00
    db $10
    jr jr_005_449D

    nop
    db $10
    jr nz, jr_005_44A3

    nop
    ld a, [bc]
    nop
    nop
    inc d
    nop
    nop
    ld [$0016], sp
    nop
    db $10

jr_005_449D:
    jr jr_005_449F

jr_005_449F:
    nop
    jr jr_005_44A6

    nop

jr_005_44A3:
    nop
    jr nz, jr_005_44AA

jr_005_44A6:
    nop
    stop
    ld a, [de]

jr_005_44AA:
    nop
    db $10
    ld [$001C], sp
    db $10
    db $10
    ld e, $00
    db $10
    jr @+$22

    nop
    db $10
    jr nz, jr_005_44DC

    nop
    ld a, [bc]
    nop
    nop
    ld [bc], a
    nop
    nop
    ld [$0004], sp
    nop
    db $10
    inc b
    nop
    nop
    jr jr_005_44CF

    nop
    nop
    jr nz, jr_005_44D3

jr_005_44CF:
    nop
    stop
    ld a, [de]

jr_005_44D3:
    nop
    db $10
    ld [$0024], sp
    db $10
    db $10
    ld h, $00

jr_005_44DC:
    db $10
    jr jr_005_4507

    nop
    db $10
    jr nz, jr_005_450D

    nop
    ld a, [bc]
    nop
    nop
    nop
    nop
    nop
    ld [$0000], sp
    nop
    stop
    nop

jr_005_44F1:
    nop
    jr jr_005_44F4

jr_005_44F4:
    nop
    nop
    jr nz, jr_005_44F8

jr_005_44F8:
    nop
    nop
    jr z, jr_005_44FC

jr_005_44FC:
    nop
    nop
    jr nc, jr_005_4500

jr_005_4500:
    nop

jr_005_4501:
    nop
    jr c, jr_005_4504

jr_005_4504:
    nop
    nop
    ld b, b

jr_005_4507:
    nop
    nop
    nop
    ld c, b
    nop
    nop

jr_005_450D:
    ld [$0000], sp
    call nc, RST_00
    ld [$00D6], sp
    nop
    db $10
    sub $20
    nop
    jr jr_005_44F1

    jr nz, @+$12

    nop
    call nc, $1040
    ld [$40D6], sp
    db $10
    db $10
    sub $60
    db $10
    jr jr_005_4501

    ld h, b

    db $02, $F8, $F8, $80, $00, $F8, $00, $80, $20, $02, $F5, $F8, $82, $00, $F5, $00
    db $84, $00, $02, $F8, $F8, $86, $00, $F8, $00, $88, $00, $02, $F8, $F8, $B8, $00
    db $F8, $00, $BA, $00, $02, $F4, $F8, $B0, $00, $F4, $00, $B2, $00, $02, $F4, $F8
    db $B4, $00, $F4, $00, $B6, $00, $04, $F0, $F8, $8A, $00, $F0, $00, $8C, $00, $00
    db $F8, $8E, $00, $00, $00, $90, $00, $03, $F0, $F8, $92, $00, $F0, $00, $94, $00
    db $00, $00, $96, $00, $04, $F0, $F8, $8A, $00, $F0, $00, $8C, $00, $00, $F8, $98
    db $00, $00, $00, $9A, $00, $05, $F0, $F0, $BC, $00, $F0, $F8, $BE, $00, $F0, $00
    db $C0, $00, $00, $F8, $C2, $00, $00, $00, $C4, $00, $06, $F0, $E8, $C6, $00, $F0
    db $F0, $C8, $00, $F0, $F8, $CA, $00, $F0, $00, $CC, $00, $00, $F8, $CE, $00, $00
    db $00, $D0, $00, $04, $F0, $F8, $9C, $00, $F0, $00, $9E, $00, $00, $F8, $A0, $00
    db $00, $00, $A2, $00, $04, $F0, $F8, $A4, $00, $F0, $00, $A6, $00, $00, $F8, $A8
    db $00, $00, $00, $AA, $00, $0E, $E8, $F8, $80, $00, $E8, $00, $82, $00, $F8, $F8
    db $84, $00, $F8, $00, $86, $00, $08, $F8, $88, $00, $08, $00, $8A, $00, $E8, $08
    db $8C, $00, $E8, $10, $8E, $00, $E8, $18, $90, $00, $E8, $20, $92, $00, $F8, $08
    db $94, $00, $F8, $10, $96, $00, $F8, $18, $98, $00, $F8, $20, $9A, $00, $09, $E8
    db $F8, $80, $00, $E8, $00, $9C, $00, $E8, $08, $9E, $00, $F8, $F8, $84, $00, $F8
    db $00, $86, $00, $08, $F8, $88, $00, $08, $00, $8A, $00, $F8, $08, $A0, $00, $08
    db $08, $A2, $00, $0B, $E8, $F8, $80, $00, $E8, $00, $A8, $00, $F8, $F0, $A4, $00
    db $F8, $F8, $A6, $00, $F8, $00, $AA, $00, $08, $F8, $88, $00, $08, $00, $AC, $00
    db $F8, $08, $AE, $00, $08, $08, $B0, $00, $F8, $10, $B2, $00, $08, $10, $B4, $00
    db $0E, $E8, $F8, $80, $00, $E8, $00, $82, $00, $F8, $F8, $B6, $00, $F8, $00, $B8
    db $00, $08, $F8, $BA, $00, $08, $00, $BC, $00, $E8, $08, $8C, $00, $E8, $10, $8E
    db $00, $E8, $18, $90, $00, $E8, $20, $92, $00, $F8, $08, $94, $00, $F8, $10, $96
    db $00, $F8, $18, $98, $00, $F8, $20, $9A, $00, $10, $E8, $F8, $80, $00, $E8, $00
    db $82, $00, $F8, $F8, $BE, $00, $F8, $00, $C0, $00, $08, $F8, $C2, $00, $08, $00
    db $C4, $00, $18, $F8, $C6, $00, $18, $00, $C8, $00, $E8, $08, $8C, $00, $E8, $10
    db $8E, $00, $E8, $18, $90, $00, $E8, $20, $92, $00, $F8, $08, $94, $00, $F8, $10
    db $96, $00, $F8, $18, $98, $00, $F8, $20, $9A, $00

    ld b, $F0
    db $F4
    sbc h
    nop
    ldh a, [$FC]
    sbc [hl]
    nop
    ldh a, [rDIV]
    and b
    nop
    nop
    db $F4
    and d
    nop
    nop
    db $FC
    and h
    nop
    nop
    inc b
    and [hl]
    nop
    ld b, $F0
    db $F4
    sbc h
    nop
    ldh a, [$FC]
    sbc [hl]
    nop
    ldh a, [rDIV]
    and b
    nop
    nop
    db $F4
    xor b
    nop
    nop
    db $FC
    xor d
    nop
    nop
    inc b
    xor h
    nop
    inc b
    ldh a, [$F8]
    xor [hl]
    nop
    ldh a, [rP1]
    or b
    nop
    nop
    ld hl, sp-$4E
    nop
    nop
    nop
    or h
    nop
    inc b
    ldh a, [$F8]
    or [hl]
    nop
    ldh a, [rP1]
    cp b
    nop
    nop
    ld hl, sp-$46
    nop
    nop
    nop
    cp h
    nop
    inc b
    ldh a, [$F8]
    cp [hl]
    nop
    ldh a, [rP1]
    ret nz

    nop
    nop
    ld hl, sp-$3E
    nop
    nop
    nop
    call nz, Call_000_0400
    ldh a, [$F8]
    or [hl]
    nop
    ldh a, [rP1]
    cp b
    nop
    nop
    ld hl, sp-$3A
    nop
    nop
    nop
    ret z

    nop
    ld [bc], a
    ret c

    ldh a, [$CA]
    nop
    add sp, -$10
    call z, $0200
    ldh a, [$E8]
    ld [c], a
    nop
    ldh a, [$F0]
    db $E4
    nop
    ld b, $F8
    ldh a, [$CE]
    nop
    ldh a, [$F8]
    ret nc

    nop
    ldh a, [rP1]
    jp nc, $F800

    ld [$00D4], sp
    nop
    ld hl, sp-$2A
    nop
    nop
    nop
    ret c

    nop
    ld b, $F8
    ldh a, [$CE]
    nop
    ldh a, [$F8]
    ret nc

    nop
    ldh a, [rP1]
    jp nc, $F800

    ld [$00D4], sp
    nop
    ld hl, sp-$26
    nop
    nop
    nop
    call c, $0600
    ld hl, sp-$10
    adc $00
    ldh a, [$F8]
    ret nc

    nop
    ldh a, [rP1]
    jp nc, $F800

    ld [$00D4], sp
    nop
    ld hl, sp-$22
    nop
    nop
    nop
    ldh [rP1], a
    dec b
    ldh a, [$F8]
    and $00
    ldh a, [rP1]
    jp nc, $F800

    ld [$00D4], sp
    nop
    ld hl, sp-$2A
    nop
    nop
    nop
    ret c

    nop
    inc b
    nop
    db $FC
    add sp, $00
    nop
    inc b
    add sp, $00
    db $10
    db $FC
    ld [$1000], a
    inc b
    db $EC
    nop
    ld [bc], a
    ld hl, sp+$00
    ret nz

    nop
    ld hl, sp+$08
    jp nz, Jump_000_0A00

    ldh a, [$EC]
    add b
    nop
    ldh a, [$F4]

Call_005_47F1:
    add d
    nop
    ldh a, [$FC]
    add h
    nop
    ldh a, [rDIV]
    add [hl]
    nop
    ldh a, [$0C]
    adc b
    nop
    nop
    db $EC
    adc d
    nop
    nop
    db $F4
    adc h
    nop
    nop
    db $FC
    adc [hl]
    nop
    nop
    inc b
    sub b
    nop
    nop
    inc c
    sub d
    nop
    add hl, bc
    ldh a, [$EC]
    add b
    nop
    ldh a, [$F4]
    add d
    nop
    ldh a, [$FC]
    add h
    nop
    ldh a, [rDIV]
    add [hl]
    nop
    ldh a, [$0C]
    adc b
    nop
    nop
    db $F4
    sub h
    nop
    nop
    db $FC
    sub [hl]
    nop
    nop
    inc b
    sub b
    nop
    nop
    inc c
    sub d
    nop
    inc bc
    ld hl, sp-$0C
    cp d
    nop
    ld hl, sp-$04
    cp h
    nop
    ld hl, sp+$04
    cp [hl]
    nop
    inc b
    ldh a, [$F2]
    jp z, RST_00

    ld a, [c]
    call z, $F000
    ld a, [$00CE]
    nop
    ld a, [$00D0]
    inc b
    ldh a, [$F2]
    jp z, RST_00

    ld a, [c]
    call z, $F000
    ld a, [$00D2]
    nop
    ld a, [$00D4]
    inc b
    ldh a, [$F2]
    jp z, RST_00

    ld a, [c]
    call z, $F000
    ld a, [$00D6]
    nop
    ld a, [$00D8]
    inc b
    ldh a, [$F2]
    jp c, RST_00

    ld a, [c]
    call z, $F000
    ld a, [$00CE]
    nop
    ld a, [$00D0]
    ld bc, $FCF4
    call c, Call_000_1000
    push hl
    ldh a, [$80]
    nop
    push hl
    ld hl, sp-$7E
    nop
    push hl
    nop
    add h
    nop
    push hl
    ld [$0086], sp
    push af
    add sp, -$78
    nop
    push af
    ldh a, [$8A]
    nop
    push af
    ld hl, sp-$74
    nop
    push af
    nop
    adc [hl]
    nop
    dec b
    ldh a, [$90]
    nop
    dec b
    ld hl, sp-$6E
    nop
    dec b
    nop
    sub h
    nop
    dec b
    ld [$0096], sp
    dec d
    ldh a, [$98]
    nop
    dec d
    ld hl, sp-$66
    nop
    dec d
    nop
    sbc h
    nop
    dec d
    ld [$009E], sp
    inc c
    db $E4
    ldh a, [$80]
    nop
    db $E4
    ld hl, sp-$7E
    nop
    db $E4
    nop
    add h
    nop
    db $E4
    ld [$0086], sp
    db $F4
    add sp, -$78
    nop
    db $F4
    ldh a, [$8A]
    nop
    db $F4
    ld hl, sp-$74
    nop
    db $F4
    nop
    adc [hl]
    nop
    inc b
    ld hl, sp-$60
    nop
    inc b
    nop
    and d
    nop
    inc d
    ld hl, sp-$5C
    nop
    inc d
    nop
    and [hl]
    nop
    db $10
    push hl
    ldh a, [$80]
    nop
    push hl
    ld hl, sp-$7E
    nop
    push hl
    nop
    add h
    nop
    push hl
    ld [$0086], sp
    push af
    add sp, -$78
    nop
    push af
    ldh a, [$8A]
    nop
    push af
    ld hl, sp-$74
    nop
    push af
    nop
    adc [hl]
    nop
    dec b
    ldh a, [$A8]
    nop
    dec b
    ld hl, sp-$56
    nop
    dec b
    nop
    xor h
    nop
    dec b
    ld [$00AE], sp
    dec d
    ldh a, [$B0]
    nop
    dec d
    ld hl, sp-$4E
    nop
    dec d
    nop
    or h
    nop
    dec d
    ld [$00B6], sp
    ld a, [bc]
    ldh a, [$E8]
    cp b
    nop
    ldh a, [$F0]
    cp d
    nop
    ldh a, [$F8]
    cp h
    nop
    ldh a, [rP1]
    cp [hl]
    nop
    ldh a, [$08]
    ret nz

    nop
    ldh a, [rNR10]
    jp nz, RST_00

    ld hl, sp-$60
    nop
    nop
    nop
    and d
    nop
    db $10
    ld hl, sp-$5C
    nop
    stop
    and [hl]
    nop
    inc c
    db $E4
    ldh a, [$80]
    nop
    db $E4
    ld hl, sp-$7E
    nop
    db $E4
    nop
    add h
    nop
    db $E4
    ld [$0086], sp
    db $F4
    add sp, -$3C
    nop
    db $F4
    ldh a, [$C6]
    nop
    db $F4
    ld hl, sp-$74
    nop
    db $F4
    nop
    adc [hl]
    nop
    inc b
    ld hl, sp-$60
    nop
    inc b
    nop
    and d
    nop
    inc d
    ld hl, sp-$5C
    nop
    inc d
    nop
    and [hl]
    nop
    ld [bc], a
    db $F4
    ld hl, sp-$38
    nop
    db $F4
    nop
    jp z, Jump_000_0A00

    add sp, $00
    add b
    nop
    add sp, $08
    add d
    nop
    ld hl, sp-$10
    add h
    nop
    ld hl, sp-$08
    add [hl]
    nop
    ld hl, sp+$00
    adc b
    nop
    ld hl, sp+$08
    adc d
    nop
    ld [$C4F0], sp
    nop
    ld [$8CF8], sp
    nop
    ld [$8E00], sp
    nop
    ld [$9008], sp
    nop
    dec bc
    add sp, -$10
    sub d
    nop
    add sp, -$08
    sub h
    nop
    add sp, $00
    sub [hl]
    nop
    add sp, $08
    sbc b
    nop
    ld hl, sp-$10
    sbc d
    nop
    ld hl, sp-$08
    sbc h
    nop
    ld hl, sp+$00
    sbc [hl]
    nop
    ld hl, sp+$08
    and b
    nop
    ld [$A2F8], sp
    nop
    ld [$8E00], sp
    nop
    ld [$9008], sp
    nop
    dec c
    ret c

    ld hl, sp-$5C
    nop
    ret c

    nop
    and [hl]
    nop
    ret c

    ld [$00A8], sp
    add sp, -$08
    xor d
    nop
    add sp, $00
    xor h
    nop
    add sp, $08
    xor [hl]
    nop
    ld hl, sp-$10
    or b
    nop
    ld hl, sp-$08
    or d
    nop
    ld hl, sp+$00
    or h
    nop
    ld hl, sp+$08
    or [hl]
    nop
    ld [$A2F8], sp
    nop
    ld [$8E00], sp
    nop
    ld [$9008], sp
    nop
    ld [bc], a
    ld hl, sp-$08
    cp b
    nop
    ld hl, sp+$00
    cp d
    nop
    ld [bc], a
    ld hl, sp-$08
    cp h
    nop
    ld hl, sp+$00
    cp [hl]
    nop
    ld [bc], a
    ld hl, sp-$08
    ret nz

    nop
    ld hl, sp+$00
    jp nz, Boot

    nop
    nop
    adc d
    nop
    ld [bc], a
    ld hl, sp-$08
    adc h
    nop
    ld hl, sp+$00
    adc [hl]
    nop
    ld [bc], a
    ld hl, sp-$08
    adc d
    nop
    ld hl, sp+$00
    adc h
    nop
    ld [bc], a
    ld hl, sp-$08
    adc [hl]
    nop
    ld hl, sp+$00
    sub b
    nop
    ld [bc], a
    ld hl, sp-$08
    sub d
    nop
    ld hl, sp+$00
    sub h
    nop
    ld bc, $FCF4
    sub [hl]
    nop
    ld bc, $FCF4
    sbc d
    nop
    ld bc, $FCF4
    sbc b
    nop
    ld [bc], a
    nop
    ld hl, sp-$4E
    nop
    nop
    nop
    or b
    nop
    ld [bc], a
    nop
    ld hl, sp-$4A
    nop
    nop
    nop
    or h
    nop
    ld [bc], a
    nop
    ld hl, sp-$44
    nop
    nop
    nop
    cp [hl]
    nop
    ld [bc], a
    nop
    ld hl, sp-$48
    nop
    nop
    nop
    cp d
    nop
    inc b
    ldh a, [$F8]
    cp h
    nop
    ldh a, [rP1]
    cp [hl]
    nop
    nop
    ld hl, sp-$40
    nop
    nop
    nop
    jp nz, Jump_000_0400

    ldh a, [$F8]
    cp b
    nop
    ldh a, [rP1]
    cp d
    nop
    nop
    ld hl, sp-$3C
    nop
    nop
    nop
    add $00
    inc b
    ld hl, sp-$14
    sbc h
    nop
    ld hl, sp-$0C
    sbc [hl]
    nop
    ld hl, sp-$04
    and b
    nop
    ld hl, sp+$04
    and d
    nop
    inc b
    ld hl, sp-$10
    and h
    nop
    ld hl, sp-$08
    and [hl]
    nop
    ld hl, sp+$00
    xor b
    nop
    ld hl, sp+$08
    xor d
    nop
    inc b
    ld hl, sp-$10
    add b
    nop
    ld hl, sp-$08
    add d
    nop
    ld hl, sp+$00
    add h
    nop
    ld hl, sp+$08
    add [hl]
    nop
    ld [bc], a
    ld hl, sp-$08
    adc b
    nop
    ld hl, sp+$00
    adc d
    nop
    inc b
    ld hl, sp-$10
    adc h
    nop
    ld hl, sp-$08
    adc [hl]
    nop
    ld hl, sp+$00
    sub b
    nop
    ld hl, sp+$08
    sub d
    nop
    inc b
    ld hl, sp-$10
    sub h
    nop
    ld hl, sp-$08
    sub [hl]
    nop
    ld hl, sp+$00
    sbc b
    nop
    ld hl, sp+$08
    sbc d
    nop
    inc b
    ld hl, sp-$10
    sbc h
    nop
    ld hl, sp-$08
    sbc [hl]
    nop
    ld hl, sp+$00
    and b
    nop
    ld hl, sp+$08
    and d
    nop
    inc b
    ld hl, sp-$10
    and h
    nop
    ld hl, sp-$08
    and [hl]
    nop
    ld hl, sp+$00
    xor b
    nop
    ld hl, sp+$08
    xor d
    nop
    ld [bc], a
    ld hl, sp-$08
    xor h
    nop
    ld hl, sp+$00
    xor [hl]
    nop
    ld [bc], a
    nop
    ld hl, sp-$50
    nop
    nop
    nop
    or d
    nop
    ld b, $F0
    db $F4
    adc d
    nop
    ldh a, [$FC]
    adc h
    nop
    ldh a, [rDIV]
    adc [hl]
    nop
    nop
    db $F4
    sub b
    nop
    nop
    db $FC
    sub d
    nop
    nop
    inc b
    sub h
    nop
    ld [$F0F0], sp
    sub [hl]
    nop
    ldh a, [$F8]
    sbc b
    nop
    ldh a, [rP1]
    sbc d
    nop
    ld hl, sp+$08
    sbc h
    nop
    nop
    ldh a, [$9E]
    nop
    nop
    ld hl, sp-$60
    nop
    nop
    nop
    and d
    nop
    ld [$A408], sp
    nop
    ld [$F0F0], sp
    and [hl]
    nop
    ldh a, [$F8]
    xor b
    nop
    ldh a, [rP1]
    xor d
    nop
    ld hl, sp+$08
    xor h
    nop
    nop
    ldh a, [$9E]
    nop
    nop
    ld hl, sp-$52
    nop
    nop
    nop
    or b
    nop
    ld [$A408], sp
    nop
    add hl, bc
    ldh a, [$E8]
    or d
    nop
    ldh a, [$F0]
    or h
    nop
    ldh a, [$F8]
    or [hl]
    nop
    ldh a, [rP1]
    cp b
    nop
    ld hl, sp+$08
    cp d
    nop
    nop
    ldh a, [$9E]
    nop
    nop
    ld hl, sp-$44
    nop
    nop
    nop
    cp [hl]
    nop
    ld [$C008], sp
    nop
    ld b, $F0
    ldh a, [$A6]
    nop
    ldh a, [$F8]
    xor b
    nop
    ldh a, [rP1]
    jp nz, $F000

    ld [$00C4], sp
    nop
    ld hl, sp-$3A
    nop
    nop
    nop
    ret z

    nop
    dec bc
    ldh a, [$E8]
    or d
    nop
    ldh a, [$F0]
    or h
    nop
    ldh a, [$F8]
    or [hl]
    nop
    ldh a, [rP1]
    cp b
    nop
    ld hl, sp+$08
    cp d
    nop
    nop
    ldh a, [$CA]
    nop
    nop
    ld hl, sp-$34
    nop
    nop
    nop
    adc $00
    ld [$D008], sp
    nop
    db $10
    ldh a, [$D2]
    nop
    db $10
    ld hl, sp-$2C
    nop
    ld a, [bc]
    ldh a, [$F0]
    and [hl]
    nop
    ldh a, [$F8]
    xor b
    nop
    ldh a, [rP1]
    cp b
    nop
    ld hl, sp+$08
    cp d
    nop
    nop
    ldh a, [$CA]
    nop
    nop
    ld hl, sp-$34
    nop
    nop
    nop
    adc $00
    ld [$D008], sp
    nop
    db $10
    ldh a, [$D2]
    nop
    db $10
    ld hl, sp-$2C
    nop
    ld [bc], a
    ld hl, sp-$08
    sub $00
    ld hl, sp+$00
    ret c

    nop
    ld bc, $FCF8
    jp c, $0200

    ld hl, sp-$08
    call c, $F800
    nop
    sbc $00
    ld [bc], a
    nop
    nop
    ldh [rP1], a
    nop
    nop
    ld [c], a
    nop
    ld [bc], a
    db $FC
    db $FC
    xor h
    nop
    inc c
    db $FC
    xor [hl]
    nop
    ld [de], a
    nop
    nop
    nop
    nop
    nop
    ld [$0002], sp
    nop
    db $10
    inc b
    nop
    nop
    jr jr_005_4C88

    nop
    nop
    jr nz, jr_005_4C8E

    nop
    nop

jr_005_4C88:
    jr z, jr_005_4C94

    nop
    stop
    inc c

jr_005_4C8E:
    nop
    db $10
    ld [$000E], sp
    db $10

jr_005_4C94:
    db $10
    stop
    db $10
    jr @+$14

    nop
    db $10
    jr nz, @+$16

    nop
    db $10
    jr z, @+$18

    nop
    jr nz, jr_005_4CA5

jr_005_4CA5:
    jr jr_005_4CA7

jr_005_4CA7:
    jr nz, jr_005_4CB1

    ld a, [de]
    nop
    jr nz, jr_005_4CBD

    inc e
    nop
    jr nz, jr_005_4CC9

jr_005_4CB1:
    ld e, $00
    jr nz, jr_005_4CD5

    jr nz, jr_005_4CB7

jr_005_4CB7:
    jr nz, jr_005_4CE1

    ld [hl+], a
    nop
    ld [de], a
    nop

jr_005_4CBD:
    ret nc

jr_005_4CBE:
    inc h
    nop
    nop
    ret c

    ld h, $00
    nop
    ldh [$28], a
    nop
    nop

jr_005_4CC9:
    add sp, $2A
    nop
    nop
    ldh a, [$2C]
    nop
    nop
    ld hl, sp+$2E
    nop
    db $10

jr_005_4CD5:
    ret nc

jr_005_4CD6:
    jr nc, jr_005_4CD8

jr_005_4CD8:
    db $10
    ret c

    ld [hl-], a
    nop
    db $10
    ldh [$34], a
    nop
    db $10

jr_005_4CE1:
    add sp, $36
    nop
    db $10
    ldh a, [$38]
    nop
    db $10
    ld hl, sp+$3A
    nop
    jr nz, jr_005_4CBE

jr_005_4CEE:
    inc a
    nop
    jr nz, @-$26

    ld a, $00
    jr nz, jr_005_4CD6

    ld b, b
    nop
    jr nz, @-$16

jr_005_4CFA:
    ld b, d
    nop
    jr nz, jr_005_4CEE

    ld b, h
    nop
    jr nz, jr_005_4CFA

    ld b, [hl]
    nop
    ld b, $F0
    db $F4
    sbc h
    nop
    ldh a, [$FC]
    sbc [hl]
    nop
    ldh a, [rDIV]
    and b
    nop
    nop
    db $F4
    and d
    nop
    nop
    db $FC
    and h
    nop
    nop
    inc b
    and [hl]
    nop
    ld b, $F0
    db $F4
    xor h
    nop
    ldh a, [$FC]
    sbc [hl]
    nop
    ldh a, [rDIV]
    and b
    nop
    nop
    db $F4
    and d
    nop
    nop
    db $FC
    and h
    nop
    nop
    inc b
    and [hl]
    nop
    dec b
    ldh a, [$F4]
    sbc h
    nop
    ldh a, [$FC]
    sbc [hl]
    nop
    ldh a, [rDIV]
    and b
    nop
    nop
    db $F4
    xor b
    nop
    nop
    db $FC
    xor d
    nop
    dec b
    ldh a, [$F4]
    xor h
    nop
    ldh a, [$FC]
    sbc [hl]
    nop
    ldh a, [rDIV]
    and b
    nop
    nop
    db $F4
    xor b
    nop
    nop
    db $FC
    xor d
    nop
    ld bc, $FCFC
    xor [hl]
    nop
    add hl, bc
    add sp, -$08
    add b
    nop
    add sp, $00
    add d
    nop
    add sp, $08
    add h
    nop
    ld hl, sp-$08
    add [hl]
    nop
    ld hl, sp+$00
    adc b
    nop
    ld hl, sp+$08
    adc d
    nop
    ld [$9AF8], sp
    nop
    ld [$9C00], sp
    nop
    ld [$9E08], sp
    nop
    ld a, [bc]
    add sp, -$08
    adc h
    nop
    add sp, $00
    adc [hl]
    nop
    add sp, $08
    sub b
    nop
    ld hl, sp-$10
    sub d
    nop
    ld hl, sp-$08
    sub h
    nop
    ld hl, sp+$00
    sub [hl]
    nop
    ld hl, sp+$08
    sbc b
    nop
    ld [$9AF8], sp
    nop
    ld [$9C00], sp
    nop
    ld [$9E08], sp
    nop
    ld [$F8E8], sp
    add b
    nop
    add sp, $00
    add d
    nop
    add sp, $08
    add h
    nop
    ld hl, sp-$08
    add [hl]
    nop
    ld hl, sp+$00
    adc b
    nop
    ld hl, sp+$08
    adc d
    nop
    ld [$A0F8], sp
    nop
    ld [$A200], sp
    nop
    ld a, [bc]
    add sp, -$08
    adc h
    nop
    add sp, $00
    adc [hl]
    nop
    add sp, $08
    sub b
    nop
    ld hl, sp-$10
    sub d
    nop
    ld hl, sp-$08
    sub h
    nop
    ld hl, sp+$00
    sub [hl]
    nop
    ld hl, sp+$08
    sbc b
    nop
    ld [$A4F0], sp
    nop
    ld [$A6F8], sp
    nop
    ld [$A800], sp
    nop
    add hl, bc
    add sp, -$0C
    add b
    nop
    add sp, -$04
    add d
    nop
    add sp, $04
    add h
    nop
    ld hl, sp-$0C
    adc d
    nop
    ld hl, sp-$04
    add [hl]
    nop
    ld hl, sp+$04
    adc [hl]
    nop
    ld [$8CF4], sp
    nop
    ld [$88FC], sp
    nop
    ld [$9004], sp
    nop
    dec bc
    add sp, -$0C
    add b
    nop
    add sp, -$04
    add d
    nop
    add sp, $04
    add h
    nop
    ld hl, sp-$14
    sub d
    nop
    ld hl, sp-$0C
    sub [hl]
    nop
    ld hl, sp-$04
    add [hl]
    nop
    ld hl, sp+$04
    adc [hl]
    nop
    ld [$94EC], sp
    nop
    ld [$98F4], sp
    nop
    ld [$88FC], sp
    nop
    ld [$9004], sp
    nop
    dec c
    add sp, -$0C
    add b
    nop
    add sp, -$04
    add d
    nop
    add sp, $04
    add h
    nop
    ldh a, [$E4]
    and d
    nop
    ldh a, [$EC]
    and [hl]
    nop
    ld hl, sp-$0C
    xor d
    nop
    ld hl, sp-$04
    add [hl]
    nop
    ld hl, sp+$04
    adc [hl]
    nop
    nop
    db $E4
    and h
    nop
    nop
    db $EC
    xor b
    nop
    ld [$ACF4], sp
    nop
    ld [$88FC], sp
    nop
    ld [$9004], sp
    nop
    ld [$F0F0], sp
    cp d
    nop
    ldh a, [$F8]
    cp [hl]
    nop
    ldh a, [rP1]
    ret nz

    nop
    ldh a, [$08]
    jp nz, RST_00

    ldh a, [$BC]
    nop
    nop
    ld hl, sp-$3A
    nop
    nop
    nop
    ret z

    nop
    nop
    ld [$00C4], sp
    ld [$F0F0], sp
    cp d
    nop
    ldh a, [$F8]
    cp [hl]
    nop
    ldh a, [rP1]
    ret nz

    nop
    ldh a, [$08]
    jp nz, RST_00

    ldh a, [$BC]
    nop
    nop
    ld hl, sp-$36
    nop
    nop
    nop
    call z, RST_00
    ld [$00C4], sp
    ld [bc], a
    ld hl, sp-$08
    adc $00
    ld hl, sp+$00
    ret nc

    nop
    ld [bc], a
    ld hl, sp-$08
    jp nc, $F800

    nop
    call nc, $0200
    ld hl, sp-$08
    sub $00
    ld hl, sp+$00
    ret c

    nop
    ld [$F0F0], sp
    add b
    nop
    ldh a, [$F8]
    add d
    nop
    ldh a, [rP1]
    add h
    nop
    ldh a, [$08]
    add [hl]
    nop
    nop
    ldh a, [$88]
    nop
    nop
    ld hl, sp-$76
    nop
    nop
    nop
    adc h
    nop
    nop
    ld [$008E], sp
    ld [$F0F0], sp
    cp h
    nop
    ldh a, [$F8]
    cp [hl]
    nop
    ldh a, [rP1]
    ret nz

    nop
    ldh a, [$08]
    jp nz, RST_00

    ldh a, [$C4]
    nop
    nop
    ld hl, sp-$3A
    nop
    nop
    nop
    ret z

    nop
    nop
    ld [$00CA], sp
    ld b, $F0
    or $90
    nop
    ldh a, [$FE]
    sub d
    nop
    ldh a, [rTMA]
    sub h
    nop
    nop
    or $96
    nop
    nop
    cp $98
    nop
    nop
    ld b, $9A
    nop
    inc b
    ldh a, [$FA]
    sbc h
    nop
    ldh a, [rSC]
    sbc [hl]
    nop
    nop
    ld a, [$00A0]
    nop
    ld [bc], a
    and d
    nop
    ld b, $F0
    or $A4
    nop
    ldh a, [$FE]
    and [hl]
    nop
    ldh a, [rTMA]
    xor b
    nop
    nop
    or $AA
    nop
    nop
    cp $AC
    nop
    nop
    ld b, $AE
    nop
    ld b, $F0
    ld hl, sp-$50
    nop
    ldh a, [rP1]
    or d
    nop
    ldh a, [$08]
    or h
    nop
    nop
    ld hl, sp-$4A
    nop
    nop
    nop
    cp b
    nop
    nop
    ld [$00BA], sp
    ld [bc], a
    ld hl, sp-$08
    call z, $F800
    nop
    adc $00
    ld [bc], a
    ld hl, sp-$08
    ret nc

    nop
    ld hl, sp+$00
    jp nc, $0200

    ld hl, sp-$08
    call nc, $F800
    nop
    sub $00
    ld [$F0F0], sp
    add b
    nop
    ldh a, [$F8]
    add d
    nop
    ldh a, [rP1]
    add h
    nop
    ldh a, [$08]
    add [hl]
    nop
    nop
    ldh a, [$D8]
    nop
    nop
    ld hl, sp-$76
    nop
    nop
    nop
    adc h
    nop
    nop
    ld [$008E], sp
    inc c
    nop
    cp $00
    nop
    nop
    ld b, $02
    nop
    nop
    ld c, $04
    nop
    db $10
    cp $06
    nop
    db $10
    ld b, $08
    nop
    db $10
    ld c, $0A
    nop

jr_005_4FD4:
    db $10
    ld d, $14
    nop
    db $10
    ld e, $16
    nop
    jr nz, jr_005_4FD4

    inc c
    nop

jr_005_4FE0:
    jr nz, jr_005_4FE0

    ld c, $00
    jr nz, jr_005_4FEC

    stop
    jr nz, jr_005_4FF8

    ld [de], a
    nop

jr_005_4FEC:
    inc c
    nop
    cp $18
    nop
    nop
    ld b, $1A
    nop
    nop
    ld c, $1C

jr_005_4FF8:
    nop
    db $10
    cp $06
    nop
    db $10
    ld b, $08
    nop
    db $10
    ld c, $0A
    nop

jr_005_5005:
    db $10
    ld d, $1E
    nop
    db $10
    ld e, $20
    nop
    jr nz, jr_005_5005

    inc c
    nop

jr_005_5011:
    jr nz, jr_005_5011

    ld c, $00
    jr nz, jr_005_501D

    stop
    jr nz, jr_005_5029

    ld [de], a
    nop

jr_005_501D:
    inc c
    nop
    cp $22
    nop
    nop
    ld b, $24
    nop
    nop
    ld c, $26

jr_005_5029:
    nop
    db $10
    cp $28
    nop
    db $10
    ld b, $2A
    nop
    db $10
    ld c, $2C
    nop

jr_005_5036:
    db $10
    ld d, $1E
    nop
    db $10
    ld e, $20
    nop
    jr nz, jr_005_5036

    inc c
    nop

jr_005_5042:
    jr nz, jr_005_5042

    ld c, $00
    jr nz, jr_005_504E

    stop
    jr nz, jr_005_505A

    ld l, $00

jr_005_504E:
    dec c
    nop
    cp $18
    nop
    nop
    ld b, $1A
    nop
    nop
    ld c, $30

jr_005_505A:
    nop
    nop
    ld d, $32
    nop
    db $10
    cp $34
    nop
    db $10
    ld b, $36
    nop
    db $10
    ld c, $38
    nop

jr_005_506B:
    db $10
    ld d, $3A
    nop
    db $10
    ld e, $3C
    nop
    jr nz, jr_005_506B

    inc c
    nop

jr_005_5077:
    jr nz, jr_005_5077

    ld c, $00
    jr nz, jr_005_5083

    stop
    jr nz, jr_005_508F

    ld l, $00

jr_005_5083:
    ld c, $00
    cp $18
    nop
    nop
    ld b, $1A
    nop
    nop
    ld c, $3E

jr_005_508F:
    nop
    nop
    ld d, $42
    nop
    nop
    ld e, $44
    nop
    db $10
    cp $06
    nop
    db $10
    ld b, $08
    nop
    db $10
    ld c, $40
    nop

jr_005_50A4:
    db $10
    ld d, $46
    nop
    db $10
    ld e, $48
    nop
    jr nz, jr_005_50A4

    inc c
    nop

jr_005_50B0:
    jr nz, jr_005_50B0

    ld c, $00
    jr nz, jr_005_50BC

    stop
    jr nz, jr_005_50C8

    ld [de], a
    nop

jr_005_50BC:
    ld c, $00
    cp $18
    nop
    nop
    ld b, $1A
    nop
    nop
    ld c, $4A

jr_005_50C8:
    nop
    nop
    ld d, $4C
    nop
    nop
    ld e, $4E
    nop
    db $10
    cp $06
    nop
    db $10
    ld b, $08
    nop
    db $10
    ld c, $40
    nop

jr_005_50DD:
    db $10
    ld d, $50
    nop
    db $10
    ld e, $52
    nop
    jr nz, jr_005_50DD

    inc c
    nop

jr_005_50E9:
    jr nz, jr_005_50E9

    ld c, $00
    jr nz, jr_005_50F5

    stop
    jr nz, jr_005_5101

    ld [de], a
    nop

jr_005_50F5:
    dec de
    nop
    db $10
    ld d, h
    nop
    nop
    jr @+$58

    nop
    stop
    ld e, h

jr_005_5101:
    nop
    db $10
    ld [$005E], sp
    db $10
    db $10
    ld e, b
    nop
    db $10
    jr jr_005_5167

    nop
    db $10
    jr nz, jr_005_516F

    nop
    db $10
    jr z, jr_005_5173

    nop
    db $10
    jr nc, jr_005_5177

    nop
    db $10
    jr c, @+$62

    nop
    db $10
    ld b, b
    ld e, h
    jr nz, @+$22

    nop
    ld h, d
    nop
    jr nz, jr_005_5130

    ld h, h
    nop
    jr nz, jr_005_513C

    ld h, [hl]
    nop
    jr nz, @+$1A

jr_005_5130:
    ld l, b
    nop
    jr nz, jr_005_5154

    ld l, d
    nop
    jr nz, jr_005_5160

    ld l, h
    nop
    jr nz, @+$32

jr_005_513C:
    ld l, [hl]
    nop
    jr nz, jr_005_5178

    ld [hl], b
    nop
    jr nz, jr_005_5184

    ld h, d
    jr nz, jr_005_5177

    ld [$0072], sp
    jr nc, jr_005_515C

    ld [hl], h
    nop
    jr nc, jr_005_5168

    ld [hl], h
    nop
    jr nc, jr_005_5174

jr_005_5154:
    ld [hl], h
    nop
    jr nc, jr_005_5180

    ld [hl], h
    nop
    jr nc, @+$32

jr_005_515C:
    ld [hl], h
    nop
    jr nc, @+$3A

jr_005_5160:
    ld [hl], d
    jr nz, @+$18

    nop
    db $10
    ld d, h
    nop

jr_005_5167:
    nop

jr_005_5168:
    jr jr_005_51C0

    nop
    stop
    ld e, h
    nop

jr_005_516F:
    db $10
    ld [$005E], sp

jr_005_5173:
    db $10

jr_005_5174:
    db $10
    ld e, b
    nop

jr_005_5177:
    db $10

jr_005_5178:
    jr jr_005_51D4

    nop
    db $10
    jr nz, @+$60

    nop
    db $10

jr_005_5180:
    jr z, @+$60

    nop
    db $10

jr_005_5184:
    jr nc, @+$60

    nop
    jr nz, jr_005_5189

jr_005_5189:
    ld h, d
    nop
    jr nz, jr_005_5195

    ld h, h
    nop
    jr nz, jr_005_51A1

    ld h, [hl]
    nop
    jr nz, jr_005_51AD

jr_005_5195:
    ld l, b
    nop
    jr nz, jr_005_51B9

    ld l, d
    nop
    jr nz, jr_005_51C5

    ld l, h
    nop
    jr nz, jr_005_51D1

jr_005_51A1:
    ld l, [hl]
    nop
    jr nc, jr_005_51AD

    ld [hl], d
    nop
    jr nc, jr_005_51B9

    ld [hl], h
    nop
    jr nc, jr_005_51C5

jr_005_51AD:
    ld [hl], h
    nop
    jr nc, jr_005_51D1

    ld [hl], h
    nop
    jr nc, @+$2A

    ld [hl], h
    nop
    jr nc, @+$32

jr_005_51B9:
    ld [hl], h
    nop
    ld [$0000], sp
    nop
    nop

jr_005_51C0:
    nop
    ld [$0002], sp
    nop

jr_005_51C5:
    db $10
    ld [bc], a
    jr nz, jr_005_51C9

jr_005_51C9:
    jr jr_005_51CB

jr_005_51CB:
    jr nz, @+$12

    nop
    nop
    ld b, b
    db $10

jr_005_51D1:
    ld [$4002], sp

jr_005_51D4:
    db $10
    db $10
    ld [bc], a
    ld h, b
    db $10
    jr jr_005_51DB

jr_005_51DB:
    ld h, b

    INCBIN "gfx/image_005_51dc.2bpp"

    INCBIN "gfx/image_005_58dc.2bpp"

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

    INCBIN "gfx/image_005_59dc.2bpp"

    INCBIN "gfx/image_005_62dc.2bpp"

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rra
    rra
    ld a, [hl]
    ld h, d
    cp e
    and h
    ld a, [c]
    rst $08
    call z, Call_005_7CBF
    ld a, c
    rra
    db $10
    inc hl
    inc l
    dec [hl]
    ld l, $2E
    ccf
    ld c, d
    ld e, e
    ld d, e
    ld d, e
    ld [hl], c
    ld d, c
    ld d, c
    ld [hl], c
    sub b
    ldh a, [$88]
    cp b
    xor b
    sbc b
    xor b
    sbc b
    ret z

    cp b
    ret nc

    or b
    sbc b
    ld hl, sp+$78
    ld c, b
    jr c, jr_005_63EA

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    add b
    add $C6
    rst $28
    ld l, c
    dec de
    db $FD
    sbc a
    dec l
    rst $28
    dec a
    ld a, a
    or l
    scf
    ld sp, hl
    dec hl
    db $ED
    ld h, $E6
    and b
    ld h, b
    xor [hl]
    ld l, [hl]
    rst $18
    add hl, sp
    call $8733
    rst $38
    call $BBBF
    sbc l
    cp e
    sbc l
    or l
    sub a

jr_005_63EA:
    and $A6
    ret nc

    or b
    ld l, h
    ld e, h
    dec sp
    daa
    add hl, de
    rra
    rlca
    dec b

jr_005_63F6:
    rlca
    dec b

jr_005_63F8:
    dec bc
    add hl, bc
    ld c, $0E
    nop
    nop
    nop
    nop
    ld b, $06
    rrca
    add hl, bc
    adc e
    adc l
    push hl
    rst $20
    or a
    ld [hl], l
    rrca
    db $ED
    sbc a
    ld hl, $33ED
    ld [hl], d
    cp [hl]
    ld l, $EE
    jr nz, jr_005_63F6

    jr nz, jr_005_63F8

    and b
    ld h, b
    ret nz

    ld b, b
    xor $2E
    dec d
    ld sp, hl
    adc l
    pop af
    rst $18
    and l
    ei
    call Call_005_7977
    ld e, $16
    inc l
    inc h
    inc a
    inc [hl]
    rla
    dec de
    add hl, bc
    rrca
    ld b, $06
    nop
    nop

jr_005_6436:
    nop
    nop

jr_005_6438:
    nop
    nop
    nop
    nop
    ld b, $06
    rrca
    add hl, bc
    dec bc
    dec c
    dec b
    rlca

jr_005_6444:
    add a
    add l
    rst $20
    push hl
    cp e
    ld a, c
    dec d
    db $E3
    sbc d
    ld h, $E4
    inc a
    ld a, b
    cp b
    jr nc, jr_005_6444

    jr nz, jr_005_6436

    jr nz, jr_005_6438

    and [hl]
    ld h, [hl]
    rst $28
    add hl, hl
    rst $10
    dec sp
    dec c
    rst $38
    adc c
    rst $38
    rst $00
    cp l
    rst $30
    call Call_005_657F
    ld e, $16
    inc e
    inc d
    inc h
    inc l
    jr c, jr_005_6498

    ld e, b
    ld c, b
    ld a, b
    ld c, b
    ld [hl], h
    ld l, h
    scf
    ccf
    add hl, de
    rla
    ld c, $0E
    nop
    nop
    ld a, b
    ld a, b
    xor h
    db $EC
    ld e, [hl]
    ld [hl], d
    cpl
    ld sp, $1B37
    ld c, d
    dec a
    cp $FD
    call z, Call_005_7CBF
    ld a, c
    rra
    db $10
    inc hl
    inc l
    dec [hl]
    ld l, $2E
    ccf

jr_005_6498:
    ld c, d
    ld e, e
    ld d, e
    ld d, e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    stop
    ld a, h
    jr @+$68

    inc l
    ld h, $3C
    inc a
    jr jr_005_64C9

    nop
    nop
    nop
    ld hl, sp-$08
    adc h
    add l
    cp a
    add l
    xor [hl]
    sub e
    ld a, [c]
    adc a
    ld [hl], c
    ld l, a
    ld a, [hl-]

jr_005_64C9:
    ld e, $E4
    db $FD
    inc h
    ld a, a
    ld a, [hl-]
    ld e, $71
    ld l, a
    ld a, [c]
    adc a
    xor [hl]
    sub e
    cp a
    add l
    adc l
    add l
    ld sp, hl
    ld sp, hl
    sbc a
    sbc a
    or c
    and c
    db $FD
    and c
    ld [hl], l
    ret


    ld c, a
    pop af
    adc [hl]
    or $5C
    ld a, b
    inc h
    cp [hl]
    daa
    rst $38
    ld e, h
    ld a, b
    adc [hl]
    or $4F
    pop af
    ld [hl], l
    ret


    db $FD
    and c
    ld sp, $1FA1
    rra
    nop
    nop
    nop
    ld bc, $0103
    rlca
    rlca
    add hl, bc
    rrca
    inc de
    dec e
    dec [hl]
    add hl, de
    push af
    ld sp, hl
    ccf
    ld a, a
    inc [hl]
    jr jr_005_6524

    inc e
    ld [$070F], sp
    rlca
    inc bc
    ld bc, $0101
    ld bc, $8001
    add b
    add b
    add b
    ret nz

    add b
    ldh [$E0], a

jr_005_6524:
    db $10
    ldh a, [$C8]

jr_005_6527:
    jr c, jr_005_6555

    jr jr_005_6527

    cp $AF
    sbc a
    xor h
    sbc b
    ret z

    cp b
    sub b
    ldh a, [$E0]
    ldh [$C0], a
    add b
    nop
    add b
    nop
    nop
    nop
    nop
    nop
    ld bc, $0103
    inc bc
    inc bc
    inc b
    rlca
    add hl, bc
    ld c, $3A
    inc e
    rst $38
    rst $38
    dec [hl]
    ld a, c
    inc sp
    dec e
    add hl, bc
    rrca
    rlca
    rlca

jr_005_6554:
    inc bc

jr_005_6555:
    inc bc
    inc bc
    ld bc, $0101
    ld bc, $8001
    add b
    add b
    add b
    ret nz

    add b
    ret nz

    ret nz

    ldh [$E0], a
    sub b
    ldh a, [$CC]
    cp b
    xor h
    sbc [hl]
    rst $38
    rst $38
    ld e, h
    jr c, @-$6E

    ld [hl], b
    jr nz, jr_005_6554

    ret nz

    ret nz

    ret nz

    add b
    nop
    add b
    nop
    nop
    nop
    nop
    nop

Call_005_657F:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc a
    inc a
    ld e, e
    ld h, e
    add $FA
    inc a
    inc a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    db $10
    db $10
    jr jr_005_65C8

    inc h
    inc a
    inc l
    inc [hl]
    inc l
    inc [hl]
    inc [hl]
    inc h
    jr jr_005_65D2

    ld [$0008], sp
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_005_65C8:
    nop
    nop
    nop
    nop
    nop
    nop
    ld [hl], b
    ld [hl], b
    ld c, b
    ld a, b

jr_005_65D2:
    ld e, h
    ld h, h
    ld a, [hl+]
    ld [hl-], a
    ld d, $1A
    ld c, $0E
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, $00
    jr nz, jr_005_6612

    jp nc, $B0D2

    sub b
    call c, $BEBC
    ld a, d
    db $D3
    db $FD
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc b
    inc b
    nop
    nop

jr_005_6612:
    nop
    nop
    ld b, $06
    dec c
    dec c
    rlca
    rlca
    jr z, jr_005_664B

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, d
    ld [bc], a
    inc bc
    ld bc, $3030
    ld h, b
    ld h, b
    call nz, $CEC4
    ld c, h
    call c, $F858
    jp hl


    sbc $AE
    db $FC
    jr @-$40

    ld e, h
    sbc a
    db $ED
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    inc b
    inc b
    ld a, [bc]

jr_005_664B:
    ld [$1C1C], sp
    dec e
    dec d
    ccf
    ld [hl], $3C
    daa
    ld [hl], a
    ld c, c
    ld d, e
    ld h, a
    jp $C0FE


    cp e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nc, jr_005_668A

    ld d, b
    ld [hl], b
    sub b
    ldh a, [$B0]
    ret nc

    or c
    pop de
    cp e
    pop de
    xor [hl]
    db $DB
    cp [hl]
    bit 6, l
    ld c, [hl]
    ld a, a
    ld h, h
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [hl], b
    ld [hl], b
    ld c, b
    ld a, b
    ld [hl], h
    ld c, h

jr_005_668A:
    db $FC
    ld b, h
    xor d
    add $E6
    add d
    ld [hl], l
    add e
    push af
    inc bc
    rst $38
    ld bc, $01FF
    cp l
    ld b, e
    cp l
    jp RST_00


    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nc, jr_005_66DA

    ld d, b
    ld [hl], b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [hl], b
    ld [hl], b
    ld c, b
    ld a, b
    ld [hl], h
    ld c, h

jr_005_66DA:
    db $FC
    ld b, h
    sub b
    ldh a, [$B0]
    ret nc

    or c
    pop de
    cp e
    pop de
    xor [hl]
    db $DB
    cp [hl]
    bit 6, l
    ld c, [hl]
    ld a, a
    ld h, h
    ld e, a
    ld [hl], c
    ld e, a
    ld [hl], c
    ld l, [hl]
    ld e, a
    ld [hl], e
    ld c, h
    xor a
    ret nz

    cp a
    ret nz

    rst $08
    ei
    ld a, h
    ld [hl], e
    xor d
    add $E6
    add d
    ld [hl], l
    add e
    push af
    inc bc
    rst $38
    ld bc, $01FF
    cp l
    ld b, e
    cp l
    jp $8779


    ld l, [hl]
    add [hl]
    jp nc, $9F0E

    rrca
    add hl, hl
    rra
    db $DB
    ccf
    inc sp
    rst $38
    ld [$5FF6], a
    ld [hl], c
    ld e, a
    ld [hl], c
    ld l, [hl]
    ld e, a
    ld [hl], e
    ld c, h
    xor a
    ret nz

    cp a
    ret nz

    rst $08
    ei
    ld a, h
    ld [hl], e
    ld b, [hl]
    ld a, c
    ld c, a
    ld [hl], b
    ld c, a
    ld h, b
    ld h, c
    ld [hl], e
    or d
    rst $38
    adc l
    cp $D3
    db $EC
    rst $18
    ldh [$79], a
    add a
    ld l, [hl]
    add [hl]
    jp nc, $9F0E

    rrca
    add hl, hl
    rra
    db $DB
    ccf
    inc sp
    rst $38
    ld [$0BF6], a
    rst $30
    ei
    rlca
    rst $38
    add a
    ld a, [hl]
    adc [hl]
    ld a, [c]
    ld e, $62
    ld e, $B6
    ld c, $94
    inc c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0201
    inc bc
    rlca
    dec b
    ld c, $0A
    inc e
    inc d
    jr z, @+$3A

    jr nc, jr_005_67A4

    ld h, b
    ld h, b
    ld h, b
    ld b, b
    ld h, b
    ld b, b
    jr nz, @+$22

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh [$E0], a
    ld a, c
    cp c
    db $ED
    db $DD
    scf
    ld a, $1F
    dec d
    rrca
    dec bc
    rra
    rla
    dec de
    dec de
    ld sp, $3131
    ld hl, $2030
    db $10
    stop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_005_67A4:
    ret nz

    ret nz

    add $C6
    ld c, l
    set 1, a
    call $DEDB
    ld a, e
    rst $38
    ld [hl], h
    call c, $DE76
    adc [hl]
    cp $02
    ld d, [hl]
    call nc, Call_005_78AC
    ld a, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc c
    inc c
    ld e, $12
    ld [$CFFE], a
    ei
    rst $18
    ld a, l
    or a
    push af
    push hl
    and a
    halt
    halt
    ld [hl], $12
    ld [hl], $12
    inc h
    inc h
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    ld b, $05
    dec bc
    rrca
    rra
    dec d
    add hl, hl
    add hl, sp
    ld d, c
    ld [hl], c
    ld [hl], b
    ld d, b
    ld h, b
    ld h, b
    ret nz

    ret nz

    ret nz

    add b
    ret nz

    add b
    ld b, b
    ld b, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    adc h
    adc h
    adc h
    adc h
    ld d, h
    call c, Call_005_6CFC
    db $FD
    ld l, l
    rst $30
    ld e, a
    rst $30
    db $DD
    ld h, a
    ld a, l
    ret c

    rst $18
    ret nc

    sbc d
    adc $89
    ld b, a
    ld b, a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $6201
    ld h, e
    push de
    or a
    db $FD
    rst $18
    ld l, l
    rst $38

jr_005_682E:
    ld a, d
    xor $7C
    db $F4
    ld [hl], h
    db $FC
    sbc $FE
    ld h, $A2
    add $42
    add h
    add h
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    add b
    ret nz

    ld b, b
    ret nz

    ld b, b
    ldh [$60], a
    and b
    ldh [$E0], a
    and b
    ld [hl], b
    ld d, b
    ld [hl], b
    ld [hl], b
    jr nc, jr_005_6868

    jr nc, jr_005_686A

    jr nz, jr_005_687C

    nop
    nop
    rrca
    rrca
    dec d
    db $10
    ccf
    cpl
    ld d, [hl]
    ld d, a
    db $FD
    sbc [hl]

jr_005_6868:
    cp [hl]
    add c

jr_005_686A:
    cp $FF
    rst $20
    ld sp, hl
    ld e, $1F
    inc bc
    ld [bc], a

jr_005_6872:
    ld bc, $3D01
    dec a
    ld d, a
    ld c, a
    db $FC
    rst $38
    add e
    add e

jr_005_687C:
    ld b, $04
    jp z, $B7CC

    jr c, jr_005_682E

    call z, $877C
    rst $38
    inc hl
    rst $38
    ccf
    ret nz

    ld a, a
    and c
    rst $38
    sub e
    db $FD
    ld c, e
    db $FD
    and l
    ld a, l
    rst $18
    ld e, c
    xor l
    sbc e
    or c
    ld a, e
    xor $F3
    nop
    nop
    nop
    nop
    ldh [rNR41], a
    ld h, b
    ret nz

    ret nz

    add b
    ld b, b
    add b
    ret nz

    add b
    ret nz

    nop
    ld [hl], b
    add b
    ld hl, sp-$08
    jr nc, jr_005_6872

    ld h, b
    add b
    ld b, b
    add b
    ret nz

    ret nz

    ld b, b
    add b
    add b
    nop
    nop
    nop
    nop
    nop
    ld bc, $0301
    inc bc
    ld b, $06
    dec bc
    ld [$1314], sp
    rra
    inc de
    ld d, $12
    dec e
    dec de
    ld c, $0D
    inc bc
    ld [bc], a
    ld bc, $0F01
    ld c, $34
    inc sp
    ccf
    ccf
    ld d, e
    ld h, a
    ld a, l
    ld [hl], e
    di
    ret z

    ld b, [hl]
    ld a, $CD
    ld a, $3F
    cp $E6
    rst $38
    xor l
    or l
    inc l
    inc [hl]
    ld [de], a
    ld d, $8E
    adc d
    ld c, c
    set 0, a
    ld b, l
    ld c, a
    call $9799
    ld e, $1E
    ld b, b
    add b
    ldh [$E0], a
    and b
    ret nz

    and b
    ret nz

    ldh [$E0], a
    ldh [rLCDC], a
    ld h, b
    ld h, b
    ld [hl], b
    and b
    or b
    ret nc

    ld e, b
    ld l, b
    jr c, jr_005_693A

    jr jr_005_692C

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, $3E
    ld c, e
    ld b, c
    sub c
    adc [hl]
    xor h
    sbc a
    di
    adc a
    ld l, h
    ld h, e
    dec de
    jr @+$09

    rlca

jr_005_692C:
    ld bc, $0001
    nop
    ld bc, $0301
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop

jr_005_693A:
    nop
    nop
    ld d, e
    ld h, a
    db $FD
    di
    di
    ld [$DE26], sp
    sbc l
    cp $F7
    cp $6E
    rst $30
    cp a
    ld [hl], a
    cp $BA
    rst $28
    xor l
    ld h, a
    ld h, l
    jp Jump_000_00C3


    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, $3E
    rst $18
    rst $18
    ld l, e
    ld e, d
    daa
    cpl
    jr jr_005_697D

    rrca
    ld [$0704], sp
    add hl, sp
    ld a, [hl]
    rst $20
    ld sp, hl
    ld e, $1F
    inc bc
    ld [bc], a
    ld bc, $3D01
    dec a
    ld d, a
    ld c, a
    db $FC
    rst $38
    add e
    add e
    nop

jr_005_697D:
    nop
    stop
    ld a, h
    jr @+$68

    inc l
    ld h, $3C
    inc a
    jr jr_005_6999

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_005_6999:
    nop
    nop
    nop

    INCBIN "gfx/image_005_699c.2bpp"

    INCBIN "gfx/image_005_6a9c.2bpp"

    jr jr_005_6AEE

    ld [$1818], sp
    ld [$1810], sp
    jr jr_005_6AF6

    ld [$1818], sp
    ld [$1810], sp
    jr jr_005_6B06

jr_005_6AEE:
    inc h
    inc a
    inc l
    inc [hl]
    ld b, d
    halt
    ld d, d
    ld h, [hl]

jr_005_6AF6:
    ld d, d
    ld h, [hl]
    ld d, d
    ld h, [hl]
    inc a
    inc a
    nop
    nop
    jr @+$1A

    inc a
    inc h
    ld h, [hl]
    ld e, d
    ld h, [hl]
    ld e, d

jr_005_6B06:
    inc a
    inc h
    jr @+$1A

    db $10
    jr @+$1A

    db $10
    ld [$1818], sp
    ld [$1810], sp
    jr jr_005_6B26

    ld [$1818], sp
    ld [$1810], sp
    jr jr_005_6B2E

    ld [$1818], sp
    ld [$1810], sp
    jr jr_005_6B36

jr_005_6B26:
    ld [$1818], sp
    ld [$1810], sp
    jr jr_005_6B46

jr_005_6B2E:
    inc h
    inc a
    inc l
    inc [hl]
    ld b, d
    halt
    ld d, d
    ld h, [hl]

jr_005_6B36:
    ld d, d
    ld h, [hl]
    ld d, d
    ld h, [hl]
    inc a
    inc a
    rrca
    rlca
    jr c, jr_005_6B5F

    ld a, a
    jr nc, jr_005_6BBC

    ld h, c
    pop af
    ld b, a

jr_005_6B46:
    and e
    call z, $C9A6
    cp h
    jp c, $DABC

    and [hl]
    ret


    and e
    call z, Call_005_47F1
    ld a, c
    ld h, c
    ld a, a
    jr nc, jr_005_6B91

    rra
    rrca
    rlca
    ldh a, [$E0]
    inc e

jr_005_6B5F:
    ld hl, sp-$02
    inc c
    sbc [hl]
    add [hl]
    adc a
    ld [c], a
    push bc
    inc sp
    ld h, l
    sub e
    dec a
    ld e, e
    dec a
    ld e, e
    ld h, l
    sub e
    push bc
    inc sp
    adc a
    ld [c], a
    sbc [hl]
    add [hl]
    cp $0C
    inc e
    ld hl, sp-$10
    ldh [rP1], a
    nop
    nop
    nop
    inc a
    nop
    ld b, d
    inc a
    cp e
    ld b, [hl]
    ld d, l
    cp e
    ld l, l
    or e
    ld a, l
    and e
    ld a, l
    and e
    ld l, l
    or e
    ld d, l

jr_005_6B91:
    cp e
    ei
    ld b, [hl]
    ld a, [hl]
    inc a
    inc a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr jr_005_6BA2

jr_005_6BA2:
    inc h
    jr jr_005_6BC1

    inc h
    inc e
    inc h
    inc e
    inc h
    inc b
    inc a
    inc e
    inc h
    inc b
    inc a
    inc e
    inc a
    inc b
    inc a
    inc a
    jr jr_005_6BCF

    nop
    nop
    nop
    nop
    nop

jr_005_6BBC:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_005_6BC1:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_005_6BCF:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_005_6CFC:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_005_78AC:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_005_7977:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_005_7CBF:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
