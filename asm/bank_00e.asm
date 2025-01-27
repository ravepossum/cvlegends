SECTION "ROM Bank $00e", ROMX

    db $84, $40, $88, $40, $8C, $40, $90, $40

    sub h
    ld b, b
    sbc b
    ld b, b
    sbc [hl]
    ld b, b
    and h
    ld b, b

    db $AA, $40

    xor [hl]
    ld b, b
    or d
    ld b, b

    db $B6, $40, $BA, $40, $C2, $40, $C6, $40, $E4, $40, $EC, $40, $F0, $40, $F4, $40
    db $F8, $40, $FC, $40, $CA, $40

    ret c

    ld b, b

    db $CE, $40, $E0, $40, $E8, $40, $00, $41, $06, $41, $0C, $41

    ld [de], a
    ld b, c

    db $18, $41

    ld e, $41
    inc h
    ld b, c

    db $D4, $40

    ld a, [hl+]
    ld b, c
    inc [hl]
    ld b, c

    db $3A, $41

    ld a, $41

    db $42, $41, $46, $41

    ld c, d
    ld b, c
    ld c, [hl]
    ld b, c
    ld d, d
    ld b, c
    ld d, [hl]
    ld b, c

    db $5A, $41, $60, $41, $64, $41

    ld l, b
    ld b, c
    ld l, h
    ld b, c
    ld [hl], b
    ld b, c

    db $74, $41

    ld a, d
    ld b, c

    db $7E, $41, $82, $41

    add [hl]
    ld b, c
    adc h
    ld b, c

    db $90, $41, $98, $41

    and b
    ld b, c
    xor b
    ld b, c

    db $B0, $41, $C8, $41

    db $D4
    ld b, c

    db $DC, $41

    or h
    ld b, c

    db $BE, $41, $20, $04, $3B, $45, $20, $04, $48, $45, $20, $04, $51, $45, $20, $04
    db $60, $45

    jr nz, jr_00E_409A

    ld l, a
    ld b, l
    jr nz, @+$07

jr_00E_409A:
    sub d
    ld b, l
    adc c
    ld b, l
    jr nz, @+$07

    xor l
    ld b, l
    and h
    ld b, l
    jr nz, @+$07

    rst $00
    ld b, l
    cp [hl]
    ld b, l

    db $20, $04, $D9, $45

    jr nz, jr_00E_40B4

    db $EC
    ld b, l
    jr nz, @+$06

jr_00E_40B4:
    ld sp, hl
    ld b, l

    db $20, $04, $53, $46, $FF, $07, $7C, $53, $54, $53, $54, $53, $A0, $04, $55, $53
    db $A0, $04, $6D, $53, $B0, $01, $89, $53, $A8, $05, $98, $53, $B0, $53, $C0, $01
    db $BB, $53

    ret nz

    jr c, @-$2D

    ld d, e
    db $F4
    ld d, e
    inc b
    ld d, h

    db $A8, $04, $14, $54, $A0, $04, $24, $54, $C0, $04, $2A, $54, $C0, $01, $3B, $54
    db $C0, $01, $5F, $54, $C0, $01, $82, $54, $C0, $01, $E7, $54, $C0, $01, $0E, $55
    db $90, $05, $25, $55, $26, $55, $90, $05, $3C, $55, $3D, $55, $A0, $05, $4D, $55
    db $4E, $55

    or b
    dec b
    ld h, l
    ld d, l
    ld h, [hl]
    ld d, l

    db $C0, $05, $7B, $55, $7C, $55

    ret nz

    dec b
    xor c
    ld d, l
    xor d
    ld d, l
    ret nz

    dec b
    xor e
    ld d, l
    xor h
    ld d, l
    and b
    ld bc, $55AD
    and b
    inc bc
    cp e
    ld d, l
    adc $55
    and b
    dec b
    pop hl
    ld d, l
    pop hl
    ld d, l

    db $A0, $04, $A5, $56

    and b
    ld bc, $56AE

    db $A0, $01, $C1, $56, $B0, $04, $09, $57

    and b
    ld bc, $5711
    and b
    inc b
    ld e, [hl]
    ld d, a
    and b
    ld bc, $5792
    and b
    inc b
    cp e
    ld d, a

    db $C0, $05, $F1, $57, $23, $58, $A0, $04, $56, $58, $C0, $01, $88, $58

    and b
    inc b
    xor $58
    and b
    ld bc, $5905
    and b
    ld bc, $5941

    db $C0, $03, $5E, $59, $77, $59

    and b
    inc b
    sub d
    ld e, c

    db $C0, $04, $A6, $59, $A0, $04, $D2, $59

    and b
    dec b
    and $59
    ld bc, $A05A
    inc b
    ld h, l
    ld e, d

    db $B0, $07, $71, $5A, $AA, $5A, $FE, $5A, $D0, $07, $19, $5B, $30, $5B, $47, $5B

    ret nc

    rlca
    ld c, b
    ld e, e
    add l
    ld e, e
    jp nz, wUnk_D05B

    rlca
    db $DD
    ld e, e
    db $F4
    ld e, e
    push af
    ld e, e

    db $D0, $04, $00, $5C

    ld b, b
    ld a, b
    adc h
    ld e, h
    ld d, l
    ld e, h
    add $5C
    ld d, [hl]
    ld e, l

    db $40, $78, $8F, $5D, $57, $5D, $CE, $5D, $06, $5E, $A0, $04, $4F, $5C

    and b
    jr c, jr_00E_41D7

    ld e, h
    daa
    ld e, h
    ld a, [hl-]
    ld e, h
    ldh a, [rTAC]
    ld d, h

jr_00E_41D7:
    ld d, e
    ld d, h
    ld d, e
    ld d, h
    ld d, e

    db $F0, $02, $54, $53

    cp $41
    ld c, $42

    db $1E, $42, $2E, $42, $3E, $42, $4E, $42

    ld e, [hl]
    ld b, d

    db $6E, $42

    ld a, [hl]
    ld b, d
    adc [hl]
    ld b, d
    sbc [hl]
    ld b, d
    xor [hl]
    ld b, d

    db $BE, $42, $CE, $42

    sbc $42
    inc de
    ld d, a
    sbc e
    sub a
    ld d, e
    ld de, $7935
    cp l
    db $FD
    cp c
    ld [hl], l
    ld sp, $5313
    db $10
    inc de
    ld d, a
    sbc e
    rst $18
    db $FD
    cp c
    ld [hl], l
    ld sp, $5713
    sbc e
    rst $18
    db $FD
    cp c
    ld [hl], l
    db $31

    db $88, $88, $88, $88, $88, $88, $88, $88, $00, $00, $00, $00, $00, $00, $00, $00
    db $01, $23, $45, $67, $89, $AB, $CD, $EF, $01, $23, $45, $67, $89, $AB, $CD, $EF
    db $88, $80, $8F, $FF, $88, $80, $88, $80, $00, $08, $08, $88, $80, $00, $80, $00
    db $23, $34, $56, $67, $89, $9A, $BC, $DE, $23, $34, $56, $67, $89, $9A, $BC, $DE

    ld a, [hl]
    ret


    adc $A7
    rst $08
    add sp, -$55
    ld [hl], d
    adc l
    ld [hl], l
    ld [hl], d
    inc bc
    add l
    inc de
    ld h, e
    rla

    db $99, $99, $99, $99, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00

    ldh a, [hUnk_FFF0]
    ldh a, [hUnk_FFF0]
    ldh a, [hUnk_FFF0]
    ldh a, [hUnk_FFF0]
    ldh a, [hUnk_FFF0]
    ldh a, [hUnk_FFF0]
    ldh a, [hUnk_FFF0]
    ldh a, [hUnk_FFF0]
    inc bc
    inc [hl]
    ld d, [hl]
    ld h, a
    adc c
    sbc d
    cp h
    rst $18
    inc bc
    inc [hl]
    ld d, [hl]
    ld h, a
    adc c
    sbc d
    cp h
    rst $18
    cp l
    db $DB
    sbc b
    sbc h
    rst $28
    db $EB
    halt
    ld l, b
    xor d
    sub h
    ld hl, $8824
    ld d, e
    dec [hl]
    adc e
    inc hl
    inc [hl]
    ld d, [hl]
    ld h, a
    adc c
    sbc d
    cp h
    sbc $23
    inc [hl]
    ld d, [hl]
    ld h, a
    adc c
    sbc d
    cp h
    db $DE

    db $7E, $C9, $CE, $A7, $CF, $E8, $AB, $72, $8D, $75, $72, $03, $85, $13, $63, $17
    db $88, $80, $8F, $FF, $88, $80, $88, $80, $00, $08, $08, $88, $80, $00, $80, $00

    sbc e
    cp c
    halt
    ld a, d
    call $54C9

Jump_00E_42E5:
    ld b, [hl]
    ld h, [hl]
    ld [hl], h
    ld hl, $6624
    ld d, e
    dec [hl]
    ld l, c

    db $20, $00, $92, $00, $FE, $00, $64, $01, $C4, $01, $1E, $02, $73, $02, $C3, $02
    db $0F, $03, $57, $03, $9A, $03, $D9, $03, $15, $04, $4D, $04, $83, $04, $B5, $04
    db $E4, $04, $11, $05, $3B, $05, $63, $05, $88, $05, $AC, $05, $CD, $05, $ED, $05
    db $0B, $06, $27, $06, $42, $06, $5B, $06, $73, $06, $8A, $06, $9F, $06, $B3, $06
    db $C6, $06, $D8, $06, $E9, $06, $F8, $06, $07, $07, $15, $07, $22, $07, $2F, $07
    db $3A, $07, $45, $07, $50, $07, $5A, $07, $63, $07, $6C, $07, $74, $07, $7C, $07
    db $84, $07, $8B, $07, $91, $07, $97, $07, $9D, $07, $A3, $07, $A9, $07, $AD, $07
    db $B2, $07, $B6, $07, $BA, $07, $BE, $07, $C2, $07, $C4, $07, $C8, $07, $CB, $07
    db $CE, $07, $D1, $07, $D3, $07, $D6, $07, $D8, $07, $DA, $07, $DC, $07, $DE, $07

    ldh [rTAC], a
    ldh [c], a
    rlca
    db $E4
    rlca
    push hl
    rlca
    rst $20
    rlca
    add sp, $07
    jp hl


    rlca
    db $EB
    rlca
    db $EC
    rlca
    db $ED
    rlca
    xor $07
    rst $28
    rlca
    ldh a, [rTAC]
    or [hl]
    ld b, e
    cp [hl]
    ld b, e
    pop bc
    ld b, e
    pop de
    ld b, e
    pop de
    ld b, e
    sbc $43
    xor $43
    pop hl
    ld b, e
    cp [hl]
    ld b, e
    cp [hl]
    ld b, e
    xor $43
    ei
    ld b, e
    pop hl
    ld b, e
    adc $43
    sbc $43
    ei
    and b
    nop
    and b
    rra
    cp $FF
    rst $38
    db $10
    ld b, $FF
    ldh [rP1], a
    and b
    ld bc, $00A0
    ei
    ld [hl], b
    ld [bc], a
    ld [hl], b
    nop
    cp $FF
    db $10
    ld bc, $E0FF
    nop
    db $10
    ld bc, $0010
    ei
    ld h, b
    inc bc
    ld h, b
    nop
    cp $FF
    db $10
    inc bc
    rst $38
    ldh [rP1], a
    and b
    nop

Jump_00E_43E5:
    and b
    nop
    ei
    ld [hl], b
    ld bc, $0070
    cp $FF
    ldh [rP1], a
    ld [hl], b
    ld bc, $0070
    ei
    add b
    rrca
    add b
    nop
    cp $FF
    ldh [rP1], a
    ld [hl], b
    ld bc, $0070
    ei
    add b
    ld [$0080], sp
    cp $FF
    jr z, jr_00E_444E

    dec hl
    ld b, h
    ld l, $44
    ld sp, $3644
    ld b, h
    ld a, [hl-]
    ld b, h
    ld a, $44
    ld c, b
    ld b, h
    ld d, l
    ld b, h
    ld e, b
    ld b, h
    ld h, l
    ld b, h
    ld a, b
    ld b, h
    add l
    ld b, h
    add l
    ld b, h
    add l
    ld b, h
    add l
    ld b, h
    inc e
    db $10
    rst $38
    inc l
    db $10
    rst $38
    ld l, $20
    rst $38
    cp $2C
    daa

