SECTION "ROM Bank $00f", ROMX

    inc l
    ld b, b

    db $36, $40, $40, $40, $4A, $40, $54, $40, $5E, $40

    db $F4
    ld b, b

    db $68, $40, $72, $40

    db $F4
    ld b, b
    ld a, h
    ld b, b

    db $86, $40, $90, $40

    sbc d
    ld b, b

    db $A4, $40, $AE, $40

    cp b
    ld b, b

    db $C2, $40, $CC, $40, $D6, $40, $E0, $40

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
    db $18, $4C, $F8, $4C, $40, $78, $A0, $4E, $BB, $4D, $9C, $4F, $80, $50, $40, $78
    db $C1, $51, $81, $50, $7C, $53, $4A, $54, $40, $78, $B6, $54, $51, $54, $2C, $55
    db $C5, $55, $40, $78, $58, $56, $E4, $55, $DC, $56, $D3, $57, $40, $78, $63, $58
    db $E1, $57, $28, $59, $14, $5A

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

    db $40, $78, $D0, $66, $BF, $65, $D9, $68, $3A, $6A, $40, $78, $1C, $6C, $A5, $6A
    db $A9, $6D, $22, $70

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

    db $40, $78, $F0, $77, $5D, $77, $63, $79, $47, $7A, $40, $78, $CC, $7A, $9D, $7A
    db $0C, $7B, $3D, $7B, $40, $78, $95, $7B, $47, $7B, $55, $7C, $AD, $7C, $40, $78
    db $72, $7D, $B7, $7C, $40, $7E, $BB, $7E

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
    ldh [c], a
    inc [hl]
    ld sp, $3231
    ld [hl-], a
    ld [hl-], a
    ld sp, $E132
    and c
    ldh [c], a
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
    ldh [c], a
    ld de, $82E1
    ldh [c], a
    ld de, $3134
    ld sp, $3132
    pop hl
    and c
    ldh [c], a
    ld [hl-], a
    and c
    ld sp, $A2E1
    ldh [c], a
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
    ldh [c], a
    inc d
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    pop hl
    add h
    add c
    add c
    add d
    add d
    ldh [c], a
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
    ldh [c], a
    ld sp, hUnk_FFFE
    cp $E0
    ld b, $84
    add c
    ldh [c], a
    ld sp, $6151
    and c
    db $E3
    ld sp, $6151
    and c
    ldh [c], a
    ld b, c
    ld h, c
    add c
    or c
    db $E3
    ld b, c
    ld h, c
    add c
    or c
    ldh [c], a
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
    ldh [c], a
    ld sp, $A181
    or c
    db $E3
    ld sp, $61E1
    ldh [c], a
    ld sp, $8161
    and c
    or c
    db $E3
    ld sp, $E181
    ld b, c
    or c
    ldh [c], a
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
    db $11, $11, $14, $02, $11

    ld de, $0214
    ld [de], a
    jr @-$19

    ld [de], a
    db $E4
    or d

jr_00F_4953:
    ld h, [hl]
    push hl
    ld [de], a
    ld bc, $B1E4
    ld h, d
    push hl
    ld [de], a
    db $E4
    or d
    ld l, b
    push hl
    ld h, c
    ld de, $B2E4
    push hl
    ld a, [de]
    db $E4
    add h
    or d
    sub e
    or e
    push hl
    ld [de], a
    jr jr_00F_4953

    sub e
    or e
    jp nz, Jump_000_23E5

    ld b, e
    ld h, d
    ld d, h
    ld [bc], a
    ld de, $1411
    ld [bc], a
    ld de, $1311
    ld de, $1202
    ld [bc], a
    ld [de], a
    ld bc, $0211
    ld d, h
    ld [bc], a
    ld de, $1411
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
    db $E4, $61, $E5, $11, $61, $E4, $61, $71

    push hl
    ld de, $61E4
    ld [hl], c
    push hl
    ld de, $11E4
    ld h, c
    add c
    ld de, $8141
    push hl
    ld de, $11E4
    ld d, c
    ld [hl], c
    ld de, $7151
    ld de, $7151
    push hl
    ld de, $11E4
    jr jr_00F_4B49

    ld [bc], a
    db $E3
    ld [de], a
    ld bc, $4323
    ld h, e
    sub d
    or [hl]
    db $E4
    ld b, h
    or h
    add d
    sub e
    add e
    inc d
    db $E3
    or d
    sub d
    add d
    ld h, e
    add e
    sub l
    or e
    db $E4
    ld h, d
    inc b
    ld de, $7151
    push hl
    ld de, $1102
    db $E4
    ld [hl], c
    ld d, c
    ld de, $71E3
    ld d, c
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
    ld de, $1104
    ld d, c
    ld [hl], c
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
    ldh [c], a
    ld [bc], a
    ld h, d
    add d
    sub d
    db $E3
    jr jr_00F_4B2A

    ld [bc], a

jr_00F_4B49:
    ld h, d
    add d
    sub d
    db $E3
    jr z, jr_00F_4B51

    ldh [c], a
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
    ldh [c], a
    or c
    add c
    ld [bc], a
    ld h, d
    add d
    sub d
    db $E3
    jr jr_00F_4B6B

    ldh [c], a
    ld h, d

jr_00F_4B6B:
    add d
    sub d
    db $E3
    jr z, jr_00F_4B72

    ldh [c], a
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
    ldh [c], a
    sub d
    ld h, e
    add e
    sub d
    cp b
    db $E3
    add h
    ld d, h
    inc b
    ldh [c], a
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
    ldh [c], a
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
    ldh [c], a
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
    ldh [c], a
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
    ldh [c], a
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
    ldh [c], a
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
    ldh [c], a
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
    ldh [c], a
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
    db $71, $02, $72, $02

    ld [hl], c
    ld [hl], c
    ld de, $1211
    ld [bc], a
    ld [hl], c
    ld [hl], c
    ld [bc], a
    ld [hl], d
    ld [bc], a
    ld [de], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld hl, $2221
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld b, d
    ld b, d
    ld b, d
    ld b, d
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld de, $1211
    ld [bc], a
    ld de, $0211
    ld [de], a
    ld [bc], a
    ld [hl], c
    ld [hl], c
    inc d
    ld [bc], a
    ld de, $0211
    ld [de], a
    ld [bc], a
    ld [hl], d
    ld de, $1211
    ld [bc], a
    ld de, $0211
    ld [de], a
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
    db $41, $41, $42, $41, $41

    ld b, d
    ld b, c
    ld b, c
    call nz, $4102
    ld b, c
    ld b, d
    ld b, c
    ld b, c
    ld b, d
    ld b, c
    ld b, c
    jp nz, Jump_00F_42C2

    jp nz, $C2C2

    ld b, d
    jp nz, $C2C2

    ld b, d
    jp nz, $C2C2

    ld b, d
    jp nz, $C2C2

    ld b, d
    jp nz, $C2C2

    ld b, d
    jp nz, $C2C2

    ld b, d
    jp nz, $C2C2

    ld b, d
    jp nz, $C2C2

    jp nz, $C2C2

    jp nz, $C242

    call nz, Call_00F_4141
    ld b, c
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
    ld b, c
    call nz, Call_00F_4141
    ld b, c
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
    ld b, c
    db $FE

    db $FE, $E0, $06, $48, $84, $EA, $97, $E4, $04, $24, $E3, $74, $E4, $78, $62, $42
    db $62, $72, $92, $E3, $C6, $A2, $92, $A4, $E4, $28, $E3, $C2, $B2, $C2, $E4, $22
    db $32, $E3, $72, $74, $62, $42, $62, $22, $C6, $A2, $C2, $E4, $22, $32, $52, $72
    db $E3, $A2, $A8, $96, $A2, $A2, $52, $62, $32, $52, $12, $32, $E2, $C2, $E3, $14
    db $A4, $A4, $A4, $A4, $92, $72, $92, $A2, $C2, $E4, $62, $52, $E3, $B2, $A2, $82
    db $A2, $E4, $52, $32, $22, $32, $E3, $62, $52, $32, $52, $E4, $32, $12, $E3, $B2
    db $B4, $A2, $C2, $E4, $12, $E3, $82, $62, $52, $62, $52, $32, $62, $E4, $12, $E3
    db $32, $C2, $32, $02, $E4, $12, $32, $52, $62, $82, $A2, $12, $14, $E3, $B4, $E4
    db $04, $64, $52, $12, $62, $32, $12, $E3, $C2, $E4, $12, $E3, $92, $AC, $C2, $E4
    db $22, $3C, $12, $E3, $C2, $02, $E4, $A2, $82, $62, $52, $12, $E3, $A2, $52, $A2
    db $82, $62, $A2, $E4, $32, $12, $32, $E3, $C2, $E4, $22, $52, $82, $62, $52, $82
    db $B2, $A2, $82, $52, $22, $E3, $A2, $92, $A2, $C2, $E4, $22, $32, $52, $62, $32
    db $B2, $32, $A2, $32, $92, $A2, $C2, $92, $52, $32, $22, $E3, $C2, $E4, $22, $42
    db $62, $72, $92, $A2, $C2, $E5, $22, $32, $E4, $62, $E5, $22, $E4, $62, $C2, $62
    db $E5, $22, $E4, $62, $FE, $FE, $E0, $06, $48, $84, $EA, $98, $E1, $74, $E2, $72
    db $92, $A2, $C2, $E3, $22, $E2, $72, $C4, $94, $E3, $22, $42, $62, $92, $94, $72
    db $62, $72, $22, $E2, $C2, $A2, $C2, $E3, $22, $32, $72, $96, $A2, $E4, $24, $02
    db $E3, $C2, $A2, $92, $72, $62, $72, $22, $72, $92, $72, $52, $32, $22, $E2, $C2
    db $E3, $22, $32, $72, $52, $32, $52, $E2, $C2, $E3, $52, $12, $32, $E2, $C2, $E3
    db $12, $E2, $A2, $C2, $92, $02, $E3, $52, $12, $E2, $A2, $E3, $62, $52, $32, $12
    db $32, $C2, $92, $52, $E4, $56, $32, $22, $32, $52, $62, $82, $A2, $B2, $A2, $82
    db $32, $22, $E3, $C2, $A2, $E2, $B2, $A2, $82, $E3, $84, $62, $82, $52, $12, $32
    db $52, $E2, $62, $E3, $12, $32, $66, $82, $62, $52, $52, $62, $82, $A2, $82, $62
    db $52, $32, $12, $E2, $B2, $A2, $82, $E3, $62, $52, $32, $02, $52, $32, $52, $A2
    db $92, $72, $52, $A2, $92, $A2, $62, $82, $62, $52, $82, $62, $E2, $A2, $C2, $E3
    db $22, $32, $22, $32, $62, $52, $42, $52, $12, $E2, $A2, $82, $62, $52, $62, $E3
    db $52, $32, $12, $E2, $C2, $A2, $C2, $82, $A2, $52, $E3, $52, $32, $22, $E2, $A2
    db $E3, $82, $62, $52, $E2, $A2, $E3, $B2, $A2, $22, $A2, $92, $A2, $62, $52, $62
    db $22, $32, $22, $32, $E2, $A2, $C2, $A2, $C2, $92, $E3, $92, $62, $52, $32, $22
    db $E2, $C2, $A2, $92, $C2, $A2, $92, $72, $62, $42, $22, $42, $62, $72, $92, $C2
    db $FE, $FE, $E0, $06, $62, $84, $E3, $04, $24, $74, $74, $74, $62, $72, $96, $C2
    db $E4, $34, $22, $E3, $C2, $A2, $92, $72, $52, $34, $E1, $C6, $E2, $22, $34, $2A
    db $C2, $A2, $92, $A2, $92, $A2, $72, $C4, $E7, $02, $E1, $C4, $E2, $24, $34, $E7
    db $06, $E2, $5A, $72, $52, $32, $E1, $A4, $64, $34, $54, $A2, $E2, $A2, $92, $A2
    db $32, $E1, $C2, $E2, $62, $52, $32, $62, $32, $E1, $C2, $E2, $C2, $A2, $C2, $92
    db $82, $B2, $82, $52, $E3, $52, $32, $22, $52, $E2, $32, $22, $32, $62, $52, $32
    db $52, $82, $E1, $62, $E2, $12, $32, $52, $62, $82, $A2, $52, $32, $52, $62, $A2
    db $84, $E1, $84, $E2, $14, $E7, $02, $E1, $A4, $C4, $E2, $14, $E7, $06, $32, $52
    db $62, $A2, $80, $14, $34, $54, $E1, $54, $A4, $A2, $A2, $A2, $A2, $A2, $A2, $A2
    db $A2, $A2, $A2, $A2, $A2, $A2, $A2, $AA, $C2, $E2, $12, $52, $A2, $82, $A2, $62
    db $32, $12, $E1, $C2, $E2, $54, $E1, $A2, $92, $C2, $B2, $A2, $82, $B2, $E2, $52
    db $32, $24, $E1, $A2, $82, $62, $52, $E2, $32, $52, $62, $22, $34, $E1, $A4, $32
    db $C2, $E2, $32, $62, $52, $32, $22, $E1, $C2, $22, $E2, $22, $E1, $C2, $E2, $22
    db $32, $72, $22, $72, $E1, $C2, $E2, $62, $E1, $A2, $E2, $62, $E1, $92, $E2, $62
    db $E1, $22, $E2, $62, $FE, $FF, $EE, $10, $FE, $E0, $05, $89, $85, $EA, $81, $E4
    db $56, $E3, $C2, $E4, $86, $71, $51, $41, $51, $74, $12, $E3, $C6, $C1, $E4, $21
    db $34, $22, $E3, $C4, $A1, $91, $A6, $E4, $12, $E3, $C2, $A2, $51, $71, $91, $A1
    db $C1, $E4, $21, $41, $51, $E3, $78, $88, $91, $71, $91, $A1, $C8, $44, $EA, $30
    db $52, $E2, $C2, $C2, $C2, $E3, $12, $E2, $C2, $E3, $12, $E2, $C2, $EA, $20, $52
    db $E2, $C2, $C2, $C2, $E3, $12, $E2, $C2, $E3, $12, $E2, $C2, $EA, $10, $E3, $56
    db $E2, $C2, $E3, $86, $71, $51, $42, $E4, $14, $E3, $C1, $A1

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
    db $FE

    db $FE, $EA, $96, $E0, $05, $68, $87, $EA, $81, $E4, $81, $01, $E3, $C1, $E4, $01
    db $81, $51, $81, $51, $C1, $81, $51, $81, $E5, $11, $E4, $C1, $A1, $81, $A1, $71
    db $41, $71, $C1, $41, $71, $41, $C1, $71, $41, $71, $A1, $71, $41, $71, $91, $61
    db $31, $E3, $C1, $91, $C1, $91, $61, $A1, $71, $91, $A1, $C1, $E4, $21, $41, $51
    db $71, $41, $E3, $C1, $E4, $41, $A1, $71, $41, $71, $91, $51, $E3, $C1, $E4, $51
    db $A1, $51, $21, $01, $E3, $B1, $E4, $51, $21, $51, $21, $51, $21, $51, $71, $51
    db $21, $51, $81, $51, $41, $51, $E3, $51, $C1, $E4, $21, $41, $51, $41, $51, $71
    db $91, $A1, $C1, $51, $91, $71, $51, $41, $02, $E3, $82, $82, $82, $A2, $82, $A2
    db $82, $02, $82, $82, $82, $A2, $82, $A2, $82, $C2, $E5, $52, $E4, $C2, $82, $C2
    db $82, $52, $E3, $C2, $E4, $41, $E3, $A1, $E4, $41, $71, $C1, $E5, $11, $E4

    pop bc
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
    db $E4

