; Disassembly of "cvlegends.gb"
; This file was created with:
; mgbdis v2.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $00f", ROMX[$4000], BANK[$f]

    inc l
    ld b, b

    db $36, $40, $40, $40

    ld c, d
    ld b, b
    ld d, h
    ld b, b

    db $5E, $40

    db $F4
    ld b, b
    ld l, b
    ld b, b
    ld [hl], d
    ld b, b
    db $F4
    ld b, b
    ld a, h
    ld b, b

    db $86, $40, $90, $40

    sbc d
    ld b, b
    and h
    ld b, b
    xor [hl]
    ld b, b
    cp b
    ld b, b
    db $C2
    ld b, b

    db $CC, $40

    sub $40
    ldh [rLCDC], a
    ld [$4040], a
    ld a, b
    dec de
    ld b, d
    rst $38
    ld b, b
    ld a, c
    ld b, c
    ld l, b
    ld b, e

    db $40, $78, $7E, $45, $45, $44, $23, $47, $72, $48, $40, $78, $99, $49, $C0, $48
    db $18, $4C, $F8, $4C

    ld b, b
    ld a, b
    and b
    ld c, [hl]
    cp e
    ld c, l
    sbc h
    ld c, a
    add b
    ld d, b
    ld b, b
    ld a, b
    pop bc
    ld d, c
    add c
    ld d, b
    ld a, h
    ld d, e
    ld c, d
    ld d, h

    db $40, $78, $B6, $54, $51, $54, $2C, $55, $C5, $55

    ld b, b
    ld a, b
    ld e, b
    ld d, [hl]
    db $E4
    ld d, l
    call c, $D356
    ld d, a
    ld b, b
    ld a, b
    ld h, e
    ld e, b
    pop hl
    ld d, a
    jr z, @+$5B

    inc d
    ld e, d
    ld b, b
    ld a, b
    ld b, h
    ld e, l
    ld e, b
    ld e, d
    ld a, [hl+]
    ld e, [hl]
    ld a, l
    ld e, a

    db $40, $78, $6B, $60, $2F, $60, $B4, $60, $C7, $60, $40, $78, $2D, $61, $E3, $60
    db $A9, $61, $52, $62

    ld b, b
    ld a, b
    pop hl
    ld h, d
    ld d, e
    ld h, d
    ld a, [de]
    ld h, h
    sbc $64
    ld b, b
    ld a, b
    ret nc

    ld h, [hl]
    cp a
    ld h, l
    reti


    ld l, b
    ld a, [hl-]
    ld l, d
    ld b, b
    ld a, b
    inc e
    ld l, h
    and l
    ld l, d
    xor c
    ld l, l
    ld [hl+], a
    ld [hl], b
    ld b, b
    ld a, b
    sub l
    ld [hl], d
    ld d, h
    ld [hl], c
    ret nc

    ld [hl], h
    dec de
    ld [hl], a
    ld b, b
    ld a, b
    ldh a, [rPCM34]
    ld e, l
    ld [hl], a
    ld h, e
    ld a, c
    ld b, a
    ld a, d

    db $40, $78, $CC, $7A, $9D, $7A, $0C, $7B, $3D, $7B

    ld b, b
    ld a, b
    sub l
    ld a, e
    ld b, a
    ld a, e
    ld d, l
    ld a, h
    xor l
    ld a, h
    ld b, b
    ld a, b
    ld [hl], d
    ld a, l
    or a
    ld a, h
    ld b, b
    ld a, [hl]
    cp e
    ld a, [hl]
    ld b, b
    ld a, b
    rrca
    ld a, a
    rst $00
    ld a, [hl]
    ld l, e
    ld a, a
    and b
    ld a, a
    ld b, b
    ld a, b
    cp $40
    cp $40
    cp $40
    cp $40
    rst $38
    xor $08
    ldh [rTMA], a
    ld c, b
    ld h, c
    ld [$FE92], a
    db $E4
    jr c, jr_00F_411F

    db $E3
    or h
    and e
    ld sp, $3138
    ld sp, $4332
    or c
    cp b
    or c
    db $E4
    ld [de], a
    db $E3
    or c
    and e
    ld sp, $0438

jr_00F_411F:
    db $E4
    jr c, jr_00F_4136

Jump_00F_4122:
    db $E3
    or c
    db $E4
    ld [de], a
    db $E3
    or c
    and e
    ld sp, $3138
    ld sp, $4332
    or c
    cp b
    or c
    db $E4
    ld [de], a
    db $E3
    or c

jr_00F_4136:
    and e
    db $E4
    ld sp, $3238
    db $E3
    ld [hl-], a
    ld [hl-], a
    ld de, $4831

Call_00F_4141:
    ld b, c

Call_00F_4142:
    ld h, c
    add c
    and c
    cp b
    and c
    or c
    db $E4
    ld de, $6131
    ld b, d
    ld h, c
    inc sp
    db $E3
    add c
    adc b
    add c
    and d
    or c
    db $E4
    inc sp
    db $E3
    add c
    adc b
    ld [bc], a
    ld [hl-], a
    ld [hl-], a
    ld de, $4631
    ld b, c
    ld h, c
    add c
    and c
    or c
    db $E4
    ld de, $1131
    add d
    jr c, jr_00F_417D

    ld sp, $6141
    add e
    add c
    add a
    ld h, c
    ld h, c
    or d
    sub c
    add b
    cp $FF
    cp $E0
    ld b, $E4

jr_00F_417D:
    ld h, d
    ld [c], a
    inc [hl]
    ld sp, $3231
    ld [hl-], a
    ld [hl-], a
    ld sp, $E132
    and c
    ld [c], a
    inc [hl]
    ld sp, $3231
    ld [hl-], a
    ld [hl-], a
    ld sp, $3231
    inc d
    ld de, $1211
    ld [de], a
    pop hl
    add d
    ld [c], a
    ld de, $82E1
    ld [c], a
    ld de, $3134
    ld sp, $3132
    pop hl
    and c
    ld [c], a
    ld [hl-], a
    and c
    ld sp, $A2E1
    ld [c], a
    inc [hl]
    ld sp, $3231
    ld [hl-], a
    or d
    ld bc, $4241
    inc [hl]
    ld sp, $3231
    ld [hl-], a
    ld [hl-], a
    ld sp, $2132
    inc d
    ld de, $1211
    ld [de], a
    ld [de], a
    ld de, $1182
    inc [hl]
    ld sp, $3231
    ld [hl-], a
    ld [hl-], a
    ld [hl-], a
    ld [hl-], a
    ld [de], a
    ld [de], a
    ld de, $1211
    ld [de], a
    add d
    ld [de], a
    pop hl
    add c
    add c
    ld [c], a
    inc d
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a

Jump_00F_41E4:
    pop hl
    add h
    add c
    add c
    add d
    add d
    ld [c], a
    ld h, d
    ld h, d
    ld h, d
    ld b, h
    ld b, c
    ld b, d
    ld b, c
    ld b, d
    ld [hl-], a
    ld [hl-], a
    ld [hl-], a
    inc d
    ld de, $1112
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    pop hl
    or h
    or d
    or c
    or c
    sub d
    sub d
    sub d
    sub d
    add h
    add c
    add c
    add d
    add d
    add d
    add d
    add d
    add h
    add d
    add d
    add d
    add d
    add c
    and c
    or c
    ld [c], a
    ld sp, $FFFE
    cp $E0
    ld b, $84
    add c
    ld [c], a
    ld sp, $6151
    and c
    db $E3
    ld sp, $6151
    and c
    ld [c], a
    ld b, c
    ld h, c
    add c
    or c
    db $E3
    ld b, c
    ld h, c
    add c
    or c
    ld [c], a
    ld sp, $6151
    and c
    db $E3
    ld sp, $6151
    and c
    db $E4
    ld sp, $A1E3
    ld h, c
    ld d, c
    ld sp, $A1E2
    ld h, c
    ld sp, $3111
    ld b, c
    add c
    db $E3
    ld de, $4131
    add c
    db $E4
    ld de, $81E3
    ld b, c
    ld sp, $E211
    add c
    ld b, c
    ld de, $5131
    ld h, c
    and c
    db $E3
    ld sp, $6151
    and c
    db $E4
    ld sp, $61A1
    ld d, c
    ld sp, $A1E2
    ld h, c
    ld d, c
    ld sp, $6151
    and c
    db $E3
    ld sp, $6151
    and c
    db $E4
    ld sp, $A1E3
    ld h, c
    ld sp, $4101
    add c
    db $E4
    ld de, $31E2
    ld d, c
    ld h, c
    and c
    db $E3
    ld sp, $6151
    and c
    db $E4
    ld sp, $A1E3
    ld h, c
    ld d, c
    ld sp, $A1E2
    ld h, c
    ld sp, $4111
    add c
    or c
    db $E3
    ld de, $8141
    or c
    db $E4
    ld de, $B1E3
    add c
    ld b, c
    ld de, $B1E2
    add c
    ld b, c
    ld sp, $6151
    and c
    db $E3
    ld sp, $6151
    and c
    db $E4
    ld sp, $A1E3
    ld h, c
    ld d, c
    ld sp, $A1E2
    ld h, c
    ld d, c
    inc [hl]

Jump_00F_42C2:
    ld de, $4131
    add c
    db $E3
    ld de, $4131
    add c
    db $E4
    ld de, $81E3
    ld b, c
    ld sp, $11E2
    ld sp, $8141
    db $E3
    ld de, $4131
    add c
    db $E4
    ld de, $81E3
    ld b, c
    ld sp, $E211
    add c
    ld b, c
    ld de, $81E1
    and c
    or c
    ld [c], a
    ld sp, $A181
    or c
    db $E3
    ld sp, $61E1
    ld [c], a
    ld sp, $8161
    and c
    or c
    db $E3
    ld sp, $E181
    ld b, c
    or c
    ld [c], a
    ld b, c
    add c
    and c
    or c
    db $E3
    ld b, c
    add c
    pop hl
    ld sp, $31E2
    ld h, c
    and c
    db $E3
    ld sp, $A161
    ld h, c
    ld bc, $31E2
    ld b, c
    add c
    db $E3
    ld de, $4131
    add c
    db $E4
    ld de, $81E3
    ld b, c
    ld sp, $3111
    ld de, $C1E2
    or c
    add c
    or c
    db $E3
    ld b, c
    add c
    or c
    db $E4
    ld sp, $8161
    ld b, c
    ld de, $81E3
    ld b, c
    ld de, $81E2
    db $E3
    ld [hl], c
    add c
    db $E3
    ld de, $8131
    add c
    db $E4
    ld de, $6131
    add c
    ld h, c
    ld sp, $E311
    ld h, c
    ld h, c
    ld sp, $E211
    add c
    pop bc
    db $E3
    ld sp, $C181
    db $E4
    ld sp, $C181
    push hl
    ld sp, $C1E4
    add c
    ld sp, $C1E3
    add c
    ld sp, $C1E2
    cp $FF
    cp $E7
    ld b, $C4
    rst $20
    ld [bc], a
    sub h
    sub h
    sub h
    rst $20
    ld b, $32
    ld [hl-], a
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    call nz, $02E7
    sub h
    sub h
    sub h
    rst $20
    ld b, $32
    ld [hl-], a
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    rst $20
    ld b, $C4
    rst $20
    ld [bc], a
    sub h
    sub h
    sub h
    rst $20
    ld b, $32
    ld [hl-], a
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    call nz, $02E7
    sub h
    sub h
    sub h
    rst $20
    ld b, $32
    ld [hl-], a
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    call nz, $02E7
    sub h
    sub h
    sub h
    rst $20
    ld b, $32
    ld [hl-], a
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    call nz, $02E7
    sub h
    sub h
    sub h
    rst $20
    ld b, $32
    ld [hl-], a
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    rst $20
    ld b, $C4
    rst $20
    ld [bc], a
    sub h
    sub h
    sub h
    rst $20
    ld b, $32
    ld [hl-], a
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    call nz, $02E7
    sub h
    sub h
    sub h
    rst $20
    ld b, $32
    ld [hl-], a
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    ld hl, $2121
    ld hl, $3232
    jp nz, Jump_00F_4122

    ld b, c
    ld b, c
    ld b, c
    ld hl, $2121
    ld hl, $3232
    jp nz, Jump_00F_4122

    ld b, c
    ld b, c
    ld b, c
    ld hl, $2121
    ld hl, $3232
    jp nz, Jump_00F_4122

    ld b, c
    ld b, c
    ld b, c
    ld hl, $2121
    ld hl, $3232
    jp nz, Jump_00F_4122

    ld b, c
    ld b, c
    ld b, c
    ld hl, $2121
    ld hl, $3232
    jp nz, Jump_00F_4122

    ld b, c
    ld b, c
    ld b, c
    ld hl, $2121
    ld hl, $4242
    ld [hl-], a
    ld [hl-], a
    ld [hl+], a
    ld hl, $C421
    rst $20
    ld [bc], a
    sub h
    sub h
    sub h
    rst $20
    ld b, $32
    ld [hl-], a
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    ld hl, $2121
    ld hl, $2121
    ld hl, $9121
    sub c
    sub c
    sub c
    sub c
    sub c
    sub c
    sub c
    db $FE

    db $FE, $EE, $20, $E0, $06, $48, $85, $E3, $B1, $E2, $61, $E4, $61, $E2, $61, $E4
    db $41, $E2, $61, $E4, $21, $E2, $61, $E4, $11, $E2, $61, $E4, $21, $E2, $61, $E4
    db $11, $E2, $61, $E3, $B1, $E2, $61, $E4, $11, $E2, $71, $E4, $21, $E2, $71, $E4
    db $41, $E2, $71, $E4, $21, $E2, $71, $E4, $11, $E2, $91, $E4, $21, $E2, $91, $E4
    db $11, $E2, $41, $41, $41, $E3, $B1, $E2, $61, $E4, $61, $E2, $61, $E4, $41, $E2
    db $61, $E4, $21, $E2, $61, $E4, $11, $E2, $61, $E4, $21, $E2, $61, $E4, $11, $E2
    db $61, $E3, $B1, $E2, $61, $E4, $11, $E2, $71, $E4, $21, $E2, $71, $E4, $41, $E2
    db $71, $E4, $21, $E2, $71, $E4, $11, $E2, $91, $E4, $21, $E2, $91, $E4, $11, $E2
    db $41, $41, $41, $E4, $42, $91, $69, $42, $22, $43, $93, $66, $42, $22, $E3, $B3
    db $E4, $63, $46, $22, $42, $E7, $02, $68, $48, $B8, $68, $48, $28, $E7, $06, $E4
    db $22, $42, $62, $72, $92, $72, $62, $41, $64, $E3, $B3, $E4, $44, $22, $01, $13
    db $22, $42, $62, $72, $92, $72, $62, $42, $B4, $94, $E5, $22, $E4, $C2, $B2, $92
    db $E1, $91, $A1, $B1, $E2, $11, $61, $91, $B1, $C1, $E3, $71, $11, $41, $71, $E4
    db $21, $E3, $71, $E4, $11, $E3, $61, $E4, $13, $E3, $B3, $E4, $B2, $13, $E3, $B3
    db $E4, $B2, $13, $E3, $B3, $E4, $B2, $12, $22, $42, $62, $13, $E3, $B3, $E4, $B2
    db $13, $E3, $B3, $E4, $B2, $13, $E3, $B3, $E4, $B2, $12, $22, $42, $62, $71, $61
    db $E5, $41, $21, $11, $E4, $B1, $A1, $B1, $E5, $11, $E4, $61, $E5, $41, $E4, $61
    db $E5, $21, $E4, $61, $E5, $11, $E4, $61, $E5, $71, $41, $61, $71, $91, $41, $91
    db $71, $61, $51, $41, $11, $E4, $B1, $A1, $61, $41, $E3, $61, $A1, $E4, $41, $21
    db $11, $E3, $A1, $E4, $21, $11, $04, $04, $FE, $FE, $E0, $06, $44, $85, $02, $E2
    db $B2, $E3, $12, $22, $42, $22, $12, $22, $62, $42, $22, $12, $42, $22, $12, $E2
    db $92, $02, $E2, $B2, $E3, $12, $22, $42, $22, $12, $22, $62, $42, $22, $12, $42
    db $22, $12, $E2, $92, $E3, $B1, $E4, $11, $21, $41, $61, $E4, $21, $61, $B1, $E5
    db $21, $11, $E4, $B1, $61, $E5, $11, $E4, $B1, $E5, $11, $E4, $61, $01, $E3, $41
    db $61, $71, $91, $C1, $E4, $41, $61, $E4, $B1, $91, $61, $41, $91, $61, $41, $21
    db $E4, $61, $E3, $B1, $E4, $B1, $E3, $B1, $E4, $61, $E3, $B1, $E4, $B1, $E3, $B1
    db $E4, $61, $E3, $B1, $E4, $B1, $E3, $B1, $E4, $61, $E3, $B1, $E4, $B1, $E3, $B1
    db $E3, $B1, $E4, $B1, $E3, $B1, $E4, $61, $E3, $B1, $E4, $B1, $E3, $B1, $E4, $41
    db $E3, $91, $E4, $11, $41, $E3, $41, $91, $11, $42, $B2, $E4, $12, $22, $42, $62
    db $22, $E3, $B2, $E4, $22, $E4, $41, $11, $E3, $91, $E4, $11, $41, $11, $E3, $91
    db $E4, $11, $E3, $41, $E4, $11, $E3, $91, $E4, $11, $E3, $41, $E4, $11, $E3, $91
    db $E4, $11, $E3, $B2, $E4, $12, $22, $42, $62, $42, $22, $E3, $B2, $E4, $41, $E3
    db $C1, $71, $C1, $E4, $21, $41, $61, $71, $91, $61, $31, $61, $C1, $31, $E4, $C1
    db $31, $E2, $61, $81, $A1, $B1, $E3, $11, $21, $41, $61, $71, $E2, $61, $E3, $61
    db $E2, $61, $E3, $41, $E2, $61, $E3, $61, $E2, $61, $E4, $41, $E3, $21, $E4, $41
    db $E3, $21, $E4, $61, $E3, $21, $E4, $61, $E3, $21, $E4, $41, $E3, $21, $E4, $41
    db $E3, $21, $E4, $61, $E3, $21, $E4, $61, $E3, $21, $E4, $41, $E3, $21, $E4, $41
    db $E3, $21, $E4, $61, $E3, $21, $E4, $61, $E3, $21, $E4, $41, $E3, $11, $E2, $91
    db $E3, $11, $E4, $41, $E3, $11, $E2, $91, $E3, $11, $E4, $41, $E3, $21, $E4, $41
    db $E3, $21, $E4, $61, $E3, $21, $E4, $61, $E3, $21, $E4, $41, $E3, $21, $E4, $41
    db $E3, $21, $E4, $61, $E3, $21, $E4, $61, $E3, $21, $E4, $41, $E3, $21, $E4, $41
    db $E3, $21, $E4, $61, $E3, $21, $E4, $61, $E3, $21, $E2, $71, $91, $B1, $E3, $11
    db $E2, $91, $B1, $E3, $11, $41, $E3, $B1, $71, $41, $B1, $B1, $71, $41, $B1, $A1
    db $61, $11, $61, $91, $61, $21, $A1, $71, $41, $E2, $B1, $E3, $41, $B1, $71, $41
    db $71, $A1, $71, $61, $41, $21, $11, $E2, $B1, $A1, $E2, $61, $51, $61, $A1, $E3
    db $41, $11, $41, $71, $61, $51, $61, $41, $21, $11, $E2, $B1, $A1, $FE, $FE, $E0
    db $06, $D2, $82, $E1, $B1, $B1, $B1, $B1, $B1, $B1, $B1, $B1, $B1, $B1, $B1, $B1
    db $B1, $B1, $B1, $B1, $71, $71, $71, $71, $71, $71, $71, $71, $91, $91, $91, $91
    db $91, $91, $91, $91, $81, $81, $81, $81, $81, $81, $81, $81, $81, $81, $81, $81
    db $81, $81, $81, $81, $71, $71, $71, $71, $71, $71, $71, $71, $91, $91, $11, $41
    db $91, $11, $41, $91, $B1, $B1, $B1, $B1, $B1, $B1, $B1, $B1, $B1, $B1, $B1, $B1
    db $B1, $B1, $B1, $B1, $21, $21, $21, $21, $21, $21, $21, $21, $21, $21, $21, $21
    db $21, $21, $21, $21, $81, $81, $81, $81, $81, $81, $81, $81, $81, $81, $81, $81
    db $81, $81, $81, $81, $71, $91, $B1, $21, $E2, $71, $21, $E1, $71, $E2, $21, $E1
    db $91, $41, $91, $E2, $11, $E2, $41, $E1, $91, $E2, $11, $41, $E1, $71, $71, $71
    db $71, $71, $71, $71, $71, $71, $71, $71, $71, $71, $71, $71, $71, $71, $71, $71
    db $71, $71, $71, $71, $71, $71, $71, $71, $71, $71, $71, $71, $71, $41, $41, $41
    db $41, $41, $41, $41, $41, $41, $41, $41, $41, $41, $41, $41, $41, $C1, $C1, $C1
    db $C1, $C1, $C1, $C1, $C1, $31, $31, $31, $31, $31, $31, $31, $31, $61, $71, $81
    db $91, $A1, $61, $81, $91, $A1, $B1, $E2, $11, $41, $71, $11, $61, $11, $E1, $B1
    db $B1, $B1, $B1, $B1, $B1, $B1, $B1, $91, $91, $91, $91, $91, $91, $91, $91, $71
    db $71, $71, $71, $71, $71, $71, $71, $91, $91, $91, $91, $91, $E2, $11, $41, $E1
    db $91, $B1, $B1, $B1, $B1, $B1, $B1, $B1, $B1, $91, $91, $91, $91, $91, $91, $91
    db $91, $81, $81, $81, $81, $81, $81, $81, $81, $71, $71, $71, $71, $91, $91, $91
    db $91, $C4, $B4, $A4, $94, $61, $61, $51, $61, $A1, $61, $E2, $11, $E1, $A1, $E2
    db $61, $51, $41, $11, $E1, $61, $61, $61, $61, $61, $61, $61, $61, $61, $61, $61
    db $61, $E2, $61, $51, $41, $11, $E1, $61, $91, $A1, $E2, $11, $FE, $FE, $E7, $06
    db $C4, $04, $04, $02, $C1, $C1, $C4, $04, $04, $04, $C4, $04, $04, $02, $C1, $C1
    db $C4, $04, $21, $C1, $21, $C1, $C1, $21, $C1, $C1, $FB, $C1, $C1, $21, $C1, $C1
    db $C1, $21, $C1, $FB, $0E, $21, $C1, $21, $C1, $21, $C1, $21, $C1, $21, $C1, $21
    db $C1, $21, $C1, $21, $C1, $92, $92, $92, $92, $92, $92, $C1, $C1, $C1, $C1, $FB
    db $C1, $C1, $21, $C1, $C1, $C1, $21, $C1, $FB, $0E, $FE, $FE, $E0, $05, $48, $61
    db $EA, $97, $E3, $91, $01, $91, $01, $91, $B1, $91, $81, $68, $91, $01, $91, $01
    db $91, $B1, $91, $81, $68, $B1, $01, $B1, $01, $B1, $E4, $11, $E3, $B1, $91, $81
    db $91, $81, $61, $41, $61, $81, $B1, $98, $81, $41, $61, $81, $91, $B1, $91, $81
    db $91, $01, $91, $01, $91, $B1, $91, $81, $66, $82, $91, $01, $91, $01, $91, $B1
    db $91, $81, $66, $92, $B1, $E4, $11, $E3, $B1, $91, $81, $91, $81, $61, $41, $61
    db $81, $91, $B1, $E4, $11, $21, $41, $64, $E3, $64, $E4, $16, $22, $12, $64, $E3
    db $92, $E4, $16, $E3, $B1, $91, $84, $01, $92, $B1, $84, $54, $1C, $02, $12, $66
    db $82, $93, $B3, $E4, $12, $26, $12, $E3, $C3, $E4, $93, $E3, $C2, $E4, $14, $02
    db $11, $11, $14, $02, $11, $11, $14, $02, $12, $18, $E5, $12, $E4, $B2, $66, $E5
    db $12, $01, $E4, $B1, $62, $E5, $12, $E4, $B2, $68, $E5, $61, $11, $E4, $B2, $E5
    db $1A, $E4, $84, $B2, $93, $B3, $E5, $12, $18, $E4, $93, $B3, $C2, $E5, $23, $43
    db $62, $54, $02, $11, $11, $14, $02, $11, $11, $13, $11, $02, $12, $02, $12, $01
    db $11, $02, $54, $02, $11, $11

    inc d
    ld [bc], a
    ld de, $1311
    ld de, $1202
    ld [bc], a
    ld [de], a
    ld bc, $0211
    db $FE

    db $FE, $E0, $05, $76, $62, $E3, $61, $E2, $91, $E3, $11, $61, $91, $11, $61, $91
    db $E4, $11, $61, $91, $11, $61, $E3, $91, $E4, $11, $61, $E3, $21, $E2, $91, $E3
    db $21, $61, $91, $21, $61, $91, $E4, $21, $E3, $61, $91, $E4, $21, $61, $21, $E3
    db $91, $61, $B1, $81, $41, $81, $B1, $E4, $11, $E3, $B1, $91, $B1, $E4, $11, $E3
    db $B1, $91, $81, $91, $B1, $E4, $11, $E4, $91, $81, $91, $61, $81, $61, $51, $81
    db $11, $11, $11, $B1, $91, $B1, $91, $81, $91, $61, $11, $61, $E4, $11, $E3, $91
    db $61, $91, $E4, $61, $E3, $91, $E4, $11, $61, $91, $61, $11, $E3, $91, $E4, $21
    db $E3, $61, $91, $E4, $21, $61, $E3, $91, $E4, $21, $61, $91, $61, $21, $E3, $91
    db $E4, $61, $21, $E3, $91, $61, $E4, $41, $E3, $81, $B1, $E4, $41, $E3, $41, $51
    db $81, $91, $B1, $E4, $11, $21, $41, $61, $81, $91, $B1, $91, $61, $11, $E3, $91
    db $E4, $11, $E3, $91, $61, $11, $61, $E2, $91, $E3, $11, $61, $91, $61, $11, $E2
    db $91, $E3, $61, $E2, $91, $E3, $11, $61, $91, $61, $11, $E2, $91, $E3, $11, $91
    db $11, $61, $91, $61, $11, $61, $81, $E2, $B1, $E3, $51, $81, $B1, $51, $81, $B1
    db $E4, $51, $E3, $81, $B1, $E4, $51, $81, $E3, $B1, $E4, $51, $81, $B1, $11, $51
    db $81, $E5, $11, $21, $E4, $B1, $E5, $11, $E4, $91, $B1, $81, $91, $61, $81, $51
    db $11, $91, $11, $61, $91, $E5, $11, $E4, $91, $61, $11, $61, $E3, $91, $E4, $11
    db $E3, $61, $91, $12, $61, $21, $61, $91, $C1, $E4, $21, $61, $91, $C1, $C1, $81
    db $61, $81, $E5, $61, $E4, $C1, $81, $61, $E5, $61, $E4, $81, $E5, $11, $61, $61
    db $E4, $61, $E5, $11, $61, $E4, $61, $71, $E5, $11, $E4, $61, $71, $E5, $11, $E4
    db $11, $61, $81, $11, $41, $81, $E5, $11, $E4, $11, $51, $71, $11, $51, $71, $11
    db $51, $71, $E5, $11, $E4, $11, $18, $68, $02, $E3, $12, $01, $23, $43, $63, $92
    db $B6, $E4, $44, $B4, $82, $93, $83, $14, $E3, $B2, $92, $82, $63, $83, $95, $B3
    db $E4, $62, $04, $11, $51, $71, $E5, $11, $02, $11, $E4, $71, $51, $11, $E3, $71
    db $51, $11, $51, $71, $E4, $11, $02, $11, $51, $71, $E5, $11, $02, $11, $E4, $71
    db $51, $11, $04, $11, $51, $71

    push hl
    ld de, $1102
    db $E4
    ld [hl], c
    ld d, c
    ld de, $71E3
    ld d, c