jr_00E_4434:
    jr nz, jr_00E_4434

    cp $30
    add hl, de
    cp $FE
    jr nc, jr_00E_4457

    cp $FE
    jr nz, jr_00E_446A

    ld a, [hl+]
    add hl, hl
    jr nz, jr_00E_4466

    ld [hl+], a
    ld hl, $1AFE
    ldh a, [hUnk_FF80]
    cp $10
    add hl, de

jr_00E_444E:
    ld a, [de]
    add hl, de
    jr nz, @+$13

    ld [de], a
    ld hl, $1DFE
    db $10

jr_00E_4457:
    rst $38
    ld a, [de]
    ldh a, [$FF50]
    cp $10
    add hl, hl

jr_00E_445E:
    ld a, [de]
    add hl, de
    db $10
    ld de, $1122
    cp $2F

jr_00E_4466:
    ld l, $2D
    inc l
    dec hl

jr_00E_446A:
    ld a, [hl+]
    add hl, de
    jr jr_00E_445E

    cp $10
    ld de, $1112
    db $10
    add hl, de
    ld a, [de]
    add hl, de
    cp $1A
    ldh [hUnk_FFA0], a
    cp $10
    ld hl, $1112
    jr nz, jr_00E_449B

    ld a, [hl+]
    add hl, de
    cp $B3
    ld b, h
    cp b
    ld b, h
    cp [hl]
    ld b, h
    rst $08
    ld b, h
    ret c

    ld b, h
    db $DD
    ld b, h
    ldh [rLY], a
    db $E4
    ld b, h
    rst $20
    ld b, h
    db $EC
    ld b, h
    rst $28
    ld b, h

jr_00E_449B:
    di
    ld b, h
    rst $30
    ld b, h
    cp $44
    ld [bc], a
    ld b, l
    rlca
    ld b, l
    dec c
    ld b, l
    inc de
    ld b, l
    jr jr_00E_44F0

    jr nz, @+$47

    dec h
    ld b, l
    dec l
    ld b, l
    inc sp
    ld b, l
    ld b, l
    ld [hl-], a
    ld b, e
    ld sp, $17FF
    ld d, l
    ld hl, $1112
    rst $38
    and [hl]
    add d
    and h
    add d
    and e
    add c
    and d
    add c
    and d
    and c
    and d
    and c
    and d
    and c
    and d
    add c
    rst $38
    rla
    ld [hl], $23
    ld d, c
    ld d, e
    ld [hl], c
    ld h, d
    ld h, c
    rst $38
    dec d
    call nz, Call_00E_6361
    rst $38
    add [hl]
    add e
    rst $38
    ld e, b
    ld b, c
    ld [hl-], a
    rst $38
    ld l, b

Call_00E_44E5:
    ld h, e
    rst $38
    push hl
    push hl
    push hl
    pop hl
    rst $38
    add h
    add d
    rst $38
    push bc

jr_00E_44F0:
    jp nz, hUnk_FFA1

    and $A2
    pop bc
    rst $38
    ld [hl-], a
    inc sp
    inc [hl]
    and l
    inc [hl]
    inc de
    rst $38
    ldh [c], a
    call nc, hUnk_FFE6
    ld [hl+], a
    inc sp
    ld d, h
    ld d, l
    rst $38
    dec e
    ld c, e
    ld d, h
    ld d, l
    ld d, d
    rst $38
    scf
    ld [hl], $42
    ld hl, $FF60
    dec h
    ld de, $1132
    rst $38
    ld h, d
    ld h, e
    call nz, Call_00E_66C5
    ld h, a
    ret z

    rst $38
    rla
    ld b, [hl]
    ld b, c
    ld [hl-], a
    rst $38
    add hl, de
    ld [hl], a
    ld b, d
    add a
    ld b, d
    ld h, c
    ld h, b
    rst $38
    dec d
    inc [hl]
    ld hl, $8023
    rst $38
    inc de
    inc d
    dec d
    daa
    jr z, jr_00E_4582

    ld c, b
    rst $38

    db $E0, $01, $60, $14, $E0, $02, $20, $14, $E0, $02, $10, $15, $FF, $E0, $01, $40
    db $15, $E0, $02, $10, $14, $FF, $E0, $02, $80, $25, $E0, $02, $26, $25, $E0, $01
    db $10, $26, $27, $26, $FF, $E0, $02, $50, $25, $E0, $02, $16, $25, $E0, $01, $10
    db $26, $27, $26, $FF, $E0, $02, $61

    dec h
    ldh [rSC], a
    ld hl, $E026
    ld [bc], a
    db $10
    dec h
    ldh [rSB], a
    jr nz, jr_00E_45A6

    ldh [rSB], a
    db $10

jr_00E_4582:
    dec h
    nop
    daa
    nop
    dec h
    inc h
    rst $38
    ldh [rSC], a
    and b
    scf
    ldh [rSB], a
    jr nz, jr_00E_45D8

    rst $38
    ldh [rSB], a
    add e
    nop
    db $E4
    ld b, e
    ldh a, [hUnk_FFE0]
    ld bc, $0086
    db $E3
    pop bc
    ldh a, [c]
    or c
    db $F4
    ld [hl], d
    rst $38
    ldh [rSC], a

jr_00E_45A6:
    add b
    scf
    ldh [rSB], a
    jr nz, @+$49

    rst $38
    ldh [rSB], a
    add h
    nop
    db $E3
    and e
    ldh a, [hUnk_FFE0]
    ld bc, $0086
    ld [hl], c
    ldh a, [c]
    ld b, c
    db $F4
    ld [hl-], a
    rst $38
    ldh [rSC], a
    add b
    ld b, a
    ldh [rSB], a
    jr nz, jr_00E_460D

    rst $38
    ldh [rSB], a
    add h
    nop
    db $E3
    inc sp
    ldh a, [hUnk_FFE0]
    ld bc, $0086
    ldh [c], a
    pop bc
    ldh a, [c]
    ld [hl], c
    db $F4
    ld d, d

jr_00E_45D8:
    rst $38

    db $E0, $01, $80, $12, $C2, $13, $C4, $D4, $D4, $D4, $D4, $10, $D3, $D3, $D3, $D3
    db $D2, $D1, $FF, $E0, $01, $80

    dec d
    ldh [rSC], a
    jr nz, @+$16

    ldh [rSC], a
    inc d
    inc d
    rst $38
    ldh [rSB], a
    ld b, b
    ldh [rSB], a
    ld h, b
    db $10
    ret nc

    ret c

    sub $E0
    ld bc, $2510
    jp nc, wUnk_D1D1

    dec d
    pop de
    pop de

jr_00E_460D:
    pop de
    rst $38
    ldh [$FF08], a
    ld h, b
    nop
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $17
    jr nz, jr_00E_4645

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr nc, @+$33

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    ld [$0A09], sp
    dec bc
    inc c
    dec c
    ld c, $0F
    jr @+$1B

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1F
    jr z, @+$2B

    ld a, [hl+]

jr_00E_4645:
    dec hl
    inc l
    dec l
    ld l, $2F
    jr c, @+$3B

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3F
    rst $38

    db $E0, $01, $80, $36, $E0, $01, $40, $56, $FF

Jump_00E_465C:
    ld l, $A5
    bit 4, [hl]
    ret nz

    bit 5, [hl]
    jp z, Jump_00E_466E

    res 5, [hl]
    ld l, $CE
    ld a, [hl]
    call Call_00E_4C55

Jump_00E_466E:
    ld l, $A4
    dec [hl]
    jp nz, Jump_00E_4831

    ld l, $A2
    ld e, [hl]
    inc l
    ld d, [hl]

Jump_00E_4679:
    call Call_000_0891
    ld l, $FF
    bit 7, [hl]
    jp nz, Jump_00E_4C01

    ld a, [wUnk_D7D1]
    cp $E0
    jp nc, Jump_00E_4D8B

    ld a, [wUnk_D7C1]
    cp $63
    jp z, Jump_00E_4B4B

    res 2, [hl]
    call Call_00E_4B9E
    ld l, $B3
    ld c, [hl]
    ld a, [wUnk_D7D1]
    ld l, $A5
    bit 1, [hl]
    jr z, jr_00E_46AF

    ld l, $B9
    and $0F
    swap a
    ld [hl], a
    ld a, $01
    jr jr_00E_46B4

jr_00E_46AF:
    and $0F
    jp z, Jump_00E_46C6

jr_00E_46B4:
    ld b, a
    xor a
    bit 0, b
    jp nz, Jump_00E_46CE

    rrc b

Jump_00E_46BD:
    add c
    dec b
    jp nz, Jump_00E_46BD

    add a
    jp Jump_00E_46D3


Jump_00E_46C6:
    swap c
    ld a, c
    and $F0
    jp Jump_00E_46D3


Jump_00E_46CE:
    add c
    dec b
    jp nz, Jump_00E_46CE

Jump_00E_46D3:
    ld l, $A4
    ld [hl+], a
    ld c, a
    ld a, [wUnk_D7D1]
    and $F0
    jp nz, Jump_00E_46E6

    set 0, [hl]
    ld a, $08
    jp Jump_00E_4C0D


Jump_00E_46E6:
    res 0, [hl]
    ld a, [wUnk_D7C1]
    cp $34
    jp z, Jump_00E_4ACF

    push de
    push hl
    ld l, $BF
    ld a, [hl]
    or a
    jp z, Jump_00E_470A

    ld e, a
    ld b, $00
    ld hl, $0000

Jump_00E_46FF:
    add hl, bc
    dec e
    jp nz, Jump_00E_46FF

    ld a, l
    and $F0
    or h
    swap a

Jump_00E_470A:
    pop hl
    pop de
    ld l, $C0
    ld [hl], a
    ld l, $C9
    ld a, [hl+]
    or a
    jp z, Jump_00E_471B

    ld [hl+], a
    ld a, [hl]
    call Call_00E_4C55

Jump_00E_471B:
    ld l, $A6
    bit 0, [hl]
    call nz, Call_00E_4F6C
    ld a, [wUnk_D7D1]
    and $F0
    cp $D0
    jp nz, Jump_00E_4738

    ld l, $CC
    ld a, [hl]
    add $18
    ld c, a
    ld l, $DC
    ld a, [hl]
    jp Jump_00E_4741


Jump_00E_4738:
    swap a
    rlca
    ld l, $DC
    ld [hl], a
    ld l, $CC
    ld c, [hl]

Jump_00E_4741:
    add c
    ld l, $C8
    ld c, [hl]
    add c
    ld c, a
    ld b, $00
    ld l, $F0
    ld [hl], a
    push hl
    ld hl, $42D4
    add hl, bc
    ld e, [hl]
    inc hl
    ld d, [hl]
    pop hl
    ld l, $C6
    ld a, [hl+]
    or a
    jp z, Jump_00E_4764

    ld c, [hl]
    push hl
    ld l, a
    ld h, c
    add hl, de
    ld e, l
    ld d, h
    pop hl

Jump_00E_4764:
    ld l, $A6
    bit 5, [hl]
    jr z, jr_00E_4777

    ld l, $F6
    ld a, [hl+]
    ld c, [hl]
    push hl
    ld l, a
    ld h, c
    add hl, de
    ld e, l
    ld d, h
    pop hl
    jr jr_00E_478C

jr_00E_4777:
    ld l, $A6
    bit 7, [hl]
    jr z, jr_00E_478C

    ld a, [wUnk_D7C1]
    cp $22
    jr z, jr_00E_478C

    ld l, $B5
    ld a, [hl+]
    ld b, [hl]
    ld l, $E8
    ld [hl+], a
    ld [hl], b

jr_00E_478C:
    ld l, $B5
    ld [hl], e
    inc l
    ld [hl], d
    ld l, $C4
    ld a, [hl]
    or a
    jp z, Jump_00E_47BF

    rlca
    ld l, $A7
    res 4, [hl]
    res 5, [hl]
    ld l, $A6
    jp nc, Jump_00E_47A9

    set 4, [hl]
    jp Jump_00E_47AB


Jump_00E_47A9:
    res 4, [hl]