Jump_00F_52E4:
    add c
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
    ldh [c], a
    pop bc
    db $E3
    ld d, c
    add c
    ld d, c
    ldh [c], a
    pop bc
    db $E3
    ld d, c
    pop bc
    add c
    ld d, c
    ldh [c], a
    pop bc
    db $E3
    ld d, c
    ldh [c], a
    pop bc
    db $E3
    ld d, c
    ldh [c], a
    add c
    db $E3
    ld d, c
    ldh [c], a
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
    ldh [c], a
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
    ldh [c], a
    pop bc
    db $E3
    pop bc
    add c
    ld d, c
    ld de, $71C1
    ld b, c
    ldh [c], a
    pop bc
    db $E4
    ld de, $81E3
    ld d, c
    ld de, $C4E2
    db $E3
    ld bc, $2111
    ldh [c], a
    pop bc
    db $E3
    ld de, $4121
    ldh [c], a
    pop bc
    db $E3
    ld hl, $5141
    ld [hl], c
    db $FE

    db $FE, $E0, $05, $62, $A4, $EA, $81, $E1, $52, $52, $52, $52, $52, $52, $52, $52
    db $52, $52, $52, $52, $52, $52, $52, $52, $62, $62, $62, $62, $72, $72, $52, $52
    db $42, $42, $C2, $C2, $E2, $52, $52, $22, $22, $E1, $B2, $B2, $B2, $B2, $B2, $B2
    db $B2, $B2, $C2, $C2, $C2, $C2, $C2, $C2, $C2, $C2, $54, $02, $52, $02, $52, $02
    db $C1, $C1, $54, $02, $52, $02, $52, $02, $C1, $C1, $54, $02, $52, $02, $52, $02
    db $51, $51, $54, $02, $52, $02, $52

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

    jp nz, $5252

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
    db $FE

    db $E7, $05, $FE, $32, $41, $41, $FE, $FE, $E0, $07, $88, $4A, $E2, $82, $E3, $12
    db $84, $62, $44, $32, $E2, $A2, $C2, $E3, $43, $31, $E2, $86, $96, $A6, $C2, $E3
    db $C1, $81, $61, $31, $E2, $82, $E3, $12, $84, $62, $44, $32, $22, $32, $B3, $91
    db $80, $02, $E3, $82, $E4, $13, $E3, $B1, $E4, $13, $E3, $11, $16, $E4, $11, $31
    db $46, $31, $11, $E3, $C2, $E4, $32, $E3, $93, $81, $86, $41, $61, $86, $12, $32
    db $42, $83, $61, $B6, $92, $83, $61, $B6, $92, $84, $13, $E2, $C1, $E3, $43, $31
    db $63, $41, $93, $81, $E4, $11, $E3, $C1, $E4, $41, $31, $FE, $FE, $E0, $07, $85
    db $4A, $E2, $02, $82, $84, $82, $82, $02, $32, $34, $82, $82, $02, $82, $84, $82
    db $82, $02, $62, $64, $82, $82, $02, $82, $84, $82, $82, $02, $62, $62, $02, $B2
    db $E3, $32, $02, $32, $34, $E2, $B2, $82, $E3, $64, $22, $E2, $B2, $E3, $12, $E2
    db $B2, $02, $92, $94, $92, $92, $02, $B2, $E3, $44, $E2, $C2, $C2, $02, $E3, $62
    db $64, $42, $42, $02, $42, $44, $42, $42, $02, $82, $84, $82, $82, $02, $62, $64
    db $62, $62, $04, $04, $E2, $C1, $81, $C1, $81, $E3, $21, $E2, $81, $E3, $21, $E2
    db $81, $E3, $41, $E2, $C1, $E3, $41, $E2, $C1, $E3, $61, $E2, $C1, $E3, $61, $E2
    db $C1, $FE, $FE, $E0, $07, $42, $62, $EA, $8C, $E2, $12, $E4, $12, $12, $E2, $42
    db $E4, $12, $12, $E2, $32, $E3, $A2, $A2, $E2, $82, $E3, $C2, $C2, $12, $E4, $12
    db $12, $E2, $42, $E4, $12, $12, $E2, $32, $E4, $12, $12, $E2, $82, $E3, $C2, $C2
    db $12, $E4, $12, $12, $E2, $42, $E4, $12, $12, $E2, $32, $E4, $12, $12, $E2, $B2
    db $E3, $B2, $B2, $E2, $42, $E4, $32, $32, $E2, $B2, $E4, $32, $32, $E2, $22, $E3
    db $82, $82, $E2, $12, $E3, $82, $82, $E2, $62, $E4, $12, $12, $E2, $92, $E4, $12
    db $12, $E2, $B2, $E3, $B2, $B2, $E2, $92, $E4, $32, $32, $E3, $12, $E4, $12, $12
    db $E2, $42, $E4, $12, $12, $E2, $82, $E4, $12, $12, $E3, $12, $E4, $12, $E2, $B2
    db $92, $E4, $12, $12, $E2, $42, $E4, $12, $12, $E2, $32, $E4, $12, $12, $E2, $32
    db $E4, $12, $12, $E2, $8C, $84, $82, $82, $82, $82, $FE, $FE, $FB, $E7, $07, $C2
    db $12, $12, $C2, $12, $12, $C2, $12, $12, $C2, $12, $12, $FB, $07, $C4, $C4, $C4
    db $12, $12, $12, $11, $11, $11, $11, $11, $11, $FE, $FE, $E0, $07, $88, $56, $EA
    db $96, $E3, $02, $62, $92, $E4, $12, $E3, $C4, $02, $82, $B6, $E4, $11, $E3, $B1
    db $94, $64, $02, $62, $92, $E4, $12, $64, $E3, $62, $82, $96, $81, $61, $84, $E4
    db $22, $12, $02, $E3, $62, $92, $E4, $12, $E3, $C6, $81, $91, $B4, $E4, $12, $E3
    db $B2, $94, $64, $02, $62, $92, $E4, $12, $64, $E3, $62, $82, $92, $B2, $E4, $12
    db $E3, $81, $91, $64, $04, $E4, $65, $81, $91, $B1, $44, $02, $42, $62, $92, $E5
    db $11, $E4, $B2, $91, $84, $42, $42, $64, $01, $81, $91, $B1, $44, $02, $42, $62
    db $82, $96, $82, $21, $31, $62, $66, $51, $61, $8D, $05, $04, $02, $FE, $FE, $E0
    db $07, $67, $46, $E3, $02, $92, $E4, $11, $E3, $62, $11, $33, $E4, $35, $24, $01
    db $B1, $91, $81, $93, $81, $01, $62, $41, $64, $01, $E5, $11, $E4, $B1, $95, $01
    db $91, $82, $64, $01, $11, $61, $91, $81, $51, $81, $B1, $E5, $21, $E4, $81, $E5
    db $11, $E4, $81, $01, $91, $11, $61, $92, $81, $61, $34, $01, $31, $11, $E3, $C1
    db $E4, $24, $B1, $92, $81, $64, $18, $E5, $11, $E4, $B2, $91, $34, $01, $E3, $91
    db $B2, $91, $11, $61, $11, $01, $B1, $81, $11, $68, $E4, $18, $E3, $B4, $94, $E4
    db $24, $14, $E3, $B2, $E4, $42, $E3, $01, $E3, $82, $B1, $94, $E4, $14, $E3, $B4
    db $84, $96, $E4, $62, $E3, $B0, $E4, $14, $01, $52, $61, $86, $81, $91, $B4, $E5
    db $24, $FE, $FE, $E0, $07, $44, $33, $E1, $62, $E2, $12, $E1, $61, $E2, $12, $E1
    db $61, $E2, $32, $E1, $61, $E2, $31, $01, $E1, $61, $E2, $32, $E1, $62, $E2, $22
    db $E1, $61, $E2, $22, $E1, $61, $E2, $12, $E1, $61, $E2, $11, $01, $E1, $62, $41
    db $E1, $22, $91, $24, $11, $E1, $C2, $61, $C1, $01, $C2, $E1, $91, $12, $E1, $91
    db $E1, $11, $01, $11, $92, $12, $81, $11, $01, $12, $81, $E1, $62, $E2, $12, $E1
    db $61, $E2, $12, $E1, $61, $E2, $32, $E1, $61, $E2, $31, $01, $E1, $61, $E2, $32
    db $E1, $62, $E2, $22, $E1, $61, $E2, $22, $E1, $61, $E2, $12, $E1, $61, $E2, $11
    db $01, $E1, $62, $41, $E1, $22, $91, $21, $01, $12, $11, $E1, $C2, $61, $C1, $01
    db $C2, $E1, $91, $12, $E1, $91, $E1, $11, $01, $11, $82, $62, $E2, $11, $E1, $61
    db $01, $62, $11, $22, $91, $11, $01, $21, $B2, $12, $B1, $11, $01, $11, $91, $11
    db $E1, $22, $91, $21, $01, $21, $B2, $12, $B1, $11, $01, $11, $91, $11, $22, $91
    db $21, $01, $21, $B2, $12, $81, $11, $01, $11, $82, $22, $91, $11, $01, $21, $92
    db $12, $E2, $11, $E1, $11, $01, $11, $E2, $12, $E1, $12, $E2, $11, $E1, $11, $E1
    db $01, $11, $E2, $11, $E1, $11, $01, $11, $E2, $11, $E1, $11, $01, $E1, $11, $E2
    db $11, $E1, $11, $12, $E2, $11, $E1, $11, $01, $11, $E2, $11, $E1, $11, $01, $11
    db $51, $81, $E2, $11, $21, $11, $E1, $B1, $FE, $FE, $E7, $07, $C2, $C2, $41, $92
    db $41, $C2, $41, $92, $41, $92, $FE, $FE, $E0, $05, $49, $06, $EA, $92, $E3, $54
    db $04, $04, $02, $C2, $02, $C2, $A2, $84, $72, $32, $50, $C2, $02, $C2, $A2, $84
    db $72, $32, $5C, $72, $82, $E4, $34, $14, $34, $12, $E3, $A2, $C2, $C0, $CC, $02
    db $58, $04, $04, $C2, $02, $A4, $84, $A1, $81, $72, $50, $C2, $02, $A4, $84, $72
    db $32, $32, $51, $01, $51, $01, $51, $01, $51, $01, $02, $51, $01, $51, $01, $74
    db $71, $01, $71, $01, $71, $01, $82, $72, $32, $34, $52, $5C, $52, $82, $52, $B2
    db $A2, $82, $E4, $32, $1C, $E3, $C4, $A6, $02, $A2, $82, $A2, $02, $E4, $14, $E3
    db $C2, $CC, $C8, $02, $52, $E4, $31, $01, $3C, $12, $02, $36, $52, $E3, $84, $E4
    db $14, $E3, $C2, $C0, $04, $04, $04, $04, $FE, $FE, $E0, $05, $48, $06, $EA, $98
    db $E3, $02, $72, $82, $E4, $34, $E3, $82, $72, $52, $E2, $C1, $E3, $51, $71, $81
    db $C1, $81, $71, $51, $E2, $C1, $E3, $51, $71, $81, $C1, $81, $71, $51, $E2, $C2
    db $E3, $52, $81, $C2, $E4, $83, $72, $71, $51, $31, $53, $E3, $B1, $01, $A1, $81
    db $A1, $83, $52, $72, $84, $12, $E2, $82, $E3, $84, $04, $84, $A4, $C4, $A4, $E4
    db $58, $E3, $C2, $E4, $52, $72, $52, $44, $E3, $C2, $E4, $C2, $A2, $72, $42, $E3
    db $C2, $8A, $06, $E4, $3A, $12, $E3, $C2, $A2, $84, $E2, $C2, $E3, $52, $81, $73
    db $32, $E2, $A2, $C4, $E3, $52, $82, $C2, $E4, $82, $72, $51, $32, $5B, $14, $3C
    db $C2, $A2, $82, $8C, $52, $32, $E3, $B2, $A1, $81, $52, $31, $53, $E2, $C2, $E3
    db $32, $5C, $72, $52, $56, $06, $A2, $B2, $C2, $02, $E3, $C1, $01, $E4, $31, $01
    db $E3, $C1, $01, $E4, $32, $02, $E3, $C1, $01, $E4, $31, $01, $E3, $C2, $E4, $52
    db $E3, $C2, $B2, $A2, $82, $52, $C7, $07, $A2, $C2, $E4, $12, $E3, $C2, $E4, $12
    db $32, $52, $82, $72, $58, $3A, $84, $72, $42, $E3, $C4, $A2, $72, $FE, $FE, $E0
    db $05, $54, $62, $E1, $52, $52, $E2, $52, $E1, $52, $E2, $32, $52, $02, $E1, $52
    db $02, $52, $E2, $52, $E1, $54, $E2, $52, $E1, $32, $14, $12, $E2, $12, $E1, $81
    db $E2, $11, $02, $E1, $12, $E2, $12, $E1, $14, $12, $E2, $12, $E1, $12, $12, $E2
    db $12, $E1, $C2, $A4, $A2, $E2, $A2, $E1, $A4, $52, $82, $A4, $A2, $E2, $A2, $E1
    db $A4, $A2, $B2, $C4, $C4, $C2, $C2, $E1, $12, $22, $44, $42, $52, $74, $C2, $C2
    db $52, $02, $52, $E2, $52, $31, $53, $E1, $32, $42, $54, $52, $E2, $52, $31, $53
    db $E1, $52, $32, $12, $02, $12, $E2, $13, $11, $02, $E1, $84, $14, $12, $E2, $12
    db $E1, $C4, $C2, $C2, $A4, $A2, $A2, $A2, $02, $A2, $A2, $C4, $C2, $C2, $34, $E2
    db $32, $E1, $32, $54, $E2, $52, $E1, $52, $82, $E2, $82, $E1, $82, $A2, $E2, $A2
    db $E1, $A2, $C2, $E2, $C2, $E1, $C2, $53, $31, $32, $14, $12, $E2, $12, $E1, $12
    db $14, $E2, $12, $E1, $12, $14, $E2, $12, $E1, $12, $12, $E2, $12, $E1, $32, $54
    db $52, $E2, $52, $E1, $52, $E2, $32, $52, $02, $E1, $54, $52, $E2, $54, $E1, $52
    db $E2, $52, $E1, $32, $14, $12, $E2, $14, $14, $E1, $C2, $14, $12, $E2, $12, $E1
    db $12, $12, $E2, $12, $E1, $12, $34, $32, $E2, $32, $E1, $34, $32, $E2, $32, $E1
    db $44, $42, $72, $C2, $E2, $42, $E1, $C2, $72, $42, $FE, $E7, $05, $C4, $42, $41
    db $41, $C2, $C2, $42, $C2, $C4, $42, $41, $41, $C2, $C2, $42, $C2, $C4, $42, $41
    db $41, $C2, $C2, $42, $C2, $C4, $42, $41, $41, $C2, $C2, $42, $C2, $C4, $42, $41
    db $41, $C2, $C2, $42, $C2, $C4, $42, $41, $41, $C2, $C2, $42, $C2, $C2, $C2, $C2
    db $C2, $C2, $C2, $C2, $C2, $C2, $C2, $42, $C2, $C2, $42, $C2, $42, $FE, $FE, $E0
    db $05

    ld b, [hl]
    add [hl]
    ldh [c], a
    and c
    db $E3
    ld hl, $A151
    db $E4
    ld hl, $A1E3
    ldh [c], a
    ld sp, $A171
    db $E3
    ld sp, $3171
    ldh [c], a
    ld b, c
    ld [hl], c
    pop bc
    db $E3
    ld b, c
    ld [hl], c
    ld b, c
    pop hl
    sub c
    ldh [c], a
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
    ldh [c], a
    sub c
    db $E3
    ld b, c
    ldh [c], a
    sub c
    db $E3
    ld d, c
    ldh [c], a
    sub c
    db $E3
    ld [hl], c
    ldh [c], a
    sub c
    db $E3
    ld d, c
    ldh [c], a
    sub c
    db $E3
    ld b, c
    ldh [c], a
    sub c
    db $E3
    ld d, c
    ldh [c], a
    sub c
    db $E3
    ld hl, $91E2
    pop bc
    sub c
    db $E3
    ld hl, $91E2
    db $E3
    ld b, c
    ldh [c], a
    sub c
    db $E3
    ld d, c
    ldh [c], a
    sub c
    db $E3
    ld [hl], c
    ldh [c], a
    sub c
    db $E3
    ld d, c
    ldh [c], a
    sub c
    db $E3
    ld [hl], c
    ldh [c], a
    sub c
    db $E3
    ld hl, $91E2
    db $E3
    ld d, c
    ldh [c], a
    sub c
    db $E3
    ld b, c
    ldh [c], a
    sub c
    db $E3
    ld d, c
    ldh [c], a
    sub c
    db $E3
    ld [hl], c
    ldh [c], a
    sub c
    db $E3
    ld d, c
    ldh [c], a
    sub c
    db $E3
    ld b, c
    ldh [c], a
    sub c
    db $E3
    ld d, c
    ldh [c], a
    sub c
    db $E3
    ld hl, $91E2
    pop bc
    sub c
    db $E3
    ld hl, $91E2
    db $E3
    ld b, c
    ldh [c], a
    sub c
    db $E3
    ld d, c
    ldh [c], a
    sub c
    db $E3
    ld [hl], c
    ldh [c], a
    sub c
    db $E3
    ld d, c
    ldh [c], a
    sub c
    db $E3
    ld b, c
    ldh [c], a
    sub c
    db $E3
    ld d, c
    ldh [c], a
    and c
    db $E3
    ld hl, $A1E2
    db $E3
    ld d, c
    ldh [c], a
    and c
    db $E3
    sub c
    ldh [c], a
    and c
    db $E3
    ld [hl], c
    ldh [c], a
    pop bc
    db $E3
    ld b, c
    ldh [c], a
    pop bc
    db $E3
    pop bc
    ldh [c], a
    pop bc
    db $E3
    ld [hl], c
    ldh [c], a
    pop bc
    db $E3
    ld b, c
    ldh [c], a
    pop bc
    db $E3
    ld d, c
    ldh [c], a
    pop bc
    db $E3
    ld [hl], c
    ldh [c], a
    pop bc
    db $E3
    sub c
    ldh [c], a
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
    ldh [c], a
    pop bc
    db $E3
    pop bc
    ldh [c], a
    pop bc
    db $E4
    ld b, c
    ldh [c], a
    pop bc
    db $E4
    ld [hl], c
    ldh [c], a
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
    ldh [c], a
    pop bc
    db $E3
    pop bc
    ldh [c], a
    pop bc
    db $E4
    ld b, c
    ldh [c], a
    pop bc
    db $E4
    ld [hl], c
    ldh [c], a
    pop bc
    db $E4
    pop bc
    ldh [c], a
    pop bc
    db $E4
    ld [hl], c
    ldh [c], a
    pop bc
    db $E4
    ld d, c
    ldh [c], a
    pop bc
    db $E3
    pop bc
    ldh [c], a
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
    ldh [c], a
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
    ldh [c], a
    sub c
    db $E3
    sub c
    ldh [c], a
    sub c
    db $E4
    ld d, c
    ldh [c], a
    sub c
    db $E4
    ld b, c
    ldh [c], a
    sub c
    db $E4
    ld hl, $91E2
    db $E3
    sub c
    ldh [c], a
    sub c
    db $E3
    ld d, c
    ld hl, $E2C1
    pop bc
    db $E3
    pop bc
    ldh [c], a
    pop bc
    db $E3
    pop bc
    ldh [c], a
    pop bc
    db $E3
    pop bc
    ldh [c], a
    pop bc
    db $E3
    ld [hl], c
    ldh [c], a
    pop bc
    db $E3
    ld [hl], c
    ldh [c], a
    pop bc
    db $E3
    ld [hl], c
    ldh [c], a
    pop bc
    db $E3
    ld [hl], c
    ldh [c], a
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
    ldh [c], a
    pop bc
    db $E4
    ld b, c
    ldh [c], a
    pop bc
    db $E4
    ld [hl], c
    ldh [c], a
    pop bc
    db $E4
    ld [hl], c
    ldh [c], a
    pop bc
    db $E4
    ld [hl], c
    ldh [c], a
    pop bc
    db $E3
    ld d, c
    ldh [c], a
    sub c
    db $E3
    ld [hl], c
    ldh [c], a
    sub c
    db $E3
    sub c
    ldh [c], a
    sub c
    db $E4
    ld d, c
    ldh [c], a
    sub c
    db $E4
    ld b, c
    ldh [c], a
    sub c
    db $E4
    ld hl, $91E2
    db $E3
    sub c
    ldh [c], a
    sub c
    db $E3
    ld d, c
    ld hl, $E2C1
    pop bc
    db $E3
    pop bc
    ldh [c], a
    pop bc
    db $E3
    pop bc
    ldh [c], a
    pop bc
    db $E3
    pop bc
    ldh [c], a
    pop bc
    db $E3
    ld [hl], c
    ldh [c], a
    pop bc
    db $E3
    ld [hl], c
    ldh [c], a
    pop bc
    db $E3
    ld [hl], c
    ldh [c], a
    pop bc
    db $E3
    ld [hl], c
    ldh [c], a
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
    ldh [c], a
    pop bc
    db $E4
    ld d, c
    ldh [c], a
    pop bc
    db $E4
    ld [hl], c
    ldh [c], a
    pop bc
    db $E4
    ld [hl], c
    ldh [c], a
    pop bc
    db $E4
    ld [hl], c
    ldh [c], a
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
    ldh [c], a
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
    ldh [c], a
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
    ldh [c], a
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
    ldh [c], a
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
    db $88, $64, $14, $F3, $82, $F4, $82, $F5, $82, $F6, $82, $FF, $E0, $02, $85, $88
    db $E2, $14, $34, $44, $64, $44, $34, $14, $34, $44, $84, $E3, $14, $44, $34, $14
    db $84, $34, $14, $84, $64, $14, $44, $E7, $03, $41, $61, $81, $91, $B1, $E4, $11
    db $21, $41, $E7, $06, $EF, $01, $68, $E5, $F2, $E7, $02, $14, $E4, $B4, $64, $44
    db $64, $14, $F3, $E5, $14, $E4, $B4, $64, $44, $64, $14, $F4, $E5, $14, $E4, $B4
    db $64, $44, $64, $14, $FF, $E0, $06, $32, $4F, $E2, $18, $E1, $B8, $E1, $A8, $98
    db $28, $F1, $28, $F2, $28, $F3, $28, $FF, $E7, $02, $04, $04, $04, $24, $24, $24
    db $24, $24, $24, $24, $24, $24, $04, $04, $04, $24, $24, $24, $24, $24, $24, $24
    db $24, $24, $90, $FF, $E0, $0F, $47, $22, $E3, $A6, $E4, $54, $E3, $C2, $E4, $33
    db $11, $E3, $C2, $A4, $A1, $C1, $E4, $14, $E3, $C1, $A1, $84, $62, $52, $AA, $E4
    db $A4, $82, $54, $12, $32, $A2, $82, $54, $12, $36, $32, $52, $62, $86, $A8, $E3
    db $32, $32, $46, $02, $62, $62, $84, $B2, $E0, $0F, $63, $32, $E5, $01, $51, $21
    db $E4, $A1, $61, $51, $21, $E4, $51, $21, $E3, $A1, $61, $51, $21, $FF, $E0, $0F
    db $43, $36, $EF, $01, $01, $E3, $A6, $E4, $54, $E3, $C2, $E4, $33, $11, $E3, $C2
    db $A4, $A1, $C1, $E4, $14, $E3, $C1, $A1, $84, $62, $52, $AA, $E4, $A4, $82, $54
    db $12, $32, $A2, $82, $54, $12, $36, $32, $52, $62, $85, $26, $E0, $0F, $65, $32
    db $E3, $31, $E2, $A1, $E3, $31, $E2, $A1, $E3, $31, $E2, $A1, $E3, $11, $E2, $81
    db $E3, $11, $E2, $81, $E3, $11, $E2, $81, $E3, $31, $E2, $A1, $E3, $31, $E2, $A1
    db $E3, $31, $E2, $A1, $E3, $41, $E2, $B1, $E3, $41, $E2, $B1, $E3, $41, $E2, $B1
    db $E5, $51, $21, $E4, $A1, $61, $51, $21, $E4, $51, $21, $E3, $A1, $61, $51, $21
    db $E7, $08, $A2, $F3, $A2, $F4, $A2, $F5, $A2, $FF, $FE, $E0, $0F, $44, $34, $E1
    db $A1, $E2, $51, $A1, $C1, $E3, $11, $51, $E1, $81, $E2, $51, $81, $C1, $E3, $51
    db $81, $E1, $71, $E2, $31, $71, $A1, $E3, $31, $71, $E1, $61, $E2, $11, $61, $A1
    db $E3, $11, $61, $E1, $31, $A1, $E2, $61, $A1, $E3, $11, $61, $E1, $51, $C1, $E2
    db $81, $C1, $E3, $31, $81, $E1, $A1, $E2, $51, $81, $C1, $E3, $31, $81, $E3, $A1
    db $51, $11, $E2, $C1, $E3, $11, $E2, $51, $E1, $B1, $E2, $61, $A1, $E3, $31, $61
    db $31, $E1, $A1, $E2, $51, $81, $E3, $11, $51, $81, $E1, $81, $E2, $31, $61, $B1
    db $E3, $31, $E1, $11, $E1, $61, $E2, $11, $61, $81, $A1, $E3, $11, $E1, $51, $B1
    db $E2, $31, $81, $B1, $E3, $31, $81, $31, $E2, $B1, $81, $E3, $31, $E2, $B1, $E1
    db $41, $B1, $E2, $31, $81, $31, $E1, $B1, $A1, $E2, $51, $A1, $51, $E1, $A1, $A1
    db $E1, $31, $31, $31, $31, $31, $31, $31, $31, $31, $31, $A1, $A1, $E1, $3A, $A1
    db $A1, $3F, $FF, $FF, $EE, $08, $E0

    ld b, $48
    ld h, [hl]
    ld [$FE92], a
    db $E4
    jr c, jr_00F_6273

    db $E3
    or h
    and c
    ldh [c], a
    and c
    ld h, c
    db $E3
    ld sp, $3138
    ld sp, $4132
    ldh [c], a
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
    ldh [rTMA], a
    ld b, h
    ld h, e
    db $E3
    ld h, [hl]
    ld [hl-], a
    ld b, e
    add e
    ld b, d
    ldh [c], a
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
    ldh [c], a
    ld sp, $6151
    and c
    ld h, c
    ld sp, $31E3
    ldh [c], a
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
    ldh [c], a
    add c
    ld de, $8141
    db $E3
    ld de, $81E2
    ld b, c
    ld de, $81B1
    ld b, c
    ld de, $11E3
    ldh [c], a
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
    ldh [c], a
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
    ldh [c], a
    ld de, $81E1
    ldh [c], a
    ld de, $4131
    ld de, $4131
    add c
    db $E3
    ld de, $4131
    add c
    ld b, c
    ld sp, $E111
    add c
    ldh [c], a
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
    ldh [c], a
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
    ldh [c], a
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
    ldh [c], a
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
    ldh [c], a
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
    ldh [c], a
    ld sp, $E181
    add c
    pop bc
    ldh [c], a
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

    db $FE, $E0, $06, $88, $C5, $E2, $A2, $E3, $32, $36, $51, $61, $82, $B2, $A2, $32
    db $34, $E7, $02, $28, $38, $58, $E7, $06, $62, $B2, $B6, $E4, $11, $21, $42, $72
    db $62, $E3, $B2, $B4, $E7, $02, $A8, $B8, $E4, $18, $E7, $06, $92, $22, $96, $C1
    db $E5, $21, $E4, $C2, $B1, $91, $82, $42, $48, $11, $21, $41, $61, $72, $42, $E5
    db $42, $22, $E7, $02, $18, $28, $48, $E7, $06, $E4, $62, $E3, $B2, $E4, $66, $41
    db $61, $72, $91, $71, $E4, $62, $E3, $B2, $E4, $66, $41, $61, $72, $91, $71, $A2
    db $32, $A6, $81, $A1, $B2, $E5, $11, $E4, $B1, $A2, $32, $A6, $81, $A1, $B2, $E5
    db $11, $E4, $B1, $E7, $02, $E5, $38, $28, $E4, $A8, $E5, $18, $E4, $B8, $88, $E7
    db $06, $A2, $A2, $E7, $02, $E5, $38, $28, $E4, $A8

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
    db $FE

    db $FE, $E0, $06, $87, $95, $E2, $62, $A2, $A4, $82, $A2, $B2, $E3, $22, $32, $E2
    db $A2, $A4, $82, $A2, $B2, $E3, $22, $22, $E2, $B2, $E3, $62, $22, $12, $E2, $A2
    db $E3, $12, $21, $41, $22, $E2, $B2, $E3, $22, $62, $72, $62, $42, $72, $52, $E2
    db $92, $E3, $22, $42, $52, $72, $92, $52, $42, $E2, $82, $B2, $E3, $42, $82, $B2
    db $E4, $42, $E3, $82, $72, $E2, $72, $A2, $E3, $42, $72, $A2, $42, $72, $21, $E1
    db $B1, $E3, $21, $E1, $B1, $E3, $21, $E1, $B1, $E3, $21, $E1, $B1, $E3, $21, $E1
    db $B1, $E3, $21, $E1, $B1, $E3, $41, $E1, $B1, $E3, $41, $E1, $B1, $E3, $21, $E1
    db $B1, $E3, $21, $E1, $B1, $E3, $21, $E1, $B1, $E3, $21, $E1, $B1, $E3, $21, $E1
    db $B1, $E3, $21, $E1, $B1, $E3, $41, $E1, $B1, $E3, $41, $E1, $B1, $E3, $61, $E2
    db $31, $E3, $61, $E2, $31, $E3, $61, $E2, $31, $E3, $61, $E2, $31, $E3, $61, $E2
    db $31, $E3, $61, $E2, $31, $E3, $81, $E2, $31, $E3, $81, $E2, $31, $E3, $61, $E2
    db $31, $E3, $61, $E2, $31, $E3, $61, $E2, $31, $E3, $61, $E2, $31, $E3, $61, $E2
    db $31, $E3, $61, $E2, $31, $E3, $81, $E2, $31, $E3, $81, $E2, $31, $E7, $02, $38
    db $28, $E1, $A8, $E2, $18, $E1, $B8, $88, $E7, $06, $A2, $A2, $E7, $02, $E2, $38
    db $28, $E1, $A8

    ldh [c], a
    jr @-$1D

    cp b
    adc b
    rst $20
    ld b, $E3
    ld b, c
    ldh [c], a
    or c
    ld [hl], c
    or c
    db $E3
    ld b, c
    ldh [c], a
    or c
    ld [hl], c
    or c
    db $E3
    ld [hl], c
    ld b, c
    ldh [c], a
    or c
    db $E3
    ld b, c
    db $E3
    ld [hl], c
    ld b, c
    ldh [c], a
    or c
    db $E3
    ld b, c
    ldh [c], a
    and d
    and d
    ldh [c], a
    ld h, c
    pop hl
    ld h, c
    ldh [c], a
    ld h, c
    pop hl
    ld h, c
    ldh [c], a
    ld h, c
    pop hl
    ld h, c
    ldh [c], a
    ld h, c
    pop hl
    ld h, c
    ldh [c], a
    ld h, c
    pop hl
    ld h, c
    ldh [c], a
    ld h, c
    pop hl
    ld h, c
    ld [hl], c
    ldh [c], a
    or c
    pop hl
    ld [hl], c
    ldh [c], a
    or c
    pop hl
    ld [hl], c
    ldh [c], a
    or c
    pop hl
    ld [hl], c
    ldh [c], a
    or c
    pop hl
    ld [hl], c
    ldh [c], a
    or c
    pop hl
    ld [hl], c
    ldh [c], a
    or c
    pop hl
    ld h, c
    ldh [c], a
    sub c
    pop hl
    ld h, c
    ldh [c], a
    sub c
    pop hl
    ld h, c
    ldh [c], a
    sub c
    pop hl
    ld h, c
    ldh [c], a
    sub c
    pop hl
    ld h, c
    ldh [c], a
    sub c
    pop hl
    ld h, c
    ldh [c], a
    sub c
    pop hl
    ld b, c
    ldh [c], a
    ld [hl], c
    pop hl
    ld b, c
    ldh [c], a
    ld [hl], c
    pop hl
    ld b, c
    ldh [c], a
    ld [hl], c
    pop hl
    ld b, c
    ldh [c], a
    and c
    pop hl
    ld b, c
    ldh [c], a
    and c
    pop hl
    ld b, c
    ldh [c], a
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
    ldh [c], a
    or c
    pop hl
    ld [hl], c
    ldh [c], a
    or c
    pop hl
    ld [hl], c
    ldh [c], a
    or c
    pop hl
    ld [hl], c
    ldh [c], a
    or c
    pop hl
    ld [hl], c
    ldh [c], a
    or c
    pop hl
    ld [hl], c
    ldh [c], a
    or c
    pop hl
    ld h, c
    ldh [c], a
    sub c
    pop hl
    ld h, c
    ldh [c], a
    sub c
    pop hl
    ld h, c
    ldh [c], a
    sub c
    pop hl
    ld h, c
    ldh [c], a
    sub c
    pop hl
    ld h, c
    ldh [c], a
    sub c
    pop hl
    ld h, c
    ldh [c], a
    sub c
    pop hl
    ld b, c
    ldh [c], a
    ld [hl], c
    pop hl
    ld b, c
    ldh [c], a
    ld [hl], c
    pop hl
    ld b, c
    ldh [c], a
    ld [hl], c
    pop hl
    ld b, c
    ldh [c], a
    and c
    pop hl
    ld b, c
    ldh [c], a
    and c
    pop hl
    ld b, c
    ldh [c], a
    and c
    ldh [c], a
    ld h, c
    pop hl
    ld h, c
    and c
    ldh [c], a
    ld de, $A161
    db $E3
    ld de, $7161
    ld b, c
    ldh [c], a
    or c
    ld [hl], c
    ldh [c], a
    ld h, c
    pop hl
    ld h, c
    and c
    ldh [c], a
    ld de, $A161
    db $E3
    ld de, $7161
    ld b, c
    ldh [c], a
    or c
    ld [hl], c
    ldh [c], a
    ld h, c
    pop hl
    ld h, c
    and c
    ldh [c], a
    ld de, $A161
    db $E3
    ld de, $7161
    ld b, c
    ldh [c], a
    or c
    ld [hl], c
    pop hl
    ld h, c
    and c
    ldh [c], a
    ld de, $E361
    ld h, c
    ld [hl], c
    ld b, c
    ld h, c
    ld hl, $1141
    db $21
    db $FE

    db $FE, $E0, $06, $62, $A3, $E1, $32, $32, $32, $31, $31, $52, $52, $52, $51, $51
    db $62, $62, $62, $61, $61, $82, $82, $A2, $A1, $A1, $B2, $B2, $B2, $B1, $B1, $B2
    db $B2, $B2, $B1, $B1, $B2, $B2, $B2, $B1, $B1, $B2, $B2, $B2, $B1, $B1, $22, $22
    db $22, $21, $21, $22, $22, $22, $21, $21, $22, $22, $22, $21, $21, $22, $22, $22
    db $21, $21, $12, $12, $12, $11, $11, $12, $12, $12, $11, $11, $E4, $22, $E3, $62
    db $E4, $26, $11, $21, $42, $61, $41, $22, $E3, $62, $E4, $26, $11, $21, $42, $61
    db $41, $62, $E3, $A2, $E4, $66, $51, $61, $82, $A1, $81, $62, $E3, $A2, $E4, $66
    db $51, $61, $82, $A1, $81, $E7, $02, $E2, $A8, $98, $58, $88, $68, $28, $E7, $06
    db $E3, $12, $12, $E7, $02, $E2, $A8, $98, $58, $88

    ld a, b
    jr z, @-$17

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
    ldh [c], a
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
    ldh [c], a
    ld h, c
    ld d, c
    ld h, c
    ld b, c
    ld h, c
    ld hl, $1161
    ld h, c
    and c