jr_00F_4B2A:
    ld de, $7151
    db $E4
    ld de, $1102
    ld d, c
    ld [hl], c
    push hl
    ld de, $1102
    db $E4
    ld [hl], c
    ld d, c
    ld de, $E0FE
    ld b, $88
    add d
    ld [c], a
    ld [bc], a
    ld h, d
    add d
    sub d
    db $E3
    jr jr_00F_4B2A

    ld [bc], a
    ld h, d
    add d
    sub d
    db $E3
    jr z, jr_00F_4B51

    ld [c], a
    add d

jr_00F_4B51:
    sub d
    or d
    db $E3
    ld c, b
    inc b
    inc b
    add c
    ld de, $B1E2
    db $E3
    ld de, $1121
    ld [c], a
    or c
    add c
    ld [bc], a
    ld h, d
    add d
    sub d
    db $E3
    jr jr_00F_4B6B

    ld [c], a
    ld h, d

jr_00F_4B6B:
    add d
    sub d
    db $E3
    jr z, jr_00F_4B72

    ld [c], a
    add d

jr_00F_4B72:
    or h
    db $E3
    ld b, d
    or d
    sub d
    add d
    sub h
    inc b
    sub [hl]
    add d
    sub d
    ld h, d
    ld [de], a
    ld [c], a
    sub d
    ld h, e
    add e
    sub d
    cp b
    db $E3
    add h
    ld d, h
    inc b
    ld [c], a
    ld de, $8151
    or c
    db $E3
    ld de, $B1E2
    sub c
    add c
    sub c
    add c
    ld h, c
    add c
    ld h, [hl]
    ld [bc], a
    add c
    sub d
    db $E3
    ld de, $E264
    inc hl
    ld b, e
    ld h, d
    add e
    sub e
    add d
    db $E3
    ld [de], a
    ld [c], a
    ld [hl], c
    ld [hl], c
    ld bc, $7271
    ld [hl], c
    ld [hl], c
    ld [hl], c
    ld [hl], c
    ld [hl], d
    ld [hl], d
    db $E3
    ld [de], a
    ld [c], a
    ld [hl], c
    ld [hl], c
    ld [hl], c
    ld [hl], c
    ld [hl], d
    ld [hl], c
    ld [hl], c
    ld [hl], d
    ld [hl], d
    ld [hl], d
    db $E3
    inc b
    inc d
    ld h, h
    sub h
    db $E4
    jr @+$65

    inc de
    db $E3
    sub d
    cp d
    add d
    ld bc, $6343
    inc de
    ld [c], a
    sub h
    add d
    ld h, d
    ld b, d
    inc hl
    ld h, e
    sub d
    or e
    sub e
    ld h, d
    db $E3
    ld [de], a
    ld [c], a
    ld [hl], c
    ld [hl], c
    ld [hl], c
    ld [hl], c
    ld [hl], d
    ld [hl], c
    ld [hl], c
    ld [hl], c
    ld [hl], c
    ld [hl], d
    ld [hl], d
    db $E3
    ld [de], a
    ld [c], a
    ld [hl], c
    ld [hl], c
    ld [hl], c
    ld [hl], c
    ld [hl], d
    ld [hl], c
    ld [hl], c
    ld [hl], c
    ld [hl], c
    ld [hl], d
    ld [hl], c
    ld [hl], c
    db $E3
    ld [de], a
    ld [c], a
    ld [hl], c
    ld [hl], c
    ld [hl], c
    ld [hl], c
    ld [hl], d
    ld [hl], c
    ld [hl], c
    ld [hl], c
    ld [hl], c
    ld [hl], d
    ld [hl], d
    db $E3
    ld [de], a
    ld [c], a
    ld [hl], c
    ld [hl], c
    ld [hl], c
    ld [hl], c
    ld [hl], d
    ld [hl], c
    ld [hl], c
    ld [hl], c
    ld [hl], c
    ld [hl], d
    ld [hl], c
    ld [hl], c
    db $FE

    db $FE, $E0, $05, $62, $62, $EA, $96, $E1, $60, $02, $62, $02, $62, $02, $62, $64
    db $62, $62, $64, $E2, $B1, $E3, $11, $E2, $B1, $91, $81, $91, $81, $41, $E1, $62
    db $62, $64, $02, $12, $02, $12, $62, $62, $64, $E3, $12, $12, $11, $21, $11, $E2
    db $B1, $E1, $62, $62, $64, $E3, $22, $22, $21, $41, $22, $62, $62, $64, $E3, $41
    db $61, $81, $91, $B1, $E4, $11, $E3, $B2, $E1, $62, $62, $63, $61, $02, $62, $01
    db $61, $02, $62, $62, $64, $62, $62, $64, $52, $52, $54, $52, $52, $54, $14, $E3
    db $11, $21, $E2, $B1, $E3, $12, $E2, $B1, $91, $B1, $91, $B1, $91, $81, $E1, $62
    db $62, $64, $62, $62, $64, $22, $22, $24, $82, $82, $84, $11, $11, $12, $02, $71
    db $71, $02, $72, $02, $71, $71, $11, $11, $12, $02, $71, $71, $02, $72, $02, $12
    db $22, $22, $22, $22, $22, $22, $22, $21, $21, $22, $22, $22, $22, $22, $22, $22
    db $22, $12, $12, $12, $12, $12, $12, $12, $12, $62, $62, $62, $62, $42, $42, $42
    db $42, $22, $22, $22, $22, $22, $22, $22, $22, $11, $11, $12, $02, $11, $11, $02
    db $12, $02, $71, $71, $14, $02, $11, $11, $02, $12, $02, $72, $11, $11, $12, $02
    db $11

    ld de, $1202
    ld [bc], a
    ld [hl], c
    ld [hl], c
    inc d
    ld [bc], a
    ld de, $0211
    ld [de], a
    ld [bc], a
    ld [hl], d
    db $FE

    db $FE, $E7, $05, $C4, $44, $C2, $42, $42, $42, $C4, $44, $C2, $42, $42, $42, $C4
    db $44, $C2, $C2, $44, $42, $42, $44, $C4, $44, $C4, $44, $C2, $42, $42, $42, $C4
    db $44, $C2, $42, $42, $42, $41, $41, $41, $41, $42, $41, $41, $41, $41, $41, $41
    db $42, $41, $41, $C4, $44, $02, $42, $42, $42, $C4, $44, $02, $42, $42, $42, $C4
    db $44, $02, $42, $42, $42, $C4, $41, $41, $41, $41, $41, $41, $41, $41, $41, $41
    db $41, $41, $C4, $44, $02, $42, $42, $42, $C4, $44, $02, $42, $42, $42, $C4, $02
    db $41, $41, $42, $41, $41, $42, $41, $41, $C4, $02, $41, $41, $42, $41, $41, $42
    db $41, $41, $C2, $C2, $42, $C2, $C2, $C2, $42, $C2, $C2, $C2, $42, $C2, $C2, $C2
    db $42, $C2, $C2, $C2, $42, $C2, $C2, $C2, $42, $C2, $C2, $C2, $42, $C2, $C2, $C2
    db $42, $C2, $C2, $C2, $C2, $C2, $C2, $C2, $42, $C2, $C4, $41, $41, $41, $41, $44
    db $41, $41, $41, $41, $C4, $41, $41, $41, $41, $44, $41, $41, $41, $41, $C4, $41
    db $41, $41

    ld b, c
    ld b, h
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    call nz, Call_00F_4141
    ld b, c
    ld b, c
    ld b, h
    ld b, c
    ld b, c
    ld b, c

jr_00F_4DB9:
    ld b, c
    cp $FE
    ldh [rTMA], a
    ld c, b
    add h
    ld [$E497], a
    inc b
    inc h
    db $E3
    ld [hl], h
    db $E4
    ld a, b
    ld h, d
    ld b, d
    ld h, d
    ld [hl], d
    sub d
    db $E3
    add $A2
    sub d
    and h
    db $E4
    jr z, jr_00F_4DB9

    jp nz, $C2B2

    db $E4
    ld [hl+], a
    ld [hl-], a
    db $E3
    ld [hl], d
    ld [hl], h
    ld h, d
    ld b, d
    ld h, d
    ld [hl+], a
    add $A2
    jp nz, Jump_000_22E4

    ld [hl-], a
    ld d, d
    ld [hl], d
    db $E3
    and d
    xor b
    sub [hl]
    and d
    and d
    ld d, d
    ld h, d
    ld [hl-], a
    ld d, d
    ld [de], a
    ld [hl-], a
    ld [c], a
    jp nz, Jump_000_14E3

    and h
    and h
    and h
    and h
    sub d
    ld [hl], d
    sub d
    and d
    jp nz, Jump_00F_62E4

    ld d, d
    db $E3
    or d
    and d
    add d
    and d
    db $E4
    ld d, d
    ld [hl-], a
    ld [hl+], a
    ld [hl-], a
    db $E3
    ld h, d
    ld d, d
    ld [hl-], a
    ld d, d
    db $E4
    ld [hl-], a
    ld [de], a
    db $E3
    or d
    or h
    and d
    jp nz, Jump_000_12E4

    db $E3
    add d
    ld h, d
    ld d, d
    ld h, d
    ld d, d
    ld [hl-], a
    ld h, d
    db $E4
    ld [de], a
    db $E3
    ld [hl-], a
    jp nz, $0232

    db $E4
    ld [de], a
    ld [hl-], a
    ld d, d
    ld h, d
    add d
    and d
    ld [de], a
    inc d
    db $E3
    or h
    db $E4
    inc b
    ld h, h
    ld d, d
    ld [de], a
    ld h, d
    ld [hl-], a
    ld [de], a
    db $E3
    jp nz, Jump_000_12E4

    db $E3
    sub d
    xor h
    jp nz, Jump_000_22E4

    inc a
    ld [de], a
    db $E3
    jp nz, $E402

    and d
    add d
    ld h, d
    ld d, d
    ld [de], a
    db $E3
    and d
    ld d, d
    and d
    add d
    ld h, d
    and d
    db $E4
    ld [hl-], a
    ld [de], a
    ld [hl-], a
    db $E3
    jp nz, Jump_000_22E4

    ld d, d
    add d
    ld h, d
    ld d, d
    add d
    or d
    and d
    add d
    ld d, d
    ld [hl+], a
    db $E3
    and d
    sub d
    and d
    jp nz, Jump_000_22E4

    ld [hl-], a
    ld d, d
    ld h, d
    ld [hl-], a
    or d
    ld [hl-], a
    and d
    ld [hl-], a
    sub d
    and d
    jp nz, $5292

    ld [hl-], a
    ld [hl+], a
    db $E3
    jp nz, Jump_000_22E4

    ld b, d
    ld h, d
    ld [hl], d
    sub d
    and d
    jp nz, Jump_000_22E5

    ld [hl-], a
    db $E4
    ld h, d
    push hl
    ld [hl+], a
    db $E4
    ld h, d
    jp nz, $E562

    ld [hl+], a
    db $E4
    ld h, d
    cp $FE
    ldh [rTMA], a
    ld c, b
    add h
    ld [$E198], a
    ld [hl], h
    ld [c], a
    ld [hl], d
    sub d
    and d
    jp nz, Jump_000_22E3

    ld [c], a
    ld [hl], d
    call nz, $E394
    ld [hl+], a
    ld b, d
    ld h, d
    sub d
    sub h
    ld [hl], d
    ld h, d
    ld [hl], d
    ld [hl+], a
    ld [c], a
    jp nz, $C2A2

    db $E3
    ld [hl+], a
    ld [hl-], a
    ld [hl], d
    sub [hl]
    and d
    db $E4
    inc h
    ld [bc], a
    db $E3
    jp nz, $92A2

    ld [hl], d
    ld h, d
    ld [hl], d
    ld [hl+], a
    ld [hl], d
    sub d
    ld [hl], d
    ld d, d
    ld [hl-], a
    ld [hl+], a
    ld [c], a
    jp nz, Jump_000_22E3

    ld [hl-], a
    ld [hl], d
    ld d, d
    ld [hl-], a
    ld d, d
    ld [c], a
    jp nz, Jump_00F_52E3

    ld [de], a
    ld [hl-], a
    ld [c], a
    jp nz, $12E3

    ld [c], a
    and d
    jp nz, Jump_000_0292

    db $E3
    ld d, d
    ld [de], a
    ld [c], a
    and d
    db $E3
    ld h, d
    ld d, d
    ld [hl-], a
    ld [de], a
    ld [hl-], a
    jp nz, $5292

    db $E4
    ld d, [hl]
    ld [hl-], a
    ld [hl+], a
    ld [hl-], a
    ld d, d
    ld h, d
    add d
    and d
    or d
    and d
    add d
    ld [hl-], a
    ld [hl+], a
    db $E3
    jp nz, $E2A2

    or d
    and d
    add d
    db $E3
    add h
    ld h, d
    add d
    ld d, d
    ld [de], a
    ld [hl-], a
    ld d, d
    ld [c], a
    ld h, d
    db $E3
    ld [de], a
    ld [hl-], a
    ld h, [hl]
    add d
    ld h, d
    ld d, d
    ld d, d
    ld h, d
    add d
    and d
    add d
    ld h, d
    ld d, d
    ld [hl-], a
    ld [de], a
    ld [c], a
    or d
    and d
    add d
    db $E3
    ld h, d
    ld d, d
    ld [hl-], a
    ld [bc], a
    ld d, d
    ld [hl-], a
    ld d, d
    and d
    sub d
    ld [hl], d
    ld d, d
    and d
    sub d
    and d
    ld h, d
    add d
    ld h, d
    ld d, d
    add d
    ld h, d
    ld [c], a
    and d
    jp nz, Jump_000_22E3

    ld [hl-], a
    ld [hl+], a
    ld [hl-], a
    ld h, d
    ld d, d
    ld b, d
    ld d, d
    ld [de], a
    ld [c], a
    and d
    add d
    ld h, d
    ld d, d
    ld h, d
    db $E3
    ld d, d
    ld [hl-], a
    ld [de], a
    ld [c], a
    jp nz, $C2A2

    add d
    and d
    ld d, d
    db $E3
    ld d, d
    ld [hl-], a
    ld [hl+], a
    ld [c], a
    and d
    db $E3
    add d
    ld h, d
    ld d, d
    ld [c], a
    and d
    db $E3
    or d
    and d
    ld [hl+], a
    and d
    sub d
    and d
    ld h, d
    ld d, d
    ld h, d
    ld [hl+], a
    ld [hl-], a
    ld [hl+], a
    ld [hl-], a
    ld [c], a
    and d
    jp nz, $C2A2

    sub d
    db $E3
    sub d
    ld h, d
    ld d, d
    ld [hl-], a
    ld [hl+], a
    ld [c], a
    jp nz, $92A2

    jp nz, $92A2

    ld [hl], d
    ld h, d
    ld b, d
    ld [hl+], a
    ld b, d
    ld h, d
    ld [hl], d
    sub d
    jp nz, $FEFE

    ldh [rTMA], a
    ld h, d
    add h
    db $E3
    inc b
    inc h
    ld [hl], h
    ld [hl], h
    ld [hl], h
    ld h, d
    ld [hl], d
    sub [hl]
    jp nz, Jump_000_34E4

    ld [hl+], a
    db $E3
    jp nz, $92A2

    ld [hl], d
    ld d, d
    inc [hl]
    pop hl
    add $E2
    ld [hl+], a
    inc [hl]
    ld a, [hl+]
    jp nz, $92A2

    and d
    sub d
    and d
    ld [hl], d
    call nz, $02E7
    pop hl
    call nz, Call_000_24E2
    inc [hl]
    rst $20
    ld b, $E2
    ld e, d
    ld [hl], d
    ld d, d
    ld [hl-], a
    pop hl
    and h
    ld h, h
    inc [hl]
    ld d, h
    and d
    ld [c], a
    and d
    sub d
    and d
    ld [hl-], a
    pop hl
    jp nz, Jump_00F_62E2

    ld d, d
    ld [hl-], a
    ld h, d
    ld [hl-], a
    pop hl
    jp nz, $C2E2

    and d
    jp nz, $8292

    or d
    add d
    ld d, d
    db $E3
    ld d, d
    ld [hl-], a
    ld [hl+], a
    ld d, d
    ld [c], a
    ld [hl-], a
    ld [hl+], a
    ld [hl-], a
    ld h, d
    ld d, d
    ld [hl-], a
    ld d, d
    add d
    pop hl
    ld h, d
    ld [c], a
    ld [de], a
    ld [hl-], a
    ld d, d
    ld h, d
    add d
    and d
    ld d, d
    ld [hl-], a
    ld d, d
    ld h, d
    and d
    add h
    pop hl
    add h
    ld [c], a
    inc d
    rst $20
    ld [bc], a
    pop hl
    and h
    call nz, $14E2
    rst $20
    ld b, $32
    ld d, d
    ld h, d
    and d
    add b
    inc d
    inc [hl]
    ld d, h
    pop hl
    ld d, h
    and h
    and d
    and d
    and d
    and d
    and d
    and d
    and d
    and d
    and d
    and d
    and d
    and d
    and d
    and d
    xor d
    jp nz, $12E2

    ld d, d
    and d
    add d
    and d
    ld h, d
    ld [hl-], a
    ld [de], a
    pop hl
    jp nz, $54E2

    pop hl
    and d
    sub d
    jp nz, $A2B2

    add d
    or d
    ld [c], a
    ld d, d
    ld [hl-], a
    inc h
    pop hl
    and d
    add d
    ld h, d
    ld d, d
    ld [c], a
    ld [hl-], a
    ld d, d
    ld h, d
    ld [hl+], a
    inc [hl]
    pop hl
    and h
    ld [hl-], a
    jp nz, Jump_000_32E2

    ld h, d
    ld d, d
    ld [hl-], a
    ld [hl+], a
    pop hl
    jp nz, $E222

    ld [hl+], a
    pop hl
    jp nz, $22E2

    ld [hl-], a
    ld [hl], d
    ld [hl+], a
    ld [hl], d
    pop hl
    jp nz, Jump_00F_62E2

    pop hl
    and d
    ld [c], a
    ld h, d
    pop hl
    sub d
    ld [c], a
    ld h, d
    pop hl
    ld [hl+], a
    ld [c], a
    ld h, d
    cp $FF
    xor $10
    cp $E0
    dec b
    adc c
    add l
    ld [$E481], a
    ld d, [hl]
    db $E3
    jp nz, $86E4

    ld [hl], c
    ld d, c
    ld b, c
    ld d, c
    ld [hl], h
    ld [de], a
    db $E3
    add $C1
    db $E4
    ld hl, $2234
    db $E3
    call nz, $91A1
    and [hl]
    db $E4
    ld [de], a
    db $E3
    jp nz, Jump_00F_51A2

    ld [hl], c
    sub c
    and c
    pop bc
    db $E4
    ld hl, $5141
    db $E3
    ld a, b
    adc b
    sub c
    ld [hl], c
    sub c
    and c
    ret z

    ld b, h
    ld [$5230], a
    ld [c], a
    jp nz, $C2C2

    db $E3
    ld [de], a
    ld [c], a
    jp nz, $12E3

    ld [c], a
    jp nz, Jump_000_20EA

    ld d, d
    ld [c], a
    jp nz, $C2C2

    db $E3
    ld [de], a
    ld [c], a
    jp nz, $12E3

    ld [c], a
    jp nz, $10EA

    db $E3
    ld d, [hl]
    ld [c], a
    jp nz, $86E3

    ld [hl], c
    ld d, c
    ld b, d
    db $E4
    inc d
    db $E3
    pop bc
    and c
    sub d
    db $E4
    inc [hl]
    ld hl, $C1E3
    pop bc
    or c
    db $E4
    ld d, h
    ld sp, $2121
    ld sp, $72E3
    ld bc, $A191
    pop bc
    db $E4
    ld [hl+], a
    ld [hl-], a
    ld d, d
    ld [hl], d
    sub e
    ld [hl], c
    ld h, d
    ld [hl], c
    sub c
    ld [$A295], a
    ld [hl+], a
    and d
    ld [hl+], a
    and d
    ld [hl-], a
    and d
    ld [hl-], a
    sub d
    ld [hl-], a
    sub d
    ld [hl-], a
    sub d
    ld [hl+], a
    sub d
    ld [hl+], a
    ld [$7198], a
    sub c
    ld [hl], c
    ld d, c
    ld sp, $3151
    ld hl, $C1E3
    db $E4
    ld hl, $C1E3
    and c
    sub c
    and c
    sub c
    ld [hl], c
    ld h, d
    db $E4
    ld [hl-], a
    ld [hl+], a
    db $E3
    jp nz, $E4B2

    add d
    ld [hl], d
    ld d, c
    ld d, c
    ld d, d
    ld sp, $3221
    db $E3
    jp nz, Jump_000_24E4

    db $E3
    jp nz, Jump_000_21E4

    ld b, c
    ld d, h
    ld b, d
    ld [hl+], a
    ld [hl+], a
    db $E3
    pop bc
    or c
    add $E4
    ld [hl-], a
    ld [hl+], a
    db $E3
    jp nz, $A1C2

    sub c
    and [hl]
    db $E4
    ld [de], a
    db $E3
    jp nz, $82A2

    db $E4
    ld d, d
    ld [bc], a
    ld d, h
    ld b, c
    ld d, c
    ld [hl], c
    ld d, c
    ld b, c
    ld d, c
    db $E3
    and d
    db $E4
    ld d, d
    ld [bc], a
    ld d, h
    ld b, c
    ld d, c
    ld [hl], c
    ld d, c
    ld b, c
    ld d, c
    db $E3
    or d
    db $E4
    add d
    ld [bc], a
    add h
    ld [hl], c
    add c
    and c
    add c
    ld [hl], c
    add c
    db $E4
    pop bc
    ld [hl], c
    ld b, c
    db $E3
    pop bc
    or c
    pop bc
    db $E4
    ld d, c
    add c
    pop bc
    ld [hl], c
    ld b, c
    db $E3
    pop bc
    or c
    pop bc
    db $E4
    ld d, c
    add c
    pop bc
    ld [hl], c
    ld b, c
    db $E3
    pop bc
    push hl
    ld de, $81E4
    ld d, c
    ld de, $71C1
    ld b, c
    db $E3