Jump_00E_47AB:
    set 2, [hl]
    ld l, $CF
    ld a, [hl+]
    ld b, [hl]
    inc l
    ld [hl+], a
    ld [hl], b
    ld c, a
    inc l
    ld [hl], $01
    inc l
    ld a, [hl+]
    or a
    ld [hl], a
    call z, Call_00E_4894

Jump_00E_47BF:
    call Call_00E_4BCB
    ld l, $C5
    ld a, [hl]
    or a
    jp z, Jump_00E_47DE

    ld l, $A7
    res 6, [hl]
    res 7, [hl]
    ld l, $A6
    set 3, [hl]
    ld l, $DD
    ld a, [hl+]
    ld b, [hl]
    inc l
    ld [hl+], a
    ld [hl], b
    ld c, a
    jp Jump_00E_496F


Jump_00E_47DE:
    ld l, $B9
    ld a, [hl]
    ld l, $B4
    sub [hl]
    ld b, a
    ld a, [wUnk_D7C1]
    bit 6, a
    ld a, b
    jp nz, Jump_00E_4C0D

    ld b, a
    ld a, [wUnk_D7CC]
    or a
    ld a, b
    jp z, Jump_00E_4C0D

    ld l, $A6
    bit 7, [hl]
    jr z, jr_00E_4807

    res 7, [hl]
    ld l, $BF
    ld [hl], $08
    ld l, $C1
    ld [hl], $00

jr_00E_4807:
    xor a
    ld l, $E7
    ld [hl], a
    ld a, [wUnk_D7C1]
    and $0F
    cp $02
    ld a, [wUnk_D7CC]
    ld c, a
    ld a, b
    jp nz, Jump_00E_482A

    add c
    jp c, Jump_00E_4823

    cp $70
    jp c, Jump_00E_4C0D

Jump_00E_4823:
    xor a
    ld l, $A1
    ld [hl], a
    jp Jump_00E_4C0D


Jump_00E_482A:
    sub c
    jp nc, Jump_00E_4C0D

    jp Jump_00E_4C01


Jump_00E_4831:
    ld a, [wUnk_D7C1]
    cp $63
    ret z

    cp $34
    ret z

    ld l, $A5
    bit 0, [hl]
    ret nz

    ld l, $C9
    ld a, [hl+]
    or a
    jp z, Jump_00E_4850

    dec [hl]
    jp nz, Jump_00E_4850

    ld l, $CD
    ld a, [hl]
    call Call_00E_4C55

Jump_00E_4850:
    ld l, $C4
    ld a, [hl]
    or a
    jp z, Jump_00E_487A

    ld l, $A6
    bit 2, [hl]
    jp z, Jump_00E_487A

    ld l, $D5
    ld a, [hl]
    or a
    jp z, Jump_00E_4869

    dec [hl]
    jp Jump_00E_487A


Jump_00E_4869:
    ld l, $D3
    dec [hl]
    jp nz, Jump_00E_487A

    ld l, $D1
    ld c, [hl]
    inc l
    ld b, [hl]
    call Call_00E_4894
    call Call_00E_4BCB

Jump_00E_487A:
    ld l, $C5
    ld a, [hl]
    or a
    jp z, Jump_00E_4A13

    ld l, $A6
    bit 3, [hl]
    jp z, Jump_00E_4A13

    ld l, $E1
    dec [hl]
    ret nz

    ld l, $DF
    ld c, [hl]
    inc l
    ld b, [hl]
    jp Jump_00E_496F


Call_00E_4894:
Jump_00E_4894:
    ld a, [bc]
    cp $FF
    jp z, Jump_00E_48F0

    cp $FE
    jp z, Jump_00E_4928

    cp $FB
    jp z, Jump_00E_48FA

    ld l, $D3
    and $F0
    swap a
    ld [hl], a
    ld a, [bc]
    ld l, $D1
    inc bc
    ld [hl], c
    inc l
    ld [hl], b
    and $0F
    jp z, Jump_00E_48EA

    ld l, $A6
    bit 4, [hl]
    jp nz, Jump_00E_4942

    ld l, $D6
    ld e, a
    ld d, $00
    bit 3, a
    jp z, Jump_00E_48D2

    and $07
    jp z, Jump_00E_48EA

    cpl
    inc a
    ld e, a
    ld d, $FF

Jump_00E_48D2:
    ld a, [hl]
    or a
    jp z, Jump_00E_48DF

    ld b, a
    xor a

Jump_00E_48D9:
    add e
    dec b
    jp nz, Jump_00E_48D9

    ld e, a

Jump_00E_48DF:
    ld l, $B6
    ld a, [hl-]
    ld l, [hl]
    push hl
    ld h, a
    add hl, de
    ld e, l
    ld d, h
    pop hl
    ret


Jump_00E_48EA:
    ld l, $B5
    ld e, [hl]
    inc l
    ld d, [hl]
    ret


Jump_00E_48F0:
    ld l, $A6
    res 2, [hl]
    ld l, $B7
    ld e, [hl]
    inc l
    ld d, [hl]
    ret


Jump_00E_48FA:
    ld l, $A7
    inc bc
    bit 4, [hl]
    jp nz, Jump_00E_490F

    set 4, [hl]
    ld l, $D7
    ld [hl], c
    inc l
    ld [hl], b
    inc l
    ld [hl], $00
    jp Jump_00E_4894


Jump_00E_490F:
    ld a, [bc]
    ld l, $D9
    inc [hl]
    cp [hl]
    jp z, Jump_00E_491E

    dec l
    ld b, [hl]
    dec l
    ld c, [hl]
    jp Jump_00E_4894


Jump_00E_491E:
    ld [hl], $00
    ld l, $A7
    res 4, [hl]
    inc bc
    jp Jump_00E_4894


Jump_00E_4928:
    ld l, $A7
    bit 5, [hl]
    jp nz, Jump_00E_493A

    set 5, [hl]
    inc bc
    ld l, $DA
    ld [hl], c
    inc l
    ld [hl], b
    jp Jump_00E_4894


Jump_00E_493A:
    ld l, $DA
    ld c, [hl]
    inc l
    ld b, [hl]
    jp Jump_00E_4894


Jump_00E_4942:
    cp $0D
    jr c, jr_00E_4953

    sub $0D
    jr z, jr_00E_4951

    dec a
    jr z, jr_00E_494F

    add $0B

jr_00E_494F:
    add $05

jr_00E_4951:
    add $13

jr_00E_4953:
    rlca
    ld c, a
    ld l, $F0
    ld a, [hl]
    add c
    ld e, a
    ld d, $00
    ld l, $C6
    ld a, [hl+]
    ld c, [hl]
    push hl
    ld hl, $42D4
    add hl, de
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld h, c
    ld l, a
    add hl, de
    ld e, l
    ld d, h
    pop hl
    ret


Jump_00E_496F:
    ld a, [bc]
    cp $FF
    jp z, Jump_00E_49C6

    cp $FE
    jp z, Jump_00E_49F9

    cp $FB
    jp z, Jump_00E_49CB

    ld l, $E1
    and $F0
    swap a
    ld [hl], a
    ld a, [bc]
    ld l, $DF
    inc bc
    ld [hl], c
    inc l
    ld [hl], b
    and $0F
    swap a
    ld l, $B4
    sub [hl]
    jp c, Jump_00E_49C1

    ld b, a
    ld a, [wUnk_D7CC]
    or a
    ld a, b
    jp z, Jump_00E_4C0D

    ld a, [wUnk_D7C1]
    and $0F
    cp $02
    ld a, [wUnk_D7CC]
    ld c, a
    ld a, b
    jp nz, Jump_00E_49BD

    add c
    jp c, Jump_00E_49B8

    cp $70
    jp c, Jump_00E_4C0D

Jump_00E_49B8:
    ld a, $00
    jp Jump_00E_4C0D


Jump_00E_49BD:
    sub c
    jp nc, Jump_00E_4C0D

Jump_00E_49C1:
    ld a, $08
    jp Jump_00E_4C0D


Jump_00E_49C6:
    ld l, $A6
    res 3, [hl]
    ret


Jump_00E_49CB:
    ld l, $A7
    inc bc
    bit 6, [hl]
    jp nz, Jump_00E_49E0

    set 6, [hl]
    ld l, $E2
    ld [hl], c
    inc l
    ld [hl], b
    inc l
    ld [hl], $00
    jp Jump_00E_496F


Jump_00E_49E0:
    ld a, [bc]
    ld l, $E4
    inc [hl]
    cp [hl]
    jp z, Jump_00E_49EF

    dec l
    ld b, [hl]
    dec l
    ld c, [hl]
    jp Jump_00E_496F


Jump_00E_49EF:
    ld [hl], $00
    ld l, $A7
    res 6, [hl]
    inc bc
    jp Jump_00E_496F


Jump_00E_49F9:
    ld l, $A7
    bit 7, [hl]
    jp nz, Jump_00E_4A0B

    set 7, [hl]
    inc bc
    ld l, $E5
    ld [hl], c
    inc l
    ld [hl], b
    jp Jump_00E_496F


Jump_00E_4A0B:
    ld l, $E5
    ld c, [hl]
    inc l
    ld b, [hl]
    jp Jump_00E_496F


Jump_00E_4A13:
    ld l, $A4
    ld a, [wUnk_D7C1]
    cp $22
    ld a, [hl]
    ld l, $C0
    jp z, Jump_00E_4A97

    cp [hl]
    jp z, Jump_00E_4A32

    ret c

    ld l, $A5
    bit 2, [hl]
    ret z

    res 2, [hl]
    ld l, $BA
    ld a, [hl]
    jp Jump_00E_4C0D


Jump_00E_4A32:
    ld l, $A6
    bit 7, [hl]
    jr z, jr_00E_4A6C

    ld l, $C1
    ld a, [hl]
    or a
    jp z, Jump_00E_4A92

    bit 3, [hl]
    jr z, jr_00E_4A47

    and $0F
    jr jr_00E_4A4E

jr_00E_4A47:
    ld b, a
    ld l, $BA
    ld a, [hl]
    and $F0
    or b

jr_00E_4A4E:
    ld l, $BC
    ld c, [hl]
    call Call_00E_4CB7
    ret nc

    ld l, $E9
    ld a, [hl]
    or a
    jr z, jr_00E_4A88

    ld l, $BD
    ld c, [hl]
    ld l, $E8
    ld a, [hl]
    ldh [c], a
    ld l, $BE
    ld c, [hl]
    ld l, $E9
    ld a, [hl]
    or $80
    ldh [c], a
    ret


jr_00E_4A6C:
    ld l, $E7
    ld a, [hl]
    or a
    jp nz, Jump_00E_4C0D

    ld l, $C1
    ld a, [hl]
    or a
    jp z, Jump_00E_4A92

    ld b, a
    ld l, $BA
    ld a, [hl]
    and $F0
    or b
    ld l, $BC
    ld c, [hl]
    call Call_00E_4CB7
    ret nc

jr_00E_4A88:
    ld l, $BE
    ld c, [hl]
    ld l, $B8
    ld a, [hl]
    or $80
    ldh [c], a
    ret


Jump_00E_4A92:
    ld a, $08
    jp Jump_00E_4C0D


Jump_00E_4A97:
    cp [hl]
    inc hl
    jp c, Jump_00E_4AAF

    jp z, Jump_00E_4AAC

    ld l, $A5
    bit 2, [hl]
    ret z

    res 2, [hl]
    ld l, $BA
    ld a, [hl]
    jp Jump_00E_4C0D


Jump_00E_4AAC:
    ld a, [hl+]
    ld [hl], a
    ret


Jump_00E_4AAF:
    ld l, $E7
    ld a, [hl]
    or a
    jp nz, Jump_00E_4C0D

    ld l, $C1
    ld a, [hl+]
    or a
    jp z, Jump_00E_4C0D

    dec [hl]
    ret nz

    dec l
    ld a, [hl+]
    ld [hl], a
    ld l, $BA
    ld a, [hl]
    and $F0
    cp $61
    ret nc

    add $20
    jp Jump_00E_4C0D


Jump_00E_4ACF:
    ld a, [wUnk_D7D1]
    and $F0
    swap a
    ld [wUnk_D7C8], a
    ld hl, $3FFE
    call Call_000_0BA9
    ld a, [hl+]
    ld [wUnk_D7C7], a
    ld b, [hl]
    inc hl
    ld d, h
    ld e, l
    srl b
    ld hl, wUnk_D0A0
    call c, Call_00E_4AFD
    srl b
    ld hl, wUnk_D1A0
    call c, Call_00E_4AFD
    srl b
    ld hl, wUnk_D2A0
    ret nc