jr_00F_6A38:
    ld h, c
    db $FE

    db $FE, $E7, $06, $FB, $C1, $C1, $31, $31, $C1, $C1, $31, $31, $C1, $C1, $31, $31
    db $C1, $C1, $31, $31, $FB, $07, $FB, $C2, $C2, $32, $C2, $C2, $C2, $32, $C1, $C1
    db $FB, $04, $E7, $02, $38, $28, $C8, $38, $28, $C8, $E7, $06, $C2, $C2, $E7, $02
    db $38, $28, $C8, $38

    jr z, jr_00F_6A38

    rst $20
    ld b, $32
    ld [hl-], a
    ld [hl-], a
    ld [hl-], a
    jp nz, $32C2

    ld hl, $C421
    call nz, $3131
    ld sp, $3131
    ld sp, $3131
    ei
    jp nz, $C2C2

    jp nz, $3131

    ld sp, $FB31
    rlca
    ei
    jp nz, Jump_000_2121

    ld [hl+], a
    jp nz, $C222

    ei
    inc bc
    jp nz, Jump_000_2121

    ld sp, $3131
    ld sp, $3132
    db $31
    db $FE

    db $FE, $E0, $06, $4A, $66, $EE, $10, $EA, $95, $E4, $31, $32, $11, $01, $E3, $C7
    db $31, $51, $61, $81, $E7, $02, $A8, $38, $A8, $88, $E4, $18, $E3, $88, $E7, $06
    db $E4, $31, $32, $11, $01, $E3, $C7, $31, $51, $61, $81, $E7, $02, $A8, $38, $A8
    db $88, $E4, $18, $E3, $88, $B8, $48, $B8, $98, $E4, $28, $28, $E7, $06, $41, $E3
    db $71, $E4, $41, $E3, $71, $E4, $41, $E3, $71, $E4, $41, $E3, $71, $E4, $41, $E3
    db $71, $E4, $41, $E3, $71, $E4, $41, $E3, $71, $E4, $41, $E3, $71, $E4, $51, $E3
    db $91, $E4, $51, $E3, $91, $E4, $51, $E3, $91, $E4, $51, $E3, $91, $E4, $31, $E3
    db $61, $E4, $31, $E3, $61, $E4, $31, $E3, $61, $E4, $31, $E3, $61, $E4, $41, $E3
    db $71, $E4, $41, $E3, $71, $E4, $41, $E3, $71, $E4, $41, $E3, $71, $E4, $41, $E3
    db $71, $E4, $41, $E3, $71, $E4, $41, $E3, $71, $E4, $41, $E3, $71, $E4, $51, $E3
    db $91, $E4, $51, $E3, $91, $E4, $51, $E3, $91, $E4, $51, $E3, $91, $E4, $31, $E3
    db $61, $E4, $31, $E3, $61, $E4, $31, $E3, $61, $E4

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

    db $FE, $E0, $06, $89, $48, $E3, $61, $62, $A1, $01, $83, $E2, $81, $A1, $C1, $E3
    db $31, $81, $A1, $C1, $E4, $31, $E7, $02, $E3, $68, $E2, $A8, $E3, $38, $18, $58
    db $18, $E7, $06, $E3, $61, $62, $A1, $01, $83, $E2, $81, $A1, $C1, $E3, $31, $81
    db $A1, $C1, $E4, $31, $E7, $02, $E3, $68, $E2, $A8, $E3, $38, $18, $58, $18, $48
    db $E2, $B8, $78, $98, $68, $98, $E7, $06, $E3, $42, $71, $41, $01, $71, $42, $71
    db $42, $71, $91, $A1, $91, $71, $42, $E2, $C1, $E3, $41, $01, $E2, $C1, $E3, $42
    db $E2, $C4, $91, $A1, $91, $71, $E3, $42, $71, $41, $01, $71, $42, $71, $42, $71
    db $91, $A1, $91, $71, $42, $E2, $C1, $E3, $41, $01, $E2, $C1, $E3, $42, $E2, $C4
    db $91, $A1, $91, $71

    db $E3
    ld b, c
    ldh [c], a
    or c
    db $E3
    ld hl, $91E2
    db $E3
    ld b, c
    ldh [c], a
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
    ldh [c], a
    and c
    db $E3
    ld b, c
    ldh [c], a
    or c
    db $E3
    ld [hl], c
    ldh [c], a
    or c
    db $E3
    sub c
    ld b, c
    and c
    ld b, c
    sub c
    ld b, c
    ld [hl], c
    ldh [c], a
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
    ldh [c], a
    ret z

    db $E3
    ld c, b
    ldh [c], a
    sbc b
    ret z

    cp b
    sbc b
    rst $20
    ld b, $E3
    ld b, c
    ldh [c], a
    or c
    db $E3
    ld hl, $91E2
    db $E3
    ld b, c
    ldh [c], a
    or c
    db $E3
    ld hl, $91E2
    db $E3
    ld b, c
    ldh [c], a
    or c
    db $E3
    ld hl, $91E2
    db $E3
    ld b, c
    ldh [c], a
    or c
    db $E3
    ld hl, $91E2
    db $E3
    ld b, c
    ldh [c], a
    pop bc
    db $E3
    ld b, c
    ld h, c
    ldh [c], a
    pop bc
    db $E3
    ld h, c
    ld [hl], c
    ldh [c], a
    pop bc
    db $E3
    add c
    ld d, c
    ldh [c], a
    pop bc
    db $E3
    ld d, c
    db $E3
    add c
    ld d, c
    ldh [c], a
    pop bc
    db $E3
    ld d, c
    and c
    ld [hl], c
    ld sp, $A171
    ld [hl], c
    ld sp, $8171
    ld d, c
    ldh [c], a
    pop bc
    db $E3
    ld d, c
    add c
    ld d, c
    ldh [c], a
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
    jr @+$4A

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
    jr c, @+$46

    ld h, h
    jr c, @+$46

    ldh [c], a
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
    ldh [c], a
    ld l, b
    db $E3
    ld l, b
    ld e, b
    ldh [c], a
    ld e, b
    db $E3
    ld e, b
    ld e, b
    ldh [c], a
    ld e, b
    db $E3
    ld e, b
    adc b
    ldh [c], a
    jr z, jr_00F_6D8A

    adc b
    db $FE

    db $FE, $E0, $06, $E2, $60, $E2, $31, $32, $61, $01, $81, $02, $81, $81, $81, $81
    db $81, $81, $81, $81, $E1, $B1, $B1, $B1, $B1, $B1, $B1, $B1, $B1, $E2, $11, $11
    db $11, $11, $11, $11, $11, $11, $E2, $31, $32, $61, $01, $81, $02, $81, $81, $81
    db $81, $81, $81, $81, $81, $E1, $B1, $B1, $B1, $B1, $B1, $B1, $B1, $B1, $E2, $11
    db $11, $11, $11, $11, $11, $11, $11, $91, $91, $91, $91, $91, $91, $91, $91, $B1
    db $B1, $B1, $B1, $B1, $B1, $B1, $B1, $41, $41, $41, $71, $71, $71, $91, $91, $91
    db $71, $71, $71, $41, $41, $41, $41, $51, $51, $51, $51, $51, $C1, $C1, $C1, $C1
    db $61, $61, $61, $B1, $B1, $91, $91, $41, $41, $41, $71, $71, $71, $91, $91, $91
    db $71, $71, $71, $41, $41, $41, $41, $51, $51, $51, $C1, $C1, $C1, $C1, $C1, $C1
    db $61, $61, $61, $B1, $B1, $91, $91

    ld b, c
    ld b, c
    db $E3
    ld b, c
    ldh [c], a
    ld b, c
    ld b, c
    db $E3
    ld b, c
    ldh [c], a
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    db $E3
    ld b, c
    ldh [c], a
    ld b, c
    ld b, c
    db $E3
    ld b, c
    ldh [c], a
    ld b, c
    ld b, c
    pop hl
    pop bc
    pop bc
    ldh [c], a
    pop bc
    pop hl
    pop bc
    pop bc
    ldh [c], a
    pop bc
    pop hl
    pop bc
    pop bc
    pop hl
    or c
    or c
    ldh [c], a
    or c
    pop hl
    or c
    or c
    ldh [c], a
    or c
    pop hl
    or c
    or c
    ldh [c], a
    ld b, c
    db $E3
    ld b, c
    ldh [c], a
    ld b, c
    ld b, c
    db $E3
    ld b, c
    ldh [c], a
    ld b, c
    ld b, c
    db $E3
    ld b, c
    ldh [c], a
    ld b, c
    ld b, c
    db $E3
    ld b, c
    ldh [c], a
    ld b, c
    db $E3
    ld b, c
    ldh [c], a
    ld b, c
    db $E3
    ld b, c
    ldh [c], a
    ld b, c
    ldh [c], a
    ld b, c
    ld b, c
    db $E3
    ld b, c
    ldh [c], a
    ld b, c
    db $E3
    ld b, c
    ldh [c], a
    ld b, c
    db $E3
    ld b, c
    ldh [c], a
    ld b, c
    ldh [c], a
    ld b, c
    ld b, c
    db $E3
    ld b, c
    ldh [c], a
    ld b, c
    db $E3
    ld b, c
    ldh [c], a
    ld b, c
    db $E3
    ld b, c
    ldh [c], a
    ld b, c
    ldh [c], a
    ld b, c
    ld b, c
    db $E3
    ld b, c
    ldh [c], a
    ld b, c
    db $E3
    ld b, c
    ldh [c], a
    ld b, c