Jump_00F_51A2:
    pop bc
    push hl
    ld de, $81E4
    ld d, c
    ld de, $71C1
    ld b, c
    db $E3
    pop bc
    db $E4
    ld de, $8151
    push hl
    ld de, $21E4
    ld d, c
    add c
    push hl
    ld hl, $41E4
    ld [hl], c
    pop bc
    push hl
    ld b, c
    cp $FE
    ld [$E096], a
    dec b
    ld l, b
    add a
    ld [$E481], a
    add c
    ld bc, $C1E3
    db $E4
    ld bc, $5181
    add c
    ld d, c
    pop bc
    add c
    ld d, c
    add c
    push hl
    ld de, $C1E4
    and c
    add c
    and c
    ld [hl], c
    ld b, c
    ld [hl], c
    pop bc
    ld b, c
    ld [hl], c
    ld b, c
    pop bc
    ld [hl], c
    ld b, c
    ld [hl], c
    and c
    ld [hl], c
    ld b, c
    ld [hl], c
    sub c
    ld h, c
    ld sp, $C1E3
    sub c
    pop bc
    sub c
    ld h, c
    and c
    ld [hl], c
    sub c
    and c
    pop bc
    db $E4
    ld hl, $5141
    ld [hl], c
    ld b, c
    db $E3
    pop bc
    db $E4
    ld b, c
    and c
    ld [hl], c
    ld b, c
    ld [hl], c
    sub c
    ld d, c
    db $E3
    pop bc
    db $E4
    ld d, c
    and c
    ld d, c
    ld hl, $E301
    or c
    db $E4
    ld d, c
    ld hl, $2151
    ld d, c
    ld hl, $7151
    ld d, c
    ld hl, $8151
    ld d, c
    ld b, c
    ld d, c
    db $E3
    ld d, c
    pop bc
    db $E4
    ld hl, $5141
    ld b, c
    ld d, c
    ld [hl], c
    sub c
    and c
    pop bc
    ld d, c
    sub c
    ld [hl], c
    ld d, c
    ld b, c
    ld [bc], a
    db $E3
    add d
    add d
    add d
    and d
    add d
    and d
    add d
    ld [bc], a
    add d
    add d
    add d
    and d
    add d
    and d
    add d
    jp nz, Jump_00F_52E5

    db $E4
    jp nz, $C282

    add d

Jump_00F_5252:
    ld d, d
    db $E3
    jp nz, Jump_00F_41E4

    db $E3
    and c
    db $E4
    ld b, c
    ld [hl], c
    pop bc
    push hl
    ld de, $C1E4
    and c
    sub c
    ld h, c
    sub c
    pop bc
    push hl
    ld sp, $5161
    ld sp, $E421
    or c
    push hl
    ld hl, $8251
    ld [hl], c
    ld d, c
    ld d, d
    ld sp, $3121
    db $E4
    pop bc
    ld [hl], c
    ld sp, $3101
    ld d, c
    ld [hl], c
    sub c
    ld [hl], c
    ld d, c
    ld sp, $3121
    ld hl, $C1E3
    and c
    pop bc
    and c
    sub c
    and c
    pop bc
    db $E4
    ld [hl+], a
    ld bc, $3121
    ld d, c
    ld [hl], h
    sub c
    ld bc, $A191
    pop bc
    push hl
    ld hl, $C1E4
    and c
    sub d
    ld [hl], d
    ld d, h
    ld bc, $A1E3
    pop bc
    db $E4
    ld hl, $5131
    ld sp, $E321
    pop bc
    db $E4
    ld hl, $C1E3
    and c
    sub c
    and c
    sub c
    ld [hl], c
    ld h, c
    ld [hl], c
    ld h, c
    ld b, c
    ld h, [hl]
    ld [hl], c
    sub c
    or [hl]
    pop bc
    db $E4

Jump_00F_52C2:
    ld hl, $E331
    pop bc
    db $E4
    ld [hl], c
    ld sp, $71C1
    ld sp, $C1E3
    db $E4
    ld hl, $A1E3
    db $E4
    ld hl, $91A1
    db $E3
    pop bc
    db $E4
    ld h, c
    sub c
    push hl
    add c
    ld d, c
    add c
    push hl
    ld hl, $2151

Call_00F_52E3:
Jump_00F_52E3:
    db $E4

Jump_00F_52E4:
    add c

Jump_00F_52E5:
    ld d, c
    ld [hl], c
    ld sp, $C171
    push hl
    ld sp, $C1E4
    ld [hl], c
    ld sp, $3101
    ld hl, $C1E3
    and c
    pop bc
    and c
    sub c
    and c
    sub c
    ld hl, $E271
    and c
    db $E3
    ld hl, $A171
    db $E4
    and [hl]
    add c
    ld [hl], c
    add c
    ld d, c
    ld [c], a
    pop bc
    db $E3
    ld d, c
    add c
    ld d, c
    ld [c], a
    pop bc
    db $E3
    ld d, c
    pop bc
    add c
    ld d, c
    ld [c], a
    pop bc
    db $E3
    ld d, c
    ld [c], a
    pop bc
    db $E3
    ld d, c
    ld [c], a
    add c
    db $E3
    ld d, c
    ld [c], a
    and c
    db $E3
    ld de, $A151
    ld de, $A151
    db $E4
    ld de, $A1E3
    ld d, c
    ld de, $51A1
    ld [de], a
    ld d, c
    ld [c], a
    or c
    db $E3
    ld hl, $8151
    ld hl, $8151
    or c
    ld d, c
    add c
    or c
    db $E4
    ld hl, $B1E2
    db $E3
    add c
    ld d, c
    call nz, $81C1
    ld d, c
    ld de, $C1C4
    add c
    ld d, c
    ld de, $71C1
    ld b, c
    ld [c], a
    pop bc
    db $E3
    pop bc
    add c
    ld d, c
    ld de, $71C1
    ld b, c
    ld [c], a
    pop bc
    db $E4
    ld de, $81E3
    ld d, c
    ld de, $C4E2
    db $E3
    ld bc, $2111
    ld [c], a
    pop bc
    db $E3
    ld de, $4121
    ld [c], a
    pop bc
    db $E3
    ld hl, $5141
    ld [hl], c
    cp $FE
    ldh [rTIMA], a
    ld h, d
    and h
    ld [$E181], a
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld [hl], d
    ld [hl], d
    ld d, d
    ld d, d
    ld b, d
    ld b, d
    jp nz, $E2C2

    ld d, d
    ld d, d
    ld [hl+], a
    ld [hl+], a
    pop hl
    or d
    or d
    or d
    or d
    or d
    or d
    or d
    or d
    jp nz, $C2C2

    jp nz, $C2C2

    jp nz, $54C2

    ld [bc], a
    ld d, d
    ld [bc], a
    ld d, d
    ld [bc], a
    pop bc
    pop bc
    ld d, h
    ld [bc], a
    ld d, d
    ld [bc], a
    ld d, d
    ld [bc], a
    pop bc
    pop bc
    ld d, h
    ld [bc], a
    ld d, d
    ld [bc], a
    ld d, d
    ld [bc], a
    ld d, c
    ld d, c
    ld d, h
    ld [bc], a
    ld d, d
    ld [bc], a
    ld d, d
    ld [bc], a
    pop bc
    pop bc
    ld [hl], h
    ld d, h
    inc [hl]
    call nz, $9202
    jp nz, $2432

    inc h
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    jp nz, $C2C2

    jp nz, Jump_00F_5252

    ld d, d
    ld d, d
    and d
    and d
    and d
    and d
    inc [hl]
    ld bc, $7151
    and c
    sub h
    sub c
    and c
    pop bc
    ld sp, $4126
    ld h, c
    ld [hl], h
    ld bc, $B192
    call nz, Call_000_24C4
    inc h
    or d
    or d
    or d
    or d
    sub d
    sub d
    sub d
    ld [hl], d
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld d, d
    ld b, d
    ld b, d
    ld b, d
    ld b, d
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    jp nz, $C2C2

    ld [de], a
    jp nz, $C2C2

    ld [de], a
    jp nz, $C2C2

    jp nz, $C2C2

    jp nz, $C2C2

    jp nz, $A2A2

    add d
    add d
    ld [hl], d
    ld [hl], d
    cp $E7
    dec b
    cp $32
    ld b, c
    ld b, c
    db $FE

    db $FE, $E0, $07, $88, $4A, $E2, $82, $E3, $12, $84, $62, $44, $32, $E2, $A2, $C2
    db $E3, $43, $31, $E2, $86, $96, $A6, $C2, $E3, $C1, $81, $61, $31, $E2, $82, $E3
    db $12, $84, $62, $44, $32, $22, $32, $B3, $91, $80, $02, $E3, $82, $E4, $13, $E3
    db $B1, $E4, $13, $E3, $11, $16, $E4, $11, $31

    ld b, [hl]
    ld sp, $E311
    jp nz, $32E4

    db $E3
    sub e
    add c
    add [hl]
    ld b, c
    ld h, c
    add [hl]
    ld [de], a
    ld [hl-], a
    ld b, d
    add e
    ld h, c
    or [hl]
    sub d
    add e
    ld h, c
    or [hl]
    sub d
    add h
    inc de
    ld [c], a
    pop bc
    db $E3
    ld b, e
    ld sp, $4163
    sub e
    add c
    db $E4
    ld de, $C1E3
    db $E4
    ld b, c
    db $31
    db $FE

    db $FE, $E0, $07, $85, $4A, $E2, $02, $82, $84, $82, $82, $02, $32, $34, $82, $82
    db $02, $82, $84, $82, $82, $02, $62, $64, $82, $82, $02, $82, $84, $82, $82, $02
    db $62, $62, $02, $B2, $E3, $32, $02, $32, $34, $E2, $B2, $82, $E3, $64, $22, $E2
    db $B2, $E3, $12, $E2, $B2, $02, $92, $94, $92, $92, $02, $B2

    db $E3
    ld b, h
    ld [c], a
    jp nz, Jump_000_02C2

    db $E3
    ld h, d
    ld h, h
    ld b, d
    ld b, d
    ld [bc], a
    ld b, d
    ld b, h
    ld b, d
    ld b, d
    ld [bc], a
    add d
    add h
    add d
    add d
    ld [bc], a
    ld h, d
    ld h, h
    ld h, d
    ld h, d
    inc b
    inc b
    ld [c], a
    pop bc
    add c
    pop bc
    add c
    db $E3
    ld hl, $81E2
    db $E3
    ld hl, $81E2
    db $E3
    ld b, c
    ld [c], a
    pop bc
    db $E3
    ld b, c
    ld [c], a
    pop bc
    db $E3
    ld h, c
    ld [c], a
    pop bc
    db $E3
    ld h, c
    ld [c], a
    pop bc
    db $FE

    db $FE, $E0, $07, $42, $62, $EA, $8C, $E2, $12, $E4, $12, $12, $E2, $42, $E4, $12
    db $12, $E2, $32, $E3, $A2, $A2, $E2, $82, $E3, $C2, $C2, $12, $E4, $12, $12, $E2
    db $42, $E4, $12, $12, $E2, $32, $E4, $12, $12, $E2, $82, $E3, $C2, $C2, $12, $E4
    db $12, $12, $E2, $42, $E4, $12, $12, $E2, $32, $E4, $12, $12, $E2, $B2, $E3, $B2
    db $B2, $E2, $42, $E4, $32, $32, $E2, $B2, $E4, $32, $32, $E2, $22, $E3, $82, $82
    db $E2, $12, $E3, $82, $82, $E2, $62, $E4, $12, $12, $E2, $92, $E4, $12, $12, $E2
    db $B2

    db $E3
    or d
    or d
    ld [c], a
    sub d
    db $E4
    ld [hl-], a
    ld [hl-], a
    db $E3
    ld [de], a
    db $E4
    ld [de], a
    ld [de], a
    ld [c], a
    ld b, d
    db $E4
    ld [de], a
    ld [de], a
    ld [c], a
    add d
    db $E4
    ld [de], a
    ld [de], a
    db $E3
    ld [de], a
    db $E4
    ld [de], a
    ld [c], a
    or d
    sub d
    db $E4
    ld [de], a
    ld [de], a
    ld [c], a
    ld b, d
    db $E4
    ld [de], a
    ld [de], a
    ld [c], a
    ld [hl-], a
    db $E4
    ld [de], a
    ld [de], a
    ld [c], a
    ld [hl-], a
    db $E4
    ld [de], a
    ld [de], a
    ld [c], a
    adc h
    add h
    add d
    add d
    add d
    add d
    db $FE

    db $FE, $FB, $E7, $07, $C2, $12, $12, $C2, $12, $12, $C2, $12, $12, $C2, $12, $12
    db $FB, $07, $C4, $C4

    call nz, $1212
    ld [de], a
    ld de, $1111
    ld de, $1111
    cp $FE
    ldh [rTAC], a
    adc b
    ld d, [hl]
    ld [$E396], a
    ld [bc], a
    ld h, d
    sub d
    db $E4
    ld [de], a
    db $E3
    call nz, $8202
    or [hl]
    db $E4
    ld de, $B1E3
    sub h
    ld h, h
    ld [bc], a
    ld h, d
    sub d
    db $E4
    ld [de], a
    ld h, h
    db $E3
    ld h, d
    add d
    sub [hl]
    add c
    ld h, c
    add h
    db $E4
    ld [hl+], a
    ld [de], a
    ld [bc], a
    db $E3
    ld h, d
    sub d
    db $E4
    ld [de], a
    db $E3
    add $81
    sub c
    or h
    db $E4
    ld [de], a
    db $E3
    or d
    sub h
    ld h, h
    ld [bc], a
    ld h, d
    sub d
    db $E4
    ld [de], a
    ld h, h
    db $E3
    ld h, d
    add d
    sub d
    or d
    db $E4
    ld [de], a
    db $E3
    add c
    sub c
    ld h, h
    inc b
    db $E4
    ld h, l
    add c
    sub c
    or c
    ld b, h
    ld [bc], a
    ld b, d
    ld h, d
    sub d
    push hl
    ld de, $B2E4
    sub c
    add h
    ld b, d
    ld b, d
    ld h, h
    ld bc, $9181
    or c
    ld b, h
    ld [bc], a
    ld b, d
    ld h, d
    add d
    sub [hl]
    add d
    ld hl, $6231
    ld h, [hl]
    ld d, c
    ld h, c
    adc l
    dec b
    inc b
    ld [bc], a
    cp $FE
    ldh [rTAC], a
    ld h, a
    ld b, [hl]
    db $E3
    ld [bc], a
    sub d
    db $E4
    ld de, $62E3
    ld de, $E433
    dec [hl]
    inc h
    ld bc, $91B1
    add c
    sub e
    add c
    ld bc, $4162
    ld h, h
    ld bc, $11E5
    db $E4
    or c
    sub l
    ld bc, $8291
    ld h, h
    ld bc, $6111
    sub c
    add c
    ld d, c
    add c
    or c
    push hl
    ld hl, $81E4
    push hl
    ld de, $81E4
    ld bc, $1191
    ld h, c
    sub d
    add c
    ld h, c
    inc [hl]
    ld bc, $1131
    db $E3
    pop bc