Call_00E_4AFD:
    ld a, [wUnk_D7C7]
    cp [hl]
    jp c, Jump_00E_4B48

    ld b, a
    push hl
    ld h, $D0
    ld l, $A1
    ld a, [hl]
    pop hl
    ld a, b
    ld [hl+], a
    ld a, [wUnk_D7C8]
    ld [hl+], a
    ld a, [de]
    ld [hl+], a
    inc de
    ld a, [de]
    inc de
    ld [hl+], a
    ld a, $01
    ld [hl+], a
    xor a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    ld l, $B4
    ld [hl], a
    ld l, $C4
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    ld a, $D0
    cp h
    jp nz, Jump_00E_4B37

    ld a, $08
    ld c, $10
    ldh [c], a

Jump_00E_4B37:
    ld a, $D2
    cp h
    ret nz

    push bc
    ld b, $88
    ld l, $C3
    ld [hl], b
    ld c, $25
    ldh a, [c]
    or b
    ldh [c], a
    pop bc
    ret


Jump_00E_4B48:
    inc de
    inc de
    ret


Jump_00E_4B4B:
    ld l, $B3
    ld a, [hl]
    ld l, $A4
    ld [hl], a
    ld a, [wUnk_D7D1]
    call Call_00E_4B9E
    cp $C0
    jr nc, jr_00E_4B75

    ld e, a
    ld d, $00
    call Call_00E_4BCB
    ld l, $A6
    bit 0, [hl]
    call nz, Call_00E_4F6C
    ld l, $A5
    bit 7, [hl]
    ld l, $BA
    ld a, [hl]
    jp z, Jump_00E_4C06

    jp Jump_00E_4C44


jr_00E_4B75:
    cp $D0
    jp nc, Jump_00E_4B87

    ld l, $A5
    set 6, [hl]
    call Call_00E_4B90
    call Call_00E_4C06
    jp Jump_00E_4679


Jump_00E_4B87:
    jp z, Jump_00E_4C04

    call Call_00E_4B90
    jp Jump_00E_4C0D


Call_00E_4B90:
    and $0F
    swap a
    ld b, a
    ld l, $BA
    ld a, [hl]
    and $0F
    or b
    ld [hl], a
    ld a, [hl]
    ret


Call_00E_4B9E:
    inc de
    ld l, $A2
    ld [hl], e
    inc l
    ld [hl], d
    ret


Call_00E_4BA5:
    ld l, $A5
    set 2, [hl]
    set 5, [hl]
    ld b, $EE
    ld a, [wUnk_D7C1]
    and $0F
    jp z, Jump_00E_4BBB

Jump_00E_4BB5:
    rlc b
    dec a
    jp nz, Jump_00E_4BB5

Jump_00E_4BBB:
    ld c, $25
    ldh a, [c]
    and b
    ld l, $C3
    or [hl]
    ldh [c], a
    ld l, $B7
    ld e, [hl]
    inc l
    ld d, [hl]
    jp Jump_00E_4BCB


Call_00E_4BCB:
Jump_00E_4BCB:
    ld l, $B7
    ld [hl], e
    inc l
    ld a, d
    and $07
    ld [hl], a
    ld l, $BD
    ld c, [hl]
    ld a, e
    call Call_00E_4CB7
    ret nc

    inc c
    ld a, d
    and $07
    ldh [c], a
    ret


Jump_00E_4BE1:
    ld a, [wUnk_D7C1]
    and $0F
    cp $02
    jp z, Jump_00E_4BFB

    ld a, $08
    ld l, $BC
    ld c, [hl]
    call Call_00E_4CB7
    ret nc

    ld l, $BE
    ld a, $80
    ld c, [hl]
    ldh [c], a
    ret


Jump_00E_4BFB:
    xor a
    ld c, $1C
    jp Jump_00E_4CB7


Jump_00E_4C01:
    call Call_00E_4B9E

Jump_00E_4C04:
    ld a, $08

Call_00E_4C06:
Jump_00E_4C06:
    ld l, $A5
    bit 6, [hl]
    jp nz, Jump_00E_4C42

Jump_00E_4C0D:
    ld l, $BC
    ld c, [hl]
    ld l, $BA
    ld [hl], a
    ldh a, [c]
    cp [hl]
    jp nz, Jump_00E_4C2B

    ld a, [wUnk_D7C1]
    and $0F
    ret nz

    ld c, $10
    ldh a, [c]
    and $7F
    cp $08
    ret z

    ld l, $BC
    ld c, [hl]
    ld l, $BA

Jump_00E_4C2B:
    ld a, [hl]
    call Call_00E_4CB7
    ret nc

    ld a, [wUnk_D7C1]
    and $0F
    cp $02
    ret z

    ld l, $BE
    ld c, [hl]
    ld l, $B8
    ld a, [hl]
    or $80
    ldh [c], a
    ret


Jump_00E_4C42:
    res 6, [hl]

Call_00E_4C44:
Jump_00E_4C44:
    ld l, $BC
    ld c, [hl]
    ld l, $BA
    ld [hl], a
    ldh [c], a
    ld l, $BE
    ld c, [hl]
    ld l, $B8
    ld a, [hl]
    or $80
    ldh [c], a
    ret


Call_00E_4C55:
    ld b, a
    ld a, [wUnk_D7C1]
    and $0F
    cp $02
    jp z, Jump_00E_4C6A

    ld a, b
    ld l, $CE
    ld [hl], a
    ld l, $BB
    ld c, [hl]
    jp Jump_00E_4CB7


Jump_00E_4C6A:
    ld a, [wUnk_D7C1]
    cp $22
    jp nz, Jump_00E_4C7E

    push hl
    ld h, $D1
    ld l, $A1
    ld a, [hl]
    or a
    pop hl
    ld l, $CE
    ld [hl], b
    ret nz

Jump_00E_4C7E:
    ld a, [wUnk_D7CE]
    cp b
    ret z

    ld a, b
    ld l, $CE
    ld [hl], a
    ld [wUnk_D7CE], a
    push hl
    ld c, $1A
    xor a
    ldh [c], a
    ld a, b
    swap a
    ld hl, $41DE
    call Call_000_0BA9
    ld c, $30
    ld b, $10

Jump_00E_4C9C:
    ld a, [hl+]
    ldh [c], a
    inc c
    dec b
    jp nz, Jump_00E_4C9C

    pop hl
    ld c, $1C
    xor a
    ldh [c], a
    ld a, $80
    ld c, $1A
    ldh [c], a
    ld l, $BE
    ld c, [hl]
    ld l, $B8
    ld a, [hl]
    or $80
    ldh [c], a
    ret


Call_00E_4CB7:
Jump_00E_4CB7:
    ld b, a
    push hl
    ld a, [wUnk_D7C1]
    cp $00
    jp z, Jump_00E_4CD2

    cp $22
    jp nz, Jump_00E_4CDE

    ld h, $D1
    ld l, $A1
    ld a, [hl]
    or a
    pop hl
    ret nz

    ld a, b
    ldh [c], a
    scf
    ret


Jump_00E_4CD2:
    ld h, $D0
    ld l, $A1
    ld a, [hl]
    or a
    pop hl
    ret nz

    ld a, b
    ldh [c], a
    scf
    ret


Jump_00E_4CDE:
    pop hl
    ld a, b
    ldh [c], a
    scf
    ret


Jump_00E_4CE3:
    xor a
    ld hl, wUnk_D0A0
    ld [hl+], a
    ld [hl], a
    ld l, $A5
    res 1, [hl]
    ld hl, wUnk_D1A0
    ld [hl+], a
    ld [hl], a
    ld l, $A5
    res 1, [hl]
    ld hl, wUnk_D2A0
    ld [hl+], a
    ld [hl-], a
    inc h
    ld [hl+], a
    ld [hl-], a
    inc h
    ld [hl+], a
    ld [hl-], a
    inc h
    ld [hl+], a
    ld [hl-], a
    inc h
    ld [hl+], a
    ld [hl-], a
    ld [wUnk_D7D6], a
    ld [wUnk_D7DA], a
    ld c, $12
    ld a, $08
    ldh [c], a
    ld c, $17
    ldh [c], a
    ld c, $1A
    ldh [c], a
    ld c, $1C
    ldh [c], a
    ld c, $21
    ldh [c], a
    ld a, $80
    ld c, $14
    ldh [c], a
    ld c, $19
    ldh [c], a
    ld c, $23
    ldh [c], a
    ld a, $FF
    ld c, $25
    ldh [c], a
    ld a, $08
    ld c, $10
    ldh [c], a
    ld c, $24
    ld a, $77
    ldh [c], a
    ret


    ld [wUnk_D7CA], a
    dec a
    ld [wUnk_D7CB], a
    xor a
    ld [wUnk_D7C9], a
    ld a, [wUnk_D7D6]
    or a
    ld c, $24
    jr nz, jr_00E_4D50

    ldh a, [c]
    cp $77
    ret z

jr_00E_4D50:
    xor a
    ld [wUnk_D7D6], a
    ret


    xor a
    call Call_000_0875

Call_00E_4D59:
    xor a
    push hl
    ld hl, wUnk_D7C9
    set 0, [hl]
    inc l
    inc l
    ld [hl+], a
    ld [hl], a
    ld c, $24
    ld a, $00
    ldh [c], a
    pop hl
    ret


    ld a, [wUnk_D7CA]
    or a
    ret nz

    ld hl, wUnk_D7D9
    res 0, [hl]
    ld a, $77
    ld c, $24
    ldh [c], a
    ret


    ld a, [wUnk_D7CA]
    or a
    ret nz

    ld hl, wUnk_D7D9
    set 0, [hl]
    ld a, $44
    ld c, $24
    ldh [c], a
    ret


Jump_00E_4D8B:
    inc de
    sub $E0
    jp z, Jump_00E_4E1C

    cp $07
    jp c, Jump_00E_4EBD

    ld l, $A5
    bit 1, [hl]
    jp nz, Jump_00E_4DDA

    push hl
    ld hl, $4D9A
    call Call_000_0BA9
    ld a, [wUnk_D7D2]
    jp hl


    db $D3, $4E

    db $DB
    ld c, [hl]
    or $4E

    db $FE, $4E

    ld [hl], e
    ld d, b
    db $DD
    ld d, b

    db $F8, $50, $99, $51, $A5, $51, $B7, $51, $B7, $51, $B7, $51, $B7, $51, $B7, $51
    db $B7, $51, $B7, $51, $B7, $51, $B7, $51

    rst $10
    ld d, c
    db $10
    ld d, d

    db $1B, $52

    ld h, b
    ld d, d

    db $A5, $52, $C9, $52, $E3, $52

Jump_00E_4DDA:
    cp $07
    jp c, Jump_00E_4EBD

    push hl
    ld hl, $4DDC
    call Call_000_0BA9
    ld a, [wUnk_D7D2]
    jp hl


    db $D3
    ld c, [hl]
    db $DB
    ld c, [hl]
    or $4E

    db $FE, $4E

    ld [hl], e
    ld d, b
    db $DD
    ld d, b
    ld hl, sp+$50
    db $10
    ld d, c
    and l
    ld d, c
    or a
    ld d, c
    or a
    ld d, c
    or a
    ld d, c
    or a
    ld d, c
    or a
    ld d, c
    or a
    ld d, c
    or a
    ld d, c
    or a
    ld d, c
    or a
    ld d, c
    rst $10
    ld d, c
    db $10
    ld d, d
    dec de
    ld d, d
    ld h, b
    ld d, d
    and l
    ld d, d

    db $C9, $52, $E3, $52

Jump_00E_4E1C:
    ld a, [wUnk_D7D2]
    and $7F
    ld l, $B3
    ld [hl], a
    ld a, [wUnk_D7C1]
    cp $63
    ld a, [wUnk_D7D2]
    jp nz, Jump_00E_4E4B

    bit 7, a
    ld l, $A5
    jr z, jr_00E_4E39

    set 7, [hl]
    jr jr_00E_4E3D

jr_00E_4E39:
    res 7, [hl]
    set 6, [hl]