jr_00F_6EB8:
    db $E3
    ld b, c
    ldh [c], a
    ld b, c
    ldh [c], a
    ld b, c
    ld b, c
    db $E3
    ld b, c
    ldh [c], a
    ld b, c
    db $E3
    ld b, c
    ldh [c], a
    ld b, c
    db $E3
    ld b, c
    ldh [c], a
    ld b, c
    rst $20
    ld [bc], a
    ld e, b
    ld c, b
    jr c, jr_00F_6EB8

    ld b, $11
    ld de, $11E3
    ldh [c], a
    ld de, $11E2
    db $E3
    ld de, $11E2
    ld de, $11E3
    ldh [c], a
    ld de, $E311
    ld de, $11E2
    db $E3
    ld de, $11E2
    db $E3
    ld de, $11E2
    ld de, $11E3
    ldh [c], a
    ld de, $11E3
    ldh [c], a
    ld de, $11E3
    ldh [c], a
    ld de, $E311
    ld de, $11E2
    ld de, $11E3
    ldh [c], a
    ld de, $E311
    ld de, $A1E2
    and c
    db $E3
    and c
    ldh [c], a
    and c
    and c
    db $E3
    and c
    ldh [c], a
    and c
    and c
    db $E3
    and c
    ldh [c], a
    and c
    and c
    db $E3
    and c
    ldh [c], a
    and c
    db $E3
    and c
    ldh [c], a
    and c
    db $E3
    and c
    ldh [c], a
    and c
    and c
    db $E3
    and c
    ldh [c], a
    and c
    and c
    db $E3
    and c
    ldh [c], a
    and c
    db $E3
    and c
    and c
    ldh [c], a
    and c
    db $E3
    and c
    ldh [c], a
    and c
    db $E3
    and c
    ldh [c], a
    and c
    db $E3
    and c
    ldh [c], a
    and c
    ld de, $E311
    ld de, $11E2
    ld de, $11E3
    ldh [c], a
    ld de, $1111
    db $E3
    ld de, $11E2
    db $E3
    ld sp, $31E2
    db $E3
    ld sp, $51E2
    db $E3
    ld d, c
    ldh [c], a
    pop bc
    db $E3
    pop bc
    ldh [c], a
    pop bc
    ld hl, $21E3
    ldh [c], a
    ld hl, $E341
    ld b, c
    ldh [c], a
    ld b, c
    pop hl
    pop bc
    ldh [c], a
    pop bc
    pop hl
    pop bc
    ldh [c], a
    ld hl, $21E3
    ldh [c], a
    ld b, c
    db $E3
    ld b, c
    rst $20
    ld [bc], a
    ldh [c], a
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
    ldh [c], a
    ld d, c
    ld d, c
    db $E3
    ld d, c
    ldh [c], a
    ld d, c
    ld d, c
    db $E3
    ld d, c
    ldh [c], a
    ld d, c
    ld d, c
    db $E3
    ld d, c
    ldh [c], a
    ld d, c
    db $E3
    ld d, c
    ldh [c], a
    ld d, c
    db $E3
    ld d, c
    ldh [c], a
    ld sp, $E331
    ld sp, $31E2
    ld sp, $31E3
    ldh [c], a
    ld sp, $E331
    ld sp, $31E2
    ld sp, $31E3
    ldh [c], a
    ld sp, $31E3
    ldh [c], a
    ld sp, $31E3
    ldh [c], a
    ld de, $E311
    ld de, $11E2
    ld de, $11E3
    ldh [c], a
    ld de, $E311
    ld de, $11E2
    ld de, $11E3
    ldh [c], a
    ld de, $11E3
    ldh [c], a
    ld de, $11E3
    pop hl
    or c
    or c
    ldh [c], a
    or c
    pop hl
    or c
    or c
    ldh [c], a
    or c
    pop hl
    or c
    or c
    ldh [c], a
    or c
    pop hl
    or c
    or c
    ldh [c], a
    or c
    pop hl
    or c
    ldh [c], a
    or c
    pop hl
    or c
    ldh [c], a
    or c
    rst $20
    ld [bc], a
    adc b
    sbc b
    cp b
    db $E3
    jr @+$3A

    ld e, b
    ldh [c], a
    ld l, b
    db $E3
    ld l, b
    ldh [c], a
    ld l, b
    ld c, b
    db $E3
    ld c, b
    ldh [c], a
    ld c, b
    xor b
    db $E3
    xor b
    ldh [c], a
    xor b
    sbc b
    db $E3
    sbc b
    ldh [c], a
    sbc b
    adc b
    db $E3
    adc b
    ldh [c], a
    adc b
    ld e, b
    db $E3
    ld e, b
    ldh [c], a
    ld e, b
    rst $20
    ld b, $FE

    db $FE, $E7, $06, $C1, $C1, $31, $C1, $C1, $31, $C1, $C1, $31, $C1, $31, $C1, $C1
    db $31, $C1, $C1, $C1, $C2, $C1, $32, $C1, $C1, $C1, $C2, $C1, $21, $21, $31, $31
    db $C1, $C1, $31, $C1, $C1, $31, $C1, $C1, $31, $C1, $31, $C1, $C1, $31, $C1, $C1
    db $C1, $C2, $C1, $32, $C1, $C1, $C1, $C2, $C1, $21, $21, $31, $31, $C2, $C2, $C2
    db $C2, $21, $21, $21, $21, $31, $31, $31, $31, $FB, $C1, $C1, $31, $C1, $C1, $31
    db $C1, $C1, $31, $C1, $C1, $31, $C1, $21, $C1, $21, $FB, $09, $C2, $31

    ld hl, $3101
    ld sp, $C131
    pop bc
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
    ldh [$FF09], a
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
    ldh [c], a
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
    ldh [$FF09], a
    ld b, [hl]
    add l