jr_00F_569A:
    db $E4
    inc h
    or c
    sub d
    add c
    ld h, h
    jr @-$19

    ld de, $B2E4
    sub c
    inc [hl]
    ld bc, $91E3
    or d
    sub c
    ld de, $1161
    ld bc, $81B1
    ld de, $E468
    jr jr_00F_569A

    or h
    sub h
    db $E4
    inc h
    inc d
    db $E3
    or d
    db $E4
    ld b, d
    db $E3
    ld bc, $82E3
    or c
    sub h
    db $E4
    inc d
    db $E3
    or h
    add h
    sub [hl]
    db $E4
    ld h, d
    db $E3
    or b
    db $E4
    inc d
    ld bc, $6152
    add [hl]
    add c
    sub c
    or h
    push hl
    inc h
    cp $FE
    ldh [rTAC], a
    ld b, h
    inc sp
    pop hl
    ld h, d
    ld [c], a
    ld [de], a
    pop hl
    ld h, c
    ld [c], a
    ld [de], a
    pop hl
    ld h, c
    ld [c], a
    ld [hl-], a
    pop hl
    ld h, c
    ld [c], a
    ld sp, $E101
    ld h, c
    ld [c], a
    ld [hl-], a
    pop hl
    ld h, d
    ld [c], a
    ld [hl+], a
    pop hl
    ld h, c
    ld [c], a
    ld [hl+], a
    pop hl
    ld h, c
    ld [c], a
    ld [de], a
    pop hl
    ld h, c
    ld [c], a
    ld de, $E101
    ld h, d
    ld b, c
    pop hl
    ld [hl+], a
    sub c
    inc h
    ld de, $C2E1
    ld h, c
    pop bc
    ld bc, $E1C2
    sub c
    ld [de], a
    pop hl
    sub c
    pop hl
    ld de, $1101
    sub d
    ld [de], a
    add c
    ld de, $1201
    add c
    pop hl
    ld h, d
    ld [c], a
    ld [de], a
    pop hl
    ld h, c
    ld [c], a
    ld [de], a
    pop hl
    ld h, c
    ld [c], a
    ld [hl-], a
    pop hl
    ld h, c
    ld [c], a
    ld sp, $E101
    ld h, c
    ld [c], a
    ld [hl-], a
    pop hl
    ld h, d
    ld [c], a
    ld [hl+], a
    pop hl
    ld h, c
    ld [c], a
    ld [hl+], a
    pop hl
    ld h, c
    ld [c], a
    ld [de], a
    pop hl
    ld h, c
    ld [c], a
    ld de, $E101
    ld h, d
    ld b, c
    pop hl
    ld [hl+], a
    sub c
    ld hl, $1201
    ld de, $C2E1
    ld h, c
    pop bc
    ld bc, $E1C2
    sub c
    ld [de], a
    pop hl
    sub c
    pop hl
    ld de, $1101
    add d
    ld h, d
    ld [c], a
    ld de, $61E1
    ld bc, $1162
    ld [hl+], a
    sub c
    ld de, $2101
    or d
    ld [de], a
    or c
    ld de, $1101
    sub c
    ld de, $22E1
    sub c
    ld hl, $2101
    or d
    ld [de], a
    or c
    ld de, $1101
    sub c
    ld de, $9122
    ld hl, $2101
    or d
    ld [de], a
    add c
    ld de, $1101
    add d
    ld [hl+], a
    sub c
    ld de, $2101
    sub d
    ld [de], a
    ld [c], a
    ld de, $11E1
    ld bc, $E211
    ld [de], a
    pop hl
    ld [de], a
    ld [c], a
    ld de, $11E1
    pop hl
    ld bc, $E211
    ld de, $11E1
    ld bc, $E211
    ld de, $11E1
    ld bc, $11E1
    ld [c], a
    ld de, $11E1
    ld [de], a
    ld [c], a
    ld de, $11E1
    ld bc, $E211
    ld de, $11E1
    ld bc, $5111
    add c
    ld [c], a
    ld de, $1121
    pop hl
    or c
    cp $FE
    rst $20
    rlca
    jp nz, $41C2

    sub d
    ld b, c
    jp nz, $9241

    ld b, c
    sub d
    cp $FE
    ldh [rTIMA], a
    ld c, c
    ld b, $EA
    sub d
    db $E3
    ld d, h
    inc b
    inc b
    ld [bc], a
    jp nz, $C202

    and d
    add h
    ld [hl], d
    ld [hl-], a
    ld d, b
    jp nz, $C202

    and d
    add h
    ld [hl], d
    ld [hl-], a
    ld e, h
    ld [hl], d
    add d
    db $E4
    inc [hl]
    inc d
    inc [hl]
    ld [de], a
    db $E3
    and d
    jp nz, $CCC0

    ld [bc], a
    ld e, b
    inc b
    inc b
    jp nz, $A402

    add h
    and c
    add c
    ld [hl], d
    ld d, b
    jp nz, $A402

    add h
    ld [hl], d
    ld [hl-], a
    ld [hl-], a
    ld d, c
    ld bc, $0151
    ld d, c
    ld bc, $0151
    ld [bc], a
    ld d, c
    ld bc, $0151
    ld [hl], h
    ld [hl], c
    ld bc, $0171
    ld [hl], c
    ld bc, $7282
    ld [hl-], a
    inc [hl]
    ld d, d
    ld e, h
    ld d, d
    add d
    ld d, d
    or d
    and d
    add d
    db $E4
    ld [hl-], a
    inc e
    db $E3
    call nz, $02A6
    and d
    add d
    and d
    ld [bc], a
    db $E4
    inc d
    db $E3
    jp nz, $C8CC

    ld [bc], a
    ld d, d
    db $E4
    ld sp, $3C01
    ld [de], a
    ld [bc], a
    ld [hl], $52
    db $E3
    add h
    db $E4
    inc d
    db $E3
    jp nz, $04C0

    inc b
    inc b
    inc b
    cp $FE
    ldh [rTIMA], a
    ld c, b
    ld b, $EA
    sbc b
    db $E3
    ld [bc], a
    ld [hl], d
    add d
    db $E4
    inc [hl]
    db $E3
    add d
    ld [hl], d
    ld d, d
    ld [c], a
    pop bc
    db $E3
    ld d, c
    ld [hl], c
    add c
    pop bc
    add c
    ld [hl], c
    ld d, c
    ld [c], a
    pop bc
    db $E3
    ld d, c
    ld [hl], c
    add c
    pop bc
    add c
    ld [hl], c
    ld d, c
    ld [c], a
    jp nz, Jump_00F_52E3

    add c
    jp nz, $83E4

    ld [hl], d
    ld [hl], c
    ld d, c
    ld sp, $E353
    or c
    ld bc, $81A1
    and c
    add e
    ld d, d
    ld [hl], d
    add h
    ld [de], a
    ld [c], a
    add d
    db $E3
    add h
    inc b
    add h
    and h
    call nz, $E4A4
    ld e, b
    db $E3
    jp nz, Jump_00F_52E4

    ld [hl], d
    ld d, d
    ld b, h
    db $E3
    jp nz, $C2E4

    and d
    ld [hl], d
    ld b, d
    db $E3
    jp nz, $068A

    db $E4
    ld a, [hl-]
    ld [de], a
    db $E3
    jp nz, $84A2

    ld [c], a
    jp nz, Jump_00F_52E3

    add c
    ld [hl], e
    ld [hl-], a
    ld [c], a
    and d
    call nz, Call_00F_52E3
    add d
    jp nz, $82E4

    ld [hl], d
    ld d, c
    ld [hl-], a
    ld e, e
    inc d
    inc a
    jp nz, $82A2

    adc h
    ld d, d
    ld [hl-], a
    db $E3
    or d
    and c
    add c
    ld d, d
    ld sp, $E253
    jp nz, $32E3

    ld e, h
    ld [hl], d
    ld d, d
    ld d, [hl]
    ld b, $A2
    or d
    jp nz, $E302

    pop bc
    ld bc, $31E4
    ld bc, $C1E3
    ld bc, $32E4
    ld [bc], a
    db $E3
    pop bc
    ld bc, $31E4
    ld bc, $C2E3
    db $E4
    ld d, d
    db $E3
    jp nz, $A2B2

    add d
    ld d, d
    rst $00
    rlca
    and d
    jp nz, Jump_000_12E4

    db $E3
    jp nz, Jump_000_12E4

    ld [hl-], a
    ld d, d
    add d
    ld [hl], d
    ld e, b
    ld a, [hl-]
    add h
    ld [hl], d
    ld b, d
    db $E3
    call nz, Call_00F_72A2
    cp $FE
    ldh [rTIMA], a
    ld d, h
    ld h, d
    pop hl
    ld d, d
    ld d, d
    ld [c], a
    ld d, d
    pop hl
    ld d, d
    ld [c], a
    ld [hl-], a
    ld d, d
    ld [bc], a
    pop hl
    ld d, d
    ld [bc], a
    ld d, d
    ld [c], a
    ld d, d
    pop hl
    ld d, h
    ld [c], a
    ld d, d
    pop hl
    ld [hl-], a
    inc d
    ld [de], a
    ld [c], a
    ld [de], a
    pop hl
    add c
    ld [c], a
    ld de, $E102
    ld [de], a
    ld [c], a
    ld [de], a
    pop hl
    inc d
    ld [de], a
    ld [c], a
    ld [de], a
    pop hl
    ld [de], a
    ld [de], a
    ld [c], a
    ld [de], a
    pop hl
    jp nz, $A2A4

    ld [c], a
    and d
    pop hl
    and h
    ld d, d
    add d
    and h
    and d
    ld [c], a
    and d
    pop hl
    and h
    and d
    or d
    call nz, $C2C4
    jp nz, Jump_000_12E1

    ld [hl+], a
    ld b, h
    ld b, d
    ld d, d
    ld [hl], h
    jp nz, Jump_00F_52C2

    ld [bc], a
    ld d, d
    ld [c], a
    ld d, d
    ld sp, $E153
    ld [hl-], a
    ld b, d
    ld d, h
    ld d, d
    ld [c], a
    ld d, d
    ld sp, $E153
    ld d, d
    ld [hl-], a
    ld [de], a
    ld [bc], a
    ld [de], a
    ld [c], a
    inc de
    ld de, $E102
    add h
    inc d
    ld [de], a
    ld [c], a
    ld [de], a
    pop hl
    call nz, $C2C2
    and h
    and d
    and d
    and d
    ld [bc], a
    and d
    and d
    call nz, $C2C2
    inc [hl]
    ld [c], a
    ld [hl-], a
    pop hl
    ld [hl-], a
    ld d, h
    ld [c], a
    ld d, d
    pop hl
    ld d, d
    add d
    ld [c], a
    add d
    pop hl
    add d
    and d
    ld [c], a
    and d
    pop hl
    and d
    jp nz, $C2E2

    pop hl
    jp nz, $3153

    ld [hl-], a
    inc d
    ld [de], a
    ld [c], a
    ld [de], a
    pop hl
    ld [de], a
    inc d
    ld [c], a
    ld [de], a
    pop hl
    ld [de], a
    inc d
    ld [c], a
    ld [de], a
    pop hl
    ld [de], a
    ld [de], a
    ld [c], a
    ld [de], a
    pop hl
    ld [hl-], a
    ld d, h
    ld d, d
    ld [c], a
    ld d, d
    pop hl
    ld d, d
    ld [c], a
    ld [hl-], a
    ld d, d
    ld [bc], a
    pop hl
    ld d, h
    ld d, d
    ld [c], a
    ld d, h
    pop hl
    ld d, d
    ld [c], a
    ld d, d
    pop hl
    ld [hl-], a
    inc d
    ld [de], a
    ld [c], a
    inc d
    inc d
    pop hl
    jp nz, Jump_000_1214

    ld [c], a
    ld [de], a
    pop hl
    ld [de], a
    ld [de], a
    ld [c], a
    ld [de], a
    pop hl
    ld [de], a
    inc [hl]
    ld [hl-], a
    ld [c], a
    ld [hl-], a
    pop hl
    inc [hl]
    ld [hl-], a
    ld [c], a
    ld [hl-], a
    pop hl
    ld b, h
    ld b, d
    ld [hl], d
    jp nz, $42E2

    pop hl
    jp nz, $4272

    cp $E7
    dec b
    call nz, Call_00F_4142
    ld b, c
    jp nz, Jump_00F_42C2

    jp nz, $42C4

    ld b, c
    ld b, c
    jp nz, Jump_00F_42C2

    jp nz, $42C4

    ld b, c
    ld b, c
    jp nz, Jump_00F_42C2

    jp nz, $42C4

    ld b, c
    ld b, c
    jp nz, Jump_00F_42C2

    jp nz, $42C4

    ld b, c
    ld b, c
    jp nz, Jump_00F_42C2

    jp nz, $42C4

    ld b, c
    ld b, c
    jp nz, Jump_00F_42C2

    jp nz, $C2C2

    jp nz, $C2C2

    jp nz, $C2C2

    jp nz, Jump_00F_42C2

    jp nz, Jump_00F_42C2

    jp nz, $FE42

    cp $E0
    dec b
    ld b, [hl]
    add [hl]
    ld [c], a
    and c
    db $E3
    ld hl, $A151
    db $E4
    ld hl, $A1E3
    ld [c], a
    ld sp, $A171
    db $E3
    ld sp, $3171
    ld [c], a
    ld b, c
    ld [hl], c
    pop bc
    db $E3
    ld b, c
    ld [hl], c
    ld b, c
    pop hl
    sub c
    ld [c], a
    ld de, $41E2
    sub c
    db $E3
    ld de, $91E2
    db $E3
    ld b, c
    ld de, $4191
    ld de, $E241
    sub c
    pop bc
    db $E3
    ld hl, $91E2
    db $E3
    ld d, c
    ld [c], a
    sub c
    db $E3
    ld b, c
    ld [c], a
    sub c
    db $E3
    ld d, c
    ld [c], a
    sub c
    db $E3
    ld [hl], c
    ld [c], a
    sub c
    db $E3
    ld d, c
    ld [c], a
    sub c
    db $E3
    ld b, c
    ld [c], a
    sub c
    db $E3
    ld d, c
    ld [c], a
    sub c
    db $E3
    ld hl, $91E2
    pop bc
    sub c
    db $E3
    ld hl, $91E2
    db $E3
    ld b, c
    ld [c], a
    sub c
    db $E3
    ld d, c
    ld [c], a
    sub c
    db $E3
    ld [hl], c
    ld [c], a
    sub c
    db $E3
    ld d, c
    ld [c], a
    sub c
    db $E3
    ld [hl], c
    ld [c], a
    sub c
    db $E3
    ld hl, $91E2
    db $E3
    ld d, c
    ld [c], a
    sub c
    db $E3
    ld b, c
    ld [c], a
    sub c
    db $E3
    ld d, c
    ld [c], a
    sub c
    db $E3
    ld [hl], c
    ld [c], a
    sub c
    db $E3
    ld d, c
    ld [c], a
    sub c
    db $E3
    ld b, c
    ld [c], a
    sub c
    db $E3
    ld d, c
    ld [c], a
    sub c
    db $E3
    ld hl, $91E2
    pop bc
    sub c
    db $E3
    ld hl, $91E2
    db $E3
    ld b, c
    ld [c], a
    sub c
    db $E3
    ld d, c
    ld [c], a
    sub c
    db $E3
    ld [hl], c
    ld [c], a
    sub c
    db $E3
    ld d, c
    ld [c], a
    sub c
    db $E3
    ld b, c
    ld [c], a
    sub c
    db $E3
    ld d, c
    ld [c], a
    and c
    db $E3
    ld hl, $A1E2
    db $E3
    ld d, c
    ld [c], a
    and c
    db $E3
    sub c
    ld [c], a
    and c
    db $E3
    ld [hl], c
    ld [c], a
    pop bc
    db $E3
    ld b, c
    ld [c], a
    pop bc
    db $E3
    pop bc
    ld [c], a
    pop bc
    db $E3
    ld [hl], c
    ld [c], a
    pop bc
    db $E3
    ld b, c
    ld [c], a
    pop bc
    db $E3
    ld d, c
    ld [c], a
    pop bc
    db $E3
    ld [hl], c
    ld [c], a
    pop bc
    db $E3
    sub c
    ld [c], a
    pop bc
    db $E3
    pop bc
    ld b, c
    and c
    ld b, c
    sub c
    ld b, c
    ld [hl], c
    ld b, c
    ld d, c
    ld hl, $2151
    ld [hl], c
    ld hl, $2171
    sub c
    ld hl, $2191
    ld [hl], c
    ld hl, $2151
    ld d, c
    ld hl, $2151
    ld [hl], c
    ld hl, $2171
    sub c
    ld hl, $2191
    ld [hl], c
    ld hl, $E271
    pop bc
    db $E3
    ld d, c
    ld hl, $2191
    db $E4
    ld hl, $21E3
    db $E4
    ld d, c
    db $E3
    ld hl, $91E4
    db $E3
    ld d, c
    db $E4
    ld d, c
    db $E3
    ld d, c
    db $E4
    ld hl, $51E3
    sub c
    ld d, c
    ld [hl], c
    ld [c], a
    pop bc
    db $E3
    pop bc
    ld [c], a
    pop bc
    db $E4
    ld b, c
    ld [c], a
    pop bc
    db $E4
    ld [hl], c
    ld [c], a
    pop bc
    db $E4
    pop bc
    db $E3
    ld b, c
    db $E4
    ld [hl], c
    db $E3
    ld b, c
    db $E4
    ld d, c
    db $E3
    ld d, c
    pop bc
    ld d, c
    db $E3
    ld [hl], c
    ld [c], a
    pop bc
    db $E3
    pop bc
    ld [c], a
    pop bc
    db $E4
    ld b, c
    ld [c], a
    pop bc
    db $E4
    ld [hl], c
    ld [c], a
    pop bc
    db $E4
    pop bc
    ld [c], a
    pop bc
    db $E4
    ld [hl], c
    ld [c], a
    pop bc
    db $E4
    ld d, c
    ld [c], a
    pop bc
    db $E3
    pop bc
    ld [c], a
    pop bc
    db $E3
    ld d, c
    ld hl, $21C1
    db $E4
    ld d, c
    db $E3
    ld hl, $91E4
    db $E3
    ld hl, $C1E4
    db $E3
    ld hl, $91E4
    db $E3
    ld hl, $51E4
    db $E3
    ld hl, $21C1
    and c
    ld [hl], c
    pop bc
    ld [hl], c
    db $E4
    ld hl, $71E3
    db $E4
    ld d, c
    db $E3
    ld [hl], c
    db $E4
    ld [hl], c
    db $E3
    sub c
    db $E4
    ld b, c
    db $E3
    sub c
    db $E4
    ld d, c
    db $E3
    sub c
    db $E4
    ld [hl], c
    db $E3
    sub c
    db $E4
    sub c
    db $E3
    and c
    db $E4
    ld hl, $A1E3
    db $E4
    ld b, c
    db $E3
    and c
    db $E4
    ld d, c
    db $E3
    and c
    db $E4
    ld [hl], c
    db $E3
    ld sp, $3171
    and c
    ld sp, $71E4
    db $E3
    ld sp, $91E4
    ld [c], a
    sub c
    sub c
    db $E3
    ld hl, $4111
    ld de, $1171
    sub c
    ld de, $21E4
    db $E3
    ld de, $41E4
    db $E3
    ld de, $71E4
    db $E3
    ld de, $91E4
    db $E3
    ld de, $A1E4
    db $E3
    ld de, $1141
    ld d, c
    ld de, $1171
    ld d, c
    ld de, $1141
    ld de, $E251
    sub c
    db $E3
    ld [hl], c
    ld [c], a
    sub c
    db $E3
    sub c
    ld [c], a
    sub c
    db $E4
    ld d, c
    ld [c], a
    sub c
    db $E4
    ld b, c
    ld [c], a
    sub c
    db $E4
    ld hl, $91E2
    db $E3
    sub c
    ld [c], a
    sub c
    db $E3
    ld d, c
    ld hl, $E2C1
    pop bc
    db $E3
    pop bc
    ld [c], a
    pop bc
    db $E3
    pop bc
    ld [c], a
    pop bc
    db $E3
    pop bc
    ld [c], a
    pop bc
    db $E3
    ld [hl], c
    ld [c], a
    pop bc
    db $E3
    ld [hl], c
    ld [c], a
    pop bc
    db $E3
    ld [hl], c
    ld [c], a
    pop bc
    db $E3
    ld [hl], c
    ld [c], a
    pop bc
    db $E3
    ld d, c
    ld hl, $2171
    sub c
    ld hl, $21E4
    db $E3
    ld hl, $41E4
    db $E3
    ld hl, $51E4
    db $E3
    ld hl, $41E4
    db $E3
    ld hl, $21E4
    db $E3
    ld hl, $2191
    sub c
    ld hl, $E291
    pop bc
    db $E4
    ld b, c
    ld [c], a
    pop bc
    db $E4
    ld b, c
    ld [c], a
    pop bc
    db $E4
    ld [hl], c
    ld [c], a
    pop bc
    db $E4
    ld [hl], c
    ld [c], a
    pop bc
    db $E4
    ld [hl], c
    ld [c], a
    pop bc
    db $E3
    ld d, c
    ld [c], a
    sub c
    db $E3
    ld [hl], c
    ld [c], a
    sub c
    db $E3
    sub c
    ld [c], a
    sub c
    db $E4
    ld d, c
    ld [c], a
    sub c
    db $E4
    ld b, c
    ld [c], a
    sub c
    db $E4
    ld hl, $91E2
    db $E3
    sub c
    ld [c], a
    sub c
    db $E3
    ld d, c
    ld hl, $E2C1
    pop bc
    db $E3
    pop bc
    ld [c], a
    pop bc
    db $E3
    pop bc
    ld [c], a
    pop bc
    db $E3
    pop bc
    ld [c], a
    pop bc
    db $E3
    ld [hl], c
    ld [c], a
    pop bc
    db $E3
    ld [hl], c
    ld [c], a
    pop bc
    db $E3
    ld [hl], c
    ld [c], a
    pop bc
    db $E3
    ld [hl], c
    ld [c], a
    pop bc
    db $E3
    ld d, c
    ld hl, $2171
    sub c
    ld hl, $21E4
    db $E3
    ld hl, $41E4
    db $E3
    ld hl, $51E4
    db $E3
    ld hl, $41E4
    db $E3
    ld hl, $21E4
    db $E3
    ld hl, $2191
    sub c
    ld hl, $E291
    pop bc
    db $E4
    ld b, c
    ld [c], a
    pop bc
    db $E4
    ld d, c
    ld [c], a
    pop bc
    db $E4
    ld [hl], c
    ld [c], a
    pop bc
    db $E4
    ld [hl], c
    ld [c], a
    pop bc
    db $E4
    ld [hl], c
    ld [c], a
    pop bc
    db $E3
    sub c
    ld hl, $2191
    db $E3
    sub c
    ld hl, $2191
    sub c
    ld hl, $21C1
    or c
    ld hl, $21A1
    sub c
    ld hl, $2191
    sub c
    ld hl, $2191
    sub c
    ld hl, $21C1
    or c
    ld hl, $21A1
    cp $FE
    ldh [rTIMA], a
    ld b, a
    add l
    push hl
    ld [hl+], a
    db $E4
    jp nz, Jump_00F_7692

    sub d
    ld [hl], d
    ld d, d
    sub [hl]
    ld [bc], a
    ld [c], a
    sub d
    jp nz, Jump_000_22E3

    ld [bc], a
    ld [hl+], a
    ld d, d
    ld [hl+], a
    ld [hl], d
    ld d, d
    ld [hl], d
    add d
    ld [hl], h
    ld d, d
    sub h
    ld [hl], d
    ld d, d
    ld [hl+], a
    ld [bc], a
    ld [hl+], a
    ld d, d
    ld [hl+], a
    db $E4
    ld [hl+], a
    db $E3
    jp nz, $E4C2

    ld [hl+], a
    db $E3
    add d
    ld [hl], d
    ld d, d
    inc h
    call nz, $92A2
    ld [hl+], a
    ld [hl+], a
    ld [c], a
    jp nz, Jump_000_22E3

    ld b, d
    ld d, d
    sub d
    ld [hl], d
    ld d, d
    ld b, d
    ld d, d
    ld b, d
    ld [hl+], a
    ld [c], a
    jp nz, Jump_000_22E3

    sub d
    ld [hl+], a
    or d
    ld [hl+], a
    jp nz, $B222

    sub d
    ld [bc], a
    sub d
    or d
    ld [hl+], a
    jp nz, $B222

    sub d
    jp nz, $92A2

    and h
    sub d
    ld [hl], d
    sub h
    ld [hl], d
    ld d, d
    halt
    ld [c], a
    jp nz, $C1C1

    db $E3
    jp nz, $92A2

    and h
    sub d
    ld [hl], d
    ld [hl], h
    ld d, d
    ld b, d
    ld d, h
    ld d, d
    ld [hl], d
    sub d
    ld [hl+], a
    ld b, d
    ld d, d
    ld b, h
    ld d, d
    ld [hl], d
    ld d, h
    ld [hl], d
    sub d
    ld [hl], h
    jp nz, $94A2

    sub c
    sub c
    db $E4
    ld [de], a
    db $E3
    sub c
    sub c
    db $E4
    ld b, d
    db $E3
    sub c
    sub c
    db $E4
    and d
    db $E3
    sub c
    sub c
    sub d
    db $E4
    ld b, d
    db $E4
    ld [hl], d
    ld d, d
    ld [hl], d
    ld d, d
    ld b, d
    ld [de], a
    ld d, d
    ld b, d
    ld [hl+], a
    db $E3
    sub h
    db $E4
    ld [hl+], a
    ld b, d
    ld d, d
    sub d
    ld [hl], d
    ld d, d
    ld [hl], d
    ld d, d
    ld b, d
    ld [hl+], a
    db $E3
    jp nz, Jump_00F_52E4

    ld b, d
    ld [hl+], a
    db $E3
    sub [hl]
    inc b
    db $E3
    ld [hl+], a
    ld b, d
    ld d, d
    sub d
    ld [hl], d
    ld d, d
    ld [hl], d
    db $E3
    jp nz, Jump_00F_52E4

    ld b, d
    ld [hl+], a
    db $E3
    sub h
    db $E4
    ld [hl+], a
    ld b, d
    ld d, d
    sub d
    ld [hl], d
    ld d, d
    ld [hl], d
    ld d, d
    ld b, d
    ld [hl+], a
    db $E3
    jp nz, Jump_00F_52E4

    ld b, d
    ld [hl+], a
    db $E3
    sub [hl]
    inc b
    ld [bc], a
    db $E4
    ld [hl+], a
    ld b, d
    ld d, d
    ld [hl], d
    jp nz, $96A2

    sub b
    inc c
    cp $FE
    ldh [rTIMA], a
    ld d, h
    add h
    pop hl
    and d
    jp nz, $3222

    ld d, d
    ld [hl], d
    ld [hl-], a
    ld d, d
    ld [hl], d
    sub d
    sub d
    sub d
    sub d
    sub d
    sub c
    sub c
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld hl, $2221
    ld hl, $2221
    ld hl, $2221
    ld hl, $2221
    ld hl, $2221
    ld hl, $C221
    pop bc
    pop bc
    and d
    and c
    and c
    and d
    and c
    and c
    and d
    and c
    and c
    and d
    and c
    and c
    and d
    and c
    and c
    and d
    and c
    and c
    and d
    and c
    and c
    and d
    sub c
    sub c
    ld [hl], d
    ld [hl], c
    ld [hl], c
    ld [hl], d
    ld [hl], c
    ld [hl], c
    ld [hl], d
    ld [hl], c
    ld [hl], c
    ld [hl], d
    ld [hl], c
    ld [hl], c
    sub d
    sub c
    sub c
    sub d
    sub c
    sub c
    sub d
    sub c
    sub c
    sub d
    sub c
    sub c
    ld [hl+], a
    ld hl, $2221
    ld hl, $2221
    ld hl, $C221
    ld de, $2211
    ld hl, $2221
    ld hl, $2221
    ld hl, $C221
    ld de, $A211
    and c
    and c
    and d
    and c
    and c
    and d
    and c
    and c
    and d
    and c
    and c
    and d
    and c
    and c
    and d
    and c
    and c
    and d
    and c
    and c
    and d
    and c
    and c
    sub d
    sub c
    sub c
    sub d
    sub c
    sub c
    sub d
    sub c
    sub c
    sub d
    sub c
    sub c
    ld [hl+], a
    ld hl, $2221
    ld hl, $2221
    ld hl, $2221
    ld hl, $A221
    and c
    and c
    and d
    and c
    and c
    sub d
    sub c
    sub c
    sub d
    sub c
    sub c
    ld [hl], d
    ld [hl], c
    ld [hl], c
    ld [hl], d
    ld [hl], c
    ld [hl], c
    ld d, d
    ld d, c
    ld d, c
    ld d, d
    ld d, c
    ld d, c
    ld b, d
    ld b, c
    ld b, c
    ld b, d
    ld b, c
    ld b, c
    ld b, d
    ld b, c
    ld b, c
    ld b, d
    ld b, c
    ld b, c
    sub d
    sub c
    sub c
    sub d
    sub c
    sub c
    sub d
    sub c
    sub c
    sub d
    sub c
    sub c
    ld [hl+], a
    ld hl, $2221
    ld hl, $2221
    ld hl, $2221
    ld hl, $C221
    pop bc
    pop bc
    jp nz, $C1C1

    jp nz, $C1C1

    jp nz, $C1C1

    or d
    or c
    or c
    or d
    or c
    or c
    or d
    or c
    or c
    or d
    or c
    or c
    and d
    and c
    and c
    and d
    and c
    and c
    jp nz, $C1C1

    jp nz, $C1C1

    ld [hl+], a
    ld hl, $2221
    ld hl, $2221
    ld hl, $2221
    ld hl, $C221
    pop bc
    pop bc
    jp nz, $C1C1

    jp nz, $C1C1

    jp nz, $C1C1

    or d
    or c
    or c
    or d
    or c
    or c
    or d
    or c
    or c
    or d
    or c
    or c
    and d
    and c
    and c
    and d
    and c
    and c
    jp nz, $C1C1

    jp nz, $C1C1

    ld [hl+], a
    ld hl, $2221
    pop bc
    ld hl, $2101
    ld d, c
    ld hl, $8171
    ld [hl], c
    ld d, c
    ld [hl+], a
    ld hl, $2221
    pop bc
    ld de, $2101
    ld d, c
    ld hl, $8171
    ld [hl], c
    ld d, c
    cp $FE
    rst $20
    dec b
    pop bc
    pop bc
    pop bc
    pop bc
    sub d
    pop bc
    pop bc
    pop bc
    pop bc
    ld [hl-], a
    pop bc
    pop bc
    pop bc
    pop bc
    jp nz, $C2C2

    jp nz, $C1C2

    ld b, c
    pop bc
    pop bc
    pop bc
    pop bc
    jp nz, $C1C1

    ei
    jp nz, $C1C1

    jp nz, $C1C1

    jp nz, $C1C1

    jp nz, $C1C1

    ei
    rlca
    jp nz, $C1C2

    pop bc
    pop bc
    pop bc
    jp nz, $C1C1

    ei
    jp nz, $C1C1

    jp nz, $C1C1

    jp nz, $C1C1

    jp nz, $C1C1

    ei
    inc bc
    jp nz, $C1C1

    jp nz, $C1C1

    jp nz, $C1C1

    jp nz, $C2C2

    jp nz, $C2C2

    jp nz, $C1C1

    jp nz, $C2C2

    jp nz, $C2C2

    jp nz, $C1C1

    pop bc
    pop bc
    pop bc
    pop bc
    pop bc
    pop bc
    pop bc
    pop bc
    pop bc
    pop bc
    pop bc
    pop bc
    pop bc
    pop bc
    pop bc
    pop bc
    jp nz, $C2C2

    pop bc
    pop bc
    jp nz, $C1C1

    pop bc
    pop bc
    pop bc
    pop bc
    ei
    jp nz, $C1C1

    jp nz, $C1C1

    jp nz, $C1C1

    jp nz, $C1C1

    ei
    rlca
    jp nz, $C1C1

    jp nz, $C1C1

    jp nz, $C1C1

    pop bc
    pop bc
    pop bc
    pop bc
    jp nz, $C1C1

    pop bc
    pop bc
    jp nz, $C1C1

    pop bc
    sub c
    sub c
    sub c
    sub c
    sub c
    jp nz, $C1C1

    pop bc
    pop bc
    jp nz, $9191

    sub c
    sub c
    db $FE

    db $EE, $58, $E0, $02, $87, $78, $F3, $E2, $44, $64, $84, $94, $84, $64, $F2, $E7
    db $06, $82, $E3, $12, $E7, $02, $44, $84, $E4, $14, $F1, $E7, $06, $E4, $34, $14
    db $14, $E7, $03, $F0, $E3, $61, $81, $91, $B1, $E4, $11, $31, $41, $61, $E7, $06
    db $88, $64, $14, $F3, $82

    db $F4
    add d
    push af
    add d
    or $82
    rst $38

    db $E0, $02, $85, $88, $E2, $14, $34, $44, $64, $44, $34, $14, $34, $44, $84, $E3
    db $14, $44, $34, $14, $84, $34, $14, $84, $64, $14, $44, $E7, $03, $41, $61, $81
    db $91, $B1, $E4, $11, $21, $41, $E7, $06, $EF, $01, $68, $E5, $F2, $E7, $02, $14
    db $E4, $B4, $64, $44, $64

    inc d
    di
    push hl
    inc d
    db $E4
    or h
    ld h, h
    ld b, h
    ld h, h
    inc d
    db $F4
    push hl
    inc d
    db $E4
    or h
    ld h, h
    ld b, h
    ld h, h
    inc d
    rst $38

    db $E0, $06, $32, $4F, $E2, $18, $E1, $B8, $E1, $A8, $98, $28, $F1, $28, $F2, $28
    db $F3

    jr z, @+$01

    db $E7, $02, $04, $04, $04, $24, $24, $24, $24, $24, $24, $24, $24, $24, $04, $04
    db $04, $24, $24, $24, $24, $24, $24, $24, $24, $24, $90, $FF, $E0, $0F, $47, $22
    db $E3, $A6, $E4, $54, $E3, $C2, $E4, $33, $11, $E3, $C2

    and h
    and c
    pop bc
    db $E4
    inc d
    db $E3
    pop bc
    and c
    add h
    ld h, d
    ld d, d
    xor d
    db $E4
    and h
    add d
    ld d, h
    ld [de], a
    ld [hl-], a
    and d
    add d
    ld d, h
    ld [de], a
    ld [hl], $32
    ld d, d
    ld h, d
    add [hl]
    xor b
    db $E3
    ld [hl-], a
    ld [hl-], a
    ld b, [hl]
    ld [bc], a
    ld h, d
    ld h, d
    add h
    or d
    ldh [rIF], a
    ld h, e
    ld [hl-], a
    push hl
    ld bc, $2151
    db $E4
    and c
    ld h, c
    ld d, c
    ld hl, $51E4
    ld hl, $A1E3
    ld h, c
    ld d, c
    db $21
    rst $38

    db $E0, $0F, $43, $36, $EF, $01, $01, $E3, $A6, $E4, $54, $E3, $C2, $E4, $33, $11
    db $E3, $C2

    and h
    and c
    pop bc
    db $E4
    inc d
    db $E3
    pop bc
    and c
    add h
    ld h, d
    ld d, d
    xor d
    db $E4
    and h
    add d
    ld d, h
    ld [de], a
    ld [hl-], a
    and d
    add d
    ld d, h
    ld [de], a
    ld [hl], $32
    ld d, d
    ld h, d
    add l
    ld h, $E0
    rrca
    ld h, l
    ld [hl-], a
    db $E3
    ld sp, $A1E2
    db $E3
    ld sp, $A1E2
    db $E3
    ld sp, $A1E2
    db $E3
    ld de, $81E2
    db $E3
    ld de, $81E2
    db $E3
    ld de, $81E2
    db $E3
    ld sp, $A1E2
    db $E3
    ld sp, $A1E2
    db $E3
    ld sp, $A1E2
    db $E3
    ld b, c
    ld [c], a
    or c
    db $E3
    ld b, c
    ld [c], a
    or c
    db $E3
    ld b, c
    ld [c], a
    or c
    push hl
    ld d, c
    ld hl, $A1E4
    ld h, c
    ld d, c
    ld hl, $51E4
    ld hl, $A1E3
    ld h, c
    ld d, c
    ld hl, $08E7
    and d
    di
    and d
    db $F4
    and d
    push af
    and d
    rst $38

    db $FE, $E0, $0F, $44, $34, $E1, $A1, $E2, $51, $A1, $C1, $E3, $11, $51, $E1, $81
    db $E2, $51, $81, $C1, $E3, $51, $81, $E1, $71, $E2, $31, $71, $A1, $E3, $31

    ld [hl], c
    pop hl
    ld h, c
    ld [c], a
    ld de, $A161
    db $E3
    ld de, $E161
    ld sp, $E2A1
    ld h, c
    and c
    db $E3
    ld de, $E161
    ld d, c
    pop bc
    ld [c], a
    add c
    pop bc
    db $E3
    ld sp, $E181
    and c
    ld [c], a
    ld d, c
    add c
    pop bc
    db $E3
    ld sp, $E381
    and c
    ld d, c
    ld de, $C1E2
    db $E3
    ld de, $51E2
    pop hl
    or c
    ld [c], a
    ld h, c
    and c
    db $E3
    ld sp, $3161
    pop hl
    and c
    ld [c], a
    ld d, c
    add c
    db $E3
    ld de, $8151
    pop hl
    add c
    ld [c], a
    ld sp, $B161
    db $E3
    ld sp, $11E1
    pop hl
    ld h, c
    ld [c], a
    ld de, $8161
    and c
    db $E3
    ld de, $51E1
    or c
    ld [c], a
    ld sp, $B181
    db $E3
    ld sp, $3181
    ld [c], a
    or c
    add c
    db $E3
    ld sp, $B1E2
    pop hl
    ld b, c
    or c
    ld [c], a
    ld sp, $3181
    pop hl
    or c
    and c
    ld [c], a
    ld d, c
    and c
    ld d, c
    pop hl
    and c
    and c
    pop hl
    ld sp, $3131
    ld sp, $3131
    ld sp, $3131
    ld sp, $A1A1
    pop hl
    ld a, [hl-]
    and c
    and c
    ccf
    rst $38

    db $FF, $EE, $08, $E0

    ld b, $48
    ld h, [hl]
    ld [$FE92], a
    db $E4
    jr c, jr_00F_6273

    db $E3
    or h
    and c
    ld [c], a
    and c
    ld h, c
    db $E3
    ld sp, $3138
    ld sp, $4132
    ld [c], a
    add c
    or c
    db $E3
    or c
    cp b
    or c