jr_00E_4E3D:
    inc de
    ld a, [wUnk_D7D3]
    ld l, $BA
    ld [hl], a
    call Call_00E_4C44
    inc de
    jp Jump_00E_4679


Jump_00E_4E4B:
    bit 7, a
    ld l, $A5
    inc de
    jp nz, Jump_00E_4E9C

    res 1, [hl]
    ld a, [wUnk_D7D3]
    and $F0
    ld l, $CD
    ld [hl], a
    call Call_00E_4C55
    ld a, [wUnk_D7D3]
    and $0F
    swap a
    ld l, $B9
    ld [hl], a
    inc de
    or a
    jp z, Jump_00E_4E93

    ld a, [wUnk_D7D4]
    and $F0
    swap a
    ld l, $BF
    ld [hl], a
    ld a, [wUnk_D7D4]
    and $0F
    ld l, $C1
    ld [hl], a
    xor a
    ld l, $C5
    ld [hl], a

Jump_00E_4E85:
    call Call_00E_4F41
    xor a
    ld l, $B4
    ld [hl], a
    ld l, $E7
    ld [hl], a
    inc de
    jp Jump_00E_4679


Jump_00E_4E93:
    ld a, [wUnk_D7D4]
    ld l, $C5
    ld [hl], a
    jp Jump_00E_4E85


Jump_00E_4E9C:
    set 1, [hl]
    ld a, [wUnk_D7D3]
    ld l, $CD
    ld [hl], a
    call Call_00E_4C55
    inc de
    ld a, [wUnk_D7C1]
    and $0F
    jp nz, Jump_00E_4EB6

    ld c, $10
    ld a, [wUnk_D7D4]
    ldh [c], a

Jump_00E_4EB6:
    call Call_00E_4F41
    inc de
    jp Jump_00E_4679


Jump_00E_4EBD:
    ld c, a
    ld b, $00
    push hl
    ld hl, $4ECC
    add hl, bc
    ld a, [hl]
    pop hl
    ld l, $CC
    ld [hl], a
    jp Jump_00E_4679


    db $18, $30, $48, $60, $78, $90

    pop hl
    ld l, $B3
    ld [hl], a
    inc de
    jp Jump_00E_4679


    pop hl
    ld l, $C1
    and $0F
    ld [hl], a
    ld a, [wUnk_D7D2]
    and $F0
    swap a
    ld l, $BF
    ld [hl], a
    xor a
    ld l, $E7
    ld [hl], a
    ld l, $C5
    ld [hl], a
    inc de
    jp Jump_00E_4679


    pop hl
    ld c, $10
    ldh [c], a
    inc de
    jp Jump_00E_4679


    swap a
    and $0F
    ld hl, $4F0C
    call Call_000_0BA9
    ld a, [wUnk_D7D2]
    jp hl


    ld h, $4F

    db $35, $4F, $5C, $4F, $64, $4F

    bit 1, a
    ret c

    ld c, a
    push hl
    ld c, a

    db $F1, $4F, $FC, $4F, $0C, $50

    jr @+$52

    ld c, c
    ld d, e
    ld e, [hl]
    ld d, b
    pop hl
    and $0F
    swap a
    ld l, $CD
    ld [hl], a
    call Call_00E_4C55
    inc de
    jp Jump_00E_4679


    pop hl
    ld l, $A6
    res 0, [hl]
    call Call_00E_4F41
    inc de
    jp Jump_00E_4679


Call_00E_4F41:
Jump_00E_4F41:
    ld b, $11
    ld a, [wUnk_D7C1]
    and $0F
    or a
    jp z, Jump_00E_4F52

Jump_00E_4F4C:
    sla b
    dec a
    jp nz, Jump_00E_4F4C

Jump_00E_4F52:
    ld c, $25
    ldh a, [c]
    ld l, $C3
    ld [hl], b
    or b
    jp Jump_00E_4CB7


    pop hl
    call Call_00E_4FAA
    inc de
    jp Jump_00E_4679


    pop hl
    call Call_00E_4F87
    inc de
    jp Jump_00E_4679


Call_00E_4F6C:
    bit 6, [hl]
    jp nz, Jump_00E_4F7B

    bit 1, [hl]
    jp nz, Jump_00E_4FA8

    set 1, [hl]
    jp Jump_00E_4F87


Jump_00E_4F7B:
    bit 1, [hl]
    jp z, Jump_00E_4F85

    res 1, [hl]
    jp Jump_00E_4F41


Jump_00E_4F85:
    set 1, [hl]

Call_00E_4F87:
Jump_00E_4F87:
    ld b, $EE
    ld l, $01
    ld a, [wUnk_D7C1]
    and $0F
    or a
    jp z, Jump_00E_4F9C

Jump_00E_4F94:
    rlc b
    rlc l
    dec a
    jp nz, Jump_00E_4F94

Jump_00E_4F9C:
    ld c, $25
    ldh a, [c]
    and b
    or l
    ld b, l
    ld l, $C3
    ld [hl], b
    jp Jump_00E_4CB7


Jump_00E_4FA8:
    res 1, [hl]

Call_00E_4FAA:
    ld b, $EE
    ld l, $10
    ld a, [wUnk_D7C1]
    and $0F
    or a
    jp z, Jump_00E_4FBF

Jump_00E_4FB7:
    rlc b
    rlc l
    dec a
    jp nz, Jump_00E_4FB7

Jump_00E_4FBF:
    ld c, $25
    ldh a, [c]
    and b
    or l
    ld b, l
    ld l, $C3
    ld [hl], b
    jp Jump_00E_4CB7


    pop hl
    ld l, $A6
    set 0, [hl]
    res 1, [hl]
    res 6, [hl]
    inc de
    jp Jump_00E_4679


    pop hl
    ld l, $A6
    set 0, [hl]
    set 6, [hl]
    set 1, [hl]
    inc de
    jp Jump_00E_4679


    pop hl
    ld l, $A6
    res 0, [hl]
    call Call_00E_4F41
    inc de
    jp Jump_00E_4679


    pop hl
    and $0F
    rlca
    ld l, $C8
    ld [hl], a
    inc de
    jp Jump_00E_4679


    pop hl
    and $0F
    jp z, Jump_00E_5005

    rlca
    cpl
    inc a

Jump_00E_5005:
    ld l, $C8
    ld [hl], a
    inc de
    jp Jump_00E_4679


    pop hl
    and $0F
    swap a
    ld l, $E7
    ld [hl], a
    inc de
    jp Jump_00E_4679


    pop hl
    inc de
    inc de
    ld a, [wUnk_D7CA]
    or a
    jp nz, Jump_00E_4679

    ld a, [wUnk_D7D9]
    set 0, a
    ld a, [wUnk_D7D3]
    or a
    jr z, jr_00E_504E

    and $0F
    res 3, a
    ld b, a
    ld a, $07
    sub b
    ld [wUnk_D7D5], a
    ld a, [wUnk_D7D3]
    and $F0
    swap a
    ld [wUnk_D7D7], a
    dec a
    ld [wUnk_D7D8], a
    ld a, $01
    ld [wUnk_D7D6], a
    jp Jump_00E_4679


jr_00E_504E:
    ld a, [wUnk_D7D9]
    res 0, a
    ld [wUnk_D7D6], a
    ld c, $24
    ld a, $77
    ldh [c], a
    jp Jump_00E_4679


    pop hl
    and $0F
    jr z, jr_00E_506B

    ld l, $A6
    set 7, [hl]
    inc de
    jp Jump_00E_4679


jr_00E_506B:
    ld l, $A6
    res 7, [hl]
    inc de
    jp Jump_00E_4679


    pop hl
    ld l, $C4
    ld [hl], a
    or a
    jp z, Jump_00E_50C0

    bit 7, [hl]
    jp nz, Jump_00E_50C4

    and $7F
    push hl
    ld hl, $4396
    call Call_000_0BA9
    ld b, h
    ld c, l
    pop hl
    ld l, $CF
    ld [hl], c
    inc l
    ld [hl], b
    inc de
    ld a, [wUnk_D7D3]
    and $F0
    swap a
    ld l, $B3
    ld c, [hl]
    jp z, Jump_00E_50B6

    ld b, a
    xor a
    bit 0, b
    jp nz, Jump_00E_50B1

    rrc b

Jump_00E_50A8:
    add c
    dec b
    jp nz, Jump_00E_50A8

    add a
    jp Jump_00E_50B6


Jump_00E_50B1:
    add c
    dec b
    jp nz, Jump_00E_50B1

Jump_00E_50B6:
    ld l, $D4
    ld [hl+], a
    ld a, [wUnk_D7D3]
    and $0F
    inc l
    ld [hl], a

Jump_00E_50C0:
    inc de
    jp Jump_00E_4679


Jump_00E_50C4:
    and $7F
    push hl
    ld hl, $4406
    call Call_000_0BA9
    ld b, h
    ld c, l
    pop hl
    ld l, $CF
    ld [hl], c
    inc l
    ld [hl], b
    ld l, $D4
    ld [hl], $00
    inc de
    jp Jump_00E_4679


    pop hl
    ld l, $C5
    ld [hl], a
    or a
    jp z, Jump_00E_50F4

    push hl
    ld hl, $4483
    call Call_000_0BA9
    ld b, h
    ld c, l
    pop hl
    ld l, $DD
    ld [hl], c
    inc l
    ld [hl], b

Jump_00E_50F4:
    inc de
    jp Jump_00E_4679


    pop hl
    and $F0
    ld l, $CB
    ld [hl-], a
    ld a, [wUnk_D7D2]
    and $0F
    ld [hl-], a
    ld [hl], a
    or a
    ld l, $CD
    ld a, [hl]
    call z, Call_00E_4C55
    inc de
    jp Jump_00E_4679


    pop hl
    ld l, $A6
    bit 5, [hl]
    jr nz, jr_00E_5124

    set 5, [hl]
    ld l, $F1
    ld [hl], e
    inc l
    ld [hl], d
    inc l
    ld [hl], $00
    jp Jump_00E_4679


jr_00E_5124:
    ld a, [de]
    bit 7, a
    ld c, a
    ld l, $F4
    jr nz, jr_00E_5130

    ld b, $00
    jr jr_00E_5132

jr_00E_5130:
    ld b, $FF

jr_00E_5132:
    push hl
    ld l, $F6
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, bc
    ld c, l
    ld b, h
    pop hl
    ld l, $F6
    ld [hl], c
    inc l
    ld [hl], b
    inc de
    ld a, [de]
    bit 7, a
    ld l, $F5
    jr nz, jr_00E_515E

    bit 6, a
    jr nz, jr_00E_5152

    sub $01
    cpl
    jr jr_00E_516C

jr_00E_5152:
    and $0F
    inc [hl]
    cp [hl]
    jr nz, jr_00E_5174

    ld [hl], $00
    ld a, $0F
    jr jr_00E_516C

jr_00E_515E:
    bit 6, a
    jr z, jr_00E_516C

    and $0F
    inc [hl]
    cp [hl]
    jr nz, jr_00E_5174

    ld [hl], $00
    ld a, $01

jr_00E_516C:
    and $0F
    swap a
    ld l, $B4
    add [hl]
    ld [hl], a

jr_00E_5174:
    inc de
    ld a, [de]
    ld l, $F3
    inc [hl]
    cp [hl]
    jp z, Jump_00E_5185

    ld l, $F1
    ld e, [hl]
    inc l
    ld d, [hl]
    jp Jump_00E_4679


Jump_00E_5185:
    xor a
    ld [hl], a
    ld l, $A6
    res 5, [hl]
    ld l, $B4
    ld [hl], a
    ld l, $F3
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    inc de
    jp Jump_00E_4679


    pop hl
    ld [wUnk_D7C5], a
    xor a
    ld [wUnk_D7C6], a
    inc de
    jp Jump_00E_4679


    pop hl
    ld l, $C6
    ld [hl+], a
    bit 7, a
    ld a, $00
    jp z, Jump_00E_51B2

    ld a, $FF

Jump_00E_51B2:
    ld [hl], a
    inc de
    jp Jump_00E_4679


    pop hl
    dec de
    ld a, [wUnk_D7D1]
    and $0F
    swap a
    jr z, jr_00E_51D0

    ld b, a
    ld a, [wUnk_D7C1]
    and $0F
    cp $02
    ld a, b
    jr nz, jr_00E_51D0

    sla a
    cpl

