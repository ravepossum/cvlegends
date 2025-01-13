SECTION "ROM Bank $005", ROMX

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
    db $75, $43, $8E, $43, $A7, $43, $AC, $43, $B1, $43, $BA, $43, $C3, $43, $C8, $43
    db $CD, $43

    dec c
    ld b, l

    db $D2, $43, $D7, $43, $DC, $43, $E1, $43, $E6, $43, $EB, $43, $F0, $43, $F9, $43
    db $02, $44, $0B, $44, $14, $44, $19, $44, $1E, $44, $23, $44, $28, $44, $31, $44
    db $3A, $44, $43, $44, $4C, $44, $2E, $45, $37, $45, $40, $45, $49, $45, $52, $45
    db $5B, $45, $64, $45, $75, $45, $82, $45, $93, $45, $A8, $45, $C1, $45, $D2, $45
    db $E3, $45, $1C, $46, $41, $46, $6E, $46, $A7, $46, $E8, $46, $01, $47, $1A, $47
    db $2B, $47, $3C, $47, $4D, $47, $5E, $47, $67, $47, $70, $47, $89, $47, $A2, $47
    db $BB, $47, $D0, $47, $E1, $47, $EA, $47, $13, $48, $38, $48, $45, $48, $56, $48
    db $67, $48, $78, $48, $89, $48, $8E, $48, $CF, $48, $00, $49, $41, $49, $6A, $49
    db $9B, $49, $A4, $49, $CD, $49, $FA, $49, $2F, $4A, $38, $4A, $41, $4A, $4A, $4A
    db $4F, $4A, $55, $44, $5A, $44, $5F, $44

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

    db $58, $4A, $73, $4A, $78, $4A, $7D, $4A, $82, $4A, $8B, $4A, $94, $4A, $9D, $4A
    db $A6, $4A, $B7, $4A, $C8, $4A, $D9, $4A, $EA, $4A, $FB, $4A, $04, $4B, $15, $4B
    db $26, $4B, $37, $4B, $48, $4B, $51, $4B, $5A, $4B, $73, $4B, $94, $4B, $B5, $4B
    db $DA, $4B

    di
    ld c, e

    db $20, $4C

    ld c, c
    ld c, h

    db $52, $4C, $57, $4C

    ld h, b
    ld c, h

    db $69, $4C, $72, $4C, $BB, $4C, $04, $4D, $1D, $4D, $36, $4D

    ld c, e
    ld c, l

    db $60, $4D, $65, $4D, $8A, $4D, $B3, $4D, $D4, $4D, $FD, $4D, $22, $4E, $4F, $4E
    db $84, $4E, $A5, $4E, $C6, $4E, $CF, $4E, $D8, $4E

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
    add e
    ld d, b
    cp h
    ld d, b
    push af
    ld d, b
    ld h, d
    ld d, c

    db $61, $4A, $6A, $4A, $BB, $51, $04, $F0, $F8, $00, $00, $F0, $00, $02, $00, $00
    db $F8, $04, $00, $00, $00, $06, $00, $02, $F0, $FC, $08, $00, $00, $FC, $0A, $00
    db $04, $F0, $F8, $0C, $00, $F0, $00, $0E, $00, $00, $F8, $10, $00, $00, $00, $12
    db $00, $04, $F0, $F8, $3A, $00, $F0, $00, $3C, $00, $00, $F8, $04, $00, $00, $00
    db $06, $00, $04, $F0, $F8, $3E, $00, $F0, $00, $40, $00, $00, $F8, $04, $00, $00
    db $00, $06, $00, $04, $F0, $FB, $42, $00, $F0, $03, $44, $00, $00, $F8, $04, $00
    db $00, $00, $06, $00, $04, $F0, $F8, $00, $00, $F0, $00, $02, $00, $00, $F8, $1C
    db $00, $00, $00, $1E, $00, $03, $F0, $FC, $08, $00, $00, $F9, $4A, $00, $00, $01
    db $4C, $00, $04, $F0, $F8, $0C, $00, $F0, $00, $0E, $00, $00, $F8, $46, $00, $00
    db $00, $48, $00, $04, $F0, $F8, $3A, $00, $F0, $00, $3C, $00, $00, $F8, $1C, $00
    db $00, $00, $1E, $00, $04, $F0, $F8, $3E, $00, $F0, $00, $40, $00, $00, $F8, $1C
    db $00, $00, $00, $1E, $00, $04, $F0, $FB, $42, $00, $F0, $03, $44, $00, $00, $F8
    db $1C, $00, $00, $00, $1E, $00, $04, $F0, $F9, $14, $00, $F0, $01, $16, $00, $00
    db $F8, $18, $00, $00, $00, $1A, $00, $03, $FE, $F4, $20, $00, $FE, $FC, $22, $00
    db $FE, $04, $24, $00, $04, $F0, $F8, $26, $00, $F0, $00, $28, $00, $00, $F8, $2A
    db $00, $00, $00, $2C, $00, $04, $F0, $F8, $28, $20, $F0, $00, $26, $20, $00, $F8
    db $2C, $20, $00, $00, $2A, $20, $04, $F0, $F8, $2E, $00, $F0, $00, $30, $00, $00
    db $F8, $2A, $00, $00, $00, $2C, $00, $04, $F0, $F8, $32, $00, $F0, $00, $34, $00
    db $00, $F8, $2A, $00, $00, $00, $2C, $00, $04, $F0, $F8, $32, $00, $F0, $00, $34
    db $00, $00, $F8, $2A, $00, $00, $00, $2C, $00, $05, $F0, $F8, $26, $00, $F0, $00
    db $36, $00, $F0, $08, $38, $00, $00, $F8, $2A, $00, $00, $00, $2C, $00, $04, $F0
    db $F8, $00, $00, $F0, $00, $02, $00, $00, $F8, $4E, $00, $00, $00, $50, $00, $06
    db $F0, $F0, $52, $00, $F0, $F8, $54, $00, $F0, $00, $56, $00, $F0, $08, $58, $00
    db $00, $F8, $5A, $00, $00, $00, $5C, $00, $06, $F0, $F0, $5E, $00, $F0, $F8, $60
    db $00, $F0, $00, $62, $00, $F0, $08, $64, $00, $00, $F8, $5A, $00, $00, $00, $5C
    db $00, $01, $F8, $00, $66, $00, $01, $F8, $00, $68, $00, $02, $FC, $00, $6A, $00
    db $FC, $08, $6C, $00, $02, $FC, $00, $6E, $00, $FC, $08, $70, $00, $01, $F8, $FC
    db $7A, $00, $01, $F8, $FC, $7C, $00, $01, $F8, $FC, $7E, $00, $01, $F8, $FD, $F0
    db $00, $01, $F8, $FD, $F2, $00, $01, $F4, $FC, $F4, $00, $01, $F4, $FC, $F6, $00
    db $01, $F8, $FC, $F8, $00, $01, $F8, $FC, $FA, $00, $02, $F8, $F8, $FC, $00, $F8
    db $00, $FE, $00, $02, $F8, $F8, $F4, $00, $F8, $00, $F6, $00, $02, $F8, $F8, $F8
    db $00, $F8, $00, $FA, $00, $02, $F8, $F8, $FC, $00, $F8, $00, $FE, $00, $01, $F8
    db $FC, $72, $00, $01, $F8, $FC, $74, $00, $01, $F8, $FC, $76, $00, $01, $F8, $FC
    db $78, $00, $02, $F8, $F8, $E0, $00, $F8, $00, $E2, $00, $02, $F8, $F8, $E4, $00
    db $F8, $00, $E6, $00, $02, $F8, $F8, $E8, $00, $F8, $00, $EA, $00, $02, $F8, $F8
    db $EC, $00, $F8, $00, $EE, $00, $02, $F8, $F8, $F0, $00, $F8, $00, $F2, $00, $01
    db $00, $00, $02, $00, $01, $00, $00, $04, $00, $01, $00, $00, $06, $00

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
    db $96, $00, $F8, $18, $98, $00, $F8, $20, $9A, $00, $06, $F0, $F4, $9C, $00, $F0
    db $FC, $9E, $00, $F0, $04, $A0, $00, $00, $F4, $A2, $00, $00, $FC, $A4, $00, $00
    db $04, $A6, $00, $06, $F0, $F4, $9C, $00, $F0, $FC, $9E, $00, $F0, $04, $A0, $00
    db $00, $F4, $A8, $00, $00, $FC, $AA, $00, $00, $04, $AC, $00, $04, $F0, $F8, $AE
    db $00, $F0, $00, $B0, $00, $00, $F8, $B2, $00, $00, $00, $B4, $00, $04, $F0, $F8
    db $B6, $00, $F0, $00, $B8, $00, $00, $F8, $BA, $00, $00, $00, $BC, $00, $04, $F0
    db $F8, $BE, $00, $F0, $00, $C0, $00, $00, $F8, $C2, $00, $00, $00, $C4, $00, $04
    db $F0, $F8, $B6, $00, $F0, $00, $B8, $00, $00, $F8, $C6, $00, $00, $00, $C8, $00
    db $02, $D8, $F0, $CA, $00, $E8, $F0, $CC, $00, $02, $F0, $E8, $E2, $00, $F0, $F0
    db $E4, $00, $06, $F8, $F0, $CE, $00, $F0, $F8, $D0, $00, $F0, $00, $D2, $00, $F8
    db $08, $D4, $00, $00, $F8, $D6, $00, $00, $00, $D8, $00, $06, $F8, $F0, $CE, $00
    db $F0, $F8, $D0, $00, $F0, $00, $D2, $00, $F8, $08, $D4, $00, $00, $F8, $DA, $00
    db $00, $00, $DC, $00, $06, $F8, $F0, $CE, $00, $F0, $F8, $D0, $00, $F0, $00, $D2
    db $00, $F8, $08, $D4, $00, $00, $F8, $DE, $00, $00, $00, $E0, $00, $05, $F0, $F8
    db $E6, $00, $F0, $00, $D2, $00, $F8, $08, $D4, $00, $00, $F8, $D6, $00, $00, $00
    db $D8, $00, $04, $00, $FC, $E8, $00, $00, $04, $E8, $00, $10, $FC, $EA, $00, $10
    db $04, $EC, $00, $02, $F8, $00, $C0, $00, $F8, $08, $C2, $00, $0A, $F0, $EC, $80
    db $00, $F0, $F4, $82, $00, $F0, $FC, $84, $00, $F0, $04, $86, $00, $F0, $0C, $88
    db $00, $00, $EC, $8A, $00, $00, $F4, $8C, $00, $00, $FC, $8E, $00, $00, $04, $90
    db $00, $00, $0C, $92, $00, $09, $F0, $EC, $80, $00, $F0, $F4, $82, $00, $F0, $FC
    db $84, $00, $F0, $04, $86, $00, $F0, $0C, $88, $00, $00, $F4, $94, $00, $00, $FC
    db $96, $00, $00, $04, $90, $00, $00, $0C, $92, $00, $03, $F8, $F4, $BA, $00, $F8
    db $FC, $BC, $00, $F8, $04, $BE, $00, $04, $F0, $F2, $CA, $00, $00, $F2, $CC, $00
    db $F0, $FA, $CE, $00, $00, $FA, $D0, $00, $04, $F0, $F2, $CA, $00, $00, $F2, $CC
    db $00, $F0, $FA, $D2, $00, $00, $FA, $D4, $00, $04, $F0, $F2, $CA, $00, $00, $F2
    db $CC, $00, $F0, $FA, $D6, $00, $00, $FA, $D8, $00, $04, $F0, $F2, $DA, $00, $00
    db $F2, $CC, $00, $F0, $FA, $CE, $00, $00, $FA, $D0, $00, $01, $F4, $FC, $DC, $00
    db $10, $E5, $F0, $80, $00, $E5, $F8, $82, $00, $E5, $00, $84, $00, $E5, $08, $86
    db $00, $F5, $E8, $88, $00, $F5, $F0, $8A, $00, $F5, $F8, $8C, $00, $F5, $00, $8E
    db $00, $05, $F0, $90, $00, $05, $F8, $92, $00, $05, $00, $94, $00, $05, $08, $96
    db $00, $15, $F0, $98, $00, $15, $F8, $9A, $00, $15, $00, $9C, $00, $15, $08, $9E
    db $00, $0C, $E4, $F0, $80, $00, $E4, $F8, $82, $00, $E4, $00, $84, $00, $E4, $08
    db $86, $00, $F4, $E8, $88, $00, $F4, $F0, $8A, $00, $F4, $F8, $8C, $00, $F4, $00
    db $8E, $00, $04, $F8, $A0, $00, $04, $00, $A2, $00, $14, $F8, $A4, $00, $14, $00
    db $A6, $00, $10, $E5, $F0, $80, $00, $E5, $F8, $82, $00, $E5, $00, $84, $00, $E5
    db $08, $86, $00, $F5, $E8, $88, $00, $F5, $F0, $8A, $00, $F5, $F8, $8C, $00, $F5
    db $00, $8E, $00, $05, $F0, $A8, $00, $05, $F8, $AA, $00, $05, $00, $AC, $00, $05
    db $08, $AE, $00, $15, $F0, $B0, $00, $15, $F8, $B2, $00, $15, $00, $B4, $00, $15
    db $08, $B6, $00, $0A, $F0, $E8, $B8, $00, $F0, $F0, $BA, $00, $F0, $F8, $BC, $00
    db $F0, $00, $BE, $00, $F0, $08, $C0, $00, $F0, $10, $C2, $00, $00, $F8, $A0, $00
    db $00, $00, $A2, $00, $10, $F8, $A4, $00, $10, $00, $A6, $00, $0C, $E4, $F0, $80
    db $00, $E4, $F8, $82, $00, $E4, $00, $84, $00, $E4, $08, $86, $00, $F4, $E8, $C4
    db $00, $F4, $F0, $C6, $00, $F4, $F8, $8C, $00, $F4, $00, $8E, $00, $04, $F8, $A0
    db $00, $04, $00, $A2, $00, $14, $F8, $A4, $00, $14, $00, $A6, $00, $02, $F4, $F8
    db $C8, $00, $F4, $00, $CA, $00, $0A, $E8, $00, $80, $00, $E8, $08, $82, $00, $F8
    db $F0, $84, $00, $F8, $F8, $86, $00, $F8, $00, $88, $00, $F8, $08, $8A, $00, $08
    db $F0, $C4, $00, $08, $F8, $8C, $00, $08, $00, $8E, $00, $08, $08, $90, $00, $0B
    db $E8, $F0, $92, $00, $E8, $F8, $94, $00, $E8, $00, $96, $00, $E8, $08, $98, $00
    db $F8, $F0, $9A, $00, $F8, $F8, $9C, $00, $F8, $00, $9E, $00, $F8, $08, $A0, $00
    db $08, $F8, $A2, $00, $08, $00, $8E, $00, $08, $08, $90, $00, $0D, $D8, $F8, $A4
    db $00, $D8, $00, $A6, $00, $D8, $08, $A8, $00, $E8, $F8, $AA, $00, $E8, $00, $AC
    db $00, $E8, $08, $AE, $00, $F8, $F0, $B0, $00, $F8, $F8, $B2, $00, $F8, $00, $B4
    db $00, $F8, $08, $B6, $00, $08, $F8, $A2, $00, $08, $00, $8E, $00, $08, $08, $90
    db $00, $02, $F8, $F8, $B8, $00, $F8, $00, $BA, $00, $02, $F8, $F8, $BC, $00, $F8
    db $00, $BE, $00, $02, $F8, $F8, $C0, $00, $F8, $00, $C2, $00, $01, $00, $00, $8A
    db $00, $02, $F8, $F8, $8C, $00, $F8, $00, $8E, $00, $02, $F8, $F8, $8A, $00, $F8
    db $00, $8C, $00, $02, $F8, $F8, $8E, $00, $F8, $00, $90, $00, $02, $F8, $F8, $92
    db $00, $F8, $00, $94, $00, $01, $F4, $FC, $96, $00, $01, $F4, $FC, $9A, $00, $01
    db $F4, $FC, $98, $00, $02, $00, $F8, $B2, $00, $00, $00, $B0, $00, $02, $00, $F8
    db $B6, $00, $00, $00, $B4, $00, $02, $00, $F8, $BC, $00, $00, $00, $BE, $00, $02
    db $00, $F8, $B8, $00, $00, $00, $BA, $00, $04, $F0, $F8, $BC, $00, $F0, $00, $BE
    db $00, $00, $F8, $C0, $00, $00, $00, $C2, $00, $04, $F0, $F8, $B8, $00, $F0, $00
    db $BA, $00, $00, $F8, $C4, $00, $00, $00, $C6, $00, $04, $F8, $EC, $9C, $00, $F8
    db $F4, $9E, $00, $F8, $FC, $A0, $00, $F8, $04, $A2, $00, $04, $F8, $F0, $A4, $00
    db $F8, $F8, $A6, $00, $F8, $00, $A8, $00, $F8, $08, $AA, $00, $04, $F8, $F0, $80
    db $00, $F8, $F8, $82, $00, $F8, $00, $84, $00, $F8, $08, $86, $00, $02, $F8, $F8
    db $88, $00, $F8, $00, $8A, $00, $04, $F8, $F0, $8C, $00, $F8, $F8, $8E, $00, $F8
    db $00, $90, $00, $F8, $08, $92, $00, $04, $F8, $F0, $94, $00, $F8, $F8, $96, $00
    db $F8, $00, $98, $00, $F8, $08, $9A, $00, $04, $F8, $F0, $9C, $00, $F8, $F8, $9E
    db $00, $F8, $00, $A0, $00, $F8, $08, $A2, $00, $04, $F8, $F0, $A4, $00, $F8, $F8
    db $A6, $00, $F8, $00, $A8, $00, $F8, $08, $AA, $00, $02, $F8, $F8, $AC, $00, $F8
    db $00, $AE, $00, $02, $00, $F8, $B0, $00, $00, $00, $B2, $00, $06, $F0, $F4, $8A
    db $00, $F0, $FC, $8C, $00, $F0, $04, $8E, $00, $00, $F4, $90, $00, $00, $FC, $92
    db $00, $00, $04, $94, $00, $08, $F0, $F0, $96, $00, $F0, $F8, $98, $00, $F0, $00
    db $9A, $00, $F8, $08, $9C, $00, $00, $F0, $9E, $00, $00, $F8, $A0, $00, $00, $00
    db $A2, $00, $08, $08, $A4, $00, $08, $F0, $F0, $A6, $00, $F0, $F8, $A8, $00, $F0
    db $00, $AA, $00, $F8, $08, $AC, $00, $00, $F0, $9E, $00, $00, $F8, $AE, $00, $00
    db $00, $B0, $00, $08, $08, $A4, $00, $09, $F0, $E8, $B2, $00, $F0, $F0, $B4, $00
    db $F0, $F8, $B6, $00, $F0, $00, $B8, $00, $F8, $08, $BA, $00, $00, $F0, $9E, $00
    db $00, $F8, $BC, $00, $00, $00, $BE, $00, $08, $08, $C0, $00, $06, $F0, $F0, $A6
    db $00, $F0, $F8, $A8, $00, $F0, $00, $C2, $00, $F0, $08, $C4, $00, $00, $F8, $C6
    db $00, $00, $00, $C8, $00

    dec bc
    ldh a, [$FFE8]
    or d
    nop
    ldh a, [$FFF0]
    or h
    nop
    ldh a, [$FFF8]
    or [hl]
    nop
    ldh a, [rP1]
    cp b
    nop
    ld hl, sp+$08
    cp d
    nop
    nop
    ldh a, [$FFCA]
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
    ldh a, [$FFD2]
    nop
    db $10
    ld hl, sp-$2C
    nop

    db $0A, $F0, $F0, $A6, $00, $F0, $F8, $A8, $00, $F0, $00, $B8, $00, $F8, $08, $BA
    db $00, $00, $F0, $CA, $00, $00, $F8, $CC, $00, $00, $00, $CE, $00, $08, $08, $D0
    db $00, $10, $F0, $D2, $00, $10, $F8, $D4, $00

    ld [bc], a
    ld hl, sp-$08
    sub $00
    ld hl, sp+$00
    ret c

    nop

    db $01, $F8, $FC, $DA, $00, $02, $F8, $F8, $DC, $00, $F8, $00, $DE, $00

    ld [bc], a
    nop
    nop
    ldh [rP1], a
    nop
    nop
    ldh [c], a
    nop

    db $02, $FC, $FC, $AC, $00, $0C, $FC, $AE, $00, $12, $00, $00, $00, $00, $00, $08
    db $02, $00, $00, $10, $04, $00, $00, $18, $06, $00, $00, $20, $08, $00, $00, $28
    db $0A, $00, $10, $00, $0C, $00, $10, $08, $0E, $00, $10, $10, $10, $00, $10, $18
    db $12, $00, $10, $20, $14, $00, $10, $28, $16, $00, $20, $00, $18, $00, $20, $08
    db $1A, $00, $20, $10, $1C, $00, $20, $18, $1E, $00, $20, $20, $20, $00, $20, $28
    db $22, $00, $12, $00, $D0, $24, $00, $00, $D8, $26, $00, $00, $E0, $28, $00, $00
    db $E8, $2A, $00, $00, $F0, $2C, $00, $00, $F8, $2E, $00, $10, $D0, $30, $00, $10
    db $D8, $32, $00, $10, $E0, $34, $00, $10, $E8, $36, $00, $10, $F0, $38, $00, $10
    db $F8, $3A, $00, $20, $D0, $3C, $00, $20, $D8, $3E, $00, $20, $E0, $40, $00, $20
    db $E8, $42, $00, $20, $F0, $44, $00, $20, $F8, $46, $00, $06, $F0, $F4, $9C, $00
    db $F0, $FC, $9E, $00, $F0, $04, $A0, $00, $00, $F4, $A2, $00, $00, $FC, $A4, $00
    db $00, $04, $A6, $00, $06, $F0, $F4, $AC, $00, $F0, $FC, $9E, $00, $F0, $04, $A0
    db $00, $00, $F4, $A2, $00, $00, $FC, $A4, $00, $00, $04, $A6, $00, $05, $F0, $F4
    db $9C, $00, $F0, $FC, $9E, $00, $F0, $04, $A0, $00, $00, $F4, $A8, $00, $00, $FC
    db $AA, $00

    dec b
    ldh a, [$FFF4]
    xor h
    nop
    ldh a, [$FFFC]
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

    db $01, $FC, $FC, $AE, $00, $09, $E8, $F8, $80, $00, $E8, $00, $82, $00, $E8, $08
    db $84, $00, $F8, $F8, $86, $00, $F8, $00, $88, $00, $F8, $08, $8A, $00, $08, $F8
    db $9A, $00, $08, $00, $9C, $00, $08, $08, $9E, $00, $0A, $E8, $F8, $8C, $00, $E8
    db $00, $8E, $00, $E8, $08, $90, $00, $F8, $F0, $92, $00, $F8, $F8, $94, $00, $F8
    db $00, $96, $00, $F8, $08, $98, $00, $08, $F8, $9A, $00, $08, $00, $9C, $00, $08
    db $08, $9E, $00, $08, $E8, $F8, $80, $00, $E8, $00, $82, $00, $E8, $08, $84, $00
    db $F8, $F8, $86, $00, $F8, $00, $88, $00, $F8, $08, $8A, $00, $08, $F8, $A0, $00
    db $08, $00, $A2, $00, $0A, $E8, $F8, $8C, $00, $E8, $00, $8E, $00, $E8, $08, $90
    db $00, $F8, $F0, $92, $00, $F8, $F8, $94, $00, $F8, $00, $96, $00, $F8, $08, $98
    db $00, $08, $F0, $A4, $00, $08, $F8, $A6, $00, $08, $00, $A8, $00, $09, $E8, $F4
    db $80, $00, $E8, $FC, $82, $00, $E8, $04, $84, $00, $F8, $F4, $8A, $00, $F8, $FC
    db $86, $00, $F8, $04, $8E, $00, $08, $F4, $8C, $00, $08, $FC, $88, $00, $08, $04
    db $90, $00, $0B, $E8, $F4, $80, $00, $E8, $FC, $82, $00, $E8, $04, $84, $00, $F8
    db $EC, $92, $00, $F8, $F4, $96, $00, $F8, $FC, $86, $00, $F8, $04, $8E, $00, $08
    db $EC, $94, $00, $08, $F4, $98, $00, $08, $FC, $88, $00, $08, $04, $90, $00, $0D
    db $E8, $F4, $80, $00, $E8, $FC, $82, $00, $E8, $04, $84, $00, $F0, $E4, $A2, $00
    db $F0, $EC, $A6, $00, $F8, $F4, $AA, $00, $F8, $FC, $86, $00, $F8, $04, $8E, $00
    db $00, $E4, $A4, $00, $00, $EC, $A8, $00, $08, $F4, $AC, $00, $08, $FC, $88, $00
    db $08, $04, $90, $00, $08, $F0, $F0, $BA, $00, $F0, $F8, $BE, $00, $F0, $00, $C0
    db $00, $F0, $08, $C2, $00, $00, $F0, $BC, $00, $00, $F8, $C6, $00, $00, $00, $C8
    db $00, $00, $08, $C4, $00, $08, $F0, $F0, $BA, $00, $F0, $F8, $BE, $00, $F0, $00
    db $C0, $00, $F0, $08, $C2, $00, $00, $F0, $BC, $00, $00, $F8, $CA, $00, $00, $00
    db $CC, $00, $00, $08, $C4, $00, $02, $F8, $F8, $CE, $00, $F8, $00, $D0, $00, $02
    db $F8, $F8, $D2, $00, $F8, $00, $D4, $00, $02, $F8, $F8, $D6, $00, $F8, $00, $D8
    db $00

    ld [$F0F0], sp
    add b
    nop
    ldh a, [$FFF8]
    add d
    nop
    ldh a, [rP1]
    add h
    nop
    ldh a, [$FF08]
    add [hl]
    nop
    nop
    ldh a, [$FF88]
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
    ldh a, [$FFF8]
    cp [hl]
    nop
    ldh a, [rP1]
    ret nz

    nop
    ldh a, [$FF08]
    jp nz, RST_00

    ldh a, [$FFC4]
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
    ldh a, [$FFFE]
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
    ldh a, [$FFFA]
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
    ldh a, [$FFFE]
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
    ldh a, [$FF08]
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
    ldh a, [$FFF8]
    add d
    nop
    ldh a, [rP1]
    add h
    nop
    ldh a, [$FF08]
    add [hl]
    nop
    nop
    ldh a, [$FFD8]
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
    jr @+$58

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
    jr @+$5C

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
    jr nz, @+$2A

    ld l, h
    nop
    jr nz, @+$32

jr_005_51A1:
    ld l, [hl]
    nop
    jr nc, jr_005_51AD

    ld [hl], d
    nop
    jr nc, jr_005_51B9

    ld [hl], h
    nop
    jr nc, @+$1A

jr_005_51AD:
    ld [hl], h
    nop
    jr nc, @+$22

    ld [hl], h
    nop
    jr nc, @+$2A

    ld [hl], h
    nop
    jr nc, @+$32

jr_005_51B9:
    ld [hl], h
    nop

    db $08, $00, $00, $00, $00, $00, $08, $02, $00, $00, $10, $02, $20, $00, $18, $00
    db $20, $10, $00, $00, $40, $10, $08, $02, $40, $10, $10, $02, $60, $10, $18, $00
    db $60

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

    INCBIN "gfx/image_005_6adc.2bpp"

    nop
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