jr_00F_6273:
    db $E4
    ld [de], a
    db $E3
    or c
    and c
    ld h, c
    ld d, c
    ld sp, $5138
    add c
    db $E4
    ld de, $81E3
    db $E4
    jr c, jr_00F_6299

    db $E3
    or c
    db $E4
    ld [de], a
    db $E3
    or c
    and e
    ld sp, $3138
    ld sp, $4332
    or c
    cp b
    or c
    db $E4
    ld [de], a
    db $E3
    or c

jr_00F_6299:
    and e
    db $E4
    ld sp, $3238
    db $E3
    ld [hl-], a
    ld [hl-], a
    ld de, $4831
    ld b, c
    ld h, c
    add c
    and c
    cp b
    and c
    or c
    db $E4
    ld de, $6131
    ld b, d
    ld h, c
    inc sp

Jump_00F_62B2:
    db $E3
    add c
    adc b
    add c
    and d
    or c
    db $E4
    inc sp
    db $E3
    add c
    adc b
    ld [bc], a
    ld [hl-], a
    ld [hl-], a
    ld de, $4631
    ld b, c
    ld h, c
    add c
    and c
    or c
    db $E4
    ld de, $1131
    add d
    jr c, @+$13

    ld sp, $6141
    add e
    add c
    add a
    ld h, c
    ld h, c
    or d
    sub c
    adc h
    db $E3
    add c
    and c
    or c
    db $E4
    ld de, $FEFE

Jump_00F_62E2:
    ldh [rTMA], a

Jump_00F_62E4:
    ld b, h
    ld h, e
    db $E3
    ld h, [hl]
    ld [hl-], a
    ld b, e
    add e
    ld b, d
    ld [c], a
    ld sp, $6151
    and c
    db $E3
    ld sp, $6151
    and c
    ld sp, $6151
    and c
    db $E4
    ld sp, $6151
    and c
    db $E3
    add c
    ld sp, $E211
    add c
    db $E3
    add c
    ld h, c
    ld b, c
    ld de, $A1B1
    add c
    ld b, c
    db $E4
    ld b, c
    ld sp, $E311
    add c
    ld bc, $A1E1
    ld [c], a
    ld sp, $6151
    and c
    ld h, c
    ld sp, $31E3
    ld [c], a
    or c
    ld h, c
    ld sp, $51E3
    ld de, $81E2
    ld d, c
    db $E3
    ld l, b
    rst $20
    ld [bc], a
    ld c, b
    ld l, b
    ld c, b
    rst $20
    ld b, $E2
    ld sp, $6151
    and c
    db $E3
    ld sp, $6151
    and c
    ld sp, $6151
    and c
    db $E4
    ld sp, $6151
    and c
    ld [c], a
    add c
    ld de, $8141
    db $E3
    ld de, $81E2
    ld b, c
    ld de, $81B1
    ld b, c
    ld de, $11E3
    ld [c], a
    add c
    ld b, c
    ld de, $5131
    ld h, c
    and c
    db $E3
    ld sp, $6151
    and c
    ld h, c
    ld d, c
    ld sp, $A1E2
    ld h, c
    ld d, c
    ld sp, $A1E1
    ld [c], a
    ld b, c
    ld h, c
    add c
    db $E3
    ld de, $32E4
    ld de, $4131
    db $E3
    add c
    db $E4
    ld de, $4131
    ld sp, $E311
    add c
    ld [c], a
    ld de, $81E1
    ld [c], a
    ld de, $4131
    ld de, $4131
    add c
    db $E3
    ld de, $4131
    add c
    ld b, c
    ld sp, $E111
    add c
    ld [c], a
    ld sp, $A181
    push hl
    inc sp
    db $E4
    add c
    db $E3
    add c
    ld sp, $31A1
    or c
    ld sp, $11E4
    db $E3
    ld sp, $81E1
    ld [c], a
    ld sp, $A181
    push hl
    inc sp
    db $E4
    add c
    db $E3
    add c
    ld sp, $31A1
    or c
    ld sp, $11E4
    db $E3
    ld sp, $11E1
    add c
    ld [c], a
    ld sp, $8141
    db $E3
    ld sp, $8141
    or c
    add c
    ld b, c
    ld de, $3111
    ld de, $B1E2
    pop hl
    sub c
    ld [c], a
    ld b, c
    sub c
    or c
    db $E3
    ld de, $8141
    or c
    db $E4
    ld de, $B1E3
    add c
    ld b, c
    db $E4
    ld b, c
    db $E3
    or c
    add c
    ld b, c
    pop hl
    add c
    ld [c], a
    ld de, $B161
    db $E3
    ld b, c
    sub c
    db $E4
    ld hl, $B161
    ld h, c
    ld hl, $B1E3
    ld h, c
    ld de, $B1E2
    ld h, c
    pop hl
    ld h, c
    pop bc
    ld [c], a
    ld sp, $E181
    add c
    pop bc
    ld [c], a
    ld sp, $8181
    pop bc
    db $E3
    ld sp, $E281
    add c
    pop bc
    db $E3
    ld sp, $FE81
    cp $E0
    ld b, $E4
    and h
    pop hl
    inc [hl]
    rst $20
    ld [bc], a
    inc [hl]
    inc [hl]
    inc [hl]
    rst $20
    ld b, $32
    and d
    ld [hl-], a
    and d
    inc [hl]
    rst $20
    ld [bc], a
    inc [hl]
    inc [hl]
    inc [hl]
    rst $20
    ld b, $32
    and d
    ld [hl-], a
    and d
    inc d
    rst $20
    ld [bc], a
    inc d
    inc d
    inc d
    rst $20
    ld b, $12
    add d
    ld [de], a
    add d
    inc [hl]
    rst $20
    ld [bc], a
    inc [hl]
    inc [hl]
    inc [hl]
    rst $20
    ld b, $B2
    or d
    ld [de], a
    ld [de], a
    inc [hl]
    rst $20
    ld [bc], a
    inc [hl]
    inc [hl]
    inc [hl]
    rst $20
    ld b, $32
    and d
    ld [hl-], a
    and d
    inc [hl]
    rst $20
    ld [bc], a
    inc [hl]
    inc [hl]
    inc [hl]
    rst $20
    ld b, $32
    and d
    ld [hl-], a
    and d
    inc d
    rst $20
    ld [bc], a
    inc d
    inc d
    inc d
    rst $20
    ld b, $12
    add d
    ld [de], a
    add d
    ld [hl-], a
    and d
    ld [hl-], a
    and d
    ld [hl-], a
    ld [hl-], a
    ld sp, $6151
    and c
    ld [de], a
    ld [de], a
    ld [de], a
    add d
    ld [de], a
    add d
    ld [de], a
    add d
    ld [de], a
    ld [de], a
    ld [de], a
    add d
    ld [de], a
    add d
    ld [de], a
    add d
    add h
    rst $20
    ld [bc], a
    add h
    add h
    add h
    rst $20
    ld b, $64
    rst $20
    ld [bc], a
    ld h, h
    ld h, h
    ld h, h
    rst $20
    ld b, $44
    rst $20
    ld [bc], a
    ld b, h
    ld b, h
    ld b, h
    rst $20
    ld b, $34
    rst $20
    ld [bc], a
    inc [hl]
    ld b, h
    inc [hl]
    rst $20
    ld b, $14
    rst $20
    ld [bc], a
    inc d
    inc d
    inc d
    rst $20
    ld b, $12
    add d
    ld [de], a
    add d
    sub h
    rst $20
    ld [bc], a
    sub h
    sub h
    sub h
    rst $20
    ld b, $92
    ld b, d
    sub d
    ld b, d
    add h
    ld [bc], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    rst $20
    ld [bc], a
    inc d
    ld b, h
    sub h
    rst $20
    ld b, $82
    add d
    add d
    add d
    add d
    add d
    rst $20
    ld [bc], a
    add h
    ld h, h
    ld b, h
    cp $FE
    rst $20
    ld b, $C4
    rst $20
    ld [bc], a
    sub h
    sub h
    sub h
    rst $20
    ld b, $32
    ld [hl-], a
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    call nz, $02E7
    sub h
    sub h
    sub h
    rst $20
    ld b, $32
    ld [hl-], a
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    rst $20
    ld b, $C4
    rst $20
    ld [bc], a
    sub h
    sub h
    sub h
    rst $20
    ld b, $32
    ld [hl-], a
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    call nz, $02E7
    sub h
    sub h
    sub h
    rst $20
    ld b, $32
    ld [hl-], a
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    call nz, $02E7
    sub h
    sub h
    sub h
    rst $20
    ld b, $32
    ld [hl-], a
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    call nz, $02E7
    sub h
    sub h
    sub h
    rst $20
    ld b, $32
    ld [hl-], a
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    rst $20
    ld b, $C4
    rst $20
    ld [bc], a
    sub h
    sub h
    sub h
    rst $20
    ld b, $32
    ld [hl-], a
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    call nz, $02E7
    sub h
    sub h
    sub h
    rst $20
    ld b, $32
    ld [hl-], a
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    ld hl, $2121
    ld hl, $3232
    jp nz, Jump_00F_4122

    ld b, c
    ld b, c
    ld b, c
    ld hl, $2121
    ld hl, $3232
    jp nz, Jump_00F_4122

    ld b, c
    ld b, c
    ld b, c
    ld hl, $2121
    ld hl, $3232
    jp nz, Jump_00F_4122

    ld b, c
    ld b, c
    ld b, c
    ld hl, $2121
    ld hl, $3232
    jp nz, Jump_00F_4122

    ld b, c
    ld b, c
    ld b, c
    ld hl, $2121
    ld hl, $3232
    jp nz, Jump_00F_4122

    ld b, c
    ld b, c
    ld b, c
    ld hl, $2121
    ld hl, $4242
    ld [hl-], a
    ld [hl-], a
    ld [hl+], a
    ld hl, $C421
    rst $20
    ld [bc], a
    sub h
    sub h
    sub h
    rst $20
    ld b, $32
    ld [hl-], a
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    ld [$2140], a
    ld hl, $2121
    ld hl, $2121
    ld hl, $9191
    sub c
    sub c
    sub c
    sub c
    sub c
    sub c
    ld [$FE10], a
    cp $E0
    ld b, $88
    push bc
    ld [c], a
    and d
    db $E3
    ld [hl-], a
    ld [hl], $51
    ld h, c
    add d
    or d
    and d
    ld [hl-], a
    inc [hl]
    rst $20

jr_00F_65D1:
    ld [bc], a
    jr z, jr_00F_660C

    ld e, b
    rst $20
    ld b, $62
    or d
    or [hl]
    db $E4
    ld de, $4221
    ld [hl], d
    ld h, d
    db $E3
    or d
    or h
    rst $20
    ld [bc], a
    xor b
    cp b
    db $E4
    jr jr_00F_65D1

    ld b, $92
    ld [hl+], a
    sub [hl]
    pop bc
    push hl
    ld hl, $C2E4
    or c
    sub c
    add d
    ld b, d
    ld c, b
    ld de, $4121
    ld h, c
    ld [hl], d
    ld b, d
    push hl
    ld b, d
    ld [hl+], a
    rst $20
    ld [bc], a
    jr jr_00F_662D

    ld c, b
    rst $20
    ld b, $E4
    ld h, d
    db $E3
    or d

jr_00F_660C:
    db $E4
    ld h, [hl]
    ld b, c
    ld h, c
    ld [hl], d
    sub c
    ld [hl], c
    db $E4
    ld h, d
    db $E3
    or d
    db $E4
    ld h, [hl]
    ld b, c
    ld h, c
    ld [hl], d
    sub c
    ld [hl], c
    and d
    ld [hl-], a

jr_00F_6620:
    and [hl]
    add c
    and c
    or d
    push hl
    ld de, $B1E4
    and d
    ld [hl-], a
    and [hl]
    add c
    and c

jr_00F_662D:
    or d
    push hl
    ld de, $B1E4
    rst $20
    ld [bc], a
    push hl
    jr c, jr_00F_665F

    db $E4
    xor b
    push hl
    jr jr_00F_6620

    cp b
    adc b
    rst $20
    ld b, $A2
    and d
    rst $20
    ld [bc], a
    push hl
    jr c, jr_00F_666F

    db $E4
    xor b
    push hl
    jr @-$1A

    cp b
    adc b
    db $E3
    ld a, b
    ld l, b
    ld c, b
    cp b
    xor b
    adc b
    rst $20
    ld b, $E3
    and c
    add c
    ld h, c
    add c
    and c
    or c
    db $E4

jr_00F_665F:
    ld de, $4121
    ld hl, $2111
    ld b, c
    ld h, c
    add c
    and c
    db $E3
    or d
    db $E4
    ld [de], a
    ld [hl+], a
    ld h, d

jr_00F_666F:
    or d
    sub c
    ld [hl], c
    db $E3
    sub d
    or d
    db $E4
    ld [de], a
    ld b, d
    sub d
    ld [hl], c
    ld h, c
    db $E3
    ld [hl], d
    sub d
    or d
    db $E4
    ld [hl+], a
    ld [hl], d
    ld h, c
    ld d, c
    ld h, c
    ld d, c
    ld h, c
    ld [hl], c
    ld h, c
    ld b, c
    ld hl, $2111
    ld de, $B1E3
    sub c
    db $E3
    or d
    db $E4
    ld [de], a
    ld [hl+], a
    ld h, d
    or d
    sub c
    ld [hl], c
    db $E3
    sub d
    or d
    db $E4
    ld [de], a
    ld b, d
    sub d
    ld [hl], c
    ld h, c
    db $E3
    ld [hl], d
    sub d
    or d
    db $E4
    ld [hl+], a
    ld [hl], d
    ld h, c
    ld d, c
    ld h, d
    ld h, c
    ld h, c
    ld h, d
    ld [hl], d
    ld [hl+], a
    ld [hl], d
    ld h, d
    ld h, c
    ld h, c
    ld h, d
    ld [hl], d
    sub d
    ld [hl], d
    ld h, d
    ld h, c
    ld h, c
    ld h, d
    ld [hl], d
    ld [hl+], a
    ld [hl], d
    ld h, c
    ld de, $A1E3
    ld h, c
    and c
    or c
    db $E4
    ld de, $4121
    ld h, c
    add c
    and c
    cp $FE
    ldh [rTMA], a
    add a
    sub l
    ld [c], a
    ld h, d
    and d
    and h
    add d
    and d
    or d
    db $E3
    ld [hl+], a
    ld [hl-], a
    ld [c], a
    and d
    and h
    add d
    and d
    or d
    db $E3
    ld [hl+], a
    ld [hl+], a
    ld [c], a
    or d
    db $E3
    ld h, d
    ld [hl+], a
    ld [de], a
    ld [c], a
    and d
    db $E3
    ld [de], a
    ld hl, $2241
    ld [c], a
    or d
    db $E3
    ld [hl+], a
    ld h, d
    ld [hl], d
    ld h, d
    ld b, d
    ld [hl], d
    ld d, d
    ld [c], a
    sub d
    db $E3
    ld [hl+], a
    ld b, d
    ld d, d
    ld [hl], d
    sub d
    ld d, d
    ld b, d
    ld [c], a
    add d
    or d
    db $E3
    ld b, d
    add d
    or d
    db $E4
    ld b, d
    db $E3
    add d
    ld [hl], d
    ld [c], a
    ld [hl], d
    and d
    db $E3
    ld b, d
    ld [hl], d
    and d
    ld b, d
    ld [hl], d
    ld hl, $B1E1
    db $E3
    ld hl, $B1E1
    db $E3
    ld hl, $B1E1
    db $E3
    ld hl, $B1E1
    db $E3
    ld hl, $B1E1
    db $E3
    ld hl, $B1E1
    db $E3
    ld b, c
    pop hl
    or c
    db $E3
    ld b, c
    pop hl
    or c
    db $E3
    ld hl, $B1E1
    db $E3
    ld hl, $B1E1
    db $E3
    ld hl, $B1E1
    db $E3
    ld hl, $B1E1
    db $E3
    ld hl, $B1E1
    db $E3
    ld hl, $B1E1
    db $E3
    ld b, c
    pop hl
    or c
    db $E3
    ld b, c
    pop hl
    or c
    db $E3
    ld h, c
    ld [c], a
    ld sp, $61E3
    ld [c], a
    ld sp, $61E3
    ld [c], a
    ld sp, $61E3
    ld [c], a
    ld sp, $61E3
    ld [c], a
    ld sp, $61E3
    ld [c], a
    ld sp, $81E3
    ld [c], a
    ld sp, $81E3
    ld [c], a
    ld sp, $61E3
    ld [c], a
    ld sp, $61E3
    ld [c], a
    ld sp, $61E3

jr_00F_6787:
    ld [c], a
    ld sp, $61E3
    ld [c], a
    ld sp, $61E3
    ld [c], a
    ld sp, $61E3
    ld [c], a
    ld sp, $81E3

jr_00F_6797:
    ld [c], a
    ld sp, $81E3
    ld [c], a
    ld sp, $02E7
    jr c, jr_00F_67C9

    pop hl
    xor b
    ld [c], a
    jr jr_00F_6787

    cp b
    adc b
    rst $20
    ld b, $A2
    and d
    rst $20
    ld [bc], a
    ld [c], a
    jr c, jr_00F_67D9

    pop hl
    xor b
    ld [c], a
    jr jr_00F_6797

    cp b
    adc b
    rst $20
    ld b, $E3
    ld b, c
    ld [c], a
    or c
    ld [hl], c
    or c
    db $E3
    ld b, c
    ld [c], a
    or c
    ld [hl], c
    or c
    db $E3
    ld [hl], c
    ld b, c

jr_00F_67C9:
    ld [c], a
    or c
    db $E3
    ld b, c
    db $E3
    ld [hl], c
    ld b, c
    ld [c], a
    or c
    db $E3
    ld b, c
    ld [c], a
    and d
    and d
    ld [c], a
    ld h, c

jr_00F_67D9:
    pop hl
    ld h, c
    ld [c], a
    ld h, c
    pop hl
    ld h, c
    ld [c], a
    ld h, c
    pop hl
    ld h, c
    ld [c], a
    ld h, c
    pop hl
    ld h, c
    ld [c], a
    ld h, c
    pop hl
    ld h, c
    ld [c], a
    ld h, c
    pop hl
    ld h, c
    ld [hl], c
    ld [c], a
    or c
    pop hl
    ld [hl], c
    ld [c], a
    or c
    pop hl
    ld [hl], c
    ld [c], a
    or c
    pop hl
    ld [hl], c
    ld [c], a
    or c
    pop hl
    ld [hl], c
    ld [c], a
    or c
    pop hl
    ld [hl], c
    ld [c], a
    or c
    pop hl
    ld h, c
    ld [c], a
    sub c
    pop hl
    ld h, c
    ld [c], a
    sub c
    pop hl
    ld h, c
    ld [c], a
    sub c
    pop hl
    ld h, c
    ld [c], a
    sub c
    pop hl
    ld h, c
    ld [c], a
    sub c
    pop hl
    ld h, c
    ld [c], a
    sub c
    pop hl
    ld b, c
    ld [c], a
    ld [hl], c
    pop hl
    ld b, c
    ld [c], a
    ld [hl], c
    pop hl
    ld b, c
    ld [c], a
    ld [hl], c
    pop hl
    ld b, c
    ld [c], a
    and c
    pop hl
    ld b, c
    ld [c], a
    and c
    pop hl
    ld b, c
    ld [c], a
    and c
    pop hl
    ld hl, $11E3
    pop hl
    ld hl, $11E3
    pop hl
    ld hl, $11E3
    pop hl
    ld hl, $B1E2
    pop hl
    ld hl, $B1E2
    pop hl
    ld hl, $B1E2
    pop hl
    ld [hl], c
    ld [c], a
    or c
    pop hl
    ld [hl], c
    ld [c], a
    or c
    pop hl
    ld [hl], c
    ld [c], a
    or c
    pop hl
    ld [hl], c
    ld [c], a
    or c
    pop hl
    ld [hl], c
    ld [c], a
    or c
    pop hl
    ld [hl], c
    ld [c], a
    or c
    pop hl
    ld h, c
    ld [c], a
    sub c
    pop hl
    ld h, c
    ld [c], a
    sub c
    pop hl
    ld h, c
    ld [c], a
    sub c
    pop hl
    ld h, c
    ld [c], a
    sub c
    pop hl
    ld h, c
    ld [c], a
    sub c
    pop hl
    ld h, c
    ld [c], a
    sub c
    pop hl
    ld b, c
    ld [c], a
    ld [hl], c
    pop hl
    ld b, c
    ld [c], a
    ld [hl], c
    pop hl
    ld b, c
    ld [c], a
    ld [hl], c
    pop hl
    ld b, c
    ld [c], a
    and c
    pop hl
    ld b, c
    ld [c], a
    and c
    pop hl
    ld b, c
    ld [c], a
    and c
    ld [c], a
    ld h, c
    pop hl
    ld h, c
    and c
    ld [c], a
    ld de, $A161
    db $E3
    ld de, $7161
    ld b, c
    ld [c], a
    or c
    ld [hl], c
    ld [c], a
    ld h, c
    pop hl
    ld h, c
    and c
    ld [c], a
    ld de, $A161
    db $E3
    ld de, $7161
    ld b, c
    ld [c], a
    or c
    ld [hl], c
    ld [c], a
    ld h, c
    pop hl
    ld h, c
    and c
    ld [c], a
    ld de, $A161
    db $E3
    ld de, $7161
    ld b, c
    ld [c], a
    or c
    ld [hl], c
    pop hl
    ld h, c
    and c
    ld [c], a
    ld de, $E361
    ld h, c
    ld [hl], c
    ld b, c
    ld h, c
    ld hl, $1141
    ld hl, $FEFE
    ldh [rTMA], a
    ld h, d
    and e
    pop hl
    ld [hl-], a
    ld [hl-], a
    ld [hl-], a
    ld sp, $5231
    ld d, d
    ld d, d
    ld d, c
    ld d, c
    ld h, d
    ld h, d
    ld h, d
    ld h, c
    ld h, c
    add d
    add d
    and d
    and c
    and c
    or d
    or d
    or d
    or c
    or c
    or d
    or d
    or d
    or c
    or c
    or d
    or d
    or d
    or c
    or c
    or d
    or d
    or d
    or c
    or c
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld hl, $2221
    ld [hl+], a
    ld [hl+], a
    ld hl, $2221
    ld [hl+], a
    ld [hl+], a
    ld hl, $2221
    ld [hl+], a
    ld [hl+], a
    ld hl, $1221
    ld [de], a
    ld [de], a
    ld de, $1211
    ld [de], a
    ld [de], a
    ld de, $E411
    ld [hl+], a
    db $E3
    ld h, d
    db $E4
    ld h, $11
    ld hl, $6142
    ld b, c
    ld [hl+], a
    db $E3
    ld h, d
    db $E4
    ld h, $11
    ld hl, $6142
    ld b, c
    ld h, d
    db $E3
    and d
    db $E4
    ld h, [hl]