jr_00E_51D0:
    ld l, $B4
    ld [hl], a
    inc de
    jp Jump_00E_4679


    pop hl
    bit 0, a
    jr z, jr_00E_51F3

    ld l, $A7
    bit 0, [hl]
    jr z, jr_00E_520C

    ld l, $EA
    dec [hl]
    jr nz, jr_00E_520C

    ld l, $A7
    res 0, [hl]
    ld l, $EB
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    jp Jump_00E_4679


jr_00E_51F3:
    ld l, $A7
    bit 1, [hl]
    jr z, jr_00E_520C

    ld l, $ED
    dec [hl]
    jr nz, jr_00E_520C

    ld l, $A7
    res 1, [hl]
    res 0, [hl]
    ld l, $EE
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    jp Jump_00E_4679


jr_00E_520C:
    inc de
    jp Jump_00E_4679


    pop hl
    inc de
    ld c, a
    ld a, [wUnk_D7D3]
    ld d, a
    ld e, c
    jp Jump_00E_4679


    pop hl
    ld l, $A7
    bit 0, [hl]
    jp nz, Jump_00E_5230

    set 0, [hl]
    ld l, $A9
    ld [hl], e
    inc l
    ld [hl], d
    inc l
    xor a
    ld [hl], a
    jp Jump_00E_4679


Jump_00E_5230:
    ld l, $EA
    ld a, [hl]
    cp $FF
    jr nz, jr_00E_5245

    ld a, [wUnk_D7D2]
    ld l, $EA
    ld [hl], a
    dec [hl]
    inc de
    ld l, $EB
    ld [hl], e
    ld l, $EC
    ld [hl], d

jr_00E_5245:
    ld a, [wUnk_D7D2]
    ld l, $AB
    inc [hl]
    cp [hl]
    jp z, Jump_00E_5256

    dec l
    ld d, [hl]
    dec l
    ld e, [hl]
    jp Jump_00E_4679


Jump_00E_5256:
    ld [hl], $00
    ld l, $A7
    res 0, [hl]
    inc de
    jp Jump_00E_4679


    pop hl
    ld l, $A7
    bit 1, [hl]
    jp nz, Jump_00E_5275

    set 1, [hl]
    ld l, $AC
    ld [hl], e
    inc l
    ld [hl], d
    inc l
    xor a
    ld [hl], a
    jp Jump_00E_4679


Jump_00E_5275:
    ld l, $ED
    ld a, [hl]
    cp $FF
    jr nz, jr_00E_528A

    ld a, [wUnk_D7D2]
    ld l, $ED
    ld [hl], a
    dec [hl]
    inc de
    ld l, $EE
    ld [hl], e
    ld l, $EF
    ld [hl], d

jr_00E_528A:
    ld a, [wUnk_D7D2]
    ld l, $AE
    inc [hl]
    cp [hl]
    jp z, Jump_00E_529B

    dec l
    ld d, [hl]
    dec l
    ld e, [hl]
    jp Jump_00E_4679


Jump_00E_529B:
    ld [hl], $00
    ld l, $A7
    res 1, [hl]
    inc de
    jp Jump_00E_4679


    pop hl
    ld l, $A7
    bit 2, [hl]
    jp nz, Jump_00E_52BF

    set 2, [hl]
    inc de
    ld c, a
    ld a, [wUnk_D7D3]
    inc de
    ld l, $B1
    ld [hl], e
    inc l
    ld [hl], d
    ld e, c
    ld d, a
    jp Jump_00E_4679


Jump_00E_52BF:
    res 2, [hl]
    ld l, $B1
    ld e, [hl]
    inc l
    ld d, [hl]
    jp Jump_00E_4679


    pop hl
    ld l, $A7
    bit 3, [hl]
    jp nz, Jump_00E_52DB

    set 3, [hl]
    ld l, $AF
    ld [hl], e
    inc l
    ld [hl], d
    jp Jump_00E_4679


Jump_00E_52DB:
    ld l, $AF
    ld e, [hl]
    inc l
    ld d, [hl]
    jp Jump_00E_4679


Jump_00E_52E3:
    pop hl
    ld l, $A1
    ld a, [hl]
    ld c, $25
    ld a, $FF
    ldh [c], a
    jr jr_00E_5301

    ld a, [wUnk_D4A1]
    or a
    jr z, jr_00E_5301

    ld c, $25
    ld a, $FF
    ldh [c], a
    ld a, $10
    ld [wUnk_D7CA], a
    call Call_00E_4D59

jr_00E_5301:
    xor a
    ld [hl-], a
    ld [hl], a
    ld a, [wUnk_D7C1]
    cp $34
    ret z

    cp $52
    jp z, Jump_00E_5337

    cp $40
    jp z, Jump_00E_5320

    cp $63
    jp nz, Jump_00E_4BE1

    ld l, $A5
    res 3, [hl]
    jp Jump_00E_4BE1


Jump_00E_5320:
    ld l, $A5
    res 1, [hl]
    ld a, $08
    ld c, $10
    ldh [c], a
    push hl
    ld h, $D3
    ld l, $A1
    ld a, [hl]
    or a
    call nz, Call_00E_4BA5
    pop hl
    jp Jump_00E_4BE1


Jump_00E_5337:
    ld l, $A5
    res 1, [hl]
    push hl
    ld h, $D5
    ld l, $A1
    ld a, [hl]
    or a
    call nz, Call_00E_4BA5
    pop hl
    jp Jump_00E_4BE1


    and $0F
    ld hl, wUnk_D7DA
    ld [hl], a
    inc de
    pop hl
    jp Jump_00E_4679


    db $FF, $E0, $02, $83, $01, $11, $21, $31, $41, $51, $61, $71, $81, $71, $61, $51
    db $41, $31, $21, $11, $01, $BF, $B8, $B1, $FF, $E0, $02, $85, $01, $31, $51, $01
    db $71, $21, $01, $01, $81, $01, $61, $FF, $E0, $03, $88, $62, $E4, $12, $52, $82
    db $52, $82, $E5, $16, $FF, $EA, $75, $E0, $01, $4F, $0F, $E2, $11, $51, $71, $F8
    db $11, $51, $71, $FF, $E0, $01, $4D, $F0, $E4, $F5, $31, $51, $F3, $81, $F0, $11
    db $F2, $E3, $81, $11, $F3, $E2, $81, $12, $F8, $82, $14, $FF, $E0, $03, $E8, $51
    db $E0, $05, $C4, $56, $41, $52, $FF, $E0, $01, $8F, $0F, $E3, $C1, $E4, $C1, $61
    db $F8, $C1, $61, $E0, $01, $85, $0F, $C1, $61, $01, $C1, $61, $FF, $EE, $10, $EA

    adc h
    ldh [$FF03], a
    ld c, h
    or c
    db $E4
    add d
    ld [hl], d
    db $E3
    or d
    db $E4
    ld d, d
    db $E3
    add d
    db $E4
    add sp, -$6F
    inc h
    ld hl, sp+$24
    ldh [$FF03], a
    ld b, e
    or c
    inc h
    ldh [$FF03], a
    ld b, d
    or c
    inc h
    inc h
    rst $38
    ldh [$FF03], a
    add e
    rrca
    db $E3
    add l
    ld [hl], d
    ldh [c], a
    or d
    db $E3
    ld d, d
    ldh [c], a
    add d
    db $E3
    ld [hl+], a
    rst $38
    ldh [$FF03], a
    ld h, d
    db $F4
    ldh [c], a
    add d
    ld [hl], d
    pop hl
    or d
    ldh [c], a
    ld d, d
    pop hl
    add d
    ldh [c], a
    inc h
    rst $38

    db $E0, $05, $F8, $71, $51, $31, $11, $E0, $05, $88, $11, $E0, $05, $48, $11, $FF
    db $E0, $01, $F8, $41, $11, $FF, $E0, $18, $F1, $5E, $E0, $18, $91, $5E, $E0, $18
    db $71, $5E, $E0, $18, $52, $5E, $FF, $E0, $02, $0F, $0F, $E5, $31, $51, $11, $31
    db $51, $71, $11, $31, $51, $71, $91, $11, $31, $51, $71, $91, $B1, $F7, $11, $31
    db $51, $71, $91, $B1, $F8, $31, $51, $71, $91, $B1, $FF, $E0, $01, $0F, $E1, $FD
    db $6E, $54, $E0, $01, $06, $E1, $FD, $6E, $54, $FF, $E5, $11, $31, $51, $11, $31
    db $51, $71, $11, $31, $51, $71, $91, $11, $31, $51, $71, $91, $B1, $FD, $E0, $03
    db $4F, $67, $E6, $11, $E5, $91, $31, $EA, $30, $E6, $11, $E5, $91, $31, $EA, $20
    db $E6, $11, $E5, $91, $31, $E7, $01, $EA, $30, $F3, $11, $21, $F4, $11, $21, $EA
    db $20, $F3, $11, $31, $F4, $11, $41, $EA, $30, $F3, $11, $51, $F4, $11, $61, $EA
    db $20, $F5, $11, $71, $F6, $11, $81, $EA, $30, $F7, $11, $51, $91, $F8, $21, $61
    db $A1, $EA, $20, $F8, $31, $71, $B1, $F8, $41, $81, $C1, $E6, $EA, $30, $F7, $11
    db $51, $91, $F8, $21, $61, $A1, $EA, $20, $F8, $31, $71, $B1, $F8, $41, $81, $C1
    db $EA, $10, $FF, $EA, $78, $E0, $02, $88, $65, $E4, $11, $61, $11, $91, $11, $B1
    db $11, $E5, $11, $E4, $11, $E5, $61, $E4, $11, $E5, $91, $E4, $11, $E5, $B1, $F7
    db $E4, $11, $E5, $C1, $F8, $E4, $11, $E5, $C1, $FF, $E0, $05, $CF, $C1, $ED, $81
    db $EA, $7A, $E3, $A1, $C1, $E4, $31, $A1, $71, $E0, $05, $C3, $C1, $31, $A1, $71
    db $FF, $FF, $E0, $01, $60, $21, $C1, $21, $C6, $22, $23, $C4, $24, $C3, $25, $C2
    db $26, $C1, $26, $27, $27, $27, $27, $FF, $FF, $E0, $01, $20, $26, $22, $E0, $01
    db $00, $21, $22, $E0, $01, $80, $25, $20, $FF, $FF, $E0, $02, $80, $C2, $24, $C4
    db $26, $C6, $35, $C8, $34, $D1, $C3, $24, $22, $26, $27, $27, $C1, $27, $27, $27
    db $FF, $FF, $E0, $01

    ld [hl], b
    ld sp, $3332
    inc [hl]
    dec [hl]
    ld [hl], $37
    ldh [rDIV], a
    add l
    ld hl, $2322
    inc h
    dec h
    ld h, $27
    rst $38

    db $FF, $FB, $E0, $08, $86, $5C, $5B, $E0, $06, $86, $57, $51, $52, $53, $FB, $03
    db $FB, $E0, $03, $86, $5C, $5B, $5C, $FB, $03, $E0, $02, $86, $5C, $E0, $06, $86
    db $57, $51, $52, $53, $54, $E0, $06, $36, $52, $53, $54, $55, $56, $FF, $FF, $FF
    db $FF

    rst $38
    ldh [rSB], a
    rrca
    rrca
    db $E4
    ld de, $E551
    ld de, $F851
    ld de, $FF51
    db $ED
    jr z, @-$14

    ld d, $E0
    rlca
    ld c, b
    jp nc, $A1E4

    push hl
    ld h, c
    ld d, c
    and $11
    push af
    ld d, c
    ld de, $EAFF
    ld l, $EA
    ld d, $E0
    rlca
    add e
    add c
    db $E4
    and h
    push hl
    ld h, c
    ld d, c
    and $11
    pop af
    ld d, c
    ld de, $E0FF
    ld bc, $0080
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    ld [$0A09], sp
    dec bc
    inc c
    dec c
    ld c, $0F
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $17
    jr jr_00E_5617

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1F
    jr nz, jr_00E_5627

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_00E_5637

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2F
    jr nc, jr_00E_5647

    ld [hl-], a

jr_00E_5617:
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_00E_5657

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3F
    ld b, b
    ld b, c
    ld b, d

jr_00E_5627:
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c
    ld c, d
    ld c, e
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a
    ld d, b
    ld d, c
    ld d, d