jr_00F_7299:
    ldh [c], a
    ld d, h
    call nz, $03E7

jr_00F_729E:
    db $E3
    jr jr_00F_72D9

    ld e, b
    ldh [c], a
    ret z

    db $E3
    jr jr_00F_72DF

    rst $20
    add hl, bc
    ld h, h
    ld b, h
    ldh [c], a

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
    ldh [c], a
    ret z

    db $E3
    jr @+$5A

    rst $20
    add hl, bc
    db $E3
    call nz, $E7A4
    inc bc
    ldh [c], a
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
    ldh [c], a

jr_00F_72EB:
    ret z

    db $E3
    jr @+$5A

    rst $20
    add hl, bc
    call nz, $E7A4
    inc bc
    ldh [c], a
    ret z

jr_00F_72F7:
    db $E3
    jr jr_00F_7352

    rst $20
    add hl, bc
    and h
    add h
    ldh [c], a
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
    ldh [c], a
    ld d, c
    ld h, c
    and c
    db $E3

jr_00F_7317:
    ld de, $1151
    ldh [c], a
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
    ldh [c], a
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
    ldh [c], a
    and c
    sub c
    db $E3

jr_00F_737A:
    or h

jr_00F_737B:
    ldh [c], a
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
    ldh [c], a
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
    ldh [c], a
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
    ldh [c], a