jr_00F_693F:
    ld d, c
    ld h, c
    add d
    and c
    add c
    ld h, d
    db $E3
    and d
    db $E4
    ld h, [hl]
    ld d, c
    ld h, c
    add d
    and c

jr_00F_694D:
    add c
    rst $20
    ld [bc], a
    ld [c], a
    xor b
    sbc b
    ld e, b
    adc b
    ld l, b
    jr z, jr_00F_693F

    ld b, $E3
    ld [de], a
    ld [de], a
    rst $20
    ld [bc], a
    ld [c], a
    xor b
    sbc b
    ld e, b
    adc b
    ld a, b
    jr z, jr_00F_694D

    ld b, $71
    or c
    db $E3
    ld b, c
    ld h, c
    ld [hl], c
    or c
    db $E4
    ld b, c
    ld h, c
    ld [hl], c
    ld h, c
    ld b, c
    db $E3
    or c
    ld [c], a
    or c
    db $E3
    ld b, c
    ld [hl], c
    or c
    pop hl
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    db $E3
    ld de, $B1E2
    and c
    or c
    db $E3
    ld de, $4121
    ld h, c
    db $E4
    ld h, c
    ld hl, $B1E3
    ld h, c
    db $E4
    ld h, c
    ld hl, $B1E3
    ld h, c
    db $E4
    ld h, c
    ld hl, $B1E3
    ld h, c
    db $E4
    ld b, c
    ld de, $91E3
    ld b, c
    db $E4
    ld b, c
    ld de, $91E3
    ld b, c
    db $E4
    ld b, c
    ld de, $91E3
    ld b, c
    db $E4
    ld hl, $B1E3
    ld [hl], c
    ld hl, $21E4
    db $E3
    or c
    ld [hl], c
    ld hl, $21E4
    db $E3
    or c
    ld [hl], c
    ld hl, $11E4
    db $E3
    and c
    ld h, c
    ld de, $11E4
    db $E3
    and c
    ld h, c
    ld de, $21E4
    db $E3
    or c
    ld h, c
    ld hl, $61E4
    ld hl, $B1E3
    ld h, c
    db $E4
    ld h, c
    ld hl, $B1E3
    ld h, c
    db $E4
    ld h, c
    ld hl, $B1E3
    ld h, c
    db $E4
    ld b, c
    ld de, $91E3
    ld b, c
    db $E4
    ld b, c
    ld de, $91E3
    ld b, c
    db $E4
    ld b, c
    ld de, $91E3
    ld b, c
    db $E4
    ld hl, $B1E3
    ld [hl], c
    ld b, c
    db $E4
    ld hl, $B1E3
    ld [hl], c
    ld b, c
    db $E4
    ld hl, $B1E3
    ld [hl], c
    ld b, c
    pop hl
    ld h, h
    ld bc, $11E2
    ld b, c
    ld h, c
    ld [hl], c
    sub c
    or c
    ld [hl], c
    pop hl
    ld h, h
    ld bc, $11E2
    ld b, c
    ld h, c
    ld [hl], c
    sub c
    or c
    ld [hl], c
    pop hl
    ld h, h
    ld bc, $11E2
    ld b, c
    ld h, c
    ld [hl], c
    sub c
    or c
    ld [hl], c
    pop hl
    ld h, c
    ld [c], a
    ld h, c
    ld d, c
    ld h, c
    ld b, c
    ld h, c
    ld hl, $1161
    ld h, c
    and c
    ld h, c
    cp $FE
    rst $20
    ld b, $FB
    pop bc
    pop bc
    ld sp, $C131
    pop bc
    ld sp, $C131
    pop bc
    ld sp, $C131
    pop bc
    ld sp, $FB31
    rlca
    ei
    jp nz, $32C2

    jp nz, $C2C2

    ld [hl-], a
    pop bc
    pop bc
    ei
    inc b
    rst $20
    ld [bc], a
    jr c, @+$2A

    ret z

    jr c, @+$2A

    ret z

    rst $20
    ld b, $C2
    jp nz, $02E7

    jr c, jr_00F_6A94

    ret z

    jr c, @+$2A

    ret z

    rst $20
    ld b, $32
    ld [hl-], a
    ld [hl-], a
    ld [hl-], a
    jp nz, $32C2

    ld hl, $C421
    call nz, Call_000_3131
    ld sp, $3131
    ld sp, $3131
    ei
    jp nz, $C2C2

    jp nz, Jump_000_3131

    ld sp, $FB31
    rlca
    ei
    jp nz, Jump_000_2121

jr_00F_6A94:
    ld [hl+], a
    jp nz, $C222

    ei
    inc bc
    jp nz, Jump_000_2121

    ld sp, $3131
    ld sp, $3132
    ld sp, $FEFE
    ldh [rTMA], a
    ld c, d
    ld h, [hl]
    xor $10
    ld [$E495], a
    ld sp, $1132
    ld bc, $C7E3
    ld sp, $6151
    add c
    rst $20
    ld [bc], a
    xor b

jr_00F_6ABC:
    jr c, @-$56

    adc b
    db $E4
    jr @-$1B

    adc b
    rst $20
    ld b, $E4
    ld sp, $1132
    ld bc, $C7E3
    ld sp, $6151
    add c
    rst $20
    ld [bc], a
    xor b
    jr c, @-$56

    adc b
    db $E4
    jr jr_00F_6ABC

    adc b
    cp b
    ld c, b
    cp b
    sbc b
    db $E4
    jr z, jr_00F_6B09

    rst $20
    ld b, $41
    db $E3
    ld [hl], c
    db $E4
    ld b, c
    db $E3
    ld [hl], c
    db $E4
    ld b, c
    db $E3
    ld [hl], c
    db $E4
    ld b, c
    db $E3
    ld [hl], c
    db $E4
    ld b, c
    db $E3
    ld [hl], c
    db $E4
    ld b, c
    db $E3
    ld [hl], c
    db $E4
    ld b, c
    db $E3
    ld [hl], c
    db $E4
    ld b, c
    db $E3
    ld [hl], c
    db $E4
    ld d, c
    db $E3
    sub c
    db $E4
    ld d, c
    db $E3

jr_00F_6B09:
    sub c
    db $E4
    ld d, c
    db $E3
    sub c
    db $E4
    ld d, c
    db $E3
    sub c
    db $E4
    ld sp, $61E3
    db $E4
    ld sp, $61E3
    db $E4
    ld sp, $61E3
    db $E4
    ld sp, $61E3
    db $E4
    ld b, c
    db $E3
    ld [hl], c
    db $E4
    ld b, c
    db $E3
    ld [hl], c
    db $E4
    ld b, c
    db $E3
    ld [hl], c
    db $E4
    ld b, c
    db $E3
    ld [hl], c
    db $E4
    ld b, c
    db $E3
    ld [hl], c
    db $E4
    ld b, c
    db $E3
    ld [hl], c
    db $E4
    ld b, c
    db $E3
    ld [hl], c
    db $E4
    ld b, c
    db $E3
    ld [hl], c
    db $E4
    ld d, c
    db $E3
    sub c
    db $E4
    ld d, c
    db $E3
    sub c
    db $E4
    ld d, c
    db $E3
    sub c
    db $E4
    ld d, c
    db $E3
    sub c
    db $E4
    ld sp, $61E3
    db $E4
    ld sp, $61E3
    db $E4
    ld sp, $61E3
    db $E4
    ld sp, $61E3
    ld [bc], a
    db $E4
    ld b, d
    ld bc, $0271
    sub c
    and c
    sub c
    ld [hl], c
    ld [bc], a
    ld b, d
    ld [bc], a
    push hl
    ld [hl+], a
    ld bc, $A1E4
    ld [bc], a
    sub c
    and c
    sub c
    ld [hl], c
    ld bc, $0221
    rst $20
    ld [bc], a
    sbc b
    ld a, b
    ld l, b
    rst $20
    ld b, $74
    db $E3
    or h
    db $E4
    ld b, h
    inc b
    rst $20
    ld [bc], a
    jr c, jr_00F_6BD5

    ld l, b
    rst $20
    ld b, $61
    ld b, c
    db $E3
    or [hl]
    rst $20
    ld [bc], a
    ld a, b
    sbc b
    cp b
    ret z

    db $E4
    jr z, jr_00F_6BD5

    rst $20
    ld b, $54
    call nz, $E5A4
    inc [hl]
    db $E4
    ld d, h
    inc b
    ld [bc], a
    jp nz, $E5A2

    ld [hl-], a
    db $E4
    ld d, h
    call nz, $E5A4
    inc [hl]
    db $E4
    ld d, h
    inc b

jr_00F_6BB5:
    ld [bc], a
    add d
    ld [hl], d
    ld [hl-], a
    rst $20
    ld [bc], a

jr_00F_6BBB:
    jr jr_00F_6BF5

    ld e, b
    rst $20
    ld b, $54
    inc b
    rst $20
    ld [bc], a
    ld c, b
    ld e, b
    ld a, b
    xor b
    adc b
    ld a, b
    ld a, b
    adc b
    xor b
    ret z

    push hl
    jr z, @+$4A

jr_00F_6BD1:
    db $E4
    xor b
    adc b
    ld a, b

jr_00F_6BD5:
    rst $20
    ld b, $84
    db $E3
    call nz, $02E7

jr_00F_6BDC:
    db $E4
    xor b
    adc b
    ld a, b
    rst $20
    ld b, $84
    call nz, $02E7
    ld l, b
    ld c, b
    jr c, jr_00F_6BD1

    ld b, $44
    db $E3

jr_00F_6BED:
    add h
    rst $20
    ld [bc], a
    db $E4
    ld l, b
    ld c, b
    jr c, jr_00F_6BDC

jr_00F_6BF5:
    ld b, $44
    add h
    rst $20

jr_00F_6BF9:
    ld [bc], a
    push hl
    jr z, @+$1A

    db $E4
    cp b
    ld a, b
    adc b

jr_00F_6C01:
    jr jr_00F_6BBB

    sbc b
    adc b
    sbc b
    cp b
    push hl
    jr jr_00F_6BED

    xor b
    jr c, jr_00F_6BB5

    cp b
    ld e, b
    cp b
    ret z

    ld e, b
    ret z

    db $E4
    jr z, jr_00F_6BF9

    ld e, b
    db $E4
    jr z, jr_00F_6C01

    ld b, $FE
    cp $E0
    ld b, $89
    ld c, b
    db $E3
    ld h, c
    ld h, d
    and c

jr_00F_6C25:
    ld bc, $E283
    add c
    and c
    pop bc
    db $E3
    ld sp, $A181
    pop bc
    db $E4
    ld sp, $02E7
    db $E3
    ld l, b
    ld [c], a
    xor b
    db $E3
    jr c, jr_00F_6C53

    ld e, b
    jr jr_00F_6C25

    ld b, $E3
    ld h, c
    ld h, d
    and c
    ld bc, $E283
    add c
    and c
    pop bc
    db $E3
    ld sp, $A181
    pop bc
    db $E4
    ld sp, $02E7
    db $E3

jr_00F_6C53:
    ld l, b
    ld [c], a
    xor b
    db $E3
    jr c, jr_00F_6C71

    ld e, b
    jr jr_00F_6CA4

    ld [c], a
    cp b
    ld a, b
    sbc b
    ld l, b
    sbc b
    rst $20
    ld b, $E3
    ld b, d
    ld [hl], c
    ld b, c
    ld bc, $4271
    ld [hl], c
    ld b, d
    ld [hl], c
    sub c
    and c
    sub c

jr_00F_6C71:
    ld [hl], c
    ld b, d
    ld [c], a
    pop bc
    db $E3
    ld b, c
    ld bc, $C1E2
    db $E3
    ld b, d
    ld [c], a
    call nz, $A191
    sub c
    ld [hl], c
    db $E3
    ld b, d
    ld [hl], c
    ld b, c
    ld bc, $4271
    ld [hl], c
    ld b, d
    ld [hl], c
    sub c
    and c
    sub c
    ld [hl], c
    ld b, d
    ld [c], a
    pop bc
    db $E3
    ld b, c
    ld bc, $C1E2
    db $E3
    ld b, d
    ld [c], a
    call nz, $A191
    sub c
    ld [hl], c
    db $E3
    ld b, c
    ld [c], a
    or c

jr_00F_6CA4:
    db $E3
    ld hl, $91E2
    db $E3
    ld b, c
    ld [c], a
    or c
    db $E3
    ld h, c
    ld hl, $4171
    ld h, c
    ld hl, $E241
    or c
    db $E3
    ld hl, $91E2
    db $E3
    ld [hl], c
    ld [c], a
    and c
    db $E3
    ld b, c
    ld [c], a
    or c
    db $E3
    ld [hl], c
    ld [c], a
    or c
    db $E3
    sub c
    ld b, c
    and c
    ld b, c
    sub c
    ld b, c
    ld [hl], c
    ld [c], a
    sub c
    db $E3
    ld hl, $91E2
    rst $20
    ld [bc], a
    ld c, b
    ld l, b
    ld a, b
    cp b
    db $E3
    ld c, b
    ld l, b
    ld [c], a
    ret z

    db $E3
    ld c, b
    ld [c], a
    sbc b
    ret z

    cp b
    sbc b
    rst $20
    ld b, $E3
    ld b, c
    ld [c], a
    or c
    db $E3
    ld hl, $91E2
    db $E3
    ld b, c
    ld [c], a
    or c
    db $E3
    ld hl, $91E2
    db $E3
    ld b, c
    ld [c], a
    or c
    db $E3
    ld hl, $91E2
    db $E3
    ld b, c
    ld [c], a
    or c
    db $E3
    ld hl, $91E2
    db $E3
    ld b, c
    ld [c], a
    pop bc
    db $E3
    ld b, c
    ld h, c
    ld [c], a
    pop bc
    db $E3
    ld h, c
    ld [hl], c
    ld [c], a
    pop bc
    db $E3
    add c
    ld d, c
    ld [c], a
    pop bc
    db $E3
    ld d, c
    db $E3
    add c
    ld d, c
    ld [c], a
    pop bc
    db $E3
    ld d, c
    and c
    ld [hl], c
    ld sp, $A171
    ld [hl], c
    ld sp, $8171
    ld d, c
    ld [c], a
    pop bc
    db $E3
    ld d, c
    add c
    ld d, c
    ld [c], a
    pop bc
    db $E3
    ld d, c
    and c
    ld [hl], c
    ld sp, $A171
    ld [hl], c
    ld sp, $8171
    ld d, c
    ld de, $8151
    ld d, c
    ld de, $A151
    ld [hl], c
    ld sp, $A171
    ld [hl], c
    ld sp, $8171
    ld d, c
    ld de, $8151
    ld d, c
    ld de, $A151
    ld [hl], c
    ld sp, $A171
    ld [hl], c
    ld sp, $E771
    ld [bc], a
    ld e, b
    ld a, b
    adc b
    adc b
    xor b
    ret z

    xor b
    ret z

    db $E4
    jr jr_00F_6DB5

    ld e, b
    ld a, b
    ld c, b
    ld e, b
    ld a, b
    adc b
    xor b
    ret z

    rst $20
    ld b, $E3
    ld a, b
    add h
    and h
    ld a, b
    add h
    and h
    jr c, jr_00F_6DC4

    ld h, h
    jr c, jr_00F_6DC7

    ld [c], a
    add h
    rst $20
    ld [bc], a
    db $E3
    adc b
    sbc b

jr_00F_6D8A:
    cp b
    ld e, b
    ld l, b
    adc b
    jr @+$3A

    ld e, b
    ld l, b
    adc b
    sbc b
    ld l, b
    ld [c], a
    ld l, b
    db $E3
    ld l, b
    ld e, b
    ld [c], a
    ld e, b
    db $E3
    ld e, b
    ld e, b
    ld [c], a
    ld e, b
    db $E3
    ld e, b
    adc b
    ld [c], a
    jr z, jr_00F_6D8A

    adc b
    cp $FE
    ldh [rTMA], a
    ld [c], a
    ld h, b
    ld [c], a
    ld sp, $6132
    ld bc, $0281

jr_00F_6DB5:
    add c
    add c
    add c
    add c
    add c
    add c
    add c
    add c
    pop hl
    or c
    or c
    or c
    or c
    or c
    or c

jr_00F_6DC4:
    or c
    or c
    ld [c], a

jr_00F_6DC7:
    ld de, $1111
    ld de, $1111
    ld de, $E211
    ld sp, $6132
    ld bc, $0281
    add c
    add c
    add c
    add c
    add c
    add c
    add c
    add c
    pop hl
    or c
    or c
    or c
    or c
    or c
    or c
    or c
    or c
    ld [c], a
    ld de, $1111
    ld de, $1111
    ld de, $9111
    sub c
    sub c
    sub c
    sub c
    sub c
    sub c
    sub c
    or c
    or c
    or c
    or c
    or c
    or c
    or c
    or c
    ld b, c
    ld b, c
    ld b, c
    ld [hl], c
    ld [hl], c
    ld [hl], c
    sub c
    sub c
    sub c
    ld [hl], c
    ld [hl], c
    ld [hl], c
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    pop bc
    pop bc
    pop bc
    pop bc
    ld h, c
    ld h, c
    ld h, c
    or c
    or c
    sub c
    sub c
    ld b, c
    ld b, c
    ld b, c
    ld [hl], c
    ld [hl], c
    ld [hl], c
    sub c
    sub c
    sub c
    ld [hl], c
    ld [hl], c
    ld [hl], c
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    ld d, c
    ld d, c
    ld d, c
    pop bc
    pop bc
    pop bc
    pop bc
    pop bc
    pop bc
    ld h, c
    ld h, c
    ld h, c
    or c
    or c
    sub c
    sub c
    ld b, c
    ld b, c
    db $E3
    ld b, c
    ld [c], a
    ld b, c
    ld b, c
    db $E3
    ld b, c
    ld [c], a
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    db $E3
    ld b, c
    ld [c], a
    ld b, c
    ld b, c
    db $E3
    ld b, c
    ld [c], a
    ld b, c
    ld b, c
    pop hl
    pop bc
    pop bc
    ld [c], a
    pop bc
    pop hl
    pop bc
    pop bc
    ld [c], a
    pop bc
    pop hl
    pop bc
    pop bc
    pop hl
    or c
    or c
    ld [c], a
    or c
    pop hl
    or c
    or c
    ld [c], a
    or c
    pop hl
    or c
    or c
    ld [c], a
    ld b, c
    db $E3
    ld b, c
    ld [c], a
    ld b, c
    ld b, c
    db $E3
    ld b, c
    ld [c], a
    ld b, c
    ld b, c
    db $E3
    ld b, c
    ld [c], a
    ld b, c
    ld b, c
    db $E3
    ld b, c
    ld [c], a
    ld b, c
    db $E3
    ld b, c
    ld [c], a
    ld b, c
    db $E3
    ld b, c
    ld [c], a
    ld b, c
    ld [c], a
    ld b, c
    ld b, c
    db $E3
    ld b, c
    ld [c], a
    ld b, c
    db $E3
    ld b, c
    ld [c], a
    ld b, c
    db $E3
    ld b, c
    ld [c], a
    ld b, c
    ld [c], a
    ld b, c
    ld b, c
    db $E3
    ld b, c
    ld [c], a
    ld b, c
    db $E3
    ld b, c
    ld [c], a
    ld b, c
    db $E3
    ld b, c
    ld [c], a
    ld b, c
    ld [c], a
    ld b, c
    ld b, c
    db $E3
    ld b, c
    ld [c], a
    ld b, c
    db $E3
    ld b, c
    ld [c], a
    ld b, c

jr_00F_6EB8:
    db $E3
    ld b, c
    ld [c], a
    ld b, c
    ld [c], a
    ld b, c
    ld b, c
    db $E3
    ld b, c
    ld [c], a
    ld b, c
    db $E3
    ld b, c
    ld [c], a
    ld b, c
    db $E3
    ld b, c
    ld [c], a
    ld b, c
    rst $20
    ld [bc], a
    ld e, b
    ld c, b
    jr c, jr_00F_6EB8

    ld b, $11
    ld de, $11E3
    ld [c], a
    ld de, $11E2
    db $E3
    ld de, $11E2
    ld de, $11E3
    ld [c], a
    ld de, $E311
    ld de, $11E2
    db $E3
    ld de, $11E2
    db $E3
    ld de, $11E2
    ld de, $11E3
    ld [c], a
    ld de, $11E3
    ld [c], a
    ld de, $11E3
    ld [c], a
    ld de, $E311
    ld de, $11E2
    ld de, $11E3
    ld [c], a
    ld de, $E311
    ld de, $A1E2
    and c
    db $E3
    and c
    ld [c], a
    and c
    and c
    db $E3
    and c
    ld [c], a
    and c
    and c
    db $E3
    and c
    ld [c], a
    and c
    and c
    db $E3
    and c
    ld [c], a
    and c
    db $E3
    and c
    ld [c], a
    and c
    db $E3
    and c
    ld [c], a
    and c
    and c
    db $E3
    and c
    ld [c], a
    and c
    and c
    db $E3
    and c
    ld [c], a
    and c
    db $E3
    and c
    and c
    ld [c], a
    and c
    db $E3
    and c
    ld [c], a
    and c
    db $E3
    and c
    ld [c], a
    and c
    db $E3
    and c
    ld [c], a
    and c
    ld de, $E311
    ld de, $11E2
    ld de, $11E3
    ld [c], a
    ld de, $1111
    db $E3
    ld de, $11E2
    db $E3
    ld sp, $31E2
    db $E3
    ld sp, $51E2
    db $E3
    ld d, c
    ld [c], a
    pop bc
    db $E3
    pop bc
    ld [c], a
    pop bc
    ld hl, $21E3
    ld [c], a
    ld hl, $E341
    ld b, c
    ld [c], a
    ld b, c
    pop hl
    pop bc
    ld [c], a
    pop bc
    pop hl
    pop bc
    ld [c], a
    ld hl, $21E3
    ld [c], a
    ld b, c
    db $E3
    ld b, c
    rst $20
    ld [bc], a
    ld [c], a
    ld c, b
    ld e, b
    ld a, b
    adc b
    xor b
    ret z

    rst $20
    ld b, $E2
    ld d, c
    ld d, c
    db $E3
    ld d, c
    ld [c], a
    ld d, c
    ld d, c
    db $E3
    ld d, c
    ld [c], a
    ld d, c
    ld d, c
    db $E3
    ld d, c
    ld [c], a
    ld d, c
    ld d, c
    db $E3
    ld d, c
    ld [c], a
    ld d, c
    db $E3
    ld d, c
    ld [c], a
    ld d, c
    db $E3
    ld d, c
    ld [c], a
    ld sp, $E331
    ld sp, $31E2
    ld sp, $31E3
    ld [c], a
    ld sp, $E331
    ld sp, $31E2
    ld sp, $31E3
    ld [c], a
    ld sp, $31E3
    ld [c], a
    ld sp, $31E3
    ld [c], a
    ld de, $E311
    ld de, $11E2
    ld de, $11E3
    ld [c], a
    ld de, $E311
    ld de, $11E2
    ld de, $11E3
    ld [c], a
    ld de, $11E3
    ld [c], a
    ld de, $11E3
    pop hl
    or c
    or c
    ld [c], a
    or c
    pop hl
    or c
    or c
    ld [c], a
    or c
    pop hl
    or c
    or c
    ld [c], a
    or c
    pop hl
    or c
    or c
    ld [c], a
    or c
    pop hl
    or c
    ld [c], a
    or c
    pop hl
    or c
    ld [c], a
    or c
    rst $20
    ld [bc], a
    adc b
    sbc b
    cp b
    db $E3
    jr @+$3A

    ld e, b
    ld [c], a
    ld l, b
    db $E3
    ld l, b
    ld [c], a
    ld l, b
    ld c, b
    db $E3
    ld c, b
    ld [c], a
    ld c, b
    xor b
    db $E3
    xor b
    ld [c], a
    xor b
    sbc b
    db $E3
    sbc b
    ld [c], a
    sbc b
    adc b
    db $E3
    adc b
    ld [c], a
    adc b
    ld e, b
    db $E3
    ld e, b
    ld [c], a
    ld e, b
    rst $20
    ld b, $FE
    cp $E7
    ld b, $C1
    pop bc
    ld sp, $C1C1
    ld sp, $C1C1
    ld sp, $31C1
    pop bc
    pop bc
    ld sp, $C1C1
    pop bc
    jp nz, $32C1

    pop bc
    pop bc
    pop bc
    jp nz, Jump_000_21C1

    ld hl, $3131
    pop bc
    pop bc
    ld sp, $C1C1
    ld sp, $C1C1
    ld sp, $31C1
    pop bc
    pop bc
    ld sp, $C1C1
    pop bc
    jp nz, $32C1

    pop bc
    pop bc
    pop bc
    jp nz, Jump_000_21C1

    ld hl, $3131
    jp nz, $C2C2

    jp nz, Jump_000_2121

    ld hl, $3121
    ld sp, $3131
    ei
    pop bc
    pop bc
    ld sp, $C1C1
    ld sp, $C1C1
    ld sp, $C1C1
    ld sp, $21C1
    pop bc
    ld hl, $09FB
    jp nz, Jump_000_2131

    ld bc, $3131
    ld sp, $C1C1
    ld sp, $C1C1
    ld sp, $C1C1
    ld hl, $C1C1
    ld sp, $31C1
    pop bc
    ld sp, $C1C1
    ld sp, $C1C1
    ld sp, $C1C1
    pop bc
    pop bc
    ld sp, $C1C1
    ld sp, $31C1
    pop bc
    ld sp, $C1C1
    ld sp, $C1C1
    ld sp, $C1C1
    ld sp, $C1C1
    ld sp, $31C1
    pop bc
    ld sp, $C1C1
    ld sp, $C1C1
    ld sp, $C1C1
    ld sp, $C1C1
    ld sp, $31C1
    pop bc
    ld sp, $C1C1
    pop bc
    ld hl, $3121
    pop bc
    pop bc
    pop bc
    ld hl, $2121
    pop bc
    ld sp, $C1C1
    pop bc
    pop bc
    ld sp, $2121
    pop bc
    pop bc
    pop bc
    ld hl, $2121
    pop bc
    ld hl, $C2C1
    ld sp, $0121
    ld sp, $21C2
    jp nz, $C131

    ld hl, $21C1
    pop bc
    pop bc
    ld hl, $C1C1
    ld hl, $C1C1
    ld hl, $C1C1
    ld hl, $21C1
    pop bc