jr_00E_5637:
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c
    ld e, d
    ld e, e
    ld e, h
    ld e, l
    ld e, [hl]
    ld e, a
    ld h, b
    ld h, c
    ld h, d

jr_00E_5647:
    ld h, e
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    ld l, d
    ld l, e
    ld l, h
    ld l, l
    ld l, [hl]
    ld l, a
    ld [hl], b
    ld [hl], c
    ld [hl], d

jr_00E_5657:
    ld [hl], e
    ld [hl], h
    ld [hl], l
    halt
    ld [hl], a
    ld a, b
    ld a, c
    ld a, d
    ld a, e
    ld a, h
    ld a, l
    ld a, [hl]
    ld a, a
    add b
    add c
    add d
    add e
    add h
    add l
    add [hl]
    add a
    adc b
    adc c
    adc d
    adc e
    adc h
    adc l
    adc [hl]
    adc a
    sub b
    sub c
    sub d
    sub e
    sub h
    sub l
    sub [hl]
    sub a
    sbc b
    sbc c
    sbc d
    sbc e
    sbc h
    sbc l
    sbc [hl]
    sbc a
    and b
    and c
    and d
    and e
    and h
    and l
    and [hl]
    and a
    xor b
    xor c
    xor d
    xor e
    xor h
    xor l
    xor [hl]
    xor a
    or b
    or c
    or d
    or e
    or h
    or l
    or [hl]
    or a
    cp b
    cp c
    cp d
    cp e
    cp h
    cp l
    cp [hl]
    cp a
    rst $38

    db $E0, $04, $80, $07, $65, $63, $52, $56, $FF, $E0, $81, $80

    nop
    db $E3
    adc b
    sbc b
    xor b
    ret z

    db $E4
    jr z, @+$2A

    jr c, @+$4A

    ld e, b
    ld l, b
    ld a, b
    adc b
    rst $38

    db $E0, $81, $80, $00, $E4, $29, $59, $99, $C9, $E5, $49, $E4, $C9, $E4, $28, $58
    db $98, $C8, $E5, $48, $E4, $C8, $E4, $27, $57, $97, $C7, $E5, $47, $E4, $C7, $E4
    db $25, $55, $95, $C5, $E5, $45, $E4, $C5, $E4, $24, $54, $94, $C4, $E5, $44, $E4
    db $C4, $E4, $23, $53, $93, $C3, $E5, $43, $E4, $C3, $E4, $21, $51, $91, $C1, $E5
    db $41, $E4, $C1, $FF, $E0, $04, $80

    rst $38

    db $E0, $05, $86, $5C, $5B, $5C, $5D, $FF, $E0, $82, $80

    nop
    db $E4
    ld e, c
    sbc c
    ret


    push hl
    ld c, c
    ld a, c
    ld c, c
    db $E4
    ld e, b
    sbc b
    ret z

    push hl
    ld c, b
    ld a, b
    ld c, b
    db $E4
    ld d, a
    sub a
    rst $00
    push hl
    ld b, a
    ld [hl], a
    ld b, a
    db $E4
    ld d, [hl]
    sub [hl]
    add $E5
    ld b, [hl]
    halt
    ld b, [hl]
    db $E4
    ld d, l
    sub l
    push bc
    push hl
    ld b, l
    ld [hl], l
    ld b, l
    db $E4
    ld d, h
    sub h
    call nz, Call_00E_44E5
    ld [hl], h
    ld b, h
    db $E4
    ld d, e
    sub e
    jp Jump_00E_43E5


    ld [hl], e
    ld b, e
    db $E4
    ld d, d
    sub d
    jp nz, Jump_00E_42E5

    ld [hl], d
    ld b, d
    db $E4
    ld d, c
    sub c
    pop bc
    push hl
    ld b, c
    ld [hl], c
    ld b, c
    rst $38
    ldh [$FF08], a
    ld [hl], b
    cpl
    ld l, $2D
    inc l
    dec hl
    ld a, [hl+]
    add hl, hl
    jr z, jr_00E_5791

    ld h, $25
    inc h
    inc hl
    ld [hl+], a
    ld hl, $3F20
    ld a, $3D
    inc a
    dec sp
    ld a, [hl-]
    add hl, sp
    jr c, jr_00E_57B1

    ld [hl], $35
    inc [hl]
    inc sp
    ld [hl-], a
    ld sp, $4F30
    ld c, [hl]
    ld c, l
    ld c, h
    ld c, e
    ld c, d
    ld c, c
    ld c, b
    ld b, a
    ld b, [hl]
    ld b, l
    ld b, h
    ld b, e
    ld b, d
    ld b, c
    ld b, b

jr_00E_5791:
    rst $38
    ldh [hUnk_FF82], a
    add b
    nop
    db $E3
    xor c
    ret


    db $E4
    add hl, de
    ld e, c
    push hl
    add hl, sp
    ret


    db $E3
    xor b
    ret z

    db $E4
    jr @+$5A

    push hl
    jr c, @-$36

    db $E3
    and a
    rst $00
    db $E4
    rla
    ld d, a
    push hl
    scf
    rst $00

jr_00E_57B1:
    db $E3
    and [hl]
    add $E4
    ld d, $56
    push hl
    ld [hl], $C6
    rst $38
    ldh [rDIV], a
    ld [hl], b
    ld d, c
    ld d, a
    ld d, d
    ld d, e
    scf
    ld [hl], $34
    ld h, [hl]
    ld h, e
    ld h, d
    ld h, c
    ld b, c
    ld b, a
    ld b, d
    ld b, e
    daa
    ld h, $24
    ld d, l
    ld d, e
    ld d, d
    ld d, c
    ld d, e
    ld d, [hl]
    ld d, d
    ld d, c
    ld d, c
    ld d, e
    ld d, [hl]
    ld d, d
    ld d, c
    ld d, c
    nop
    nop
    nop
    ld bc, $0101
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    inc bc
    inc b
    inc b
    inc b
    dec b
    dec b
    dec b
    rst $38

    db $E0, $82, $80, $00, $E4, $59, $57, $99, $97, $C9, $C7, $E5, $49, $47, $79, $78
    db $49, $47, $E4, $57, $55, $97, $95, $C7, $C5, $E5, $47, $45, $77, $76, $47, $45
    db $E4, $55, $53, $95, $93, $C5, $C3, $E5, $45, $43, $75, $74, $45, $43, $42, $41
    db $41, $FF, $E0, $04, $70, $00, $00, $03, $03, $03, $06, $06, $06, $09, $09, $09
    db $56, $54, $52, $64, $52, $53, $56, $53, $53, $52, $51, $51, $51, $56, $51, $53
    db $59, $53, $51, $55, $57, $52, $54, $54, $51, $51, $41, $41, $31, $31, $21, $21
    db $11, $11, $10, $01, $FF, $E0, $0F, $83, $56, $52, $54, $56, $52, $54, $51, $56
    db $53, $01, $11, $06, $0F, $0E, $0D, $0C, $0B, $0A, $09, $08, $07, $06, $05, $04
    db $03, $02, $01, $00, $08, $07, $06, $05, $04, $03, $02, $01, $09, $08, $07, $06
    db $05, $04, $03, $02, $01, $00, $FF, $E0, $82, $80, $00, $E4, $27, $22, $47, $42
    db $57, $52, $77, $72, $97, $92, $A7, $A2, $C7, $C2, $E5, $27, $22, $39, $E4, $C9
    db $89, $59, $E5, $79, $39, $E4, $C9, $89, $E5, $75, $35, $E4, $C5, $85, $E5, $73
    db $33, $E4, $C3, $83, $E5, $A9, $69, $39, $E4, $B9, $E5, $A5, $65, $35, $E4, $B5
    db $E5, $A3, $63, $33, $E4, $B3, $E5, $A1, $61, $31, $E4, $B1, $E5, $29, $A9, $79
    db $39, $29, $E4, $A7, $E5, $27, $A7, $77, $37, $27, $E4, $A5, $E5, $25, $A5, $75
    db $35, $25, $E4, $A3, $E5, $22, $A2, $72, $32, $22, $E4, $A1, $FF, $E0, $05, $70

    ld [hl], $25
    ld [de], a
    rlca
    rlca
    ld b, $06
    dec b
    dec b
    inc b
    inc b
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    ld bc, $0001
    nop
    rst $38
    ldh [hUnk_FF81], a
    add b
    nop
    db $E3
    add hl, hl
    daa
    inc h
    ld e, c
    ld d, a
    ld d, h
    adc c
    add a
    add h
    ret


    rst $00
    call nz, $B7B9
    or h
    adc c
    ld e, c
    add hl, hl
    add hl, sp
    ld l, c
    sbc c
    db $E4
    ret


    db $E3
    ret


    sbc c
    ld l, c
    add hl, sp
    ld c, c
    ld a, c
    xor c
    db $E4
    ret


    ld c, c
    db $E3
    ld a, c
    xor c
    db $E4
    add hl, de
    ld c, c
    ld a, c
    db $E3
    xor c
    db $E4
    add hl, de
    ld c, c
    ld a, c
    xor c
    add hl, de
    ld c, c
    ld a, c
    xor c
    push hl
    add hl, de
    rst $38
    ldh [hUnk_FF81], a
    add b
    nop
    ldh [c], a
    xor c
    cp c
    ret


    db $E3
    add hl, de
    add hl, hl
    add hl, sp
    ld c, c
    ld e, c
    ld l, c
    ld a, c
    adc c
    sbc c
    xor c
    cp c
    ret


    db $E4
    add hl, de
    add hl, hl
    add hl, sp
    ld c, c
    ld e, c
    ld l, c
    rst $38

    db $E0, $86, $80, $00, $E1, $CF, $E2, $3F, $9F, $3F, $9F, $CF, $3F, $32, $32, $32
    db $32, $31, $31, $31, $31, $31, $31, $31, $FF, $E0, $86, $80, $00, $EA, $7C, $E4
    db $32, $12, $E3, $C2, $62, $52, $42, $32, $36, $36, $36, $36, $38, $38, $38, $38
    db $38, $38, $38, $FF, $E0, $08, $70

    cpl
    cpl
    ld c, a
    ld d, [hl]
    ld d, d
    ld d, [hl]
    ld d, d
    ld d, [hl]
    ld d, l
    ld d, d
    ldh [$FF08], a
    ld [hl], e
    ld d, c
    ld d, b
    ld d, b
    rst $38

    db $E0, $01, $80, $00, $01, $01, $01, $05, $05, $06, $05, $03, $06, $90, $98, $90
    db $98, $80, $85, $80, $86, $70, $74, $70, $76, $60, $65, $60, $53, $44, $34, $25
    db $17, $96, $86, $76, $66, $56, $46, $36, $26, $16, $06, $FF, $E0, $01, $80, $00
    db $11, $22, $33, $44, $55, $96, $86, $76, $66, $56, $46, $36, $26, $16, $06, $FF
    db $FF, $E0, $82

    add b
    nop
    pop hl
    ld d, $15
    inc d
    inc de
    ld [de], a
    ld e, c
    ld c, c
    ld e, b
    ld c, b
    ld e, b
    ld e, b
    ld d, a
    ld h, a
    ld d, a
    ld d, [hl]
    ld d, [hl]
    ld d, h
    ld [hl], h
    ld d, d
    ld d, d
    rst $38
    ldh [$FF08], a
    add b
    nop
    sub h
    sub l
    sub a
    sbc b
    sub h
    sbc b
    sbc c
    sub h
    sub l
    sbc a
    sub h
    sub a
    sub [hl]
    sub l
    sub h
    sub h
    sub e
    sbc b
    sub l
    sub d
    sbc a
    sub h
    sub a
    sub [hl]
    sub l
    sub h
    sub h
    sub e
    sbc b
    sub l
    sub d
    sbc a
    sub h
    sub a
    sub [hl]
    sub l
    sub h
    sub h
    sub e
    sbc b
    sub l
    sub d
    sub h
    sub l
    sub a
    sbc b
    sub h
    sbc b
    sbc c
    sub h
    sub l
    sbc a
    sub h
    sub a
    sub [hl]
    sub l
    sub h
    sub h
    sub e
    sbc b
    sub l
    sub d
    sbc a
    sub h
    sub a
    sub [hl]
    sub l
    sub h
    sub h
    sub e
    sbc b
    sub l
    sub d
    sbc a
    sub h
    sub a
    sub [hl]
    sub l
    sub h
    sub h
    sub e
    sbc b
    sub l
    sub d
    ld d, [hl]
    ld h, b
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $E0FF
    ld [$0080], sp
    ld sp, hl
    ld sp, hl
    ld sp, hl
    ld bc, $0001
    nop
    rst $38

    db $FF, $E0, $81, $05

    nop
    adc a
    sbc a
    adc a
    ld a, a
    adc a
    ld a, a
    adc a
    adc a
    adc a
    ld a, a
    ld a, a
    adc a
    ld a, a
    ld a, a
    ld e, a
    ld l, a
    ld l, a
    ld a, a
    ld l, a
    ld l, a
    ld e, a
    ld l, a
    ld e, a
    ld e, a
    ld c, a
    ld e, a
    ld c, a
    ccf
    ld c, a
    ccf
    ld c, a
    ccf
    ld c, a
    ccf
    cpl
    ccf
    cpl
    cpl
    rra
    cpl
    rra
    rra
    cpl
    rra
    rra
    rra
    add hl, de
    dec d
    inc d
    ld [de], a
    db $10
    rst $38

    db $E0, $81, $E0, $00, $E2, $C2, $C2, $B2, $B2, $C2, $C2, $B2, $C2, $12, $22, $12
    db $22, $C2, $C2, $C2, $B2, $B2, $B2, $B2, $B2, $A2, $B2, $A2, $B2, $92, $82, $92
    db $92, $72, $72, $82, $92, $82, $72, $82, $72, $62, $82, $73, $72, $82, $72, $72
    db $62, $72, $62, $62, $52, $52, $62, $52, $42, $52, $42, $42, $42, $32, $42, $32
    db $42, $32, $22, $32, $22, $22, $12, $22, $12, $12, $14, $24, $24, $26, $16, $16
    db $16, $16, $16, $FF, $FF, $E0, $05, $80

    sub [hl]
    ld d, [hl]
    ld b, c
    inc sp
    ld d, d
    ld b, l
    ld b, e
    inc bc
    ld bc, HeaderLogo
    rlca
    ld bc, $0202
    ld [bc], a
    inc bc
    ld d, [hl]
    ld d, [hl]
    ld d, c
    ld d, b
    ld d, h
    rst $38

    db $FF, $FE, $E0, $81

    add b
    nop
    db $E4
    add d
    add c
    add e
    add d
    add c
    add h
    add c
    add e
    add d
    add c
    ldh [hUnk_FFA0], a
    add b
    nop
    nop
    db $FE

    db $FE, $E0, $81, $80, $00, $E5, $84, $86, $82, $84, $86, $82, $86, $84, $84, $86
    db $E0, $A0, $80, $00, $00, $FE, $FF, $FF, $E0, $81, $0A

    nop
    ld [$E385], a
    and d
    or [hl]
    sub [hl]
    and a
    cp c
    and l
    cp b
    ld [hl+], a
    ld [de], a
    cp b
    cp b
    db $E4
    ld l, b
    ld a, b
    ld l, b
    ld a, b
    ld a, b
    ld l, b
    ld l, b
    ld b, d
    ld d, d
    ld b, d
    ld d, d
    ld b, d
    ld [hl-], a
    ld [hl+], a
    ld [hl-], a
    ld [hl-], a
    ld [hl+], a
    ld [hl-], a
    ld [hl+], a
    ld [hl+], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    db $E3
    jp nz, wUnk_C212

    or d
    or d
    or d
    or d
    and d
    and d
    and d
    sub d
    sub d
    add d
    ld [hl], d
    add d
    ld [hl], d
    rst $38
    ldh [hUnk_FF81], a
    ldh [rP1], a
    ld [$E485], a
    xor a
    cp a
    sbc a
    xor a
    cp a
    xor a
    cp a
    cpl
    rra
    cp a
    cp a
    push hl
    ld l, a
    ld a, a
    ld l, a
    ld a, a
    ld a, a
    ld l, a
    ld l, a
    ld b, d
    ld d, d
    ld b, d
    ld d, d
    ld b, d
    ld [hl-], a
    ld [hl+], a
    ld [hl-], a
    ld [hl-], a
    ld [hl+], a
    ld [hl-], a
    ld [hl+], a
    ld [hl+], a
    ld [de], a
    rra
    rra
    rra
    db $E4
    rst $08
    rra
    rst $08
    cp a
    cp a
    cp a
    cp a
    xor a
    xor a
    xor a
    sbc a
    sbc a
    adc a
    ld a, a
    adc a
    ld a, a
    rst $38
    rst $38
    ldh [rTIMA], a
    add b
    sub [hl]
    ld d, [hl]
    ld b, c
    inc sp
    ld d, d
    ld b, l
    ld b, e
    inc bc
    ld bc, HeaderLogo
    rlca
    ld bc, $0202
    ld [bc], a
    inc bc
    ld d, [hl]
    ld d, [hl]
    ld d, c
    ld d, b
    ld d, h
    rst $38
    rst $38
    ldh [hUnk_FF81], a
    add d
    nop
    push hl
    jr z, jr_00E_5C2A

    dec [hl]
    add h
    ld d, h
    ld sp, $6265
    inc [hl]
    jr jr_00E_5C63

    ld d, h
    dec [hl]
    sub l
    sub h
    dec h
    rst $38
    rst $38
    ldh [rSB], a
    sbc a
    rrca
    rra
    rra
    ld c, $1D
    ld e, $0F
    rst $38

    db $E0, $0A, $85, $46, $46, $46, $46, $FF, $E0, $0A, $8C

    inc bc
    ld bc, $E1F3
    ld sp, $51F3
    pop af
    ld h, c
    ldh a, [hUnk_FFA1]
    xor $40
    di
    sub c
    ldh [c], a
    ldh a, [c]
    ld sp, $81F1
    ldh a, [hUnk_FFEE]
    sub b
    ld hl, $64E8
    or h
    rst $38
    ld [$E02E], a