jr_00F_73FD:
    and c

jr_00F_73FE:
    db $E3
    ld d, c
    ld sp, $1151
    ld d, c
    ldh [c], a
    pop bc
    db $E3
    ld d, c
    ldh [c], a
    and c
    db $E3
    ld d, c
    ldh [c], a
    add c
    db $E3
    ld d, c
    ldh [c], a
    and c
    db $E3
    ld d, c
    ldh [c], a
    pop bc
    db $E3
    ld d, c
    ldh [c], a
    and c
    db $E3
    ld d, c
    ld sp, $1151
    ld d, c
    ldh [c], a
    pop bc
    db $E3
    ld d, c
    ldh [c], a
    and c
    db $E3
    ld d, c
    ldh [c], a
    add c
    db $E3

jr_00F_742B:
    ld d, c
    ldh [c], a
    and c
    db $E3
    ld d, c
    ldh [c], a
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
    ldh [c], a
    pop bc
    db $E3
    ld h, c
    ld de, $3161
    ld h, c
    ldh [c], a

jr_00F_744D:
    ld h, c
    db $E3
    ld hl, $A1E2
    db $E3
    ld sp, $81E2
    db $E3
    ld d, c
    ldh [c], a
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
    ldh [c], a
    pop bc
    db $E3
    ld sp, $C1E2
    db $E3
    ld d, c
    ldh [c], a
    pop bc
    db $E3
    ld h, c
    ldh [c], a
    pop bc
    db $E3
    and c
    ldh [c], a
    add c
    db $E3
    add c
    ldh [c], a
    add c
    db $E3
    ld h, c
    ldh [c], a
    add c
    db $E3
    ld d, c
    ldh [c], a
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
    ldh [c], a
    add c
    db $E3
    ld d, c
    ldh [c], a
    add c
    db $E3
    ld sp, $81E2
    ldh [c], a
    and c
    db $E3
    ld d, c
    ld sp, $1151
    ld d, c
    ldh [c], a
    pop bc
    db $E3
    ld d, c
    ldh [c], a
    and c
    db $E3
    ld d, c
    ldh [c], a
    ld sp, $51E3
    ldh [c], a
    and c
    db $E3
    ld d, c
    ldh [c], a
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
    ldh [c], a
    and c
    pop hl
    and d
    and c
    ld [bc], a
    and d
    ldh [c], a
    and d
    pop hl
    and c
    and c
    jp nz, $E2C2

    pop bc
    pop hl
    jp nz, $02C1

    ld d, d
    ldh [c], a
    ld d, d
    pop hl
    ld d, c
    ld d, c
    and d
    and d
    ldh [c], a
    and c
    pop hl
    and d
    and c
    ld [bc], a
    and d
    ldh [c], a
    and d
    pop hl
    and c
    and c
    jp nz, $E2C2

    pop bc
    pop hl
    jp nz, $02C1

    ld d, d
    ldh [c], a
    ld d, d
    pop hl
    ld d, c
    ld d, c
    cp $A2
    and d
    ldh [c], a
    and c
    pop hl
    and d
    and c
    ld [bc], a
    and d
    ldh [c], a
    and d
    pop hl
    and c
    and c
    add d
    add d
    ldh [c], a
    add c
    pop hl
    add d
    add c
    ld [bc], a
    add d
    ldh [c], a
    add d
    pop hl
    add c
    add c
    ld h, d
    ld h, d
    ldh [c], a
    ld h, c
    pop hl
    ld h, d
    ld h, c
    ld [bc], a
    ld h, d
    ldh [c], a
    ld h, d
    pop hl
    ld h, c
    ld h, c
    jp nz, $E2C2

    pop bc
    pop hl
    jp nz, $02C1

    ld d, d
    ldh [c], a
    ld d, d
    pop hl
    ld d, c
    ld d, c
    and d
    and d
    ldh [c], a
    and c
    pop hl
    and d
    and c
    ld [bc], a
    and d
    ldh [c], a
    and d
    pop hl
    and c
    and c
    add d
    add d
    ldh [c], a
    add c
    pop hl
    add d
    add c
    ld [bc], a
    add d
    ldh [c], a
    add d
    pop hl
    add c
    add c
    ld h, d
    ld h, d
    ldh [c], a
    ld h, c
    pop hl
    ld h, d
    ld h, c
    ld [bc], a
    ld h, d
    ldh [c], a
    ld h, d
    pop hl
    ld h, c
    ld h, c
    ld h, d
    ld h, d
    ldh [c], a
    ld h, c
    pop hl
    ld h, d
    ld h, c
    ld [bc], a
    ld h, d
    ldh [c], a
    ld h, d
    pop hl
    ld d, c
    ld d, c
    ld [hl-], a
    ld [hl-], a
    ldh [c], a
    ld sp, $32E1
    ld sp, $3202
    ldh [c], a
    ld [hl-], a
    pop hl
    ld sp, $3231
    ld [hl-], a
    ldh [c], a
    ld sp, $32E1
    ld sp, $3202
    ldh [c], a
    ld [hl-], a
    pop hl
    ld sp, $1231
    ld [de], a
    ldh [c], a
    ld de, $12E1
    ld de, $1202
    ldh [c], a
    ld [de], a
    pop hl
    ld de, $3211
    ld [hl-], a
    ldh [c], a
    ld sp, $32E1
    ld sp, $3202
    ldh [c], a
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
    ldh [c], a
    ld d, c
    ld sp, $3111
    pop hl
    pop bc
    ldh [c], a
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
    ldh [c], a
    add c
    pop hl
    add d
    add c
    ld [bc], a
    add d
    ldh [c], a
    add d
    pop hl
    add c
    add c
    ld [de], a
    ld [de], a
    ldh [c], a
    ld de, $12E1
    ld de, $1202
    ldh [c], a
    ld [de], a
    pop hl
    ld de, $6211
    ld h, d
    ldh [c], a
    ld h, c
    pop hl
    ld h, d
    ld h, c
    ld [bc], a
    ld h, d
    ldh [c], a
    ld h, d
    pop hl
    ld h, c
    ld h, c
    ld b, d
    ld b, d
    ldh [c], a
    ld b, c
    pop hl
    ld b, d
    ld b, c
    ld [bc], a
    ld [hl-], a
    ldh [c], a
    ld [hl-], a
    pop hl
    ld de, $8211
    add d
    ldh [c], a
    add c
    pop hl
    add d
    add c
    ld [bc], a
    add d
    ldh [c], a
    add d
    pop hl
    add c
    add c
    ld [de], a
    ld [de], a
    ldh [c], a
    ld de, $12E1
    ld de, $5202
    ldh [c], a
    ld d, d
    pop hl
    ld d, c
    ld d, c
    ld b, d
    ld b, d
    ldh [c], a
    ld b, c
    pop hl
    ld b, d
    ld b, c
    ld [bc], a
    ld b, d
    ldh [c], a
    ld b, d
    pop hl
    ld b, c
    ld b, c
    ld [hl-], a
    ld [hl-], a
    ldh [c], a
    ld sp, $32E1
    ld sp, $3101
    ld [hl], c
    and c
    ldh [c], a
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
    ldh [c], a
    or c
    pop hl
    or d
    or c
    ld [bc], a
    or d
    ldh [c], a
    or d
    pop hl
    and c
    add c
    ld [hl-], a
    ld [hl-], a
    ldh [c], a
    ld sp, $32E1
    ld sp, $1202
    ldh [c], a
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
    ldh [c], a
    ld e, b