jr_00F_7101:
    ld hl, $C1C1
    ld hl, $C1C1

jr_00F_7107:
    ld hl, $C1C1
    ld hl, $C1C1

jr_00F_710D:
    ld hl, $21C1
    pop bc
    ld hl, $C1C1
    ld hl, $C1C1
    ld hl, $C1C1
    ld hl, $C1C1
    ld hl, $21C1
    pop bc
    ld hl, $C1C1
    ld hl, $C1C1
    ld hl, $C1C1
    ld hl, $C1C1
    ld hl, $21C1
    pop bc

jr_00F_7131:
    ld hl, $02E7
    ret z

    ret z

    ret z

    jr c, jr_00F_7101

    jr c, @-$36

    ret z

    ret z

    jr c, jr_00F_7107

    jr c, @-$36

    ret z

    ret z

    jr c, jr_00F_710D

    jr c, jr_00F_717F

    ret z

    jr c, jr_00F_7131

    ld b, $31
    ld sp, $3131
    ld sp, $3131
    ld sp, $EEFE
    db $10
    ldh [$09], a
    add a
    add h
    db $E3
    ld d, e
    jp $82A4


    ld d, d
    ld [de], a
    add e
    ld [hl], e
    ld h, h
    db $E4

jr_00F_7165:
    ld [hl-], a
    ld [hl+], a
    ld [de], a
    db $E3
    ld d, e
    jp $C2A4


    db $E4
    ld [de], a

jr_00F_716F:
    db $E3
    ld d, d
    adc b
    ld [hl], h
    ld h, h
    cp $E3
    ret z

    rst $20
    inc bc
    ld [$E458], sp
    jr jr_00F_7165

    add hl, bc

jr_00F_717F:
    db $E3
    ret z

    rst $20
    inc bc
    xor b
    ret z

    db $E4
    jr jr_00F_716F

    add hl, bc
    db $E4
    ld d, h
    rst $20
    inc bc

jr_00F_718D:
    inc b
    add h
    ld h, h
    rst $20

jr_00F_7191:
    add hl, bc
    ld d, h
    rst $20
    inc bc
    inc b
    add h
    ld h, h
    rst $20
    add hl, bc
    ld e, b
    inc [hl]
    inc d
    db $E3
    ret z

    rst $20
    inc bc
    ld [$E458], sp
    jr jr_00F_718D

    add hl, bc
    db $E3
    ret z

    rst $20
    inc bc
    ld [$8858], sp
    rst $20
    add hl, bc
    inc de

jr_00F_71B1:
    and l
    ld bc, $81E5
    ld h, c
    ld d, c
    ld h, c
    ld de, $91E4
    and c
    ld d, c
    add c
    ld h, c
    ld d, c
    ld h, c
    ld de, $A1E3
    ld h, c
    rst $20

jr_00F_71C6:
    inc bc
    xor b
    ret z

    db $E4
    jr @-$17

    add hl, bc
    adc [hl]
    ld h, d
    ld e, b
    rst $20
    inc bc

jr_00F_71D2:
    ld e, b
    db $E3
    ret z

    db $E4
    ld l, b
    rst $20
    add hl, bc
    ld d, h
    db $E3
    and h
    rst $20
    inc bc
    xor b
    ret z

    db $E4
    jr jr_00F_71C6

    adc b
    ld l, b
    xor b
    ld e, b
    jr c, jr_00F_7191

    rst $20
    add hl, bc
    db $E4
    ld d, h
    jr c, jr_00F_71D2

jr_00F_71EF:
    ld h, h
    db $E4
    jr jr_00F_722B

    ld d, b
    ld bc, $C1E2
    and c
    sub c
    and c
    db $E3
    ld de, $9151
    and c
    ld d, c
    ld h, c
    add c
    and c
    or c
    db $E4
    ld de, $3421
    db $E3
    jr c, jr_00F_71EF

    inc [hl]
    jr z, @-$17

jr_00F_720E:
    inc bc
    adc b
    ld l, b
    ld c, b
    rst $20
    add hl, bc
    ld d, d
    ld h, c
    ld d, d
    ld de, $A2E3
    rst $20
    inc bc
    xor b
    ld e, b
    ld l, b

jr_00F_721F:
    rst $20
    add hl, bc
    add h
    ld [hl], h
    add h
    and h
    db $E4
    inc [hl]
    db $E3
    jr c, jr_00F_720E

    inc [hl]

jr_00F_722B:
    jr z, jr_00F_71B1

    ld h, h
    and b
    cp b
    xor b
    xor b
    rst $20
    inc bc
    xor b
    ld l, b
    jr c, jr_00F_721F

    add hl, bc
    ld l, b
    rst $20

jr_00F_723B:
    inc bc
    ld l, b
    adc b
    ld l, b
    ld e, b
    ld l, b
    xor b
    push hl
    ld e, b
    jr c, jr_00F_729E

    rst $20
    add hl, bc
    ld h, h
    db $E4
    ld h, h
    rst $20
    inc bc
    ld l, b
    adc b
    xor b
    push hl
    ld e, b
    jr c, jr_00F_72AC

    ld l, b
    jr c, jr_00F_723B

    xor b
    rst $20

jr_00F_7259:
    add hl, bc
    push hl
    inc d
    db $E4
    call nz, $14E5
    inc [hl]
    ld d, h
    inc b
    db $E4
    ld d, c
    ld d, c
    ld [bc], a
    inc b
    ld d, c
    ld d, c
    inc b
    ld [bc], a
    rst $20
    inc bc
    xor b
    ld e, b
    jr c, jr_00F_7259

    add hl, bc
    ld e, b
    ld [c], a
    rst $20

jr_00F_7276:
    inc bc
    ld e, b
    ld l, b
    xor b
    db $E3
    ld e, b
    ld l, b
    adc b
    ld e, b
    jr c, jr_00F_7299

    ld e, b
    ret z

    xor b
    ret z

    ld e, b
    adc b
    xor b
    jr @+$6A

    xor b
    ret z

    db $E4
    jr jr_00F_7276

    add hl, bc
    inc sp
    ld d, a
    nop
    ld b, $FE
    ldh [$09], a
    ld b, [hl]
    add l

jr_00F_7299:
    ld [c], a
    ld d, h
    call nz, $03E7

jr_00F_729E:
    db $E3
    jr jr_00F_72D9

    ld e, b

Call_00F_72A2:
    ld [c], a
    ret z

    db $E3
    jr jr_00F_72DF

    rst $20
    add hl, bc
    ld h, h
    ld b, h
    ld [c], a

jr_00F_72AC:
    ld d, h
    call nz, $03E7
    db $E3
    jr jr_00F_72EB

    ld e, b
    rst $20
    add hl, bc
    jr c, jr_00F_72DC

    inc d
    cp $E7
    inc bc
    ld [c], a
    ret z

    db $E3
    jr @+$5A

    rst $20
    add hl, bc
    db $E3
    call nz, $E7A4
    inc bc
    ld [c], a
    ret z

    db $E3
    jr @+$5A

    rst $20
    add hl, bc
    db $E4
    ld d, h
    db $E3
    call nz, $14E4
    rst $20
    inc bc
    inc d
    ld d, h

jr_00F_72D9:
    inc [hl]
    rst $20
    add hl, bc

jr_00F_72DC:
    inc d
    rst $20
    inc bc

jr_00F_72DF:
    inc d
    ld d, h
    inc [hl]
    rst $20
    add hl, bc
    db $E3
    xor b
    ld [hl], h
    ld h, h
    rst $20
    inc bc
    ld [c], a

jr_00F_72EB:
    ret z

    db $E3
    jr @+$5A

    rst $20
    add hl, bc
    call nz, $E7A4
    inc bc
    ld [c], a
    ret z

jr_00F_72F7:
    db $E3
    jr jr_00F_7352

    rst $20
    add hl, bc
    and h
    add h
    ld [c], a
    and c
    ld h, c
    ld h, c
    and c
    db $E3
    ld de, $A1E2
    and c
    db $E3
    ld de, $1161
    ld de, $A161
    ld h, c
    ld h, c
    and c
    ld [c], a
    ld d, c
    ld h, c
    and c
    db $E3

jr_00F_7317:
    ld de, $1151
    ld [c], a
    and c
    ld h, c
    and c
    ld h, c
    ld d, c
    ld de, $61A1
    ld d, c
    ld de, $5131
    ld h, c
    and c
    db $E3

jr_00F_732A:
    ld e, b
    ld d, d
    and d
    rst $20
    inc bc
    sbc b
    ret z

    ld l, b
    ld e, b
    jr c, jr_00F_7317

    ret z

    ret z

jr_00F_7337:
    db $E3

jr_00F_7338:
    jr @+$5A

    ret z

    xor b
    ld e, b
    ld e, b
    ld l, b
    ld [c], a
    xor b
    db $E3
    jr @-$1C

    ret z

    db $E3
    jr c, jr_00F_732A

    jr c, jr_00F_73A2

    ld l, b

jr_00F_734B:
    db $E3
    ld e, b
    jr c, jr_00F_72F7

    ld e, b
    jr c, jr_00F_73BA

jr_00F_7352:
    ld e, b
    jr c, jr_00F_7337

    ld l, b
    rst $20
    add hl, bc
    sub h
    and h
    call nz, Call_000_14E3
    and c
    db $E4
    ld d, c
    ld sp, $E351
    and c
    db $E4
    ld d, c
    db $E3
    sub c
    db $E4
    ld d, c
    db $E3
    and c
    db $E4
    ld d, c
    db $E3
    ld d, c
    db $E4
    ld d, c
    db $E3
    ld de, $51E4
    ld [c], a
    and c
    sub c
    db $E3

jr_00F_737A:
    or h

jr_00F_737B:
    ld [c], a
    or h
    rst $20
    inc bc
    db $E3
    jr c, jr_00F_73DA

    ld l, b
    rst $20
    add hl, bc
    ld [hl], h
    add h
    rst $20
    inc bc
    adc b
    cp b
    adc b
    xor b
    ld e, b
    jr jr_00F_7338

    ld e, b
    jr jr_00F_734B

    ld c, b
    jr jr_00F_737A

    jr jr_00F_737B

    ld a, b
    db $E4
    ld c, b
    rst $20
    add hl, bc
    db $E3
    or h
    ld [c], a
    or h

jr_00F_73A1:
    rst $20

jr_00F_73A2:
    inc bc
    db $E3
    jr c, jr_00F_73FE

    ld l, b
    rst $20
    add hl, bc

jr_00F_73A9:
    ld [hl], h
    add h
    rst $20
    inc bc
    adc b
    cp b
    adc b
    ld c, b

jr_00F_73B1:
    adc b
    db $E4
    jr jr_00F_73FD

    jr c, jr_00F_73CF

    db $E3
    adc b

jr_00F_73B9:
    adc b

jr_00F_73BA:
    ld c, b
    jr c, @+$7A

    jr c, jr_00F_73A1

    ret z

jr_00F_73C0:
    db $E3
    jr c, jr_00F_742B

    xor b
    ld l, b
    jr c, jr_00F_73A9

    cp b
    db $E3

jr_00F_73C9:
    jr z, jr_00F_7433

    xor b
    ld l, b
    jr z, jr_00F_73B1

jr_00F_73CF:
    xor b
    db $E3
    jr c, jr_00F_742B

    ld l, b
    ld e, b
    jr jr_00F_73B9

    jr c, @-$56

    db $E3

jr_00F_73DA:
    jr c, jr_00F_7444

    jr c, jr_00F_73C0

    xor b
    ld [c], a
    ld l, b
    xor b
    db $E3
    jr c, jr_00F_744D

    jr c, jr_00F_73C9

    xor b
    rst $20
    add hl, bc
    ld sp, $7151
    sub c
    and c
    pop bc
    db $E3
    ld de, $5131
    ld [hl], c
    sub c
    and c
    pop bc
    db $E4
    ld de, $6131
    ld [c], a

jr_00F_73FD:
    and c

jr_00F_73FE:
    db $E3
    ld d, c
    ld sp, $1151
    ld d, c
    ld [c], a
    pop bc
    db $E3
    ld d, c
    ld [c], a
    and c
    db $E3
    ld d, c
    ld [c], a
    add c
    db $E3
    ld d, c
    ld [c], a
    and c
    db $E3
    ld d, c
    ld [c], a
    pop bc
    db $E3
    ld d, c
    ld [c], a
    and c
    db $E3
    ld d, c
    ld sp, $1151
    ld d, c
    ld [c], a
    pop bc
    db $E3
    ld d, c
    ld [c], a
    and c
    db $E3
    ld d, c
    ld [c], a
    add c
    db $E3

jr_00F_742B:
    ld d, c
    ld [c], a
    and c
    db $E3
    ld d, c
    ld [c], a
    ld d, c
    db $E3

jr_00F_7433:
    ld de, $31E2
    db $E3
    ld h, c
    ld d, c
    ld h, c
    ld sp, $1161
    ld h, c
    ld sp, $E261
    and c
    db $E3
    ld h, c

jr_00F_7444:
    ld [c], a
    pop bc
    db $E3
    ld h, c
    ld de, $3161
    ld h, c
    ld [c], a

jr_00F_744D:
    ld h, c
    db $E3
    ld hl, $A1E2
    db $E3
    ld sp, $81E2
    db $E3
    ld d, c
    ld [c], a
    ld h, c
    db $E3
    ld sp, $31E2
    and c
    ld h, c
    db $E3
    ld sp, $31E2
    db $E3
    ld h, c
    ld d, c
    ld [c], a
    pop bc
    db $E3
    ld sp, $C1E2
    db $E3
    ld d, c
    ld [c], a
    pop bc
    db $E3
    ld h, c
    ld [c], a
    pop bc
    db $E3
    and c
    ld [c], a
    add c
    db $E3
    add c
    ld [c], a
    add c
    db $E3
    ld h, c
    ld [c], a
    add c
    db $E3
    ld d, c
    ld [c], a
    add c
    add c
    pop bc
    and c
    pop bc
    db $E3
    ld de, $C1E2
    and c
    pop bc
    db $E3
    ld sp, $81E2
    db $E3
    ld h, c
    ld [c], a
    add c
    db $E3
    ld d, c
    ld [c], a
    add c
    db $E3
    ld sp, $81E2
    ld [c], a
    and c
    db $E3
    ld d, c
    ld sp, $1151
    ld d, c
    ld [c], a
    pop bc
    db $E3
    ld d, c
    ld [c], a
    and c
    db $E3
    ld d, c
    ld [c], a
    ld sp, $51E3
    ld [c], a
    and c
    db $E3
    ld d, c
    ld [c], a
    pop bc
    db $E3
    ld d, c
    db $E3
    ld d, c
    ld h, c
    sub c
    pop bc
    db $E4
    ld sp, $C1E3
    sub c
    ld h, c
    ld d, c
    ld h, c
    ld d, c
    ld sp, $3111
    ld de, $C1E2
    cp $E0
    add hl, bc
    ld d, h
    ld b, b
    pop hl
    and d
    and d
    ld [c], a
    and c
    pop hl
    and d
    and c
    ld [bc], a
    and d
    ld [c], a
    and d
    pop hl
    and c
    and c
    jp nz, $E2C2

    pop bc
    pop hl
    jp nz, $02C1

    ld d, d
    ld [c], a
    ld d, d
    pop hl
    ld d, c
    ld d, c
    and d
    and d
    ld [c], a
    and c
    pop hl
    and d
    and c
    ld [bc], a
    and d
    ld [c], a
    and d
    pop hl
    and c
    and c
    jp nz, $E2C2

    pop bc
    pop hl
    jp nz, $02C1

    ld d, d
    ld [c], a
    ld d, d
    pop hl
    ld d, c
    ld d, c
    cp $A2
    and d
    ld [c], a
    and c
    pop hl
    and d
    and c
    ld [bc], a
    and d
    ld [c], a
    and d
    pop hl
    and c
    and c
    add d
    add d
    ld [c], a
    add c
    pop hl
    add d
    add c
    ld [bc], a
    add d
    ld [c], a
    add d
    pop hl
    add c
    add c
    ld h, d
    ld h, d
    ld [c], a
    ld h, c
    pop hl
    ld h, d
    ld h, c
    ld [bc], a
    ld h, d
    ld [c], a
    ld h, d
    pop hl
    ld h, c
    ld h, c
    jp nz, $E2C2

    pop bc
    pop hl
    jp nz, $02C1

    ld d, d
    ld [c], a
    ld d, d
    pop hl
    ld d, c
    ld d, c
    and d
    and d
    ld [c], a
    and c
    pop hl
    and d
    and c
    ld [bc], a
    and d
    ld [c], a
    and d
    pop hl
    and c
    and c
    add d
    add d
    ld [c], a
    add c
    pop hl
    add d
    add c
    ld [bc], a
    add d
    ld [c], a
    add d
    pop hl
    add c
    add c
    ld h, d
    ld h, d
    ld [c], a
    ld h, c
    pop hl
    ld h, d
    ld h, c
    ld [bc], a
    ld h, d
    ld [c], a
    ld h, d
    pop hl
    ld h, c
    ld h, c
    ld h, d
    ld h, d
    ld [c], a
    ld h, c
    pop hl
    ld h, d
    ld h, c
    ld [bc], a
    ld h, d
    ld [c], a
    ld h, d
    pop hl
    ld d, c
    ld d, c
    ld [hl-], a
    ld [hl-], a
    ld [c], a
    ld sp, $32E1
    ld sp, $3202
    ld [c], a
    ld [hl-], a
    pop hl
    ld sp, $3231
    ld [hl-], a
    ld [c], a
    ld sp, $32E1
    ld sp, $3202
    ld [c], a
    ld [hl-], a
    pop hl
    ld sp, $1231
    ld [de], a
    ld [c], a
    ld de, $12E1
    ld de, $1202
    ld [c], a
    ld [de], a
    pop hl
    ld de, $3211
    ld [hl-], a
    ld [c], a
    ld sp, $32E1
    ld sp, $3202
    ld [c], a
    ld [hl-], a
    pop hl
    ld sp, $C231
    jp nz, $C1E2

    pop hl
    jp nz, $02C1

    jp nz, $C2E2

    pop hl
    pop bc
    pop bc
    ld e, b
    ld [c], a
    ld d, c
    ld sp, $3111
    pop hl
    pop bc
    ld [c], a
    ld de, $C1E1
    ld d, c
    and d
    and d
    and d
    and d
    and d
    and d
    and d
    and d
    and d
    and d
    and d
    and d
    and d
    and d
    sub d
    sub d
    add d
    add d
    ld [c], a
    add c
    pop hl
    add d
    add c
    ld [bc], a
    add d
    ld [c], a
    add d
    pop hl
    add c
    add c
    ld [de], a
    ld [de], a
    ld [c], a
    ld de, $12E1
    ld de, $1202
    ld [c], a
    ld [de], a
    pop hl
    ld de, $6211
    ld h, d
    ld [c], a
    ld h, c
    pop hl
    ld h, d
    ld h, c
    ld [bc], a
    ld h, d
    ld [c], a
    ld h, d
    pop hl
    ld h, c
    ld h, c
    ld b, d
    ld b, d
    ld [c], a
    ld b, c
    pop hl
    ld b, d
    ld b, c
    ld [bc], a
    ld [hl-], a
    ld [c], a
    ld [hl-], a
    pop hl
    ld de, $8211
    add d
    ld [c], a
    add c
    pop hl
    add d
    add c
    ld [bc], a
    add d
    ld [c], a
    add d
    pop hl
    add c
    add c
    ld [de], a
    ld [de], a
    ld [c], a
    ld de, $12E1
    ld de, $5202
    ld [c], a
    ld d, d
    pop hl
    ld d, c
    ld d, c
    ld b, d
    ld b, d
    ld [c], a
    ld b, c
    pop hl
    ld b, d
    ld b, c
    ld [bc], a
    ld b, d
    ld [c], a
    ld b, d
    pop hl
    ld b, c
    ld b, c
    ld [hl-], a
    ld [hl-], a
    ld [c], a
    ld sp, $32E1
    ld sp, $3101
    ld [hl], c
    and c
    ld [c], a
    ld b, c
    ld sp, $E111
    and c
    jp nz, $E2C2

    pop bc
    pop hl
    jp nz, $02C1

    jp nz, $C2E2

    pop hl
    pop bc
    pop bc
    or d
    or d
    ld [c], a
    or c
    pop hl
    or d
    or c
    ld [bc], a
    or d
    ld [c], a
    or d
    pop hl
    and c
    add c
    ld [hl-], a
    ld [hl-], a
    ld [c], a
    ld sp, $32E1
    ld sp, $1202
    ld [c], a
    ld [de], a

jr_00F_767B:
    pop hl
    ld de, $C211
    jp nz, $C1E2

    pop hl
    jp nz, $02C1

    jp nz, $C2E2

    pop hl
    pop bc
    pop bc
    jr c, @-$17

    inc bc
    xor b
    ld [c], a
    ld e, b

Jump_00F_7692:
    jr c, jr_00F_767B

    add hl, bc
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    ld [c], a
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    pop hl
    and c
    and c
    and d
    ld [c], a
    and d
    add c
    and c
    ld bc, $51E1
    add c
    ld d, c
    and c
    ld d, c
    ld sp, $E111
    and c
    and c
    and d
    ld [c], a
    and d
    add c
    and c
    ld bc, $51E1
    add c
    ld d, c
    and c
    ld d, c
    ld sp, $E111
    ld sp, $3231
    ld [c], a
    ld [hl-], a
    ld de, $0131
    pop hl
    and c
    ld [c], a
    ld de, $6131
    ld sp, $E111
    and c
    pop hl
    ld sp, $3231
    ld [c], a
    ld [hl-], a
    ld de, $0131
    pop hl
    and c
    ld [c], a
    ld de, $6131
    ld sp, $E111
    and c
    pop hl
    add c
    add c
    add d
    ld [c], a
    add d
    ld h, c
    add c
    ld bc, $31E1
    ld h, c
    ld sp, $3181
    ld de, $E1B1

jr_00F_76F8:
    add c
    add c
    add d
    ld [c], a
    add d
    ld h, c
    add c
    ld bc, $31E1
    ld h, c
    ld sp, $3181
    ld de, $E7B1
    inc bc
    xor b
    sbc b
    adc b
    ld l, b
    ld e, b
    jr c, jr_00F_76F8

    add hl, bc
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    cp $FE
    rst $20
    add hl, bc
    ei
    pop bc
    pop bc
    sub c
    pop bc
    sub d
    pop bc
    pop bc
    ld sp, $31C1
    pop bc
    ld sp, $C1C1
    ld sp, $0FFB
    ei
    pop bc
    pop bc
    sub c
    pop bc
    sub d
    pop bc
    pop bc
    ld sp, $31C1
    pop bc
    ld sp, $C1C1
    ld sp, $0BFB
    and d
    and d
    and d
    and d
    sub d
    sub d
    sub d
    sub d
    ei
    pop bc
    pop bc
    sub c
    pop bc
    sub d
    pop bc
    pop bc
    ld sp, $31C1
    pop bc
    ld sp, $C1C1
    ld sp, $0EFB
    cp $FE
    xor $10
    ld [$E098], a
    ld b, $8A
    db $F4
    db $E3
    ld e, b
    adc b
    cp b
    and h
    add h
    db $E4
    jr @+$3A

    ld d, h
    call nz, $C2A2
    push hl
    ld [de], a
    ld [hl-], a
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    ld bc, $5151
    ld d, c
    ld sp, $C1E4
    and c
    add c
    pop bc
    and c
    add c
    ld sp, $5151
    ld d, c
    ld d, c
    ld bc, $5151
    ld d, c
    ld de, $5131
    add c
    ld [hl], c
    add c
    and c
    push hl
    ld sp, $E411
    add c
    ld d, c
    ld de, $8171
    and c
    push hl
    ld sp, $E411
    add c
    ld d, c
    ld de, $8171
    and c
    push hl
    ld sp, $E411
    ld b, c
    pop bc
    ld b, c
    or c
    ld b, c
    pop bc
    ld b, c
    and c
    add c
    ld [hl], c
    ld b, c
    ld de, $C1E3
    and c
    ld [hl], c
    db $E4
    add h
    and h
    call nz, $82A2
    ld [hl], b
    add h
    and h
    call nz, $82A2
    push hl
    jr nc, jr_00F_77CE

    db $E4