jr_00E_5C2A:
    ld a, [bc]
    add l
    rrca
    ld [bc], a
    pop hl
    ld sp, $6151
    and c
    sub c
    ldh [c], a
    ld sp, $2181
    or c
    rst $38
    rst $28
    rrca
    ld [$E042], a
    ld a, [bc]
    ld h, h
    rrca
    ld bc, $31E1
    ld d, c
    ld h, c
    and c
    sub c
    ldh [c], a
    ld sp, $2181
    or h
    rst $38

    db $E0, $01, $47, $51, $41, $FF, $FE, $E0, $09

    ld b, a
    ld [hl+], a
    db $E3
    and h
    db $E4
    inc h
    ld d, h
    ld e, b
    inc [hl]
    inc h
    db $E3

jr_00E_5C63:
    call nz, $A494
    ld e, b
    db $E4
    ld d, h
    and h
    sub h
    jr z, @+$76

    ld b, h
    inc h
    ld b, h
    ld e, h
    jr c, jr_00E_5C97

    db $E3
    ret z

    db $E4
    ld [hl], h
    ld b, h
    ld d, h
    and h
    xor b
    inc h
    inc h
    db $E3
    or h
    call nz, Call_00E_74E4
    ld d, h
    db $E3
    sub h
    xor h
    ld [hl], h
    db $E4
    inc [hl]
    db $E3
    call nz, $FEFE
    ldh [$FF09], a
    ld b, e
    ld [hl], $EF
    ld bc, $E301
    and h
    db $E4

jr_00E_5C97:
    inc h
    ld d, h
    ld e, b
    inc [hl]
    inc h
    db $E3
    call nz, $A494
    ld e, b
    db $E4
    ld d, h
    and h
    sub h
    jr z, jr_00E_5D1B

    ld b, h
    inc h
    ld b, h
    ld e, h
    jr c, jr_00E_5CD1

    db $E3
    ret z

    db $E4
    ld [hl], h
    ld b, h
    ld d, h
    and h
    xor b
    inc h
    inc h
    db $E3
    or h
    call nz, Call_00E_74E4
    ld d, h
    db $E3
    sub h
    xor h
    ld [hl], h
    db $E4
    inc [hl]
    db $E3
    jp $FEFE


    ldh [$FF09], a
    ld h, h
    inc [hl]
    ldh [c], a
    ld [hl+], a
    ld d, d
    and d
    db $E3
    ld [hl+], a

jr_00E_5CD1:
    ldh [c], a
    and d
    ld d, d
    ldh [c], a
    ld [hl-], a
    ld [hl], d
    jp nz, $32E3

    ldh [c], a
    jp nz, $E272

    ld d, d
    jp nz, $32E3

    sub d
    ldh [c], a
    ld h, d
    jp nz, Jump_00E_72E2

    db $E3
    ld [hl+], a
    ld [hl], d
    ld [hl+], a
    ld [hl-], a
    ldh [c], a
    jp nz, $22E2

    ld d, d
    and d
    db $E3
    ld [hl+], a
    ldh [c], a
    and d
    ld d, d
    pop hl
    and d
    ldh [c], a
    ld [hl+], a
    ld [hl], d
    and d
    ld [hl], d
    ld [hl+], a
    pop hl
    jp nz, Jump_00E_72E2

    and d
    db $E3
    ld b, d
    ldh [c], a
    and d
    ld [hl], d
    ldh [c], a
    ld d, d
    ldh [c], a
    sub d
    jp nz, Jump_00E_52E3

    ldh [c], a
    jp nz, $E292

    ld d, d
    ld [hl], d
    and d
    db $E3
    ld [hl-], a
    ldh [c], a

jr_00E_5D1B:
    and d
    ld [hl], d
    ld d, d
    sub d
    jp nz, $3292

    jp nz, $A222

    db $E3
    ld [hl+], a
    and d
    ldh [c], a
    ld [hl+], a
    db $E3
    and d
    ldh [c], a
    ld [hl], d
    ld [hl+], a
    and d
    ld [hl], d
    db $E3
    ld d, d
    ldh [c], a
    or d
    jp nz, wUnk_C272

    ld [hl], d
    db $E3
    ld [hl-], a
    ldh [c], a
    jp nz, $A252

    db $E3
    ld [hl-], a
    ldh [c], a
    and d
    db $E3
    ld d, d
    ldh [c], a
    sub d
    and d
    ld d, d
    and d
    ld d, d
    db $E3
    ld [hl+], a
    ldh [c], a
    ld d, d
    and d
    ld [hl], d
    and d
    ld [hl], d
    ld d, d
    jp nz, hUnk_FFFE

    db $FE, $E0, $05, $88, $C4, $E3, $32, $32, $62, $32, $32, $62, $82, $92, $A2, $A2
    db $E3, $32, $32, $62, $32, $32, $62, $82, $92, $A2, $A2, $E4, $32, $32, $32, $22
    db $22, $22, $12, $E3, $B2, $62, $32, $E4, $12, $E3, $B2, $A2, $A2, $A2, $B2, $A2
    db $A2, $A2, $B2, $A2, $B2, $A2, $B2, $FE, $FE, $E0, $05, $86, $C4, $E2, $A2, $A2
    db $E3, $32, $E2, $A2, $A2, $E3, $32, $E2, $C2, $C2, $E3, $22, $22, $E2, $A2, $A2
    db $E3, $32, $E2, $A2, $A2, $E3, $32, $E2, $C2, $C2, $E3, $22, $22, $32, $32, $32
    db $22, $22, $22, $E2, $A2, $A2, $A2, $B2, $B2, $B2, $A2, $A2, $A2, $B2, $B2, $B2
    db $C2, $C2, $12, $12, $22, $22, $FE, $FE, $E0, $05, $E2, $B2, $E2, $32, $32, $32
    db $32, $32, $32, $E1, $92, $92, $A2, $A2, $E2, $32, $32, $32, $32, $32, $32, $E1
    db $92, $92, $A2, $A2, $E3, $62, $62, $62, $52, $52, $52, $42, $42, $42, $32, $E2
    db $82, $92, $A2, $A2, $A2, $82, $82, $82, $62, $62, $62, $52, $52, $52, $FE, $FE
    db $E7, $05, $C2, $C2, $92, $C2, $C2, $92, $C2, $92, $C2, $92, $FE, $FF, $FF, $FF

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_00E_6361:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_00E_66C5:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_00E_72E2:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_00E_74E4:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