Jump_00F_7692:
    jr c, jr_00F_767B

    add hl, bc
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    ldh [c], a
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    pop hl
    and c
    and c
    and d
    ldh [c], a
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
    ldh [c], a
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
    ldh [c], a
    ld [hl-], a
    ld de, $0131
    pop hl
    and c
    ldh [c], a
    ld de, $6131
    ld sp, $E111
    and c
    pop hl
    ld sp, $3231
    ldh [c], a
    ld [hl-], a
    ld de, $0131
    pop hl
    and c
    ldh [c], a
    ld de, $6131
    ld sp, $E111
    and c
    pop hl
    add c
    add c
    add d
    ldh [c], a
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
    ldh [c], a
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
    db $FE

    db $FE, $EE, $10, $EA, $98, $E0, $06, $8A, $F4, $E3, $58, $88, $B8, $A4, $84, $E4
    db $18, $38, $54, $C4, $A2, $C2, $E5, $12, $32, $51, $51, $51, $51, $01, $51, $51
    db $51, $31, $E4, $C1, $A1, $81, $C1, $A1, $81, $31, $51, $51, $51, $51, $01, $51
    db $51, $51, $11, $31, $51, $81, $71, $81, $A1, $E5, $31, $11, $E4, $81, $51, $11
    db $71, $81, $A1, $E5, $31, $11, $E4, $81, $51, $11, $71, $81, $A1, $E5, $31, $11
    db $E4, $41, $C1, $41, $B1, $41, $C1, $41, $A1, $81, $71, $41, $11, $E3, $C1, $A1
    db $71, $E4, $84, $A4, $C4, $A2, $82, $70, $84, $A4, $C4, $A2, $82, $E5

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

    db $FE, $E0, $06, $69, $E4, $E2, $81, $C1, $81, $C1, $81, $C1, $81, $C1, $81, $E3
    db $31, $E2, $81, $E3, $81, $E2, $81, $E3, $81, $E2, $81, $E3, $31, $E2, $81, $E3
    db $21, $E2, $81, $E3, $21, $E2, $81, $E3, $21, $E2, $81, $E3, $21, $E2, $81, $E3
    db $11, $E2, $81, $E3, $11, $E2, $81, $E3, $31, $E2, $81, $E3, $31, $E2, $81, $E3
    db $11, $E2, $81, $E3, $11, $E2, $81, $E3, $11, $E2, $81, $E3, $11, $E2, $51, $A1
    db $51, $A1, $51, $A1, $51, $A1, $51, $C1, $51, $C1, $51, $E3, $51, $E2, $51, $E3
    db $51, $E2, $51, $E3, $31, $E2, $51, $E3, $31, $E2, $51, $E3, $81, $E2, $51, $E3
    db $71, $E2, $81, $E3, $81, $E2, $81, $C1, $81, $C1, $81, $C1, $81, $E3, $31, $E2
    db $51, $E3, $31, $E2, $51, $E3, $31, $E2, $51, $E3, $31, $E2, $81, $E3, $81, $E2
    db $81, $E3, $81, $E2, $81, $E3, $51, $E2, $81, $E3, $81, $E2, $81, $E3, $81, $E2
    db $81, $E3, $81, $E2, $81, $E3, $31, $E2, $81, $E3, $31, $E2, $11, $81, $E3, $51
    db $E2, $81, $11, $A1, $E3, $71, $E2, $A1, $E2, $11, $81, $E3, $51, $E2, $81, $11
    db $A1, $E3, $71, $E2, $A1, $41, $C1, $E3, $71, $E2, $C1, $41, $C1, $E3, $A1, $E2
    db $C1, $41, $C1, $E3, $81, $E2, $C1, $41, $A1, $E3, $71, $E2, $A1, $51, $C1, $E3
    db $51, $E2, $C1, $E3, $71, $E2, $C1, $E3, $71, $E2, $C1, $E3, $81, $E2, $C1, $E3
    db $81, $E2, $C1, $E3, $71, $E2, $C1, $E3, $51, $E2, $C1, $31, $A1, $E3, $31, $E2
    db $A1, $31, $A1, $E3, $31, $E2, $A1, $31, $A1, $E3, $31, $E2, $A1, $31, $A1, $E3
    db $31, $E2, $A1, $11, $81, $E3, $51, $E2, $81, $11, $81, $E3, $71, $E2, $81, $11
    db $81, $E3, $51, $E2

    add c
    ld de, $E381
    ld d, c
    ldh [c], a
    add c
    ld sp, $E3A1
    add c
    ldh [c], a
    and c
    ld sp, $E3A1
    ld [hl], c
    ldh [c], a
    and c
    ld sp, $E3A1
    ld d, c
    ldh [c], a
    and c
    ld sp, $E3A1
    ld sp, $A1E2
    ld d, c
    db $E3
    ld d, c
    ld [hl], c
    add c
    ldh [c], a
    ld sp, $31E3
    ld d, c
    ld [hl], c
    ldh [c], a
    ld de, $11E3
    ld sp, $E151
    pop bc
    ldh [c], a
    pop bc
    ld de, $E131
    and c
    ldh [c], a
    ld d, c
    and c
    db $E3
    ld de, $E211
    pop bc
    and c
    ld d, c
    pop hl
    pop bc
    ldh [c], a
    ld [hl], c
    pop bc
    db $E3
    ld hl, $7141
    pop bc
    db $E4
    ld b, c
    db $FE

    db $FE, $E0, $06, $52, $E4, $FB, $E2, $51, $51, $51, $51, $51, $51, $51, $51, $51
    db $51, $51, $51, $51, $51, $51, $51, $FB, $03, $51, $51, $E3, $51, $E2, $51, $E3
    db $51, $E2, $51, $E3, $51, $51, $E2, $51, $31, $C1, $B1, $A1, $81, $51, $31, $51
    db $51, $51, $51, $51, $51, $51, $51, $51, $51, $51, $51, $51, $51, $51, $51, $51
    db $51, $51, $51, $51, $51, $51, $51, $51, $51, $51, $51, $31, $31, $31, $31, $11
    db $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $31, $31, $41
    db $41, $41, $41, $41, $41, $41, $41, $E1, $C1, $E2, $C1, $41, $C1, $71, $C1, $41
    db $C1, $51, $51, $51, $51, $51, $51, $51, $51, $51, $51, $51, $51, $51, $51, $51
    db $51, $31, $31, $31, $31, $31, $31, $31, $31, $31, $31, $31, $31, $31, $51, $71
    db $31, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11

    add c
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
    ldh [c], a
    ld d, c
    ld d, c
    ld d, c
    pop hl
    ld sp, $31E2
    ld sp, $E131
    ld de, $11E2
    ld de, $E111
    pop bc
    ldh [c], a
    pop bc
    pop bc
    pop bc
    pop hl
    and c
    ldh [c], a
    and c
    and c
    and c
    and c
    pop hl
    and c
    ldh [c], a
    and c
    pop hl
    and c
    ldh [c], a
    pop bc
    pop bc
    pop bc
    pop bc
    pop bc
    pop bc
    pop bc
    pop bc
    db $FE

    db $FE, $E7, $06, $FB, $C1, $C1, $91, $C1, $C1, $C1, $91, $C1, $C1, $C1, $91, $C1
    db $C1, $C1, $91, $C1, $FB, $07, $C1, $C1, $91, $C1, $C1, $C1, $91, $C1, $92, $92
    db $92, $92, $FB, $C1, $C1, $91, $C1, $C1, $C1, $91, $C1, $C1, $C1, $91, $C1, $C1
    db $C1, $91, $C1, $FB, $04, $C1, $91

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

    db $FE, $E0, $07, $88, $86, $E3, $78, $E4, $24, $E3, $A8, $C2, $A2, $96, $72, $54
    db $78, $04, $E4, $28, $54, $46, $22, $E3, $C4, $E4, $2C, $0C, $28, $54, $E3, $9C
    db $C4, $E4, $24, $E3, $A4, $7C, $74, $94, $A4, $94, $54, $74, $9C, $2C, $FE, $FE
    db $E0, $07, $86, $46, $E3, $28, $74, $28, $E2, $A4, $C8, $E3, $94, $34, $24, $E2
    db $C4, $E3, $24, $34, $54, $74, $C4, $E4, $44, $7C, $6C, $74, $E3, $A4, $E4, $24
    db $E3, $58, $E4, $24, $E3, $44, $74, $E3, $44, $E2, $C8, $E3, $C4, $E2, $A4, $E3
    db $34, $74, $54, $E2, $C4, $E3, $34, $64, $44, $64, $64, $E3, $C4, $64, $FE, $FE
    db $E0, $07, $62, $88, $E2, $7C, $7C, $98, $54, $74, $74, $94, $A4, $54, $A4, $C4
    db $74, $C4, $28, $94, $E3, $24, $E2, $94, $24, $7C, $58, $94, $48, $C4, $E1, $C4
    db $E2, $24, $44, $3C, $54, $74, $94, $24, $94, $E3, $24, $E2, $94, $C4, $94, $FE
    db $FF, $E7, $07, $14

    inc d
    inc d
    inc d
    inc d
    inc d
    rst $38

    db $E0, $07, $8A, $46, $EA, $96, $E3, $64, $54, $B4, $94, $88, $E4, $24, $14, $FE
    db $E3, $31, $51, $61, $81, $A6, $32, $A2, $32, $44, $E4, $14, $E3, $B2, $A2, $81
    db $01, $72, $81, $A1, $B1, $E4, $11, $36, $E3, $82, $E4, $32, $E3, $82, $FB, $E4
    db $68, $54, $34, $FB, $03, $22, $32, $52, $62, $01, $81, $A2, $B2, $A2, $82, $E3
    db $B2, $E4, $62, $E3, $B2, $E4, $52, $E3, $82, $E4, $62, $E3, $A2, $FE, $E0, $07
    db $88, $E6, $EA, $96, $E2, $B2, $B2, $E3, $82, $62, $52, $62, $52, $22, $E2, $52
    db $62, $82, $92, $B2, $E3, $12, $22, $52, $FE, $FB, $61, $31, $E2, $A1, $E3, $31
    db $FB, $04, $11, $E2, $81, $41, $81, $E3, $81, $11, $81, $11, $71, $31, $81, $51
    db $A1, $71, $31, $E2, $A1, $E3, $81, $31, $E2, $B1, $E3, $31, $A1, $31, $E2, $B1
    db $E3, $31, $B1, $31, $E2, $B1, $E3, $31, $81, $31, $E2, $B1, $E3, $31, $91, $31
    db $E2, $C1, $E3, $31, $A1, $31, $E2, $C1, $E3, $31, $C1, $31, $E2, $C1, $E3, $31
    db $91, $31, $E2, $C1, $E3, $31, $FB, $A1, $61, $31, $61, $FB, $04, $B1, $91, $61
    db $91, $B1, $91, $61, $91, $B1, $91, $31, $91, $B1, $91, $31, $91, $E4, $51, $E3
    db $B1, $E4, $61, $E3, $81, $E4, $21, $E3, $B1, $E4, $31, $E3, $81, $E4, $81, $E3
    db $51, $E4, $61, $E3, $B1, $E4, $51, $E3, $81, $E4, $31, $E3, $51, $E4, $31, $E3
    db $A1, $E4, $31, $E3, $81, $E4, $31, $E3, $A1, $E4, $31, $E3, $31, $E4, $21, $E3
    db $A1, $E4, $21, $E3, $81, $E4, $21, $E3, $61, $E4, $21, $E3, $51, $FE, $E0, $07
    db $E2, $46, $EA, $95, $E1, $82, $82, $E2, $B2, $A2, $82, $62, $52, $22, $12, $22
    db $12, $E1, $B2, $E2, $12, $E1, $B2, $92, $A2, $FE, $FB, $32, $32, $32, $32, $FB
    db $03, $52, $52, $72, $72, $82, $82, $82, $82, $82, $82, $82, $82, $92, $92, $92
    db $92, $92, $92, $92, $92, $A2, $A2, $A2, $A2, $A2, $A2, $A2, $A2, $B2, $B2, $B2
    db $B2, $B2, $B2, $B2, $B2, $B2, $B2, $A2, $A2, $82, $82, $62, $62, $52, $52, $B2
    db $B2, $A2, $A2, $A2, $A2, $FE, $E7, $07, $00, $00, $FE, $C2, $C2, $C2, $C2, $FE
    db $FE, $E0, $07, $8B, $84, $E2, $B2, $E3, $42, $4C, $04, $62, $72, $92, $72, $62
    db $72, $62, $42, $4C, $02, $22, $E2, $C2, $B2, $92, $B2, $C2, $E3, $22, $E2, $C2
    db $B2, $BC, $B2, $A2, $AC, $A2, $92, $C2, $E3, $52, $52, $42, $52, $92, $42, $B2
    db $32, $B2, $12, $B2, $32, $B2, $41, $B1, $91, $B1, $71, $B1, $61, $B1, $41, $B1
    db $31, $B1, $41, $B1, $61, $B1, $71, $B1, $61, $B1, $71, $B1, $91, $B1, $A1, $E4
    db $21, $E3, $91, $E4, $21, $E3, $A1, $E4, $21, $E3, $C1, $E4, $21, $E3, $A1, $E4
    db $21, $E3, $91, $E4, $21, $E3, $71, $E4, $21, $E3, $51, $E4, $21, $E3, $71, $E4
    db $21, $E3, $21, $A1, $E2, $C1, $E3, $91, $21, $A1, $31, $C1, $21, $A1, $31, $C1
    db $71, $E4, $31, $21, $E3, $61, $E4, $21, $E3, $61, $E4, $31, $E3, $71, $E4, $31
    db $E3, $71, $E4, $21, $E3, $61, $E4, $21, $E3, $61, $E4, $31, $E3, $71, $E4, $31
    db $E3, $71, $E4, $21, $E3, $61, $E4, $21, $E3, $61, $E4, $21, $E3, $61, $E4, $21
    db $E3, $61, $C1, $21, $C1, $21, $91, $21, $91, $21, $FE, $FE, $E0, $07, $69, $46
    db $FB, $E2, $41, $E3, $71, $FB, $04, $FB, $E2, $71, $E3, $41, $FB, $08, $FB, $E2
    db $B1, $E3, $31, $FB, $03, $E2, $91, $E3, $31, $FB, $E2, $B1, $E3, $41, $FB, $04
    db $FB, $E2, $B1, $E3, $71, $FB, $04, $FB, $E2, $71, $E3, $41, $FB, $04, $FB, $E2
    db $61, $E3, $21, $FB, $04, $FB, $E2, $71, $E3, $51, $FB, $04, $FB, $E2, $51, $E3
    db $21, $FB, $04, $FB, $E2, $51, $E3, $11, $FB, $04, $E2, $41, $A1, $41, $A1, $41
    db $A1, $41, $A1, $51, $91, $C1, $E3, $51, $E2, $91, $C1, $E3, $51, $91, $E2, $C1
    db $E3, $51, $91, $C1, $51, $91, $C1, $51, $FB, $E1, $B1, $E2, $41, $91, $B1, $FB
    db $02, $E1, $B1, $E2, $61, $B1, $91, $E1, $B1, $E2, $61, $91, $61, $FB, $41, $61
    db $71, $B1, $FB, $04, $41, $61, $71, $E3, $41, $E2, $41, $61, $71, $91, $71, $91
    db $A1, $E3, $21, $71, $21, $E2, $A1, $91, $FB, $71, $91, $A1, $A1, $FB, $04, $E2
    db $21, $41, $61, $91, $21, $41, $61, $91, $21, $41, $61, $C1, $21, $41, $61, $C1
    db $21, $41, $61, $91, $21, $41, $61, $91, $21, $41, $61, $91, $21, $41, $61, $91
    db $21, $41, $61, $C1, $21, $41, $61, $C1, $FE, $FE, $E0, $07, $52, $96, $E1, $42
    db $42, $E2, $42, $22, $E1, $C2, $B2, $92, $72, $92, $92, $92, $92, $B2, $B2, $B2
    db $B2, $42, $42, $E2, $42, $62, $72, $62, $42, $22, $E1, $C2, $C2, $92, $92, $E2
    db $22, $22, $E1, $22, $22, $72, $72, $72, $72, $72, $72, $72, $72, $E2, $12, $12
    db $12, $12, $E1, $62, $62, $62, $62, $52, $52, $52, $52, $C2, $C2, $C2, $C2, $B2
    db $B2, $62, $62, $62, $62, $B2, $B2, $42, $42, $42, $42, $42, $42, $42, $42, $42
    db $42, $62, $62, $72, $72, $72, $72, $72, $72, $22, $22, $72, $72, $A2, $A2, $22
    db $22, $22, $22, $22, $22, $C2, $C2, $22, $22, $C2, $C2, $22, $22, $22, $22, $22
    db $22, $22, $22, $FE, $FE, $E7, $07, $C2, $12, $12, $12, $12, $12, $12, $12, $FE
    db $E0, $06, $89

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
    ldh [c], a
    ld [hl+], a
    ld [de], a
    pop hl
    ld [hl], d
    sub d
    add d
    ld b, d
    ldh [c], a
    ld [hl+], a
    ld [de], a
    pop hl
    ld [hl], d
    sub d
    add d
    ld b, d
    ldh [c], a
    ld [hl+], a
    ld [de], a
    ld [hl+], a
    ld [hl-], a
    ld b, d
    ld [hl-], a
    pop hl
    sub d
    jp nz, Jump_00F_62B2

    ldh [c], a
    ld b, d
    ld [hl-], a
    pop hl
    sub d
    jp nz, Jump_00F_62B2

    ldh [c], a
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
    jp nz, $3232

    jp nz, $92C2

    jp nz, $C292

    ld [hl-], a
    jp nz, $3232

    jp nz, $3232

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