jr_00F_77CE:
    add c
    and c
    pop bc
    ld bc, $8171
    and c
    ld bc, $7151
    add c
    ld bc, $5131
    ld [hl], c
    ld de, $5131
    ld [hl], c
    add d
    ld [hl], c
    ld d, c
    ld b, c
    db $E3
    pop bc
    db $E4
    ld b, c
    ld [hl], c
    and c
    pop bc
    push hl
    ld hl, $FE41
    cp $E0
    ld b, $69
    db $E4
    ld [c], a
    add c
    pop bc
    add c
    pop bc
    add c
    pop bc
    add c
    pop bc
    add c
    db $E3
    ld sp, $81E2
    db $E3
    add c
    ld [c], a
    add c
    db $E3
    add c
    ld [c], a
    add c
    db $E3
    ld sp, $81E2
    db $E3
    ld hl, $81E2
    db $E3
    ld hl, $81E2
    db $E3
    ld hl, $81E2
    db $E3
    ld hl, $81E2
    db $E3
    ld de, $81E2
    db $E3
    ld de, $81E2
    db $E3
    ld sp, $81E2
    db $E3
    ld sp, $81E2
    db $E3
    ld de, $81E2
    db $E3
    ld de, $81E2
    db $E3
    ld de, $81E2
    db $E3
    ld de, $51E2
    and c
    ld d, c
    and c
    ld d, c
    and c
    ld d, c
    and c
    ld d, c
    pop bc
    ld d, c
    pop bc
    ld d, c
    db $E3
    ld d, c
    ld [c], a
    ld d, c
    db $E3
    ld d, c
    ld [c], a
    ld d, c
    db $E3
    ld sp, $51E2
    db $E3
    ld sp, $51E2
    db $E3
    add c
    ld [c], a
    ld d, c
    db $E3
    ld [hl], c
    ld [c], a
    add c
    db $E3
    add c
    ld [c], a
    add c
    pop bc
    add c
    pop bc
    add c
    pop bc
    add c
    db $E3
    ld sp, $51E2
    db $E3
    ld sp, $51E2
    db $E3
    ld sp, $51E2
    db $E3
    ld sp, $81E2
    db $E3
    add c
    ld [c], a
    add c
    db $E3
    add c
    ld [c], a
    add c
    db $E3
    ld d, c
    ld [c], a
    add c
    db $E3
    add c
    ld [c], a
    add c
    db $E3
    add c
    ld [c], a
    add c
    db $E3
    add c
    ld [c], a
    add c
    db $E3
    ld sp, $81E2
    db $E3
    ld sp, $11E2
    add c
    db $E3
    ld d, c
    ld [c], a
    add c
    ld de, $E3A1
    ld [hl], c
    ld [c], a
    and c
    ld [c], a
    ld de, $E381
    ld d, c
    ld [c], a
    add c
    ld de, $E3A1
    ld [hl], c
    ld [c], a
    and c
    ld b, c
    pop bc
    db $E3
    ld [hl], c
    ld [c], a
    pop bc
    ld b, c
    pop bc
    db $E3
    and c
    ld [c], a
    pop bc
    ld b, c
    pop bc
    db $E3
    add c
    ld [c], a
    pop bc
    ld b, c
    and c
    db $E3
    ld [hl], c
    ld [c], a
    and c
    ld d, c
    pop bc
    db $E3
    ld d, c
    ld [c], a
    pop bc
    db $E3
    ld [hl], c
    ld [c], a
    pop bc
    db $E3
    ld [hl], c
    ld [c], a
    pop bc
    db $E3
    add c
    ld [c], a
    pop bc
    db $E3
    add c
    ld [c], a
    pop bc
    db $E3
    ld [hl], c
    ld [c], a
    pop bc
    db $E3
    ld d, c
    ld [c], a
    pop bc
    ld sp, $E3A1
    ld sp, $A1E2
    ld sp, $E3A1
    ld sp, $A1E2
    ld sp, $E3A1
    ld sp, $A1E2
    ld sp, $E3A1
    ld sp, $A1E2
    ld de, $E381
    ld d, c
    ld [c], a
    add c
    ld de, $E381
    ld [hl], c
    ld [c], a
    add c
    ld de, $E381
    ld d, c
    ld [c], a
    add c
    ld de, $E381
    ld d, c
    ld [c], a
    add c
    ld sp, $E3A1
    add c
    ld [c], a
    and c
    ld sp, $E3A1
    ld [hl], c
    ld [c], a
    and c
    ld sp, $E3A1
    ld d, c
    ld [c], a
    and c
    ld sp, $E3A1
    ld sp, $A1E2
    ld d, c
    db $E3
    ld d, c
    ld [hl], c
    add c
    ld [c], a
    ld sp, $31E3
    ld d, c
    ld [hl], c
    ld [c], a
    ld de, $11E3
    ld sp, $E151
    pop bc
    ld [c], a
    pop bc
    ld de, $E131
    and c
    ld [c], a
    ld d, c
    and c
    db $E3
    ld de, $E211
    pop bc
    and c
    ld d, c
    pop hl
    pop bc
    ld [c], a
    ld [hl], c
    pop bc
    db $E3
    ld hl, $7141
    pop bc
    db $E4
    ld b, c
    cp $FE
    ldh [rTMA], a
    ld d, d
    db $E4
    ei
    ld [c], a
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    ei
    inc bc
    ld d, c
    ld d, c
    db $E3
    ld d, c
    ld [c], a
    ld d, c
    db $E3
    ld d, c
    ld [c], a
    ld d, c
    db $E3
    ld d, c
    ld d, c
    ld [c], a
    ld d, c
    ld sp, $B1C1
    and c
    add c
    ld d, c
    ld sp, $5151
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    ld sp, $3131
    ld sp, $1111
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld sp, $4131
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    pop hl
    pop bc
    ld [c], a
    pop bc
    ld b, c
    pop bc
    ld [hl], c
    pop bc
    ld b, c
    pop bc
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    ld sp, $3131
    ld sp, $3131
    ld sp, $3131
    ld sp, $3131
    ld sp, $7151
    ld sp, $1111
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld de, $8111
    db $E3
    ld de, $81E2
    ld sp, $3131
    ld sp, $3131
    ld sp, $3131
    and c
    db $E3
    ld sp, $A1E2
    ld [hl], c
    and c
    ld sp, $E171
    ld d, c
    ld [c], a
    ld d, c
    ld d, c
    ld d, c
    pop hl
    ld sp, $31E2
    ld sp, $E131
    ld de, $11E2
    ld de, $E111
    pop bc
    ld [c], a
    pop bc
    pop bc
    pop bc
    pop hl
    and c
    ld [c], a
    and c
    and c
    and c
    and c
    pop hl
    and c
    ld [c], a
    and c
    pop hl
    and c
    ld [c], a
    pop bc
    pop bc
    pop bc
    pop bc
    pop bc
    pop bc
    pop bc
    pop bc
    cp $FE
    rst $20
    ld b, $FB
    pop bc
    pop bc
    sub c
    pop bc
    pop bc
    pop bc
    sub c
    pop bc
    pop bc
    pop bc
    sub c
    pop bc
    pop bc
    pop bc
    sub c
    pop bc
    ei
    rlca
    pop bc
    pop bc
    sub c
    pop bc
    pop bc
    pop bc
    sub c
    pop bc
    sub d
    sub d
    sub d
    sub d
    ei
    pop bc
    pop bc
    sub c
    pop bc
    pop bc
    pop bc
    sub c
    pop bc
    pop bc
    pop bc
    sub c
    pop bc
    pop bc
    pop bc
    sub c
    pop bc
    ei
    inc b
    pop bc
    sub c
    sub c
    sub c
    pop bc
    sub c
    sub c
    sub c
    pop bc
    sub c
    sub c
    sub c
    pop bc
    sub c
    sub c
    sub c
    pop bc
    sub c
    sub c
    sub c
    sub c
    ld sp, $3131
    pop bc
    sub c
    sub c
    ld sp, $C191
    sub c
    pop bc
    db $FE

    db $FE, $E0, $07, $88, $86, $E3, $78, $E4, $24, $E3, $A8, $C2, $A2, $96

    ld [hl], d
    ld d, h
    ld a, b
    inc b
    db $E4
    jr z, jr_00F_7B06

    ld b, [hl]
    ld [hl+], a
    db $E3

jr_00F_7AB5:
    call nz, Call_000_2CE4
    inc c
    jr z, @+$56

    db $E3
    sbc h
    call nz, Call_000_24E4
    db $E3
    and h
    ld a, h
    ld [hl], h
    sub h
    and h
    sub h
    ld d, h
    ld [hl], h
    sbc h
    inc l
    db $FE

    db $FE, $E0, $07, $86, $46, $E3, $28, $74, $28, $E2, $A4, $C8

    db $E3
    sub h
    inc [hl]
    inc h
    ld [c], a
    call nz, Call_000_24E3
    inc [hl]
    ld d, h
    ld [hl], h
    call nz, $44E4
    ld a, h
    ld l, h
    ld [hl], h
    db $E3
    and h
    db $E4
    inc h
    db $E3
    ld e, b
    db $E4
    inc h
    db $E3
    ld b, h
    ld [hl], h
    db $E3
    ld b, h
    ld [c], a
    ret z

    db $E3
    call nz, $A4E2
    db $E3
    inc [hl]
    ld [hl], h
    ld d, h
    ld [c], a
    call nz, $34E3
    ld h, h
    ld b, h

jr_00F_7B06:
    ld h, h
    ld h, h
    db $E3
    call nz, $FE64

    db $FE, $E0, $07, $62, $88, $E2, $7C, $7C, $98, $54, $74

    ld [hl], h
    sub h
    and h
    ld d, h
    and h
    call nz, $C474
    jr z, jr_00F_7AB5

    db $E3
    inc h
    ld [c], a
    sub h
    inc h
    ld a, h
    ld e, b
    sub h
    ld c, b
    call nz, $C4E1
    ld [c], a
    inc h
    ld b, h
    inc a
    ld d, h
    ld [hl], h
    sub h
    inc h
    sub h
    db $E3
    inc h
    ld [c], a
    sub h
    call nz, $FE94

    db $FF, $E7, $07, $14

    inc d
    inc d
    inc d
    inc d
    inc d
    rst $38
    ldh [rTAC], a
    adc d
    ld b, [hl]
    ld [$E396], a
    ld h, h
    ld d, h
    or h
    sub h
    adc b
    db $E4
    inc h
    inc d
    cp $E3
    ld sp, $6151
    add c
    and [hl]
    ld [hl-], a
    and d
    ld [hl-], a
    ld b, h
    db $E4
    inc d
    db $E3
    or d
    and d
    add c
    ld bc, $8172
    and c
    or c
    db $E4
    ld de, $E336
    add d
    db $E4
    ld [hl-], a
    db $E3
    add d
    ei
    db $E4
    ld l, b
    ld d, h
    inc [hl]
    ei
    inc bc
    ld [hl+], a
    ld [hl-], a
    ld d, d
    ld h, d
    ld bc, $A281
    or d
    and d
    add d
    db $E3
    or d
    db $E4
    ld h, d
    db $E3
    or d
    db $E4
    ld d, d
    db $E3
    add d
    db $E4
    ld h, d
    db $E3
    and d
    cp $E0
    rlca
    adc b
    and $EA
    sub [hl]
    ld [c], a
    or d
    or d
    db $E3
    add d
    ld h, d
    ld d, d
    ld h, d
    ld d, d
    ld [hl+], a
    ld [c], a
    ld d, d
    ld h, d
    add d
    sub d
    or d
    db $E3
    ld [de], a
    ld [hl+], a
    ld d, d
    cp $FB
    ld h, c
    ld sp, $A1E2
    db $E3
    ld sp, $04FB
    ld de, $81E2
    ld b, c
    add c
    db $E3
    add c
    ld de, $1181
    ld [hl], c
    ld sp, $5181
    and c
    ld [hl], c
    ld sp, $A1E2
    db $E3
    add c
    ld sp, $B1E2
    db $E3
    ld sp, $31A1
    ld [c], a
    or c
    db $E3
    ld sp, $31B1
    ld [c], a
    or c
    db $E3
    ld sp, $3181
    ld [c], a
    or c
    db $E3
    ld sp, $3191
    ld [c], a
    pop bc
    db $E3
    ld sp, $31A1
    ld [c], a
    pop bc
    db $E3
    ld sp, $31C1
    ld [c], a
    pop bc
    db $E3
    ld sp, $3191
    ld [c], a
    pop bc
    db $E3
    ld sp, $A1FB
    ld h, c
    ld sp, $FB61
    inc b
    or c
    sub c
    ld h, c
    sub c
    or c
    sub c
    ld h, c
    sub c
    or c
    sub c
    ld sp, $B191
    sub c
    ld sp, $E491
    ld d, c
    db $E3
    or c
    db $E4
    ld h, c
    db $E3
    add c
    db $E4
    ld hl, $B1E3
    db $E4
    ld sp, $81E3
    db $E4
    add c
    db $E3
    ld d, c
    db $E4
    ld h, c
    db $E3
    or c
    db $E4
    ld d, c
    db $E3
    add c
    db $E4
    ld sp, $51E3
    db $E4
    ld sp, $A1E3
    db $E4
    ld sp, $81E3
    db $E4
    ld sp, $A1E3
    db $E4
    ld sp, $31E3
    db $E4
    ld hl, $A1E3
    db $E4
    ld hl, $81E3
    db $E4
    ld hl, $61E3
    db $E4
    ld hl, $51E3
    cp $E0
    rlca
    ld [c], a
    ld b, [hl]
    ld [$E195], a
    add d
    add d
    ld [c], a
    or d
    and d
    add d
    ld h, d
    ld d, d
    ld [hl+], a
    ld [de], a
    ld [hl+], a
    ld [de], a
    pop hl
    or d
    ld [c], a
    ld [de], a
    pop hl
    or d
    sub d
    and d
    cp $FB
    ld [hl-], a
    ld [hl-], a
    ld [hl-], a
    ld [hl-], a
    ei
    inc bc
    ld d, d
    ld d, d
    ld [hl], d
    ld [hl], d
    add d
    add d
    add d
    add d
    add d
    add d
    add d
    add d
    sub d
    sub d
    sub d
    sub d
    sub d
    sub d
    sub d
    sub d
    and d
    and d
    and d
    and d
    and d
    and d
    and d
    and d
    or d
    or d
    or d
    or d
    or d
    or d
    or d
    or d
    or d
    or d
    and d
    and d
    add d
    add d
    ld h, d
    ld h, d
    ld d, d
    ld d, d
    or d
    or d
    and d
    and d
    and d
    and d
    cp $E7
    rlca
    nop
    nop
    cp $C2
    jp nz, $C2C2

    cp $FE
    ldh [rTAC], a
    adc e
    add h
    ld [c], a
    or d
    db $E3
    ld b, d
    ld c, h
    inc b
    ld h, d
    ld [hl], d
    sub d
    ld [hl], d
    ld h, d
    ld [hl], d
    ld h, d
    ld b, d
    ld c, h
    ld [bc], a
    ld [hl+], a
    ld [c], a
    jp nz, $92B2

    or d
    jp nz, Jump_000_22E3

    ld [c], a
    jp nz, $BCB2

    or d
    and d
    xor h
    and d
    sub d
    jp nz, Jump_00F_52E3

    ld d, d
    ld b, d
    ld d, d
    sub d
    ld b, d
    or d
    ld [hl-], a
    or d
    ld [de], a
    or d
    ld [hl-], a
    or d
    ld b, c
    or c
    sub c
    or c
    ld [hl], c
    or c
    ld h, c
    or c
    ld b, c
    or c
    ld sp, $41B1
    or c
    ld h, c
    or c
    ld [hl], c
    or c
    ld h, c
    or c
    ld [hl], c
    or c
    sub c
    or c
    and c
    db $E4
    ld hl, $91E3
    db $E4
    ld hl, $A1E3
    db $E4
    ld hl, $C1E3
    db $E4
    ld hl, $A1E3
    db $E4
    ld hl, $91E3
    db $E4
    ld hl, $71E3
    db $E4
    ld hl, $51E3
    db $E4
    ld hl, $71E3
    db $E4
    ld hl, $21E3
    and c
    ld [c], a
    pop bc
    db $E3
    sub c
    ld hl, $31A1
    pop bc
    ld hl, $31A1
    pop bc
    ld [hl], c
    db $E4
    ld sp, $E321
    ld h, c
    db $E4
    ld hl, $61E3
    db $E4
    ld sp, $71E3
    db $E4
    ld sp, $71E3
    db $E4
    ld hl, $61E3
    db $E4
    ld hl, $61E3
    db $E4
    ld sp, $71E3
    db $E4
    ld sp, $71E3
    db $E4
    ld hl, $61E3
    db $E4
    ld hl, $61E3
    db $E4
    ld hl, $61E3
    db $E4
    ld hl, $61E3
    pop bc
    ld hl, $21C1
    sub c
    ld hl, $2191
    cp $FE
    ldh [rTAC], a
    ld l, c
    ld b, [hl]
    ei
    ld [c], a
    ld b, c
    db $E3
    ld [hl], c
    ei
    inc b
    ei
    ld [c], a
    ld [hl], c
    db $E3
    ld b, c
    ei
    ld [$E2FB], sp
    or c
    db $E3
    ld sp, $03FB
    ld [c], a
    sub c
    db $E3
    ld sp, $E2FB
    or c
    db $E3
    ld b, c
    ei
    inc b
    ei
    ld [c], a
    or c
    db $E3
    ld [hl], c
    ei
    inc b
    ei
    ld [c], a
    ld [hl], c
    db $E3
    ld b, c
    ei
    inc b
    ei
    ld [c], a
    ld h, c
    db $E3
    ld hl, $04FB
    ei
    ld [c], a
    ld [hl], c
    db $E3
    ld d, c
    ei
    inc b
    ei
    ld [c], a
    ld d, c
    db $E3
    ld hl, $04FB
    ei
    ld [c], a
    ld d, c
    db $E3
    ld de, $04FB
    ld [c], a
    ld b, c
    and c
    ld b, c
    and c
    ld b, c
    and c
    ld b, c
    and c
    ld d, c
    sub c
    pop bc
    db $E3
    ld d, c
    ld [c], a
    sub c
    pop bc
    db $E3
    ld d, c
    sub c
    ld [c], a
    pop bc
    db $E3
    ld d, c
    sub c
    pop bc
    ld d, c
    sub c
    pop bc
    ld d, c
    ei
    pop hl
    or c
    ld [c], a
    ld b, c
    sub c
    or c
    ei
    ld [bc], a
    pop hl
    or c
    ld [c], a
    ld h, c
    or c
    sub c
    pop hl
    or c
    ld [c], a
    ld h, c
    sub c
    ld h, c
    ei
    ld b, c
    ld h, c
    ld [hl], c
    or c
    ei
    inc b
    ld b, c
    ld h, c
    ld [hl], c
    db $E3
    ld b, c
    ld [c], a
    ld b, c
    ld h, c
    ld [hl], c
    sub c
    ld [hl], c
    sub c
    and c
    db $E3
    ld hl, $2171
    ld [c], a
    and c
    sub c
    ei
    ld [hl], c
    sub c
    and c
    and c
    ei
    inc b
    ld [c], a
    ld hl, $6141
    sub c
    ld hl, $6141
    sub c
    ld hl, $6141
    pop bc
    ld hl, $6141
    pop bc
    ld hl, $6141
    sub c
    ld hl, $6141
    sub c
    ld hl, $6141
    sub c
    ld hl, $6141
    sub c
    ld hl, $6141
    pop bc
    ld hl, $6141
    pop bc
    cp $FE
    ldh [rTAC], a
    ld d, d
    sub [hl]
    pop hl
    ld b, d
    ld b, d
    ld [c], a
    ld b, d
    ld [hl+], a
    pop hl
    jp nz, $92B2

    ld [hl], d
    sub d
    sub d
    sub d
    sub d
    or d
    or d
    or d
    or d
    ld b, d
    ld b, d
    ld [c], a
    ld b, d
    ld h, d
    ld [hl], d
    ld h, d
    ld b, d
    ld [hl+], a
    pop hl
    jp nz, $92C2

    sub d
    ld [c], a
    ld [hl+], a
    ld [hl+], a
    pop hl
    ld [hl+], a
    ld [hl+], a
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [c], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    pop hl
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    jp nz, $C2C2

    jp nz, $B2B2

    ld h, d
    ld h, d
    ld h, d
    ld h, d
    or d
    or d
    ld b, d
    ld b, d
    ld b, d
    ld b, d
    ld b, d
    ld b, d
    ld b, d
    ld b, d
    ld b, d
    ld b, d
    ld h, d
    ld h, d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl+], a
    ld [hl+], a
    ld [hl], d
    ld [hl], d
    and d
    and d
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    jp nz, Jump_000_22C2

    ld [hl+], a
    jp nz, Jump_000_22C2

    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    cp $FE
    rst $20
    rlca
    jp nz, $1212

    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    cp $E0
    ld b, $89
    db $F4
    push hl
    ld h, c
    add c
    sub c
    or c
    ld de, $21E4
    push hl
    ld de, $21E4
    push hl
    ld de, $21E4
    push hl
    ld de, $21E4
    db $E3
    ld [hl], c
    ld [hl], c
    ld [hl], d
    ld [hl], c
    ld [hl], c
    ld [hl], c
    ld [hl], c
    ld [hl], c
    ld [hl], c
    or d
    db $E4
    ld [de], a
    inc h
    ld b, h
    ld b, d
    ld d, d
    ld [hl], d
    add d
    sub c
    sub c
    sub c
    sub c
    ld bc, $9191
    ld bc, $E371
    add c
    db $E4
    add d
    sub d
    and d
    push hl
    ld [hl], d
    ld [de], a
    ld de, $3121
    ld b, c
    ld d, d
    ld [hl], d
    add c
    add c
    add c
    add c
    rst $38
    ldh [rTMA], a
    ld l, b
    or $E3
    or c
    db $E4
    ld de, $4121
    ld d, d
    ld d, d
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    ld hl, $4111
    ld d, c
    ld [hl], c
    sub c
    and c
    db $E3
    ld [hl], e
    ld [hl], c
    ld b, c
    db $E4
    ld de, $A1E3
    db $E4
    ld de, $71E3
    ld hl, $2171
    ld b, c
    push hl
    ld h, $E4
    and c
    ld h, c
    push hl
    sub c
    sub c
    sub c
    sub c
    db $E4
    ld b, c
    add c
    db $E3
    and c
    or c
    db $E4
    ld de, $4121
    ld h, c
    ld [hl], c
    sub c
    and c
    sub c
    db $E3
    sub c
    db $E4
    sub c
    and c
    sub c
    db $E3
    sub c
    db $E4
    sub c
    ld h, c
    push hl
    ld hl, $2191
    ld hl, $41E4
    add c
    db $E3
    ld b, c
    or c
    db $E4
    ld de, $2221
    ld [hl+], a
    rst $38
    ldh [rTMA], a
    ld d, d
    ld [hl], e
    inc b
    ld [c], a
    ld [hl+], a
    ld [de], a
    pop hl
    ld [hl], d
    sub d
    add d
    ld b, d
    ld [c], a
    ld [hl+], a
    ld [de], a
    pop hl
    ld [hl], d
    sub d
    add d
    ld b, d
    ld [c], a
    ld [hl+], a
    ld [de], a
    ld [hl+], a
    ld [hl-], a
    ld b, d
    ld [hl-], a
    pop hl
    sub d
    jp nz, Jump_00F_62B2

    ld [c], a
    ld b, d
    ld [hl-], a
    pop hl
    sub d
    jp nz, Jump_00F_62B2

    ld [c], a
    ld b, d
    ld [hl-], a
    ld b, d
    ld d, d
    ld h, d
    ld h, d
    ld h, c
    ld h, c
    ld [hl], d
    ld [hl], d
    rst $38
    rst $20
    ld b, $32
    sub c
    sub c
    jp nz, $C2C2

    sub d
    jp nz, $C292

    sub d
    ld [hl-], a
    sub d
    ld [hl-], a
    sub d
    ld [hl-], a
    jp nz, $C2C2

    sub d
    jp nz, Jump_000_3232

    jp nz, $92C2

    jp nz, $C292

    ld [hl-], a
    jp nz, Jump_000_3232

    jp nz, Jump_000_3232

    jp nz, $9132

    sub c
    sub c
    sub c
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
