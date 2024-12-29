; Disassembly of "cvlegends.gb"
; This file was created with:
; mgbdis v2.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $00a", ROMX[$4000], BANK[$a]

    ld a, [$C521]
    rst $00

    db $12, $40, $70, $40, $7A, $40, $F9, $40, $0D, $41, $9D, $41, $F4, $41

    call Call_000_0562
    call Call_000_05B9
    ld hl, $0790
    call Call_000_05B2
    ld a, $E7
    ldh [$84], a
    call Call_000_0597
    ld hl, $424F
    call Call_000_2E53
    ld hl, $4535
    call Call_000_16DF
    xor a
    ld [$C724], a
    ld [$C759], a
    xor a
    ld [$C50E], a
    ld [$C515], a
    ld a, $30

Jump_00A_4041:
    ld [$C514], a
    ld a, $5C
    call Call_000_0875
    ld a, $08
    call Call_000_0629
    ld a, [$C73D]
    or a
    jp z, Jump_000_0BD6

    ld hl, $38DB
    call Call_000_373C
    ld bc, $0004
    call Call_000_38FB
    ld hl, $388B
    call Call_000_373C
    ld bc, $0004
    call Call_000_38FB
    jp Jump_000_0BD6


    call Call_000_0635
    ret c

    call Call_000_060B
    jp Jump_000_0BD6


    ld a, [$C555]
    and $80
    jr nz, jr_00A_40A6

    ld de, $C500
    call Call_000_21F1
    ret nz

    ld a, $30
    ld [$C514], a
    ld a, [$C515]
    inc a
    and $01
    ld [$C515], a
    ld hl, $40E5
    call $DDD6
    ld de, $9986
    ld bc, $0008
    call $DED7
    ret


jr_00A_40A6:
    ld a, $10
    ld [$C50C], a
    ld a, $58
    ld [$C507], a
    ld de, $C500
    ld bc, $426D
    call Call_000_2F92
    ld a, $11
    ld [$C50E], a
    ld a, $02
    ld [$C731], a
    ld a, [$C73D]
    or a
    jp z, Jump_000_0BD6

    ld hl, $38DB
    call Call_000_373C
    ld bc, $0004
    call Call_000_38FB
    ld hl, $389B
    call Call_000_373C
    ld bc, $0004
    call Call_000_38FB
    jp Jump_000_0BD6


    db $E9, $40, $F1, $40, $15, $16, $17, $1A, $1B, $1C, $1D, $1E, $00, $00, $00, $00
    db $00, $00, $00, $00

    ld hl, $C731
    dec [hl]
    ret nz

    ld hl, $4276
    ld de, $9983
    ld bc, $0010
    call $DED7
    jp Jump_000_0BD6


    ld de, $C500
    ld hl, $426D
    call Call_000_2F9F
    ld a, [$C555]
    and $13
    ret z

    ld a, [$C555]
    and $03
    jp nz, Jump_00A_4185

    ld a, [$C555]
    and $10
    ret z

    ld a, $00
    call Call_000_0875
    ld a, $27
    call Call_000_0875
    ld a, [$C724]
    or a
    jp nz, Jump_00A_4162

    ld a, $18
    call Call_000_0629
    ld a, [$C73D]
    or a
    jp z, Jump_000_0BD6

    ld hl, $38DB
    call Call_000_373C
    ld bc, $0004
    call Call_000_38FB
    ld hl, $37BB
    call Call_000_373C
    ld bc, $0004
    call Call_000_38FB
    jp Jump_000_0BD6


Jump_00A_4162:
    ld a, [$C73D]
    or a
    jr z, jr_00A_4180

    ld hl, $38DB
    call Call_000_373C
    ld bc, $0004
    call Call_000_38FB
    ld hl, $37BB
    call Call_000_373C
    ld bc, $0004
    call Call_000_38FB

jr_00A_4180:
    ld a, $0C
    jp Jump_000_0BCC


Jump_00A_4185:
    ld a, [$C724]
    inc a
    and $01
    ld [$C724], a
    ld hl, $419B
    rst $28
    ld a, [hl]
    ld [$C50C], a
    ld a, $22
    jp Jump_000_0875


    db $10
    ld e, b

    call Call_000_063A
    ret c

    call Call_000_057C
    call Call_000_05B9
    call Call_000_0604
    ld hl, $4265
    call Call_000_2E53
    ld hl, $4F2C
    call Call_000_16DF
    call Call_000_0089
    ld hl, $9903
    ld [hl], $39
    xor a
    ld [$C735], a
    ld [$C756], a
    ld a, $20
    ld [$C731], a
    call Call_000_060B
    ld a, $63
    call Call_000_0875
    ld a, [$C73D]
    or a
    jp z, Jump_000_0BD6

    ld hl, $38DB
    call Call_000_373C
    ld bc, $0004
    call Call_000_38FB
    ld hl, $37BB
    call Call_000_373C
    ld bc, $0004
    call Call_000_38FB
    jp Jump_000_0BD6


    ld a, [$C555]
    and $1C
    ret z

    ld a, [$C555]
    and $0C
    jp nz, Jump_00A_4215

    ld a, [$C555]
    and $10
    ret z

    ld a, $00
    call Call_000_0875
    ld a, $27
    call Call_000_0875
    jp Jump_000_0BC4


Jump_00A_4215:
    ld a, [$C735]
    inc a
    and $01
    ld [$C735], a
    or a
    jr nz, jr_00A_4238

    di
    call Call_000_0089
    ld hl, $9903
    ld [hl], $39
    call Call_000_0089
    ld hl, $9943
    ld [hl], $00
    ei
    ld a, $22
    jp Jump_000_0875


jr_00A_4238:
    di
    call Call_000_0089
    ld hl, $9903
    ld [hl], $00
    call Call_000_0089
    ld hl, $9943
    ld [hl], $39
    ei
    ld a, $22
    jp Jump_000_0875


    db $02, $0A, $AC, $4E, $80, $00, $08, $01, $0A, $9D, $46, $80, $01, $80, $01, $0A
    db $46, $4C, $00, $01, $31, $00, $02, $0A, $94, $50, $80, $01, $3D, $00, $08, $69
    db $08, $6A, $08, $6B, $08, $6A, $FE, $A3, $A4, $A5, $A6, $A7, $A8, $A9, $00, $00
    db $AA, $AB, $AC, $AD, $AE, $AF, $B0

    ld a, [$C521]
    rst $00

    db $9A, $42

    ret


    ld b, d

    db $DF, $42, $FA, $42, $11, $43

    ld a, e
    ld b, e
    db $DD
    ld b, e
    db $11
    ld b, h

    ld hl, $C50E
    set 0, [hl]
    ld de, $C600
    call Call_000_2183
    ld a, [$C500]
    bit 1, a
    jp nz, Jump_000_0BD6

    bit 2, a
    jp nz, Jump_000_0BD6

    bit 3, a
    jp nz, Jump_00A_42BC

    ld a, $02
    jp Jump_000_0BDA


Jump_00A_42BC:
    ld a, [$C507]
    sub $06
    ld [$C507], a
    ld a, $02
    jp Jump_000_0BDA


    ld a, $0C
    ld [$C50D], a
    ld a, $1E
    call Call_000_1FB9
    ld hl, $C500
    call Call_000_20D3
    cp $8F
    ret c

    jp Jump_000_0BD6


    ld a, $00
    call Call_000_0875
    ld a, $33
    call Call_000_0875
    ld hl, $C50E
    set 0, [hl]
    ld de, $C500
    ld bc, $4444
    call Call_000_2F92
    jp Jump_000_0BD6


    ld de, $C500
    ld hl, $4444

Jump_00A_4300:
    call Call_000_2F9F
    ld a, [$C510]
    cp $FF
    ret nz

    ld a, $B0
    ld [$C514], a
    jp Jump_000_0BD6


    ld hl, $C514
    dec [hl]
    ret nz

    ld a, $00
    call Call_000_0875
    xor a
    ld [$C550], a
    ld [$C728], a
    ld [$C729], a
    ld [$C75E], a
    ld [$C757], a
    ld [$D7DC], a
    ld [$C72E], a
    ld a, [$C735]
    or a
    jp z, Jump_00A_433D

    ld a, $02
    ld [$C75E], a

Jump_00A_433D:
    ld a, [$C754]
    sub $01
    jp c, Jump_00A_4354

    ld [$C754], a
    xor a
    ld [$C753], a
    call Call_000_061B
    ld a, $06
    jp Jump_000_0BCC


Jump_00A_4354:
    ld a, $08
    call Call_000_0629
    ld a, [$C73D]
    or a
    jp z, Jump_000_0BD6

    ld hl, $38DB
    call Call_000_373C
    ld bc, $0004
    call Call_000_38FB
    ld hl, $37BB
    call Call_000_373C
    ld bc, $0004
    call Call_000_38FB
    jp Jump_000_0BD6


    call Call_000_063A
    ret c

    xor a
    ldh [$87], a
    ldh [$86], a
    call Call_000_01F4
    call Call_000_0562
    call Call_000_05DA
    ld hl, $444B
    call Call_000_2E53
    ld hl, $623E
    call Call_000_16DF
    call Call_000_2168
    ld a, $30
    ld [$C50C], a
    ld a, $6C
    ld [$C507], a
    ld de, $C500
    ld bc, $443B
    call Call_000_2F92
    ld a, $11
    ld [$C50E], a
    xor a
    ld [$C724], a
    call Call_000_060B
    ld a, [$C73D]
    or a
    jp z, Jump_000_0BD6

    ld hl, $38DB
    call Call_000_373C
    ld bc, $0004
    call Call_000_38FB
    ld hl, $37CB
    call Call_000_373C
    ld bc, $0004
    call Call_000_38FB
    jp Jump_000_0BD6


    ld de, $C500
    ld hl, $443B
    call Call_000_2F9F
    ld a, [$C555]
    and $1C
    ret z

    ld a, [$C555]
    and $0C
    jp nz, Jump_00A_4423

    call Call_000_0597
    ld a, $18
    call Call_000_0629
    ld a, $00
    call Call_000_0875
    ld a, $27
    call Call_000_0875
    ld a, [$C724]
    cp $01
    jp z, Jump_000_0BC4

    jp Jump_000_0BD6


    call Call_000_063A
    ret c

    xor a
    ld [$C753], a
    ld a, $02
    ld [$C754], a
    ld a, $06
    jp Jump_000_0BCC


Jump_00A_4423:
    ld a, [$C724]
    inc a
    and $01
    ld [$C724], a
    ld hl, $4439
    rst $28
    ld a, [hl]
    ld [$C507], a
    ld a, $22
    jp Jump_000_0875


    ld l, h
    ld a, h
    ld [$0869], sp
    ld l, d
    ld [$086B], sp
    ld l, d
    db $FE

    db $06, $0C, $06, $06, $06, $0E, $FF

    ld [bc], a
    ld a, [bc]
    xor h
    ld c, [hl]
    add b
    nop
    ld [hl-], a
    ld bc, $A60A
    ld h, e
    add b
    ld bc, $0180
    ld a, [bc]
    ld [hl], d
    ld l, c
    nop
    ld bc, $004B
    ld a, [$C521]
    rst $00
    ld l, a
    ld b, h
    xor b
    ld b, h
    xor [hl]
    ld b, h
    or [hl]
    ld b, h
    inc bc
    ld b, l
    call Call_000_063A
    ret c

    call Call_000_0562
    call Call_000_05DA
    call Call_000_0604
    xor a
    ldh [$87], a
    ldh [$86], a
    ld hl, $4510
    call Call_000_2E53
    ld hl, $5464
    call Call_000_16DF
    ld hl, $38DB
    call Call_000_373C
    ld bc, $0004
    call Call_000_38FB
    ld hl, $37BB
    call Call_000_373C
    ld bc, $0004
    call Call_000_38FB
    jp Jump_000_0BD6


    call Call_000_060B
    jp Jump_000_0BD6


    ld a, [$C555]
    or a
    ret z

    jp Jump_000_0BD6


    call Call_000_0562
    call Call_000_05DA
    xor a
    ldh [$87], a
    ldh [$86], a
    ld hl, $451F
    call Call_000_2E53
    ld hl, $5EE6
    call Call_000_16DF
    ld hl, $9927
    ld de, $C75B
    ld b, $03

jr_00A_44D5:
    di
    push hl
    call Call_000_0089
    pop hl
    ld a, [de]
    swap a
    and $0F
    add $15
    ld [hl+], a
    nop
    nop
    nop
    nop
    nop
    push hl
    call Call_000_0089
    pop hl
    ld a, [de]
    and $0F
    add $15
    ld [hl+], a
    nop
    nop
    nop
    nop
    nop
    ei
    dec de
    dec b
    jr nz, jr_00A_44D5

    call Call_00A_7031
    jp Jump_000_0BD6


    ld a, [$C555]
    or a
    ret z

    call Call_000_061B
    ld a, $01
    jp Jump_000_0BCC


    ld bc, $CC0A
    ld d, l
    add b
    ld bc, $0180
    ld a, [bc]
    ld [hl], $5B
    nop
    ld bc, $005B
    ld [bc], a
    ld a, [bc]
    ld c, [hl]
    ld h, b
    add b
    ld bc, $021F
    ld a, [bc]
    ld [hl], h
    ld [hl], h
    and b
    ld bc, $021C
    ld a, [bc]
    inc b
    ld [hl], e
    ret nz

    ld bc, $0016

    db $00, $00, $00, $64, $93, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $80, $7F, $7E, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $6D, $6C, $6B, $6A, $69, $69
    db $69, $69, $69, $69, $69, $69, $69, $69, $69, $5D, $00, $00, $00, $59, $58, $57
    db $56, $55, $54, $53, $52, $50, $4F, $4E, $4D, $4C, $4B, $4A, $49, $48, $00, $00
    db $51, $44, $43, $57, $41, $40, $3F, $3E, $3D, $3C, $3B, $3A, $39, $38, $37, $36
    db $35, $19, $33, $32, $31, $30, $2F, $57, $2D, $2C, $2B, $29, $28, $27, $25, $24
    db $23, $22, $21, $20, $1F, $34, $18, $2E, $00, $42, $45, $57, $46, $47, $5A, $5B
    db $5C, $5E, $5F, $60, $61, $62, $63, $65, $66, $67, $68, $00, $00, $2A, $6E, $6F
    db $70, $71, $72, $73, $74, $75, $76, $77, $78, $79, $7A, $7B, $7C, $7D, $81, $A2
    db $00, $00, $82, $83, $84, $85, $86, $87, $88, $89, $8A, $8B, $8C, $8D, $8E, $8F
    db $8E, $26, $A1, $26, $00, $00, $00, $90, $91, $00, $92, $94, $00, $00, $95, $96
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $97, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $15, $16, $17, $1A, $1B, $1C, $1D, $1E, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $14, $13, $12
    db $11, $10, $0B, $0C, $0D, $0E, $0F, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $0A, $09, $08, $07, $06, $05, $04, $03, $02, $01, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $A0, $9F, $9E, $06, $05, $9D, $9C, $9B, $9A, $99, $98
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $F5, $00, $DE, $6E, $98, $F0, $60, $D8
    db $D8, $B8, $B8, $FE, $F0, $61, $98, $98, $00, $00, $7D, $7D, $61, $F6, $02, $00
    db $79, $79, $02, $01, $7D, $7D, $00, $00, $DF, $8E, $8E, $B3, $B3, $30, $14, $02
    db $B3, $B3, $DF, $8E, $8E, $00, $00, $19, $20, $00, $1B, $1B, $EF, $1E, $1E, $1B
    db $1B, $20, $01, $00, $00, $80, $FF, $80, $8A, $8A, $CA, $CA, $AA, $AA, $A6, $FF
    db $A6, $E2, $E2, $0C, $0C, $00, $00, $08, $7E, $40, $00, $98, $98, $A8, $A8, $28
    db $28, $FC, $61, $FE, $DE, $61, $B1, $B1, $AA, $AA, $AB, $AB, $AA, $F7, $AA, $B1
    db $B1, $DC, $61, $08, $08, $4B, $4B, $FF, $AA, $AA, $EA, $EA, $8A, $8A, $6B, $6B
    db $B6, $DE, $63, $4A, $4A, $64, $03, $6C, $6C, $DE, $61, $0C, $F3, $0C, $0A, $82
    db $04, $3C, $01, $9E, $9E, $B3, $B3, $FD, $33, $92, $02, $B3, $B3, $9E, $9E, $00
    db $00, $B5, $66, $9E, $00, $76, $A2, $00, $6E, $6E, $9E, $01, $00, $6F, $00, $79
    db $79, $CD, $B0, $02, $FD, $FD, $B0, $01, $F7, $00, $00, $86, $BE, $00, $CE, $CE
    db $FE, $FE, $3B, $B6, $B6, $BE, $01, $00, $00, $60, $CE, $0A, $1E, $0F, $FF, $CF
    db $CF, $29, $29, $21, $21, $E1, $E1, $FD, $22, $F6, $00, $C2, $C2, $00, $00, $18
    db $18, $FD, $25, $00, $20, $1C, $1C, $04, $04, $25, $25, $FE, $FC, $61, $E1, $E1
    db $13, $13, $C9, $C9, $09, $FF, $09, $C9, $C9, $11, $11, $E3, $E3, $00, $FF, $00
    db $01, $01, $02, $02, $04, $04, $05, $7F, $05, $04, $04, $02, $02, $01, $01, $DE
    db $61, $BB, $1F, $1F, $20, $01, $1F, $1F, $18, $38, $22, $00, $F9, $00, $96, $01
    db $90, $05, $1E, $1E, $00, $00, $39, $FF, $39, $6D, $6D, $71, $71, $39, $39, $1D
    db $FF, $1D, $6D, $6D, $39, $39, $01, $FE, $00, $FD, $FF, $60, $21, $01, $FE, $03
    db $FD, $07, $FB, $FF, $0F, $F7, $38, $D8, $38, $D8, $3C, $DC, $3F, $1F, $EF, $0F
    db $F7, $07, $F8, $60, $22, $EF, $62, $EF, $98, $98, $F8, $F8, $F8, $65, $1D, $1D
    db $36, $FF, $36, $38, $38, $1C, $1C, $0E, $0E, $36, $7F, $36, $1C, $1C, $00, $00
    db $FB, $FB, $9E, $01, $73, $67, $67, $9E, $01, $AA, $01, $CF, $CF, $6C, $B2, $20
    db $73, $EF, $EF, $B2, $21, $7A, $01, $BF, $BF, $CC, $C2, $20, $FB, $8C, $8C, $C2
    db $21, $CC, $CC, $FC, $43, $FC, $FD, $C3, $D0, $26, $03, $FC, $03, $CF, $30, $CF
    db $EF, $30, $DF, $30, $FF, $E3, $25, $3C, $FF, $84, $3A, $EE, $2C, $21, $FE, $2C
    db $04, $FF, $0C, $10, $46, $60, $20, $7E, $CE, $20, $43, $FD, $43, $FB, $07, $FF
    db $25, $45, $FF, $18, $9F, $F8, $9F, $78, $CF, $3C, $EF, $ED, $1C, $36, $43, $80
    db $80, $DE, $6B, $FF, $80, $FF, $BF, $87, $FF, $86, $F9, $86, $FF, $55, $43, $80
    db $7B, $BF, $70, $5E, $49, $FF, $10, $FF, $18, $6E, $4B, $F9, $01, $7E, $40, $42
    db $4A, $E0, $7F, $FC, $1F, $E6, $A7, $3F, $C6, $7F, $59, $42, $4E, $40, $10, $E4
    db $26, $30, $FE, $61, $21, $03, $FC, $07, $FC, $0F, $FC, $1F, $FE, $B3, $46, $E0
    db $E0, $F0, $70, $78, $B8, $F0, $1F, $70, $E0, $E0, $C0, $C0, $3E, $42, $61, $22
    db $CE, $45, $FB, $C0, $3F, $CE, $47, $80, $7F, $C0, $BF, $E7, $FF, $D8, $0F, $0E
    db $1E, $1D, $3C, $3B, $1E, $7F, $1D, $0F, $0E, $07, $07, $03, $03, $80, $4B, $FF
    db $80, $80, $C0, $C0, $00, $00, $30, $30, $FF, $78, $78, $FC, $FC, $FE, $CE, $CF
    db $37, $6F, $07, $FB, $03, $FD, $CE, $4B, $00, $FF, $DA, $20, $E2, $D1, $23, $83
    db $DA, $21, $DC, $21, $E2, $20, $38, $FF, $3C, $FF, $F9, $3F, $D9, $3E, $C3, $3C
    db $C7, $38, $38, $0E, $40, $4F, $61, $EF, $26, $DF, $20, $FF, $5F, $61, $FF, $27
    db $DD, $00, $10, $40, $8C, $FF, $CC, $30, $40, $E0, $3F, $BF, $C0, $7F, $80, $7E
    db $E1, $7F, $7F, $63, $E3, $7B, $7D, $C3, $1E, $41, $EF, $10, $EF, $10, $6C, $40
    db $44, $91, $63, $6F, $40, $7F, $9B, $41, $55, $46, $4E, $40, $30, $5E, $4F, $DF
    db $DF, $38, $9F, $78, $1F, $31, $40, $DF, $38, $96, $9C, $67, $FE, $87, $9A, $42
    db $C0, $61, $20, $E3, $22, $7F, $E9, $E0, $9E, $60, $60, $20, $0F, $B1, $41, $FE
    db $1F, $FF, $F7, $0E, $FF, $06, $63, $22, $FF, $E7, $7F, $7F, $F3, $3C, $3C, $3C
    db $21, $4C, $03, $38, $37, $38, $37, $3F, $78, $77, $F0, $EF, $E0, $DF, $DC, $44
    db $FD, $00, $FF, $3C, $3C, $7F, $7F, $FF, $E7, $E7, $D8, $FF, $C0, $BF, $80, $7F
    db $E0, $DF, $F0, $EF, $73, $78, $77, $0E, $01, $10, $03, $1F, $FE, $0F, $26, $40
    db $BE, $62, $22, $FF, $03, $FF, $07, $FE, $61, $20, $08, $FD, $DC, $61, $20, $F0
    db $FF, $F0, $9F, $F0, $1F, $FF, $F0, $1F, $78, $B8, $3C, $DC, $1E, $EE, $FF, $0F
    db $F7, $0F, $F7, $1E, $EE, $3C, $DC, $7B, $38, $D8, $CE, $49, $F0, $0F, $F8, $07
    db $E6, $42, $7F, $3F, $C0, $3F, $80, $7F, $00, $FF, $4A, $61, $FC, $64, $21, $B0
    db $41, $0F, $FE, $76, $8F, $FB, $04, $FB, $FB, $04, $CE, $47, $02, $FD, $06, $F9
    db $8F, $F1, $70, $CE, $49, $7A, $61, $AE, $40, $F8, $0F, $F0, $1F, $FF, $E0, $3F
    db $E0, $7F, $E0, $7E, $E1, $7E, $C9, $E1, $CE, $47, $66, $20, $FC, $8C, $01, $CE
    db $47, $0F, $F0, $F9, $3F, $0D, $60, $40, $45, $01, $01, $03, $03, $07, $FE, $7D
    db $00, $00, $FF, $83, $7C, $87, $78, $8F, $47, $70, $9F, $70, $E4, $21, $D4, $05
    db $B0, $40, $F8, $6A, $40, $C8, $0D, $22, $CE, $45, $C4, $00, $C0, $5A, $01, $5A
    db $00, $9F, $F0, $FE, $2B, $62, $FE, $01, $07, $FC, $07, $FE, $03, $BC, $47, $00
    db $44, $03, $07, $FE, $7F, $C1, $4E, $2B, $3C, $C1, $3B, $12, $03, $2E, $05, $F2
    db $05, $80, $45, $DC, $60, $F0, $7E, $9E, $CF, $48, $DF, $3C, $0F, $FE, $42, $03
    db $CE, $43, $FF, $FF, $16, $FD, $1D, $F8, $F8, $30, $F0, $60, $7F, $E0, $60, $E0
    db $C0, $C1, $C2, $C3, $02, $69, $FE, $BE, $41, $FF, $C0, $9F, $F0, $9F, $FF, $40
    db $FF, $7F, $20, $3F, $20, $3F, $21, $3F, $23, $AF, $3F, $CF, $3C, $8F, $95, $00
    db $07, $D3, $21, $FF, $FD, $83, $49, $00, $F7, $0F, $F3, $0F, $F1, $0F, $CD, $F0
    db $E3, $20, $E0, $1F, $E8, $21, $4E, $40, $C2, $F7, $B4, $93, $29, $65, $60, $79
    db $CF, $46, $03, $FF, $54, $61, $EF, $DE, $CF, $44, $07, $FF, $9C, $FC, $40, $4B
    db $01, $01, $FF, $FB, $3A, $F3, $32, $13, $F3, $22, $E3, $FF, $24, $E7, $44, $C7
    db $C8, $CF, $09, $0F, $FA, $2E, $60, $23, $36, $21, $30, $FF, $58, $DF, $88, $F7
    db $8F, $0D, $0F, $C2, $00, $EF, $3F, $DF, $78, $FF, $B8, $70, $B0, $71, $B1, $72
    db $B2, $FC, $FF, $DC, $9E, $6E, $FC, $9C, $F8, $F8, $F0, $FF, $F0, $60, $60, $F8
    db $F8, $06, $0E, $0F, $E5, $1F, $FE, $45, $FF, $76, $41, $7C, $21, $40, $E0, $20
    db $BF, $F0, $10, $F0, $10, $FF, $1F, $86, $40, $10, $FB, $F0, $1F, $CF, $40, $70
    db $8F, $88, $8F, $88, $FB, $FF, $FC, $96, $40, $84, $07, $FC, $1F, $10, $BF, $3F
    db $20, $7F, $40, $7F, $40, $DC, $60, $C1, $0F, $FF, $41, $7F, $C1, $FE, $45, $FA
    db $01, $EE, $41, $64, $25, $3C, $F2, $45, $4E, $29, $FF, $41, $FF, $C1, $3E, $20
    db $DF, $46, $22, $4E, $60, $FC, $2E, $24, $2F, $22, $92, $60, $1F, $20, $69, $9B
    db $21, $FD, $01, $47, $02, $03, $FF, $06, $FE, $06, $FE, $FF, $FC, $0C, $FC, $FC
    db $86, $87, $86, $87, $FF, $0C, $0E, $0C, $0E, $1C, $1E, $14, $1E, $FF, $3C, $37
    db $3F, $3F, $2E, $3F, $34, $37, $FF, $08, $0F, $11, $1F, $26, $3E, $48, $78, $EF
    db $F1, $91, $E2, $E3, $12, $61, $03, $FF, $E7, $FF, $FF, $1C, $1D, $18, $18, $10
    db $90, $23, $FF, $23, $E0, $1F, $C0, $3F, $E7, $3F, $DB, $FF, $1B, $D6, $16, $64
    db $A6, $C4, $86, $C8, $FF, $88, $00, $FF, $7F, $FF, $C3, $C3, $13, $FF, $1B, $22
    db $32, $06, $06, $78, $78, $32, $FF, $33, $FC, $FC, $98, $98, $90, $90, $21, $FF
    db $21, $49, $49, $10, $10, $20, $30, $61, $FF, $79, $70, $70, $41, $41, $86, $C6
    db $8C, $FF, $CC, $01, $01, $43, $73, $E7, $FD, $FF, $FF, $FF, $12, $1E, $14, $1C
    db $39, $39, $30, $FF, $B0, $00, $86, $0C, $8F, $1F, $F3, $BF, $FF, $FF, $46, $66
    db $C4, $E4, $C8, $C8, $90, $FF, $93, $07, $07, $0C, $8F, $3F, $F0, $FF, $F7, $FF
    db $38, $38, $F5, $02, $33, $32, $FA, $FA, $CF, $FE, $E4, $E4, $C0, $ED, $08, $B2
    db $23, $FE, $02, $BF, $FE, $02, $FC, $04, $F8, $88, $D4, $61, $FC, $07, $8C, $FF
    db $07, $7F, $03, $02, $03, $02, $01, $01, $00, $E4, $62, $FF, $01, $01, $0F, $0F
    db $10, $30, $20, $60, $FB, $E0, $E0, $E4, $61, $E8, $E8, $4D, $4D, $4A, $E7, $4A
    db $03, $03, $E4, $63, $00, $05, $FF, $C1, $7F, $FF, $40, $7F, $40, $3F, $20, $1F
    db $10, $0F, $FD, $0F, $E2, $61, $FF, $FC, $8F, $88, $8F, $88, $FF, $FF, $70, $FF
    db $00, $FF, $07, $FC, $8C, $FF, $F8, $88, $FF, $1F, $F0, $10, $F0, $10, $BF, $E0
    db $20, $C0, $40, $80, $80, $0A, $02, $FF, $FF, $00, $00, $04, $04, $0C, $0C, $0F
    db $0F, $FF, $18, $1C, $10, $18, $30, $38, $F8, $F8, $FF, $38, $38, $70, $70, $E1
    db $E1, $C0, $C0, $FE, $E7, $62, $07, $7F, $7F, $C1, $C1, $CE, $CE, $FB, $F0, $F0
    db $E6, $62, $FF, $FF, $FF, $C0, $C0, $FF, $C7, $C7, $03, $03, $40, $60, $60, $7F
    db $FF, $FF, $FF, $9E, $9E, $00, $00, $63, $63, $FF, $80, $80, $20, $30, $71, $7D
    db $DE, $DE, $FF, $8C, $8C, $18, $18, $10, $18, $14, $97, $FF, $0E, $0F, $9F, $9F
    db $31, $31, $30, $30, $FD, $60, $98, $00, $C0, $C0, $06, $07, $0F, $FF, $F3, $F9
    db $F9, $F2, $63, $E4, $61, $73, $FF, $DE, $DE, $70, $38, $03, $08, $04, $3F, $00
    db $02, $0A, $FF, $40, $40, $00, $0B, $F8, $E8, $61, $DE, $61, $E0, $61, $01, $01
    db $F8, $88, $F8, $DF, $88, $FC, $04, $FE, $02, $F4, $01, $FC, $04, $FF, $FC, $04
    db $30, $38, $30, $3C, $18, $1F, $EF, $0F, $0F, $06, $06, $00, $0B, $20, $20, $70
    db $FD, $50, $F0, $01, $0F, $1F, $38, $78, $E0, $E0, $3E, $B2, $07, $10, $18, $11
    db $1F, $1B, $03, $20, $00, $05, $C7, $C0, $C0, $80, $40, $20, $00, $07, $EE, $01
    db $70, $50, $38, $52, $21, $D8, $63, $E4, $63, $E0, $E0, $B0, $66, $22, $F2, $61
    db $DD, $0C, $70, $20, $3C, $3C, $6D, $76, $22, $3C, $3C, $EE, $E4, $63, $9E, $9E
    db $DB, $86, $20, $1B, $1B, $DB, $FD, $DB, $E4, $61, $30, $30, $7B, $7B, $B6, $B6
    db $BF, $B7, $B7, $B6, $B6, $B3, $B3, $E4, $61, $60, $F7, $60, $0F, $0F, $76, $23
    db $6D, $6D, $00, $00, $35, $33, $B0, $20, $3B, $B4, $20, $37, $37, $B0, $21, $E4
    db $61, $FF, $19, $19, $A2, $A2, $BB, $BB, $8A, $8A, $FB, $B1, $B1, $E4, $63, $13
    db $13, $AA, $AA, $3A, $DF, $3A, $A2, $A2, $1A, $1A, $E4, $61, $80, $80, $DF, $89
    db $89, $82, $82, $8A, $E6, $20, $E9, $E9, $0F, $00, $00, $48, $48, $D2, $0D, $00
    db $05, $40, $21, $38, $01, $FF, $63, $63, $73, $73, $7B, $7B, $7F, $7F, $FF, $6F
    db $6F, $67, $67, $63, $63, $00, $00, $B7, $7D, $7D, $61, $22, $40, $79, $79, $22
    db $41, $7D, $EF, $7D, $00, $00, $B6, $30, $48, $FC, $FC, $00, $FF, $00, $0F, $0F
    db $19, $19, $18, $18, $1B, $F3, $1B, $19, $48, $40, $34, $21, $1E, $1E, $B3, $B3
    db $9F, $33, $33, $BF, $BF, $B3, $58, $40, $BC, $21, $61, $7F, $61, $73, $73, $7F
    db $7F, $6D, $6D, $22, $41, $BF, $61, $61, $00, $00, $BE, $BE, $66, $21, $BC, $FD
    db $BC, $66, $21, $BE, $BE, $00, $00, $7C, $7C, $ED, $66, $82, $40, $7C, $7C, $98
    db $01, $60, $60, $00, $EF, $00, $78, $78, $CD, $92, $40, $FC, $FC, $CC, $FF, $CC
    db $CD, $CD, $CC, $CC, $00, $00, $E3, $FF, $E3, $B6, $B6, $C7, $C7, $E3, $E3, $71
    db $FF, $71, $B6, $B6, $E3, $E3, $00, $00, $9B, $F9, $9B, $88, $21, $B0, $41, $DB
    db $DB, $9F, $9F, $00, $EF, $00, $67, $67, $6C, $C2, $46, $C7, $C7, $00, $6F, $00
    db $9F, $9F, $D9, $D2, $40, $DF, $DF, $D2, $41, $3F, $99, $99, $00, $00, $3E, $3E
    db $58, $43, $58, $41, $03, $BE, $BE

    INCBIN "gfx/image_00a_4eac.2bpp"

    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $08, $09, $0A, $0B, $0C, $0D, $00, $00, $00, $00, $00, $00, $00
    db $00, $16, $17, $18, $19, $1A, $1A, $1C, $1D, $1E, $1F, $20, $21, $1A, $1A, $19
    db $19, $19, $27, $00, $00, $2A, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $2E, $00, $00, $38, $00, $37, $36, $35, $34, $00
    db $33, $34, $32, $34, $31, $30, $00, $00, $00, $00, $2E, $00, $00, $2F, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $2E, $00
    db $00, $2F, $00, $00, $33, $30, $36, $2D, $2C, $36, $2B, $2C, $00, $29, $28, $2C
    db $34, $00, $2E, $00, $00, $2F, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $2E, $00, $00, $2F, $00, $00, $3C, $25, $3A, $3B
    db $30, $00, $29, $28, $2C, $34, $00, $00, $00, $00, $24, $00, $00, $2F, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $23, $00
    db $00, $22, $1B, $1B, $1B, $1B, $1B, $15, $14, $13, $12, $11, $10, $1B, $1B, $1B
    db $0F, $0E, $07, $00, $00, $00, $00, $00, $00, $00, $00, $06, $05, $04, $03, $02
    db $01, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00

    INCBIN "gfx/image_00a_5094.2bpp"

    INCBIN "gfx/image_00a_5394.2bpp"

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, [hl-]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, [hl]
    ld c, a
    ld d, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    ld h, h
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [hl], l
    halt
    ld [hl], a
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
    nop
    nop
    nop
    nop
    nop
    adc b
    adc c
    adc d
    adc e
    adc h
    nop
    nop
    adc a
    nop
    nop
    inc d
    inc de
    ld [de], a
    ld de, $0010
    rrca
    ld c, $0D
    inc c
    dec bc
    nop
    sbc [hl]
    sbc a
    and b
    nop
    nop
    and e
    and h
    and l
    ld a, [bc]
    add hl, bc
    ld [$0607], sp
    nop
    dec b
    inc b
    inc bc
    ld [bc], a
    ld bc, $B2B1
    or e
    or h
    nop
    or [hl]
    or a
    cp b
    cp c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    push bc
    add $C7
    ret z

    nop
    jp z, $CCCB

    call $CF00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    pop de
    ret nc

    adc $C9
    call nz, $C2C3
    pop bc
    ret nz

    cp a
    cp [hl]
    cp l
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    cp h
    cp e
    cp d
    or l
    or b
    xor a
    xor [hl]
    xor l
    xor h
    xor e
    xor d
    xor c
    nop
    nop
    nop
    nop
    nop
    nop
    xor b
    and a
    and [hl]
    and d
    and c
    sbc l
    sbc h
    sbc e
    sbc d
    sbc c
    sbc b
    sub a
    sub [hl]
    sub l
    sub h
    sub e
    sub d
    sub c
    sub b
    adc [hl]
    adc l
    add a
    add [hl]
    add l
    add h
    add e
    add d
    add c
    add b
    ld a, a
    ld a, [hl]
    ld a, l
    ld a, h
    ld a, e
    ld a, d
    ld a, c
    ld [hl], h
    ld [hl], e
    ld [hl], d
    ld [hl], c
    ld [hl], b
    ld l, a
    ld l, [hl]
    ld l, l
    ld l, h
    ld l, e
    ld l, d
    ld l, c
    ld l, b
    ld h, a
    ld h, [hl]
    ld h, l
    ld e, a
    ld e, [hl]
    ld e, l
    ld e, h
    ld e, e
    ld e, d
    ld e, c
    ld e, b
    ld d, a
    ld d, [hl]
    ld d, l
    ld d, h
    ld d, e
    ld d, d
    ld d, c
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
    ccf
    ld a, $3D
    inc a
    dec sp
    add hl, sp
    jr c, jr_00A_55DD

    ld [hl], $35
    inc [hl]
    inc sp
    ld [hl-], a
    ld sp, $3030
    cpl
    ld l, $2D
    inc l
    dec hl
    ld a, [hl+]
    add hl, hl
    jr z, jr_00A_55DE

    ld h, $25
    inc h
    inc hl
    ld [hl+], a
    ld hl, $1F20
    jr nc, @+$32

    jr nc, jr_00A_55E1

    dec e
    inc e
    dec de
    ld a, [de]
    add hl, de
    jr jr_00A_55E1

    ld d, $15
    ld a, l
    nop
    sbc $6C
    ld [hl], b
    ld [hl], b
    ldh [$E0], a
    ld [hl], b
    ld a, [c]
    ld h, h
    cp [hl]
    sbc $61
    rlca
    rlca
    rst $00

jr_00A_55DD:
    rst $00

jr_00A_55DE:
    rlca
    ld [bc], a
    ld [bc], a

jr_00A_55E1:
    rst $20
    push af
    rst $20
    sbc $61
    rst $20
    ld c, $04
    rst $00
    rst $00
    add a
    add a
    ld e, d
    sbc $61
    adc $1E
    ld b, $8F
    adc a
    sbc $61
    dec e
    ld l, $06
    db $DB
    rrca
    rrca
    ld [$7C63], a
    ld a, h
    ld a, [c]
    ld h, e
    ld a, [hl]
    ld a, [hl]
    cp $DE
    ld h, c
    cp [hl]
    cp [hl]
    cp $FE
    xor $EE
    adc $D3
    adc $0E
    ld d, [hl]
    nop
    sbc $61
    rst $08
    ld e, [hl]
    nop
    call $B9CD
    call z, $0264
    ld a, [hl+]
    inc bc
    sbc a
    sbc a
    sbc l
    ld [hl], d
    ld [bc], a
    dec e
    ld a, l
    dec e
    sbc $61
    jr c, @+$3A

    ccf
    ccf
    dec sp
    add d
    ld [bc], a
    ld h, e
    rra
    rra
    sbc $6B
    ldh a, [$63]
    sbc $67
    rst $20
    rst $20
    ld [bc], a
    ld bc, $9E98
    add hl, bc
    ld c, $01
    sbc $67
    adc [hl]
    adc [hl]
    ld e, $01
    sbc $67
    rrca
    reti


    rrca
    ld l, $01
    sbc $67
    ld a, [hl]
    ld a, [hl]
    sbc d
    dec bc
    ld b, $06
    rst $28
    ld c, $0E
    ld e, $1E
    sbc $67
    adc h
    adc h
    adc $C7
    adc $CF
    rst $08
    adc $09
    halt
    dec b
    sbc $63
    rra
    rra
    rst $38
    add hl, sp
    add hl, sp
    jr c, jr_00A_56AC

    cp a
    ld b, b
    rst $38
    nop
    ld h, [hl]
    jr nc, @+$27

    cp $01
    jr nc, jr_00A_56A6

    jr nc, jr_00A_56A6

    ld a, a
    add b
    ld l, $27
    rst $38
    rst $30
    ld [$00FF], sp
    add [hl]
    ld a, c
    rrca
    ldh a, [rIE]
    rra
    ldh [$2F], a
    ret nc

    rra
    ldh [$1F], a
    ldh [$CF], a
    dec l
    jp nc, $728D

    ld [hl], $23
    ld a, [hl-]
    ld hl, $03FC
    rst $38
    ld a, h
    add e
    ret c

jr_00A_56A6:
    daa
    di
    inc c
    ei
    inc b
    rst $38

jr_00A_56AC:
    rlca
    ld hl, sp-$79
    ld a, b
    rst $38
    nop
    rst $28
    db $10
    rst $38
    add a
    ld a, b
    daa
    ret c

    cp a
    ld b, b
    inc bc
    db $FC
    ei
    ret nz

    ccf
    jr nc, jr_00A_56E3

    rrca
    ldh a, [rSB]
    cp $00
    rst $20
    rst $38
    ld c, $F1
    ld h, [hl]
    ld hl, $2398
    add b
    ld a, a
    add b
    rst $38
    ld a, a
    ld h, d
    sbc l
    ld h, [hl]
    sbc c
    rst $20
    jr @+$49

    scf
    cp b
    rlca
    ld hl, sp-$4A
    inc hl
    nop
    rst $38

jr_00A_56E3:
    sbc d
    ld hl, $273D
    ei
    add b
    ld a, a
    dec a
    dec hl
    rst $38
    nop
    and $19
    call c, Call_000_23D9
    or a
    ld hl, $21CE
    ldh [$1F], a
    jr nc, jr_00A_5720

    ld bc, $FFFE
    ld hl, sp+$07
    db $10
    rst $28
    rlca
    ld hl, sp+$06
    ld sp, hl
    ccf
    dec b
    ld a, [$0FF0]
    xor $11

jr_00A_570D:
    jr nc, jr_00A_5730

    ld sp, $FF21
    jp nz, $803D

    ld a, a
    ld bc, $3FFE
    ret nz

    db $FC
    ld a, [hl-]
    ld hl, $2131
    inc b

jr_00A_5720:
    ei
    ld [hl], $C9
    ld [hl], c
    adc [hl]
    rst $38
    ei
    inc b
    rst $38
    nop
    rst $18
    jr nz, jr_00A_570D

    rra
    ld hl, sp+$3D

jr_00A_5730:
    daa
    ld [hl], e
    jr nz, @+$74

    jr nz, jr_00A_5736

jr_00A_5736:
    rst $38
    ld b, e
    cp h
    ld a, [c]
    ld sp, hl
    dec c
    ld a, [hl-]
    ld sp, $214C
    rst $18
    jr nz, @-$03

    inc b
    db $E3
    rst $38
    inc e
    jp $E73C


    jr @-$37

    jr c, @-$3B

    rst $38
    inc a
    cp [hl]
    ld b, c
    cp [hl]
    ld b, c
    ld a, a
    add b
    pop af
    ld a, a
    ld c, $F3
    inc c
    db $E3
    inc e
    db $E3
    inc e
    ld h, d
    ld b, c
    rst $38

jr_00A_5762:
    adc a
    ld [hl], b
    add b
    ld a, a
    cp a

jr_00A_5767:
    ld b, b
    ccf
    ret nz

    ld a, [$20AB]
    add b
    jr nc, jr_00A_5795

    scf
    ret z

    cp [hl]
    ld b, c
    ld [hl], $FF
    ret


    cp [hl]
    ld b, c
    jr jr_00A_5762

    ret nz

    ccf
    or c
    rst $30
    ld c, [hl]
    ld sp, hl
    ld b, $BE
    ld hl, $F807
    rrca
    ldh a, [$BC]
    add h
    ld b, l
    ret z

    dec h
    ldh [$1F], a
    ld de, $A2EE
    ld hl, $FF3A

jr_00A_5795:
    push bc
    cpl
    ret nc

    daa
    ret c

    daa
    ret c

    ld [hl+], a
    scf
    db $DD
    ld h, d
    sbc l
    ret z

    ld b, c
    inc bc
    db $FC
    jr c, jr_00A_57EA

    call nc, Call_00A_7B5D
    sbc b
    ld h, a
    ld sp, $3023
    rst $08
    or b
    ld c, a
    adc $21
    rst $38
    ld [bc], a
    db $FD
    add l
    ld a, d
    ret nz

    ccf
    add b
    ld a, a
    ld l, a
    rst $38
    nop
    ret nz

    ccf
    jp c, $FD23

    ld [bc], a
    jr nc, jr_00A_57E9

    ccf
    ld hl, $47DE
    cp b
    ld b, $F9
    inc c
    ld h, c
    jr nc, jr_00A_57F6

    rst $38
    and b
    ld e, a
    or b
    ld c, a
    ret c

    daa
    ret nz

    ccf
    cp [hl]
    ld h, a
    jr nz, jr_00A_57FF

    or c
    ld c, [hl]
    rst $00
    jr c, jr_00A_5767

    ld b, c
    ccf
    rst $30
    ret nz

jr_00A_57E9:
    rst $38

jr_00A_57EA:
    nop
    ld l, $21
    ld c, a
    or b
    ld b, b
    cp a
    cp a
    ld a, [hl]
    add c
    ld a, $C1

jr_00A_57F6:
    ccf
    ret nz

    and b
    inc hl
    rra
    rst $30
    ldh [$0D], a
    ld a, [c]

jr_00A_57FF:
    jp z, $C023

    ccf
    db $10
    rst $28
    or e
    ld [$DAF7], sp
    inc hl
    inc a
    add hl, hl
    ccf
    ret nz

    sbc $66
    inc b
    ld h, [hl]

jr_00A_5812:
    add [hl]
    ld h, b

jr_00A_5814:
    ld [bc], a
    nop
    add hl, de
    ld h, d
    ld c, h
    ld hl, $F00F
    cp h
    ld hl, $D4FF
    dec hl
    rra
    ldh [$3F], a
    ret nz

    ccf
    ret nz

    rst $38
    inc a
    jp $8778


    ld a, b
    add a
    ldh a, [rIF]
    ld a, e
    ldh a, [rIF]
    ld l, [hl]
    dec h
    cp $01
    db $FC
    inc bc
    or a
    ld hl, $F1FB
    ld c, $5C
    ld b, c
    rst $00
    jr c, jr_00A_5812

    jr nc, jr_00A_5814

    ld a, a
    jr nc, @+$21

    ldh [$9F], a
    ld h, b
    scf
    ret z

    adc $61
    ei
    or a
    ld c, b
    adc $61
    inc [hl]
    sla a
    ret c

    db $E4
    db $ED
    dec de
    ld l, d
    ld h, l
    db $FC
    inc bc
    adc $21
    db $E4
    dec de
    inc b
    db $FD
    ei
    ld sp, $0721
    ld hl, sp-$41
    ld b, b
    ld e, $E1
    rst $38
    nop
    rst $38
    sub b
    ld l, a
    sub b
    ld l, a
    ret nc

    cpl
    cp $02
    ld bc, $0DF2
    ld a, $C1
    ld [hl-], a
    call $CD01
    cp $CE

jr_00A_5884:
    ld b, c
    pop bc

jr_00A_5886:
    ld a, $9A
    ld hl, $47D0
    add c
    ld a, [hl]
    ld a, e
    ld b, b
    cp a
    dec a
    add hl, hl
    jp z, Jump_000_0335

    db $FC
    ldh a, [rLYC]
    rst $38
    ret c

    daa
    jr jr_00A_5884

    jr jr_00A_5886

    db $10
    rst $28
    ld a, e
    add b
    ld a, a
    ld h, $01
    ld sp, hl
    ld b, $1F
    ldh [$31], a
    ld hl, $02FF
    db $FD
    rst $38
    nop
    pop bc
    ld a, $F8
    rlca
    cp $BE
    daa
    cpl
    ret nc

    rst $38
    nop
    ei
    inc b
    or b
    ld a, a
    ld c, a
    cp b
    ld b, a
    sbc h
    ld h, e
    jp c, Jump_000_3A25

    ld hl, $FBFF
    inc b
    ld sp, hl
    ld b, $F7
    ld [$08F7], sp
    rst $38
    ld [hl], a
    adc b
    ld [hl], a
    adc b
    and a
    ld e, b
    jp $FF3C


    ld d, e
    xor h
    ld l, d
    sub l
    db $EC
    inc de
    and $19
    rst $38
    jp $893C


    halt
    sbc l
    ld h, d
    cp [hl]
    ld b, c
    ld a, [hl]
    ld d, [hl]
    inc hl
    di
    inc c
    rst $30
    ld [$04FB], sp
    ld a, d
    ld bc, $7870
    ld hl, $4534
    and [hl]
    inc hl
    ld sp, $0220
    nop
    ld bc, $02C0
    ld [hl], d
    xor $01
    ld b, b
    jp z, $F100

    inc bc
    add b
    nop
    ret nz

    jp z, $C102

    ld h, b
    adc $06
    push hl
    inc b
    ld d, $61
    inc h
    ld b, c
    jr nc, jr_00A_5944

    inc bc
    db $FC
    ld l, a
    ccf

jr_00A_5923:
    ret nz

    ld e, a
    and b
    jr nc, jr_00A_594F

    ld hl, sp+$07
    xor d
    ld h, c
    rst $28
    pop hl
    ld e, $C3
    inc a
    ld a, b
    ld b, c
    sbc a
    ld h, b
    ld e, a
    reti


    and b
    and b
    ld h, c
    add d
    ld b, a
    xor $11
    or d
    ld h, e
    ld e, $E1
    rst $38
    inc a

jr_00A_5944:
    jp $07F8


    ld sp, hl
    ld b, $38
    rst $00
    rst $38
    add hl, sp
    add $33

jr_00A_594F:
    call z, $CC33
    jr nc, jr_00A_5923

    rst $38
    inc [hl]
    swap l
    jp z, $CA35

    cp a
    ld b, b
    db $EC
    ld c, [hl]
    dec h
    ld l, d
    ld bc, $47B8
    or b
    dec b
    ld bc, $11FE
    rra
    xor $13
    db $EC
    ld l, a
    sub b
    xor d
    ld hl, $296E
    jp nz, Jump_00A_7B21

    sbc d
    ld h, l
    inc e
    ld b, c
    ld [bc], a
    db $FD
    inc bc
    db $FC
    ld [hl], $03
    ei
    dec b
    ld a, [$25C2]
    inc [hl]
    rl b
    rst $28
    sub b
    db $FD
    ld l, a
    ld [hl], h
    add hl, hl
    adc c
    halt
    adc e
    ld [hl], h
    adc e
    ld [hl], h
    rst $38
    adc l
    ld [hl], d
    sbc c
    ld h, [hl]
    sbc c
    ld h, [hl]
    ld sp, hl
    ld b, $FF
    sbc c
    ld h, [hl]
    cp $01
    dec [hl]
    jp z, $0AF5

    sbc $C2
    dec h
    rst $28
    db $10
    dec c
    ld a, [c]
    ld a, a
    nop
    rst $30
    add hl, bc
    sbc a
    or $0B
    db $F4
    dec bc
    db $F4
    ld b, $42
    ld a, [hl]
    ld h, e
    ld [bc], a
    inc hl
    nop
    inc bc
    call nz, $EA04
    daa
    push de
    ld bc, $CA78
    ld [bc], a
    db $DB
    ld bc, $20A5
    ld b, $46
    jr nc, @+$12

    ld c, d
    push hl
    ld bc, $D6C0
    ld [bc], a
    ld h, c
    rst $08
    nop
    ld [hl+], a
    nop
    ld [hl], $B2
    ld b, c
    ld c, b
    ld bc, $9F60
    rst $38
    ld h, b
    sbc a
    ld h, e
    sbc h

jr_00A_59E7:
    ld sp, $F3CE
    inc c
    ei
    ld sp, hl
    ld b, $AA
    ld h, c
    ld [c], a
    dec e
    add $39
    rst $28
    rst $38
    db $10
    or a
    ld c, b
    dec de
    db $E4
    dec de
    db $E4
    set 6, a
    inc [hl]
    db $E3
    inc e
    ld a, $41
    reti


    ld h, $EC
    inc de
    rst $28
    ldh [$1F], a
    add b
    ld a, a
    sbc [hl]
    ld h, c
    ld a, c
    add [hl]
    ld [hl], e
    ld l, l

jr_00A_5A13:
    adc h
    and b
    ld bc, $F807
    jp nc, $0149

    cp $D5
    ld c, e
    rst $38
    adc a
    ld [hl], b
    rst $08
    jr nc, jr_00A_5A13

    db $10
    rst $18
    jr nz, jr_00A_59E7

    rst $18
    jr nz, jr_00A_5A4A

    ldh [$5F], a
    and b
    jp nc, $1F41

    sbc c
    ldh [$D5], a
    ld b, a
    or [hl]
    ld h, c
    add b
    ld a, a
    ld [hl], $01
    ld c, $01
    add a
    rst $38
    ld a, b
    rst $08
    jr nc, jr_00A_5AA2

    and b
    dec bc
    db $F4
    db $10
    db $FD
    rst $28
    db $E4

jr_00A_5A4A:
    ld b, c
    rst $30
    ld [$07F8], sp
    db $FC
    inc bc
    cp $FA
    ld h, c
    add b
    ld a, a
    ld b, c
    cp [hl]
    ld h, b
    sbc a
    daa
    rst $38
    ret c

    cpl
    ret nc

    rra
    ldh [rNR32], a
    db $E3
    add hl, sp
    rst $38
    add $FC
    inc bc
    xor $11
    xor $11
    rst $08
    db $DD
    jr nc, @-$57

    ld h, b
    ld a, b
    cp a
    ld b, b
    jr @+$03

    ld c, $F1
    cp a
    ld [hl], b
    adc a
    rrca
    ldh a, [$F1]
    ld c, $B3
    ld h, c

jr_00A_5A81:
    jr c, @+$01

    rst $00
    nop
    rst $38
    ld a, [de]
    push hl
    rst $20
    jr jr_00A_5B01

    rst $30
    adc c
    add c
    ld a, [hl]
    cp b
    inc bc
    cp [hl]

jr_00A_5A92:
    ld b, c
    nop
    rst $38
    rst $08
    inc bc
    db $FC
    jr jr_00A_5A81

    call c, Call_00A_6E20
    ld h, d
    inc de
    db $EC
    ld b, [hl]
    ld l, a

jr_00A_5AA2:
    ld h, e
    dec bc
    db $F4
    cp d
    ld [bc], a
    adc c
    ld h, d
    jp nz, Jump_000_0006

    ld b, $40
    add hl, sp
    ld b, b
    sub $02
    inc hl
    ld b, e
    ld b, b
    nop
    db $10
    ld c, [hl]
    ld h, b
    ld de, $5749

jr_00A_5ABC:
    inc [hl]
    nop
    jr jr_00A_5ABC

    jr nz, jr_00A_5B32

    ld h, h
    ld h, h
    ldh [$93], a
    ld b, b
    rst $38
    rst $18
    jr c, jr_00A_5A92

    dec [hl]
    jp z, $CF30

    ld [hl], b
    rst $38
    adc a
    ld d, c
    xor [hl]
    ret nc

    cpl
    nop
    rst $38
    ldh [$7F], a
    rra
    rrca
    ldh a, [rNR23]
    rst $20
    pop hl
    ld e, $14
    ld bc, $89FB
    halt
    ldh [$61], a
    ld b, b
    cp a
    or $09
    ld a, [hl-]
    rst $38
    push bc
    ei
    inc b
    db $FD
    ld [bc], a
    inc a
    jp $FF00


    rst $38
    rst $08
    jr nc, jr_00A_5AFB

jr_00A_5AFB:
    rst $38
    rst $18
    jr nz, jr_00A_5B05

    rst $38
    ld sp, hl

jr_00A_5B01:
    dec b
    ld a, [$FB04]

jr_00A_5B05:
    inc c
    di
    cp b
    rst $38
    ld b, a
    add hl, bc
    or $00
    rst $38
    pop hl
    ld e, $50
    db $FD
    xor a
    ld e, $03
    and c
    ld e, [hl]
    inc c
    di
    ld [hl], b
    adc a
    rst $38
    inc bc
    db $FC
    ld h, b
    sbc a
    ldh a, [rIF]
    db $FC
    inc bc
    cp a
    and d
    ld e, l
    or c
    ld c, [hl]
    or b
    ld c, a
    ret nc

    ld h, c
    ret nc

    ld a, a
    cpl

jr_00A_5B30:
    push af
    ld a, [bc]

jr_00A_5B32:
    adc e
    ld [hl], h
    sbc e
    ld h, h
    rst $38
    ld [hl], b
    adc a

jr_00A_5B39:
    ld h, [hl]
    sbc c
    ld a, b
    add a
    ld a, [hl]
    add c
    cp $E4
    ld h, c
    ld h, d
    sbc l
    ld [hl], $C9
    db $10
    rst $28
    ld bc, $FEF7
    nop
    rst $38
    ld a, [c]
    ld h, c
    jr nz, jr_00A_5B30

    db $10
    rst $28
    cp a
    ld l, $D1
    ld e, $E1
    jr nz, jr_00A_5B39

    ld a, [c]
    ld h, c
    db $10
    cp l
    rst $28
    ld a, [c]
    ld h, c
    or b
    ld c, a
    ld b, b
    cp a
    ld a, [c]
    ld h, e
    nop
    rst $38
    rst $38
    inc b
    ei
    nop
    rst $38
    rst $18
    jr nz, jr_00A_5B7F

    ld a, a
    pop af
    ld [hl-], a
    call $1BE4
    ret nz

    ccf
    ld a, [c]
    ld h, e
    rst $38
    ld bc, $78FE

jr_00A_5B7F:
    rlca
    ld b, b
    ccf
    ld bc, $BFFE
    inc e
    db $E3
    cp a
    ld b, b
    ldh a, [rIF]
    ld a, [c]
    ld h, d
    jr nc, @-$0F

    nop
    stop
    inc de
    inc h
    ld bc, $F906
    nop
    ld e, a
    rst $38
    halt
    adc c
    nop
    ld [$004E], sp
    adc h
    ld d, d
    nop
    ld h, $F3
    ld h, b
    and b
    ld e, a
    ld a, [c]
    ld h, b
    ld e, [hl]
    inc bc
    inc bc
    ld e, [hl]
    inc b
    ld h, [hl]
    dec b
    rst $30
    add b
    nop
    cp $64
    inc b
    ld b, b
    nop
    ld h, b
    nop
    db $FD
    jr nz, @-$7C

    ld [bc], a
    stop
    ret nc

    nop
    jr c, jr_00A_5BC5

jr_00A_5BC5:
    ld a, a
    ld [hl], b
    nop
    pop af
    nop
    pop hl
    nop
    ldh [$94], a
    nop
    ld d, l
    ld h, c
    sbc b
    nop
    ld h, e
    sub h
    nop
    ld h, b
    sub h
    ld [bc], a
    ret nz

    sub h
    ld [bc], a
    sbc a
    ldh [rP1], a
    add hl, de
    nop
    ld bc, $025E
    di
    ld h, b
    ccf
    rst $10
    ret nz

    ldh [$1F], a
    ld h, [hl]
    ld b, $01
    ld a, [c]
    ld h, c
    add c
    ld a, [hl]
    ld a, [c]
    ld h, [hl]
    ld [$D810], sp
    ld [bc], a
    ld h, [hl]
    rlca
    rlca
    nop
    rst $38
    inc bc
    dec a
    db $FC
    ld h, [hl]
    add hl, bc
    ld [$8000], sp
    ld a, a
    ld h, [hl]
    add hl, bc
    pop af
    ld h, c
    ld e, [hl]
    ld h, [hl]
    add hl, bc
    jp $0700


    ld hl, sp+$66
    add hl, bc
    db $E3
    or l
    nop
    db $FD
    add b
    ld h, [hl]
    rlca
    ld b, b
    ld a, a
    add b
    ld e, $E1
    ld bc, $88FF
    ld bc, $0198
    db $10
    ld bc, $00F0
    rst $38
    ld a, b
    add b
    ld d, $EE
    ld de, $FF00
    inc c
    rst $38
    nop
    ld [$3031], sp
    rrca
    jr c, jr_00A_5C3D

    ld hl, sp+$5F
    inc bc

jr_00A_5C3D:
    ld e, h
    and e
    nop
    rst $38
    ld c, $00
    ld hl, sp+$5E
    ld [hl+], a
    db $FD
    db $F4
    ldh a, [$61]
    ld a, b
    add a
    add a
    ld a, b
    ldh a, [$03]
    rst $38
    jr @-$1B

    nop
    rst $38
    ret nz

    ccf

jr_00A_5C57:
    ld e, h
    and e

jr_00A_5C59:
    rst $38
    ld h, b
    sbc a
    ldh a, [rIF]
    cp $01
    ld bc, $FFFE
    jr nz, @-$1F

    ld [bc], a
    db $FD
    ld h, c
    sbc [hl]
    ld e, $E1
    ccf
    ld a, a
    add b
    inc sp
    call z, $CF30
    ld h, $05
    inc l
    jr nz, @+$01

    ld a, a
    ret nz

    ccf
    ld h, b
    sbc a
    jr nz, @-$1F

    ld [$F7FD], sp
    ld b, $01
    ld b, d
    cp l
    adc b
    ld [hl], a
    nop
    rst $38
    rst $38
    rrca
    ldh a, [rP1]
    ld a, a
    ld [bc], a
    ld a, l
    inc b
    ld a, e
    rst $38
    ld bc, $07FE
    ld hl, sp+$04
    ei
    ld [$22F7], sp
    ld a, [c]
    ld h, b
    rra
    ld h, h
    nop
    or c
    inc bc
    ld e, [hl]
    inc bc
    ld [hl], e
    adc $20
    di
    ld h, c
    sub a
    ld a, a
    nop
    ccf
    cp [hl]
    jr nz, jr_00A_5CD0

    and d
    inc b
    and a
    inc bc
    pop bc
    rst $38
    nop
    jp Jump_000_1E20


jr_00A_5CBB:
    jr nz, jr_00A_5C57

    ld c, b
    or d
    rst $38
    jr z, @-$2C

    ld l, b
    sub e
    ld h, b

jr_00A_5CC5:
    sub a
    ld l, b
    sub a
    rst $30
    nop
    rst $38
    jr c, jr_00A_5C59

    nop
    jr c, jr_00A_5CD0

jr_00A_5CD0:
    jr jr_00A_5CD2

jr_00A_5CD2:
    di
    jr jr_00A_5CD8

    cp $23
    add d

jr_00A_5CD8:
    inc b
    jr nc, jr_00A_5CDB

jr_00A_5CDB:
    add hl, bc
    nop
    rlca
    ld a, [bc]
    nop
    inc b
    ld a, [de]

jr_00A_5CE2:
    ld b, b
    ld l, a
    dec b
    ld l, $28
    inc h
    ld b, d
    inc sp
    ld b, l
    cp [hl]
    ld e, [hl]
    inc bc
    add h
    nop

jr_00A_5CF0:
    sbc h
    nop
    ldh a, [$7E]
    nop
    jr nz, jr_00A_5CC5

    ld h, [hl]
    ld [$0011], sp
    ld c, $5E
    jr nz, @+$68

    add hl, bc
    ld [bc], a
    nop
    dec h
    rrca
    dec c
    ld b, l
    ld h, b
    and [hl]
    nop
    dec h
    ld b, c
    ld [bc], a
    ld a, l
    ld b, h
    pop bc
    ld hl, $887E
    ld b, b
    add b
    dec d
    nop
    ld e, $00
    ld b, $91
    ld b, h
    rst $38
    inc b
    nop
    inc c
    nop
    nop
    inc a
    nop
    ld a, b
    cp b
    and b
    ld b, b
    ld e, a
    inc hl
    ld e, a
    jr nz, @+$2A

    nop
    jr z, jr_00A_5CBB

    nop
    jr nc, jr_00A_5CF0

    or e
    ld b, c
    add b
    ld [hl], b
    ld bc, $01F0
    ld [hl], a
    ld b, h
    ldh [$BF], a
    nop
    sbc [hl]
    nop
    sub c
    nop
    sub b
    ld e, [hl]
    jr nz, jr_00A_5D48

    ei
    nop

jr_00A_5D48:
    inc d
    ld e, d
    ld b, b
    add a
    nop
    push hl
    nop
    push af
    add d
    ld a, [c]
    ld h, d
    cp $DE
    ld c, b
    di
    ld h, c
    cp [hl]
    ld [$2532], sp
    add b
    dec b
    add b
    ld d, a
    jr nc, jr_00A_5CE2

    db $10
    cp [hl]
    jr nz, jr_00A_5D75

    ld l, h
    ld b, b
    rlca
    inc d
    ld h, h
    rst $38
    inc bc
    nop
    rst $00
    nop
    rst $08
    nop
    adc $00
    sub a

jr_00A_5D75:
    sbc $00
    db $FC
    ld e, [hl]
    ld [hl+], a
    ldh a, [$DA]
    ld [hl+], a
    db $DB
    ld hl, $523F
    ret c

    ld [hl+], a
    ccf
    ld a, d
    inc b
    ld b, e
    ld h, e
    ld h, b
    ld a, $00
    inc c
    ld c, [hl]
    ld h, d
    xor b
    ld c, a
    ld bc, $6351
    or $03
    ld [$4016], sp
    add hl, bc
    ld l, d
    ld b, b
    ld b, $58
    ld [hl], h
    nop
    db $E3
    ld hl, $4525
    jr jr_00A_5DD9

    ret nc

    ld b, b
    inc e
    inc bc
    ld b, c
    rst $38
    ld [bc], a
    ld [$2812], sp
    inc de
    jr z, jr_00A_5DC5

    nop
    ld a, [hl-]
    ld a, [de]
    ld b, b
    adc b
    sub c
    ld h, d
    sbc b
    nop
    ld e, b
    sbc c
    ld h, b
    dec de
    ld h, c
    ld hl, sp-$3D
    add hl, hl
    dec [hl]
    ld c, l

jr_00A_5DC5:
    ld h, [hl]
    rlca
    dec b
    nop
    ld b, l
    nop

jr_00A_5DCB:
    add [hl]
    cp a
    nop
    inc b
    ret nz

    dec b
    add b
    rlca
    ld l, d
    ld h, d
    inc h
    ld e, [hl]
    rst $10
    ld h, b

jr_00A_5DD9:
    inc d
    nop
    nop
    or b
    sub b
    nop
    ld [hl], c
    adc $22
    ld a, a
    halt
    nop
    ld a, $00
    ld a, $C0
    ld bc, $4733
    sbc a
    add $00
    ld h, h
    nop
    ld hl, $003E
    ld hl, sp+$01
    rlca
    ld d, h
    jp nz, Jump_00A_642A

    ld b, [hl]
    ld [bc], a
    ld e, [hl]
    ld [hl+], a
    db $FC
    ld [hl+], a
    ld b, $FE
    ld e, [hl]
    ld [bc], a
    sub c
    ld b, $B0
    ld bc, $6155
    ld a, [$1000]
    ld a, $01
    adc b
    nop
    sbc b
    cp a
    nop
    ld l, h
    add b
    inc a
    add b
    rra
    inc d
    ld h, h
    dec bc
    inc h
    ld d, h
    nop
    ld de, $0F61
    ld c, b
    ld b, b
    ld e, a
    ld bc, $5EE0
    ld [bc], a
    ld e, a
    ld hl, $0F77
    nop
    xor a
    call nc, Call_00A_7F22
    nop
    scf
    ret c

    ld [hl+], a
    sub l
    jr jr_00A_5DCB

    ld b, b
    rst $38
    or b
    inc bc
    ld b, $C0
    jr nz, jr_00A_5E5C

    ld b, d
    call nz, Call_000_0043
    db $F4
    ld e, d
    ld b, b
    add h
    ld b, e
    dec de
    ld b, c
    sbc d
    ld b, c
    ld [$4103], sp
    db $FC
    inc d
    ld b, b
    reti


    ld bc, $0032
    ld [hl+], a
    nop
    ld c, [hl]

jr_00A_5E5C:
    ld [bc], a
    rst $38
    ld d, b
    nop
    and b
    inc b
    ret nz

    add b
    rlca
    add b
    xor a
    rlca
    ret nz

    inc bc
    ld h, c
    ld [$E120], a
    or h
    nop
    ld [hl-], a
    ld a, [bc]
    or a
    ld l, h
    add b
    ld a, [de]
    ld b, d
    ld [bc], a
    add a
    ld b, d
    or a
    ld l, l
    ld h, l
    ld h, e
    sbc l
    ld b, b
    rst $38
    inc a
    ld h, [hl]
    ld h, [hl]
    halt
    halt
    ld l, [hl]
    ld l, [hl]
    ld h, [hl]
    rst $30
    ld h, [hl]
    inc a
    inc a
    ld a, c
    ld h, d
    jr @+$3A

    jr c, @+$1A

    ld hl, sp+$14
    ld [hl+], a
    ld a, [bc]
    inc hl
    nop
    ld hl, $0E0E
    inc a
    inc a
    ld [hl], b
    rst $30
    ld [hl], b
    ld a, [hl]
    ld a, [hl]
    inc e
    dec h
    inc e
    inc e
    ld b, $06
    cp [hl]
    ld [$1C25], sp
    inc e
    inc l
    inc l
    ld c, h
    ld b, h
    jr nz, jr_00A_5F32

    ei
    ld a, [hl]
    inc c
    sbc h
    ld b, b
    nop
    nop
    ld a, h
    ld a, h
    ld h, b
    or a
    ld h, b
    ld a, h
    ld a, h
    ld [hl], $27
    inc a
    inc a
    ld d, d
    ld hl, $FC66
    ld h, [hl]
    jr nz, jr_00A_5ED7

    inc hl
    ld a, [hl]
    ld a, [hl]
    ld b, $06
    inc c
    inc c
    ldh [rNR14], a
    inc hl

jr_00A_5ED7:
    inc e
    dec h
    nop
    ld hl, $2758
    ld h, [hl]
    ld hl, $3E3E
    ld b, $01
    ld b, $0A
    ld hl, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_00A_5F32:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc d
    inc de
    ld [de], a
    ld de, $0F10
    ld c, $0D
    inc c
    dec bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, [bc]
    add hl, bc
    ld [$0607], sp
    dec b
    inc b
    inc bc
    ld [bc], a
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    ldh [$E0], a
    nop
    nop
    nop
    nop
    nop
    nop
    rst $00
    rst $00
    rst $20
    rst $20
    rst $20
    rst $20
    rst $20
    rst $20
    rst $20
    rst $20
    nop
    nop
    nop
    nop
    nop
    nop
    rst $08
    rst $08
    adc $CE
    adc $CE
    adc $CE
    adc [hl]
    adc [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    dec e
    dec e
    dec e
    dec e
    dec e
    dec e
    sbc l
    sbc l
    rrca
    rrca
    nop
    nop
    nop
    nop
    nop
    nop
    jr c, jr_00A_60D8

    jr c, jr_00A_60DA

    jr c, jr_00A_60DC

    add hl, sp
    add hl, sp
    rra
    rra
    nop
    nop
    nop
    nop
    nop
    nop
    ld e, $1E
    rrca
    rrca
    rlca
    rlca
    scf
    scf
    ld e, $1E
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    pop hl
    pop hl
    pop hl
    pop hl
    pop hl
    pop hl
    pop hl
    pop hl
    pop hl
    pop hl

jr_00A_60D8:
    nop
    nop

jr_00A_60DA:
    nop
    nop

jr_00A_60DC:
    nop
    nop
    ld hl, sp-$08
    cp b
    cp b
    cp b
    cp b
    cp b
    cp b
    cp b
    cp b
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc

Call_00A_60F3:
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh [$E0], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $00
    rst $00
    rst $20
    rst $20
    rst $20
    rst $20
    rst $20
    rst $20
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    adc a
    adc a
    adc $CE
    adc $CE
    adc $CE
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rrca
    rrca
    sbc l
    sbc l
    dec e
    dec e
    dec e
    dec e
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
    add hl, sp
    add hl, sp
    jr c, jr_00A_6184

    jr c, jr_00A_6186

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld e, $1E
    dec sp
    dec sp
    jr c, jr_00A_6194

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
    ldh a, [$F0]
    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $20
    rst $20
    pop hl
    pop hl
    pop hl
    pop hl
    pop hl
    pop hl
    nop
    nop
    nop
    nop
    nop
    nop

jr_00A_6184:
    nop
    nop

jr_00A_6186:
    cp b
    cp b
    cp b
    cp b
    cp b
    cp b
    cp b
    cp b
    nop
    nop
    nop
    nop
    nop
    nop

jr_00A_6194:
    nop
    nop
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    nop
    nop
    inc a
    inc a
    ld h, [hl]
    ld h, [hl]
    halt
    halt
    ld l, [hl]
    ld l, [hl]
    ld h, [hl]
    ld h, [hl]
    inc a
    inc a
    nop
    nop
    nop
    nop
    jr jr_00A_61CA

    jr c, jr_00A_61EC

    jr jr_00A_61CE

    jr jr_00A_61D0

    jr jr_00A_61D2

    inc a
    inc a
    nop
    nop
    nop
    nop
    inc a
    inc a
    ld h, [hl]
    ld h, [hl]
    ld c, $0E
    inc a
    inc a
    ld [hl], b
    ld [hl], b

jr_00A_61CA:
    ld a, [hl]
    ld a, [hl]
    nop
    nop

jr_00A_61CE:
    nop
    nop

jr_00A_61D0:
    inc a
    inc a

jr_00A_61D2:
    ld h, [hl]
    ld h, [hl]
    inc e
    inc e
    ld b, $06
    ld h, [hl]
    ld h, [hl]
    inc a
    inc a
    nop
    nop
    nop
    nop
    inc e
    inc e
    inc l
    inc l
    ld c, h
    ld c, h
    ld c, h
    ld c, h
    ld a, [hl]
    ld a, [hl]
    inc c
    inc c

jr_00A_61EC:
    nop
    nop
    nop
    nop
    ld a, h
    ld a, h
    ld h, b
    ld h, b
    ld a, h
    ld a, h
    ld b, $06
    ld h, [hl]
    ld h, [hl]
    inc a
    inc a
    nop
    nop
    nop
    nop
    inc a
    inc a
    ld h, b
    ld h, b
    ld a, h
    ld a, h
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    inc a
    inc a
    nop
    nop
    nop
    nop
    ld a, [hl]
    ld a, [hl]
    ld b, $06
    inc c
    inc c
    jr jr_00A_6230

    jr jr_00A_6232

    jr jr_00A_6234

    nop
    nop
    nop
    nop
    inc a
    inc a
    ld h, [hl]
    ld h, [hl]
    inc a
    inc a
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    inc a
    inc a
    nop
    nop
    nop
    nop

jr_00A_6230:
    inc a
    inc a

jr_00A_6232:
    ld h, [hl]
    ld h, [hl]

jr_00A_6234:
    ld h, [hl]
    ld h, [hl]
    ld a, $3E
    ld b, $06
    inc a
    inc a
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $2A00
    dec hl
    inc l
    dec l
    ld l, $2F
    jr nc, jr_00A_62A0

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_00A_62B0

    ld a, [hl-]
    dec sp
    inc a
    nop
    nop
    ccf
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld b, l

Call_00A_6283:
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c
    ld c, d
    ld c, e
    ld c, h
    ld c, l
    ld c, [hl]
    nop
    nop
    ld d, c
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    nop
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

jr_00A_62A0:
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

jr_00A_62B0:
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
    ld bc, $A1A0
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
    ld bc, $B5B4
    ld bc, $B8B7
    cp c
    cp d
    cp e
    cp h
    cp l
    cp [hl]
    cp a
    ret nz

    pop bc
    jp nz, $C400

    push bc
    add $C7
    ret z

    ret


    ld bc, $C3CA
    or [hl]
    or e
    sbc a
    ld d, [hl]
    ld d, b
    ld c, a
    ld a, $3D
    add hl, hl
    jr z, @+$29

    ld h, $25
    inc h
    ld bc, $0101
    ld bc, $0101
    ld bc, $2223
    ld hl, $1F20
    ld e, $1D
    inc e
    dec de
    ld a, [de]
    add hl, de
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    jr @+$19

    ld d, $15
    inc d
    inc de
    ld [de], a
    ld de, $0F10
    ld c, $01
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0C0D
    dec bc
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0A01
    add hl, bc
    ld [$0101], sp
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    rlca
    ld b, $05
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0401
    inc bc
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    push af
    nop
    sbc $6C
    rst $38
    xor $6C
    ccf
    ccf
    ld a, a
    ld a, a
    sbc $EE
    ld l, c
    jp nz, $E0C2

    ldh [$EE], a
    ld l, c
    jr nc, @+$32

    cp e
    inc a
    inc a
    xor $69
    ld a, a
    ld a, a
    ccf
    jr nc, jr_00A_63D0

    ldh [$EB], a
    ldh [$C2], a
    ld b, b
    ld a, [bc]
    inc a
    ld c, [hl]
    nop
    inc c

jr_00A_63D0:
    inc c
    inc b
    db $FD
    inc b
    sbc $61
    jr nz, @+$22

    jr nc, jr_00A_640A

    sub b
    sub b
    ld a, e
    pop bc
    pop bc

jr_00A_63DF:
    xor $69
    add a
    add a
    add b
    add b
    xor $69
    ld sp, hl
    rst $00
    ld a, [hl]
    nop
    xor $69
    pop bc
    pop bc
    add b
    add b
    add [hl]
    rst $38
    add [hl]
    add a
    add a
    jp $E1C3


    pop hl
    ldh [$BF], a
    ldh [$90], a
    sub b
    add b
    add b
    add a
    and b
    ld [bc], a
    add c
    push af
    add c
    and b
    inc bc
    db $10

jr_00A_640A:
    xor [hl]
    inc b
    nop
    nop
    add c
    add c
    cp b
    ld a, [hl]
    ld bc, $0130
    xor $69
    db $FC
    db $FC
    ldh a, [$D0]
    ld [bc], a
    rst $38
    sbc l
    rst $38
    ret nc

    inc bc
    rst $00
    rst $00
    pop bc
    ldh [rP1], a
    ld a, [hl]
    ld bc, $E3C7

Jump_00A_642A:
    rst $00
    ret nz

    ld [$AE00], a
    dec b
    or d
    inc bc
    add e
    add e
    inc hl
    ei
    inc hl
    inc bc
    nop
    inc h
    add e
    add e
    jp $E3C3


    xor e
    db $E3
    jr c, jr_00A_6451

    inc h
    add hl, sp
    ld d, $24
    ld a, $1E
    inc l
    adc [hl]
    cp e
    adc [hl]
    ld c, $30
    jr z, jr_00A_63DF

jr_00A_6451:
    adc [hl]
    ld h, b
    ld a, $24
    ld h, h
    rst $38
    ld h, h
    ld h, [hl]
    ld h, [hl]
    ld h, a
    ld h, a
    rst $20
    rst $20
    add h
    xor $4E
    ld a, [hl+]
    ret nz

    ret nz

    rra
    ld e, [hl]
    ld h, $19
    add hl, de
    ld bc, $01E7
    add e
    add e
    inc h
    dec c
    xor $67
    ldh a, [$F0]
    ldh [rTAC], a
    ldh [$E6], a
    and $EE
    ld h, a
    ld [$8001], a
    add hl, bc
    xor [hl]
    inc bc
    xor $67
    ld l, l
    db $E3

Jump_00A_6485:
    cp b
    jr nz, @+$65

    ld h, e
    xor $67
    add hl, sp
    add hl, sp
    ld c, $21
    ld e, d
    xor $67
    ld b, $D8
    jr nz, jr_00A_64D4

    ld a, $EE
    ld h, a
    adc b
    add sp, $20
    ei
    adc [hl]
    adc [hl]
    xor $67
    rst $20
    rst $20
    ld h, e
    ld h, e
    ld h, c
    pop af
    ld h, c
    adc [hl]
    add hl, hl
    ld c, [hl]
    ld hl, $67EE
    add e
    add e
    ld bc, $F701
    add hl, de
    add hl, de
    cp a
    nop
    dec bc
    rst $38
    ld e, a
    jr nz, jr_00A_653B

    rst $18
    nop
    ld a, $41
    cp l
    ld b, e
    xor $65
    adc $3E
    cp a
    cp h
    ld a, [hl]
    ld a, b
    db $FC
    ld a, h
    ld hl, sp-$12
    ld h, l
    ld bc, $00BF
    add e
    nop

jr_00A_64D4:
    rst $20
    nop
    add hl, sp
    add c
    ld b, $FC
    db $DB
    nop
    rst $38
    ld e, a
    ld b, b
    ei
    inc b
    xor $65
    inc d
    add hl, bc
    rst $18
    dec e
    ld [bc], a
    rla
    ld [$650A], sp
    ld b, [hl]
    ld a, [de]
    dec e
    rst $38
    ccf
    db $10
    ld a, $10
    ld h, [hl]
    db $10
    ld h, h
    nop
    db $FD
    ld h, b
    sbc $62
    ei
    rst $20
    ld a, l
    db $E3
    db $FD
    ld h, e
    rst $38
    dec sp
    ld h, l
    inc sp
    ld l, l
    ccf
    ld h, c
    ld a, [hl-]
    ld h, l
    rst $38
    ld e, d
    dec h
    jp hl


    ld a, [c]
    rst $38
    ldh [$F3], a
    db $EC
    rst $38
    ei
    db $E4
    cp $E4
    ld a, [$FCE4]
    ld [c], a
    rst $38
    db $FC
    ld [c], a
    cp b
    ld b, b
    sbc h
    ld h, b
    adc d
    ld [hl], h
    rst $38
    pop hl
    ld e, $E0
    rra
    pop af
    ld c, $BE
    ld b, b
    rst $38
    cp b
    ld b, b
    and b
    ld e, b
    ld d, h
    jr z, jr_00A_6565

    db $10
    rst $38
    ld c, $10

jr_00A_653B:
    sub a
    ld [$05CB], sp
    rlc l
    ld sp, hl
    dec bc

jr_00A_6543:
    ld d, l
    ld [bc], a
    ld e, b
    nop
    nop
    inc hl
    nop
    or e
    nop
    ld a, a
    ld [hl], c
    adc b
    cp c
    ld c, b
    ld h, e
    nop
    ld hl, $66DE
    db $FD
    add b
    jp hl


    ld b, [hl]
    ret nz

    nop

jr_00A_655C:
    jr nz, @+$42

    db $10
    ld h, b
    rst $10
    jr nc, jr_00A_6563

jr_00A_6563:
    jr jr_00A_6543

jr_00A_6565:
    ld l, d
    ld b, b
    add hl, bc
    ld h, b
    nop
    nop
    rst $18
    inc b
    nop
    inc c
    nop
    adc h
    inc de
    ld h, b
    or h
    ld [$8CFF], sp
    jr c, @-$3A

    jr c, @+$1D

    nop
    stop
    ld e, l
    ld [de], a
    ld hl, $3262
    nop
    ld [hl], $29
    ld h, b
    jr c, jr_00A_655C

    ld b, b
    push de
    ld h, b
    add hl, bc
    ld h, b
    jr nc, jr_00A_65C5

    ld h, b
    ld h, b
    add a
    ld b, b
    ld a, [c]
    ld hl, $59FF
    jr nz, jr_00A_65A7

    jr nc, jr_00A_65D8

    nop
    ld e, $00
    rst $38
    ld [de], a
    inc c
    dec bc
    inc b
    rlca
    ld [bc], a
    ld b, e

jr_00A_65A7:
    add b
    rst $18
    ld h, e
    add b
    db $E3
    nop
    rst $30
    ld d, e
    ld h, b
    ld [hl], e
    nop
    rst $38
    ld a, e
    nop
    sbc d
    ld hl, $00E0
    ldh [rP1], a
    rst $38
    or b
    ld b, b
    ldh a, [rP1]
    ldh [rNR10], a
    ld hl, sp+$00
    rst $38

jr_00A_65C5:
    ld hl, sp+$00
    db $FC
    nop
    inc c
    rlca
    inc b
    inc bc
    rla
    nop
    ld bc, $E101
    ld c, h
    ret nz

    di
    ld b, b
    sbc $64

jr_00A_65D8:
    ld [hl], h
    ld h, a
    cp $DE
    ld h, d
    ld b, c
    add b
    ret nz

    ld bc, $0073
    add hl, sp
    rst $18
    ld b, $0D
    ld b, $04
    rlca
    ld [hl], h
    ld h, c
    ld hl, sp+$00
    ld sp, hl
    ldh a, [$AF]
    ld h, d
    or $66
    ret nz

    ccf
    ret nz

    cp a
    ret nz

    db $FD
    ld a, a
    ld [hl], c
    ld b, $1A
    ld h, l
    rra
    ld h, b
    ld a, [hl]
    ld bc, $4CFF
    inc bc
    inc e
    inc bc
    ccf
    ld bc, $0D33
    ld a, a
    ld a, [hl-]
    dec b
    db $FC
    ld [c], a
    rst $38
    ldh [$DF], a
    pop hl
    ld h, d
    rst $38
    rst $38
    ldh [$EE], a
    pop af
    xor $F1
    jr jr_00A_667F

    rst $38
    db $10
    ld h, b
    ld d, b
    jr nz, jr_00A_6645

    db $10
    jr nz, @+$12

    rst $38
    or b
    nop
    cp b
    nop
    sbc b
    nop
    dec c
    ld [bc], a
    adc $70
    ld h, b
    inc bc
    ld [bc], a
    ld bc, $608E
    ld [hl], e
    ld h, b
    ld bc, $FF00
    or a
    ld c, h
    add h
    ld a, a
    call $DE3F

jr_00A_6645:
    ccf
    rst $38
    db $E3
    rra
    cp $09
    db $FD
    ld [$0CF0], sp
    rst $38
    ld c, h
    add b
    ld [$20C4], sp
    call nz, $E016

jr_00A_6658:
    rst $38
    nop
    ld a, [c]
    ld c, c
    ld a, [c]
    cp h
    ld e, e
    ld l, [hl]
    dec e
    rst $20
    jr jr_00A_6664

jr_00A_6664:
    ld [$022F], sp
    and $43
    jp Jump_00A_4300


    ei
    nop
    ld h, e
    ld e, c
    ld h, b
    inc a
    inc bc
    inc a
    inc bc
    ccf
    rst $38
    nop
    ccf
    nop
    ld a, $01
    ld b, h
    cp b
    ld e, b

jr_00A_667F:
    rst $38
    or b
    add sp, $10
    ld l, b
    sub b
    ret nc

    jr nz, jr_00A_6658

    ld a, a
    jr nz, jr_00A_669C

    ldh [$61], a
    add b
    ld a, $00
    ld e, [hl]
    ld bc, $3BFF
    inc b
    dec sp
    inc b
    ccf
    nop
    add hl, sp
    add [hl]
    ld a, a

jr_00A_669C:
    dec sp
    add [hl]
    and b

jr_00A_669F:
    ld b, b
    ld b, b
    add b
    ret nz

    jp hl


jr_00A_66A4:
    ld b, b
    db $FD
    ld b, $75
    nop
    dec c
    ld b, $16
    dec c
    inc b
    inc bc
    rst $38
    inc c
    inc bc
    rra
    nop
    ld e, c
    ld h, $8F
    ld [hl], h
    rst $38
    add d
    ld a, h
    db $E4
    cp b
    jr nc, jr_00A_669F

    jp hl


jr_00A_66C0:
    ld de, $7CFF

jr_00A_66C3:
    sub c
    ld h, [hl]
    sbc b
    scf
    ret z

    or e
    ld c, h
    rst $38
    ld e, c
    ld h, $1B
    ld [hl], $04
    dec de
    cp [hl]
    ret nz

    rst $38
    cp $C0
    rst $08
    jr nc, jr_00A_66C0

    jr jr_00A_672E

    inc c
    ccf
    rst $28
    nop
    call nc, $C223
    ld sp, $45E1
    add h
    ld h, c
    rst $28
    pop hl
    nop
    add hl, sp
    pop bc
    jp nc, Jump_00A_4041

    jr nz, jr_00A_6761

    rst $38
    jr nz, @-$0E

    add b
    ret nc

    and b
    ldh a, [$A0]
    ldh a, [$F1]
    ldh [rBCPS], a
    ld h, c
    ld l, b
    ld h, c
    ld l, [hl]
    dec h
    cp a
    ld b, b
    cp a
    ld b, b
    inc bc
    rst $38
    nop
    ldh [rP1], a
    ld l, [hl]
    inc h
    db $FD
    ld b, a
    db $FC
    ld b, b
    xor b
    jr nz, jr_00A_66A4

    ld l, e
    rst $38
    ld bc, $7B00
    inc b
    ld a, d
    dec b
    ld a, [hl]
    ld bc, $7FFF
    nop
    halt
    add hl, bc
    ld a, [c]
    dec c
    ei
    dec b
    rst $38
    ei
    dec b
    rst $28
    or b
    sub e
    db $FC

jr_00A_672E:
    ei
    db $E4
    rst $38
    ld sp, hl
    and $EF
    di
    rst $30
    ld hl, sp-$03
    ld hl, sp-$19

jr_00A_673A:
    cp $FF
    sbc b
    ei
    ld h, b
    ld l, $21
    jr c, jr_00A_66C3

    ld e, b
    sbc a
    add b
    ld hl, sp+$00
    ld [hl], b
    sbc b
    pop hl
    ld b, l
    ld l, [hl]
    dec h
    ld a, [$04FF]
    db $FD
    ld b, $FF
    ld b, $DE
    rlca
    set 7, a
    rlca
    call $CE03
    ld bc, $01CE
    ccf

jr_00A_6761:
    rst $38
    inc b
    ccf
    inc b
    rra
    nop
    inc e
    nop
    sbc h
    ei
    nop
    add h
    jp hl


    ld b, c
    add b
    jp $C200


    ld bc, $43FD
    ld l, l
    jr nz, jr_00A_673A

    nop
    add c
    ld b, b
    ret nz

    nop
    rst $38
    and b
    ld b, b
    cp [hl]
    ld bc, $17AB
    db $ED
    ld e, $77
    adc $0C
    call z, Call_00A_6283
    ld b, c
    nop
    add c
    ld b, $01
    db $FC
    adc a
    ld [hl+], a
    and $43
    ld a, [hl]
    add d
    db $FC
    add d
    adc $90
    rst $38
    inc c
    sub d
    inc e
    add d
    add hl, de
    ld a, [bc]
    dec bc

jr_00A_67A5:
    jr @+$01

    ccf
    ld [$0D3E], sp
    ld l, $1D
    ld e, h
    dec sp
    ld e, a
    ld c, a
    jr c, jr_00A_67B7

    ld a, b
    ld a, h
    rst $08
    ld b, e

jr_00A_67B7:
    ret nz

    ld [hl], d
    ld bc, $FDFE
    ld b, a
    ld d, $09
    inc bc
    dec c
    dec b
    ld [bc], a
    ld bc, $02FB
    ld [bc], a
    ld [hl], e
    ld h, h
    pop hl
    db $10
    jr z, jr_00A_67A5

    inc a
    rst $38
    ret z

    cp b
    ld c, h
    or d
    ld c, h
    cp l
    ld h, d
    adc h
    rst $38
    ld [hl], e
    dec de
    ld [hl], a
    cp d
    ld b, c
    sbc a
    ld h, c
    ld [hl], e
    rst $38
    rrca
    dec a
    ld a, [de]
    ld e, d
    ccf
    rst $10
    cpl
    rst $38
    rst $38
    rlca
    ccf
    rra
    ldh [$C0], a
    add b
    ret nz

    ld d, b
    rst $38
    and b
    add b
    ld h, b
    ld b, b
    add b
    inc c
    add b
    add d
    ld b, a
    inc b
    add [hl]
    rlca
    adc e
    ld h, e
    sub h
    daa
    db $E4
    ld b, l
    ret nz

    add hl, sp
    ld h, d
    ld d, e
    ld [$1F30], sp
    ld h, b
    rst $38
    inc c
    ld bc, $208B
    ld b, c
    ld [hl], l
    ld [hl+], a
    cp $3C
    nop
    add b
    ei
    dec b
    pop af
    rrca
    push hl
    dec de
    rst $38
    db $D3
    cpl
    rst $30
    rrca
    rst $28
    rla
    rst $08
    scf
    di
    rst $30
    rrca
    sub $06
    or [hl]
    ld h, h
    rst $30
    adc b
    ld l, e
    sub b
    rst $38
    add l
    jr jr_00A_6845

    sbc [hl]
    adc [hl]
    rra
    sbc a
    rra
    ld sp, hl
    cp a
    ld a, c
    ld b, b
    adc $41
    pop af
    nop
    ld a, l

jr_00A_6845:
    nop
    ld c, $FF
    ld bc, $C1A2
    jp hl


    pop af
    pop af
    ld sp, hl
    call nz, Call_000_03FF
    push bc
    ld [bc], a
    ld c, h
    add e
    ret nz

    inc bc
    call nz, $95BE
    ld b, b
    ld a, [$8A07]
    rlca
    add b
    ld l, d
    ld hl, $B980
    ld b, b
    and e
    ld b, d
    xor c
    ld b, c
    ld h, b
    ld b, b
    ld [hl], b
    dec l
    ld h, b
    inc d
    cp a
    ld [$000E], sp
    dec b
    ld [bc], a
    inc bc
    pop hl
    ld b, b
    ld h, a
    rlca
    nop
    cpl
    nop
    dec c
    ld b, d
    rlca
    ld h, d
    ret nz

    inc hl
    ld bc, $7500
    ld [bc], a
    rst $38
    jr jr_00A_688F

    inc [hl]
    ld [$0C73], sp

jr_00A_688F:
    rlc h
    rrca
    ret


    ld b, $84
    inc bc
    jp nc, $BA41

    ld b, b
    ld [hl], h
    ld h, h
    add b
    ld h, d
    ld e, a
    add b
    ret nz

    add b
    add c
    ld b, b
    sub b
    ld h, a
    rlca
    ld l, e
    ld h, b
    ld a, l
    and b
    db $FD
    ld b, d
    rlca
    nop
    rla
    ld [$AF78], sp
    ld h, b
    rst $38
    ld bc, $0200
    ld bc, $3E5B
    rst $38
    add hl, de
    rst $38
    reti


    rrca
    ld e, $0D
    rrca
    inc e
    ld e, h
    ld a, $FF
    cp $7E
    rst $38
    cp $FF
    ld a, a
    rst $38
    rst $38
    db $DD
    db $FD
    or [hl]
    ld h, d
    ld a, a
    rst $38
    ld a, a
    ld a, [hl-]
    ld h, b
    rst $00
    inc bc
    rst $38
    rst $20
    inc bc
    rst $20
    add e
    and e
    pop bc
    ld [c], a
    pop bc
    ei
    pop af
    ldh [rOBP0], a
    ld h, c
    ret nz

    add b
    add b
    ret nz

    ret nc

    rst $38
    ldh [$F8], a
    ldh a, [$F0]
    ld hl, sp-$04
    ld hl, sp-$04
    cp a
    cp $7F
    cp $04
    jr jr_00A_6901

    or l
    ld b, d
    ld b, $F3

jr_00A_6901:
    ld bc, $0703
    ld [bc], a
    db $10
    ld b, e
    add d
    ld bc, $8183
    rst $38
    jp nz, $E201

    add c
    db $E3
    add b
    ld b, e
    add b
    ld a, a
    db $E3
    add b
    and e
    ret nz

    db $E3
    ret nz

    jp Jump_00A_6485


    rst $38
    rst $38
    rrca
    rst $38
    rrca
    cp a
    ld c, a
    cpl
    rst $18
    ld a, a
    cpl
    rst $18
    ccf
    rst $18
    rst $18
    ccf
    rra
    add $60
    rst $38
    db $E4
    rst $38
    rst $28
    ldh a, [$F5]
    ld a, [$F8E6]
    rst $38
    ldh [$FE], a
    adc $F4
    ld a, [$FFC4]
    ccf
    rst $38
    sub e
    ld a, a
    push de
    ld l, b
    push bc
    ld a, d
    xor [hl]
    ld e, c
    cp a
    pop hl
    ld e, $EC
    inc de
    adc $31
    sub $01
    rst $28
    rst $28
    rra
    rra
    inc bc
    add e
    ld c, e
    ld b, b
    ld a, c
    add d
    ld a, $FF
    jp nz, Jump_000_0385

    add h
    inc bc
    add c
    rlca
    add a
    ld a, [hl]
    db $D3
    ld h, b
    add [hl]
    rlca
    ld b, $07
    rlca
    rrca
    rst $38
    ldh a, [$80]
    cp a
    nop
    adc e
    inc b
    sub [hl]
    pop hl
    rst $38
    or $F9
    rst $38
    ld e, $BF
    ld a, a
    rst $38
    rst $38
    db $FD
    nop
    xor $60
    add b
    nop
    ret nz

    nop
    ld l, [hl]
    add b
    rst $38
    cp h
    ld b, e
    call nz, $FFFF
    ret nz

    jr c, jr_00A_69D7

    rst $38
    jr z, jr_00A_69EA

    dec h
    ld e, b
    jr c, jr_00A_69EB

    cpl
    ld e, l
    rst $38
    ld a, [hl]
    rst $08
    db $F4
    rrca
    rst $38
    nop
    inc [hl]
    ld [$2CFF], sp
    db $10
    inc l
    db $10
    db $F4
    jr jr_00A_6A2E

    sbc b

jr_00A_69B2:
    rst $38
    ei
    inc c
    ldh a, [rIF]
    ld hl, sp+$07
    nop
    ld bc, $01FF
    nop
    ld bc, $8600
    ld bc, $01CF
    rst $38
    ei
    rlca
    rra
    rst $38
    rst $38
    ld a, a
    cp d
    ld b, l
    rst $28
    ld e, $E0
    jr nc, jr_00A_69B2

    db $EB
    ld h, b
    rst $38
    cp $FF

jr_00A_69D7:
    adc a
    add sp, -$08
    db $F4
    add sp, -$0F
    ld h, b
    ld hl, $3500
    nop
    rst $38
    rst $38
    rla
    ld hl, sp+$38
    db $10
    dec sp
    db $10

jr_00A_69EA:
    rrca

jr_00A_69EB:
    inc bc
    rst $30
    dec de
    rra
    sbc a
    db $EB
    ld h, b
    cp c
    jp $07CA


    rst $08
    pop hl
    rra
    sbc a
    ld h, e
    scf
    nop
    ld h, b
    ld [bc], a
    ccf
    rst $38
    cp $34
    ld bc, $FFCA
    ccf
    ld a, a
    ld e, a
    ccf
    ccf
    rst $38
    ccf
    rra
    ccf
    cp a
    rra
    rst $28
    sbc a
    rst $28
    cp a
    sbc a
    rst $18
    adc a
    jp hl


    ldh a, [$FC]
    ld a, a
    inc b
    cp $0E
    add a
    nop
    or $F8
    cp $67
    nop
    sub b
    dec b
    ld b, h
    ld bc, $63EE
    ld a, a
    pop bc

jr_00A_6A2E:
    add b
    pop bc
    add b
    add c
    ret nz

    pop bc
    xor c
    nop
    rst $38
    db $D3
    ret nz

    di
    ret nz

    ld a, [c]
    pop hl
    ld a, [$FFF1]
    or $F9
    cp $F9
    db $FD
    db $FC
    db $FC
    cp $FF
    and e
    ret nz

    db $E3
    ret nz

    ld h, e
    ret nz

    di
    ldh [rIE], a
    db $E3
    ldh a, [$7B]
    ldh a, [$FB]
    ldh a, [$F9]
    ld hl, sp-$33
    ccf

jr_00A_6A5C:
    ld h, h
    nop
    ld a, a
    cp a
    ld h, l
    nop
    push de
    inc b
    pop af
    call z, $FEFF
    add c
    db $EB
    sub b
    db $EB
    sub b
    ld [hl], a
    add b
    rst $38
    ld [hl], e
    add h
    rst $30
    inc b
    adc $20
    ei
    rra
    rst $18
    xor a
    ld e, a
    rst $30
    rrca
    pop af
    dec bc
    nop
    rst $00
    nop
    db $FD
    add c
    xor $60
    db $FC
    ld [bc], a
    cp d
    call nz, $E0FC
    rst $38
    db $FC
    ld hl, sp+$78
    ld hl, sp-$10
    jr jr_00A_6A5C

    db $10
    rst $38
    xor b
    db $10
    ld b, $0F
    inc e
    rrca
    ld l, $19
    rst $38
    ld d, $39
    ld l, [hl]
    jr nc, jr_00A_6ACA

    ld a, b
    ld hl, sp+$60
    db $FD
    ret nz

    ld b, e
    nop
    ld a, a
    rst $38
    ld [hl], d
    rst $38
    jp hl


    rra
    rst $38
    add hl, sp
    nop
    ld c, $00
    ccf
    nop
    jr c, jr_00A_6AC1

    rst $38
    cp h
    rst $08
    ccf
    rst $08
    ld a, e
    add [hl]

jr_00A_6AC1:
    cp l
    jp $FFFF


    rst $38
    ld a, h
    ld a, a
    rst $18
    inc a

jr_00A_6ACA:
    ld a, d
    add c
    rst $38
    ccf
    ldh [$0D], a
    rst $38
    rst $08
    rlca
    push de
    db $E3
    rst $38
    db $FD
    ldh [$DF], a
    ld hl, $CF37
    ld h, [hl]
    rst $20
    rst $38
    add e
    ld a, [hl]
    rst $18
    ldh [$D8], a
    add a
    ld hl, sp+$07
    ld a, a
    rrca
    ldh a, [$FD]
    add e
    dec bc
    sbc a
    dec a
    jp hl


    ld h, b
    rst $38
    rst $28
    rra
    ld [hl], c
    adc a
    dec sp
    rst $00
    inc e
    db $E3
    rst $38
    db $FC
    jp $F3EC


    ld bc, $F7FE
    db $EC
    rst $38
    rst $28
    db $F4
    db $EB
    db $F4
    db $FD
    ld a, [$F9EA]
    rst $38
    call nz, Call_000_2909
    call z, Call_000_08C5
    ld [c], a
    dec e
    ei
    rst $38
    nop
    add b
    ld hl, $FD02
    or b
    ld a, a
    rst $30
    rst $38
    ccf
    sbc a
    nop
    ld a, c
    add a
    cp $01
    rst $38
    rst $38
    nop
    db $FD
    ld [bc], a
    ld de, $76FE
    ld hl, sp-$05
    rst $38
    ldh a, [rVBK]
    add e
    db $FC
    ei
    rrca
    ldh a, [rIE]
    db $FD
    nop
    sub b
    ld hl, $00FF
    adc a
    ld [hl], b
    ld sp, $FFC0
    sbc a
    rst $08
    rst $10
    rst $08
    dec de
    rst $00
    ld e, l
    jp $C5F7


    ld c, e
    call Call_000_20B7
    adc a
    ld c, e
    rst $30
    ld hl, sp-$01
    rst $30
    ld hl, sp-$0A
    ld sp, hl
    push af
    ei
    push af
    ei
    rst $30
    rst $38
    ei
    ei
    sbc d
    ld [bc], a
    db $FC
    nop
    ld hl, sp+$00
    ld sp, hl
    ldh a, [rSCX]

jr_00A_6B6D:
    ld [bc], a
    ld b, h
    ld bc, $C0E1
    call nz, $C4E1
    rst $38
    pop hl
    rst $28
    pop hl
    db $ED
    rst $28
    db $FC
    rst $28
    db $FC
    xor a
    rst $38
    db $FD
    cp $FE
    ld e, a
    inc b
    ld a, a
    ld h, l
    nop
    cp a
    rst $38
    ld a, a
    ld a, a
    ccf
    ld a, c
    ld hl, sp-$03
    ld a, b
    ei
    pop af
    db $FC
    db $EC
    jr nz, jr_00A_6B6D

    dec h
    push de
    ld b, $7F

jr_00A_6B9B:
    cp a
    ccf
    rst $38
    rst $38
    sbc a
    rst $38
    call z, Call_000_3C20
    ret nz

    ld a, [hl]
    ret nz

    ld e, a
    cp [hl]
    ret nz

    rst $18
    add b
    sbc a
    daa
    ld b, b
    cp a
    ccf
    nop
    ld a, [$452E]
    ld bc, $00F9
    add c
    nop
    jr nc, jr_00A_6BBD

    ld [hl], e

jr_00A_6BBD:
    cp a
    nop
    ld h, d
    nop

jr_00A_6BC1:
    ld b, d
    nop
    call nz, Call_00A_60F3
    adc b
    db $E3
    nop
    sbc b
    pop af
    ld h, b
    dec l
    ld c, b
    xor $60
    add hl, de
    nop

jr_00A_6BD2:
    rst $28
    ld a, a
    nop
    rst $20
    rra
    rra
    rlca
    inc c
    inc bc

jr_00A_6BDB:
    ld l, $43
    rst $38
    jp $4701


    inc bc
    add [hl]
    add e
    adc $83
    rst $38
    call $0306
    inc c
    rlca
    ld [$001F], sp
    rst $38
    jr nz, jr_00A_6BD2

    ld [hl], b
    ldh [$A0], a
    ldh a, [$30]
    ldh a, [rIE]
    or b
    ld [hl], b
    and b
    ld [hl], b
    ldh [$30], a
    ret nz

    jr nc, jr_00A_6BC1

    inc de
    inc a
    rla
    jr c, jr_00A_6C66

    jr nz, jr_00A_6B9B

    ld b, e
    ld a, a
    ld a, d
    add c
    jr nz, jr_00A_6BDB

    add hl, sp
    ld b, c
    inc bc
    add l
    inc bc
    add e
    di
    ld h, b
    cp $A8
    ld b, c
    ld l, h
    nop
    adc $F4
    add [hl]
    db $FC
    and d
    rst $38
    ld b, h
    jp nz, Jump_000_0204

    inc b
    inc b
    nop
    ld [bc], a
    ei
    inc b
    add b
    ld sp, hl
    nop
    call c, $C603
    ld bc, $FB83
    ld b, b
    add b
    rst $00
    ld b, d
    rla
    rrca
    cp a
    ld a, [hl]
    ld [hl], h
    rst $08
    ld hl, sp+$30
    ret nz

    ret nz

    ld l, $44
    ld d, b
    ld c, e
    ld bc, $FF00
    ld c, a
    dec bc
    ld c, e
    rrca
    dec bc
    ld c, a
    rrca
    ld c, e
    rst $38
    dec bc
    ld c, a
    add a
    ld c, a
    adc a
    ld b, a
    rrca
    rst $08
    ld a, [$24D6]
    rst $30
    inc b
    ld h, b
    rst $20
    rst $38
    rst $00
    cp a
    rst $00

jr_00A_6C66:
    rst $38
    rst $38
    nop
    ldh a, [rIF]
    ld l, e
    db $FC
    rst $30
    ld hl, sp-$06
    sub $25
    rst $38
    inc bc
    ld b, c
    db $FD
    ld a, a
    db $FD
    ei
    db $FD
    jp hl


    db $FD
    rst $00
    jr nz, jr_00A_6CAA

    nop
    ccf
    ld [hl], b
    nop
    rra
    ccf
    rra
    rst $38
    ld e, a
    rra
    ld [hl], a
    rrca
    dec sp
    rlca
    ccf
    inc bc
    ld a, a
    ld d, e
    db $EC
    ccf
    ld sp, hl
    rst $18
    ld sp, hl
    rst $18
    jp z, $FA22

    ld b, [hl]
    ld l, l
    rst $30
    inc bc
    ld h, b
    cp a
    nop
    xor a
    db $10
    cp a
    rst $38
    db $10
    cp e
    inc e
    cp a
    inc e

jr_00A_6CAA:
    cp [hl]
    rra
    ld a, $FF
    sbc a
    adc [hl]
    sbc a
    jp $C300


    nop
    db $E3

jr_00A_6CB6:
    rst $38
    nop
    ld a, [c]
    nop
    ldh a, [rSC]
    db $FC
    ld [bc], a

jr_00A_6CBE:
    ei
    rst $38
    add h
    ei
    add h
    or b
    nop
    jr nc, jr_00A_6CC7

jr_00A_6CC7:
    ld [hl], b
    ei
    nop
    ld h, b
    xor $60
    ret nz

    nop
    adc a
    nop
    cp a
    ld [c], a
    ld d, c
    ld c, b
    ld a, [hl]
    add c
    ld [hl+], a

jr_00A_6CD8:
    ld d, c
    ld c, c
    ld c, [hl]
    ld b, c
    rrca
    db $10
    ccf
    rst $38
    nop
    rrca
    jr nc, jr_00A_6CF3

    ld [hl], b
    ld a, a
    ld b, b
    cp a
    cp $B7
    ld h, d
    ret z

    jr nc, jr_00A_6CB6

    jr nc, jr_00A_6CD8

    db $10
    add sp, -$0D

jr_00A_6CF3:
    db $10
    ld hl, sp-$2F
    jr nz, jr_00A_6CBE

    ld h, c
    rst $38
    nop
    sbc a
    ld h, b
    cp d
    ret nc

    ld h, c
    rst $18
    push de
    ld h, b
    ld e, a
    ldh [$7F], a
    push de
    ld b, b
    ret nz

    db $D3
    nop
    ldh [$D3], a
    jr nz, jr_00A_6CF3

    ld h, l
    ld [bc], a
    or a
    ld b, b
    ld [bc], a
    inc b
    rst $38
    ld b, $04
    ld a, [bc]
    inc b
    inc c
    nop
    dec [hl]
    ld [$3D8F], sp
    ld [$4080], sp
    xor b
    ld b, c
    ld c, [hl]
    ld b, c
    inc b
    inc bc
    sbc [hl]
    ld l, [hl]
    ld l, e
    ld h, b
    sub e
    adc a
    ld [hl], a
    db $FD
    ld b, l
    rst $38
    ld bc, $0041
    rst $38
    nop
    ld bc, $0102
    ld b, $01
    ld e, $01
    ld a, a
    ld a, l
    ld [bc], a
    ld a, c
    ld b, $5F
    adc a
    rst $18
    cpl
    nop
    rst $38
    sbc a
    rrca
    dec c
    ld e, $3F
    inc e
    rra
    jr c, @+$01

    ccf
    nop
    rst $38
    add a
    ld a, a
    add a

jr_00A_6D59:
    rst $30
    rrca
    rst $38
    rst $28
    rra
    rst $28
    rra
    rst $38
    rra
    rst $18
    ccf
    sbc l
    rst $18
    adc $00
    rst $38
    rst $38
    rst $18
    ld d, c
    ld [bc], a
    sub $23
    rst $28
    rst $10
    rst $30
    rst $38
    rst $28
    ld d, [hl]
    ld bc, $97BF
    inc b
    dec e
    inc bc
    cp a
    ld e, $01
    rra
    db $10
    rla
    jr jr_00A_6D59

    dec h
    pop af
    ld a, a
    rst $38
    xor $D9
    db $D3
    db $EC
    ei
    db $E4
    sub $25
    ld a, [$C521]
    rst $00
    sbc e
    ld l, l
    and e
    ld l, l
    dec hl
    ld l, [hl]
    ld [hl], a
    ld l, a
    ld a, $10
    call Call_000_0629
    jp Jump_000_0BD6


    call Call_000_063A
    ret c

    call Call_000_0597
    ld de, $C500
    call Call_000_2183
    ld de, $C600
    call Call_000_2183
    ld de, $C700
    call Call_000_2183
    ld hl, $0790
    call Call_000_05B2
    call Call_000_057C
    ld hl, $7186
    call Call_000_2E53
    ld hl, $719C
    call Call_000_16DF
    ld a, $10
    ld [$C50C], a
    ld a, $48
    ld [$C507], a
    ld a, $B8
    ld [$C50D], a
    ld a, $01
    ld [$C50E], a
    ld a, [$C73D]
    or a
    jp z, Jump_00A_6E04

    ld hl, $38DB
    call Call_000_373C
    ld bc, $0004
    call Call_000_38FB
    ld hl, $37BB
    call Call_000_373C
    ld bc, $0004
    call Call_000_38FB

Jump_00A_6E04:
    call Call_000_060B
    xor a
    ld [$C724], a
    ld [$C731], a
    ld [$D120], a
    ld [$D121], a
    ld [$D122], a
    ld [$D123], a
    ld [$D124], a
    ld [$D125], a

Call_00A_6E20:
    ld [$D126], a
    ld a, $63
    call Call_000_0875
    jp Jump_000_0BD6


    call Call_000_0502
    ld a, [$C556]
    rst $00
    ld b, h
    ld l, [hl]
    ld b, l
    ld l, [hl]
    ld a, b
    ld l, [hl]
    or b
    ld l, [hl]
    ret z

    ld l, [hl]
    ld b, h
    ld l, [hl]
    ld b, h
    ld l, [hl]
    ld b, h
    ld l, [hl]
    pop hl
    ld l, [hl]
    ret


    ld a, $22
    call Call_000_0875
    ld hl, $D120
    ld a, [$C724]
    rst $28
    ld a, [$C731]
    ld [hl], a
    ld a, [$C724]
    inc a
    ld [$C724], a
    cp $04
    jr c, jr_00A_6E64

    xor a
    ld [$C724], a

jr_00A_6E64:
    ld hl, $D120
    rst $28
    ld a, [hl]
    ld [$C731], a
    ld a, [$C724]
    ld hl, $6EAC
    rst $28
    ld a, [hl]
    ld [$C50C], a
    ret


    ld a, $22
    call Call_000_0875
    ld hl, $D120
    ld a, [$C724]
    rst $28
    ld a, [$C731]
    ld [hl], a
    ld a, [$C724]
    dec a
    ld [$C724], a
    cp $FF
    jr nz, jr_00A_6E98

    ld a, $03
    ld [$C724], a

jr_00A_6E98:
    ld hl, $D120
    rst $28
    ld a, [hl]
    ld [$C731], a
    ld a, [$C724]
    ld hl, $6EAC
    rst $28
    ld a, [hl]
    ld [$C50C], a
    ret


    db $10
    jr nc, jr_00A_6EFF

    ld [hl], b
    ld a, $22
    call Call_000_0875
    ld a, [$C731]
    inc a
    ld [$C731], a
    cp $08
    jp c, Jump_00A_6FDA

    xor a
    ld [$C731], a
    jp Jump_00A_6FDA


    ld a, $22
    call Call_000_0875
    ld a, [$C731]
    dec a
    ld [$C731], a
    cp $FF
    jp c, Jump_00A_6FDA

    ld a, $07
    ld [$C731], a
    jp Jump_00A_6FDA


    ld hl, $D120
    ld a, [$C724]
    rst $28
    ld a, [$C731]
    ld [hl], a
    ld a, [$D121]
    and $01
    sla a
    sla a
    ld b, a
    ld a, [$D122]
    and $01
    sla a
    or b
    ld b, a

jr_00A_6EFF:
    ld a, [$D123]
    and $01
    or b
    xor $07
    ld b, a
    ld a, [$D120]
    and $04
    srl a
    srl a
    add b
    ld b, a
    ld a, [$D120]
    and $03
    sla a
    ld c, a
    ld a, [$D121]
    and $04
    srl a
    srl a
    or c
    or a
    jr z, jr_00A_6F6A

    cp b
    jr nz, jr_00A_6F6A

    ld [$D124], a
    ld a, [$D121]
    and $02
    sla a
    sla a
    sla a
    ld c, a
    ld a, [$D122]
    and $06
    sla a
    or c
    ld c, a
    ld a, [$D123]
    and $06
    srl a
    or c
    ld [$D125], a
    ld a, [$D124]
    dec a
    ld hl, $6F70
    rst $28
    ld a, [hl]
    ld hl, $D125
    and [hl]
    jr nz, jr_00A_6F6A

    ld a, $00
    call Call_000_0875
    ld a, $27
    call Call_000_0875
    jp Jump_000_0BD6


jr_00A_6F6A:
    ld a, $16
    call Call_000_0875
    ret


    rst $38
    cp $FC
    ld hl, sp-$10
    ldh a, [$E0]
    ld a, [$D120]
    and $04
    srl a
    srl a
    ld [$C735], a
    ld a, [$D120]
    and $03
    sla a
    ld b, a
    ld a, [$D121]
    and $04
    srl a
    srl a
    or b
    dec a
    ld [$C725], a
    ld a, [$D121]
    and $02
    sla a
    sla a
    sla a
    ld b, a
    ld a, [$D122]
    and $06
    sla a
    or b
    ld b, a
    ld a, [$D123]
    and $06
    srl a
    or b
    ld [$C758], a
    ld a, $20
    call Call_000_0629
    ld a, [$C725]
    ld hl, $6FD3
    rst $28
    ld a, [hl]
    ld [$C756], a
    ld a, $04
    call Call_000_0BCC
    ld a, $05
    jp Jump_000_0BDA


    nop
    nop
    ld bc, $0302
    inc bc
    inc b

Jump_00A_6FDA:
    ld a, [$C731]
    ld hl, $7001
    call $DDD6
    ld a, [$C724]
    add a
    add a
    ld de, $9943
    rst $30
    ld bc, $0002
    call $DED7
    ld a, [$C724]
    add a
    add a
    ld de, $9963
    rst $30
    ld bc, $0002
    jp $DED7


    ld de, $1570
    ld [hl], b
    add hl, de
    ld [hl], b
    dec e
    ld [hl], b
    ld hl, $2570
    ld [hl], b
    add hl, hl
    ld [hl], b
    dec l
    ld [hl], b
    nop
    nop
    nop
    nop
    jr nz, @+$24

    ld hl, $2423
    ld h, $25
    daa
    jr z, jr_00A_7049

    add hl, hl
    dec hl
    inc l
    ld l, $2D
    cpl
    jr nc, @+$34

    ld sp, $3433
    ld [hl], $35
    scf
    jr c, @+$3C

    add hl, sp
    dec sp

Call_00A_7031:
    ld a, [$C735]
    and $01
    sla a
    sla a
    ld [$D120], a
    ld a, [$C725]
    cp $05
    jr z, jr_00A_70BD

jr_00A_7044:
    ld a, [$C725]
    srl a

jr_00A_7049:
    ld hl, $D120
    or [hl]
    ld [hl], a
    ld a, [$C725]
    and $01
    sla a
    sla a
    ld [$D121], a
    ld a, [$C735]
    ld b, a
    ld a, [$C725]
    sub b
    xor $07
    and $04
    srl a
    srl a
    ld hl, $D121
    or [hl]
    ld [hl], a
    ld a, [$C725]
    sub b
    xor $07
    and $02
    srl a
    ld [$D122], a
    ld a, [$C725]
    sub b
    xor $07
    and $01
    ld [$D123], a
    ld a, [$C725]
    ld hl, $7105
    rst $28
    ld a, [$C758]
    and [hl]
    ld [$D124], a
    and $10
    srl a
    srl a
    srl a
    ld hl, $D121
    or [hl]
    ld [hl], a
    ld a, [$D124]
    and $0C
    srl a
    ld hl, $D122
    or [hl]
    ld [hl], a
    ld a, [$D124]
    and $03
    sla a
    ld hl, $D123
    or [hl]
    ld [hl], a
    jp Jump_00A_710C


jr_00A_70BD:
    ld a, [$C73B]
    bit 0, a
    jr z, jr_00A_7044

    ld a, $03
    ld hl, $D120
    or [hl]
    ld [hl], a
    ld a, $04
    ld [$D121], a
    xor a
    ld [$D122], a
    ld a, [$C735]
    ld [$D123], a
    ld a, [$C758]
    and $10
    srl a
    srl a
    srl a
    ld hl, $D121
    or [hl]
    ld [hl], a
    ld a, [$C758]
    and $0C
    srl a
    ld hl, $D122
    or [hl]
    ld [hl], a
    ld a, [$C758]
    and $03
    sla a
    ld hl, $D123
    or [hl]
    ld [hl], a
    jp Jump_00A_710C


    nop
    nop
    ld bc, $0703
    rrca
    rrca

Jump_00A_710C:
    xor a
    ld [$C724], a
    ld hl, $D120

jr_00A_7113:
    push hl
    ld a, [$C724]
    add a
    add a
    ld de, $9962
    rst $30
    ld bc, $0004
    ld hl, $7176
    call $DED7
    ld a, $1C
    rst $30
    ld bc, $0004
    call $DED7
    ld a, $1C
    rst $30
    ld bc, $0004
    call $DED7
    ld a, $1C
    rst $30
    ld bc, $0004
    call $DED7
    pop hl
    push hl
    ld a, [hl]
    ld hl, $7001
    call $DDD6
    ld a, [$C724]
    add a
    add a
    ld de, $9983
    rst $30
    ld bc, $0002
    call $DED7
    ld a, [$C724]
    add a
    add a
    ld de, $99A3
    rst $30
    ld bc, $0002
    call $DED7
    pop hl
    inc hl
    ld a, [$C724]
    inc a
    ld [$C724], a
    cp $04
    jr nz, jr_00A_7113

    ret


    ld b, h
    ld d, l
    ld d, l
    ld b, l
    ld b, a
    nop
    nop
    ld c, c
    ld b, a
    nop
    nop
    ld c, c
    ld c, d
    ld c, [hl]
    ld c, [hl]
    ld c, e
    ld [bc], a
    ld a, [bc]
    inc [hl]
    halt
    add b
    nop
    inc b
    ld [bc], a
    ld a, [bc]
    inc b
    ld [hl], e
    add b
    ld bc, $0217
    ld a, [bc]
    ld [hl], h
    ld [hl], h
    and b
    ld bc, $001C
    ld bc, $0302
    ld [bc], a
    inc bc
    ld b, $01
    ld [$0801], sp
    ld bc, $0108
    ld [$0801], sp
    ld bc, $0108
    ld [$0601], sp
    nop
    nop
    nop
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld b, $01
    ld [$0801], sp
    ld bc, $0C06
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
    nop
    ld b, $02
    inc bc
    ld bc, $0108
    ld b, $0D
    dec c
    nop
    nop
    rrca
    db $10
    ld de, $1211
    ld d, $13
    inc d
    nop
    nop
    nop
    ld b, $01
    ld [$0601], sp
    ld [bc], a
    inc bc
    ld b, $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, $0C
    inc c
    ld b, $01
    ld [$0801], sp
    ld bc, $0608
    ld [bc], a
    inc bc
    nop
    nop
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    dec c
    dec c
    ld b, $01
    ld [$0801], sp
    ld bc, $0108
    ld [$0206], sp
    inc bc
    ld [bc], a
    inc bc
    ld [$0801], sp
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld bc, $0108
    ld [$0206], sp
    inc bc
    ld [bc], a
    inc bc
    nop
    nop
    nop
    ld b, $06
    ld bc, $0108
    ld [$0801], sp
    ld bc, $0108
    ld [bc], a
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, $02
    inc bc
    ld [bc], a
    inc bc
    ld b, $02
    inc bc
    ld [$0601], sp
    inc b
    dec d
    dec d
    dec b
    inc b
    dec d
    dec d
    dec b
    inc b
    dec d
    dec d
    dec b
    inc b
    dec d
    dec d
    dec b
    ld b, $08
    ld bc, $0706
    nop
    nop
    add hl, bc
    rlca
    nop
    nop
    add hl, bc
    rlca
    nop
    nop
    add hl, bc
    rlca
    nop
    nop
    add hl, bc
    ld b, $08
    ld bc, $0706
    nop
    nop
    add hl, bc
    rlca
    nop
    nop
    add hl, bc
    rlca
    nop
    nop
    add hl, bc
    rlca
    nop
    nop
    add hl, bc
    ld b, $08
    ld bc, $0A06
    ld c, $0E
    dec bc
    ld a, [bc]
    ld c, $0E
    dec bc
    ld a, [bc]
    ld c, $0E
    dec bc
    ld a, [bc]
    ld c, $0E
    dec bc
    ld b, $08
    ld bc, $0C06
    inc c
    ld b, $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, $02
    inc bc
    inc c
    inc c
    ld b, $08
    ld bc, $0D06
    dec c
    ld b, $02
    inc bc
    inc c
    inc c
    inc c
    inc c
    inc c
    ld b, $06
    ld bc, $0D02
    dec c
    inc bc
    ld [$0601], sp
    ld [bc], a
    inc bc
    ld b, $08
    ld b, $0D
    dec c
    dec c
    dec c
    dec c
    ld b, $08
    ld bc, $0302
    ld [bc], a
    inc bc
    ld [$0801], sp
    ld bc, $0108
    ld [$0206], sp
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [$0801], sp
    ld bc, $0108
    ld [$0801], sp
    ld bc, $0108
    ld [$0801], sp
    ld bc, $0108
    ld [$0801], sp
    ld bc, $0108
    ld [$0801], sp
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, a
    nop
    db $ED
    nop
    or a
    ld c, b
    ld [hl-], a
    rst $38
    xor l
    jr @-$33

    inc a
    cp b
    ld e, a
    rst $30
    rst $38
    rst $38

jr_00A_7325:
    ld a, a
    add c
    add b
    rst $28
    add b
    cp a
    ret nz

    cp a
    ret nz

    or e
    ret z

    add [hl]
    db $FD
    rst $38
    ld a, a
    rst $38
    cp $41
    inc bc
    pop af
    inc bc
    db $FD
    inc bc
    db $FD
    inc bc
    ld sp, hl
    rlca
    add hl, bc
    rst $38
    rst $38
    cp $00
    nop
    nop
    nop
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
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    ret nz

    ld b, b
    ld b, b
    rst $38
    ld a, [hl]
    inc bc
    add c
    dec l
    add e
    dec a
    add e
    ld a, l
    add e
    dec [hl]
    adc e
    ld h, c
    sbc a
    rst $38
    ld a, [hl]
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    push hl
    jr jr_00A_7325

    ld [$9D6A], sp
    rst $10
    rst $38
    db $F4
    ld bc, $58A6
    ld e, b
    rst $20
    rst $38
    rst $38
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, b
    ld b, b
    ret nz

    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    ld h, [hl]
    nop
    ld h, [hl]
    nop
    ld h, [hl]
    ld [hl+], a
    ld b, h
    ld [hl+], a
    ld b, h
    ld [hl+], a
    ld b, h
    ld [hl+], a
    ld b, h
    ld [hl+], a
    ld b, h
    ld [hl+], a
    ld b, h
    ld [hl+], a
    ld b, h
    ld [hl+], a
    ld b, h
    ld [hl+], a
    ld b, h
    ld [hl+], a
    ld b, h
    ld [hl+], a
    ld b, h
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    db $FC
    db $FC
    add d
    add d
    add d
    add d
    db $FC
    db $FC
    add b
    add b
    add b
    add b
    add b
    add b
    nop
    nop
    db $10
    db $10
    jr z, jr_00A_7430

    ld b, h
    ld b, h
    ld a, h
    ld a, h
    add d
    add d
    add d
    add d
    add d
    add d
    nop
    nop
    ld a, h
    ld a, h
    add d
    add d
    add b
    add b
    ld a, h
    ld a, h
    ld [bc], a
    ld [bc], a
    add d
    add d
    ld a, h
    ld a, h
    nop
    nop
    add d
    add d
    sub d
    sub d
    sub d
    sub d
    sub d
    sub d
    xor d
    xor d
    ld b, h
    ld b, h

jr_00A_7430:
    ld b, h
    ld b, h
    nop
    nop
    db $FC
    db $FC
    add d
    add d
    add d
    add d
    db $FC
    db $FC
    adc b
    adc b
    add h
    add h
    add d
    add d
    nop
    nop
    ld hl, sp-$08
    add h
    add h
    add d
    add d
    add d
    add d
    add d
    add d
    add h
    add h
    ld hl, sp-$08
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    ld a, h
    ld a, h
    add d
    add d

jr_00A_7468:
    add d
    add d

jr_00A_746A:
    add d
    add d
    add d
    add d
    add d
    add d
    ld a, h
    ld a, h
    nop
    nop
    ld [hl], b
    jr nz, jr_00A_74CF

    ld d, b
    rst $18
    ld c, h
    or a
    adc e
    xor b
    sub a
    or h
    adc e
    cp b
    add a
    xor b
    sub a
    or a
    adc e
    rst $18
    ld c, h
    ld e, b
    ld d, b
    ld [hl], b
    jr nz, jr_00A_748D

jr_00A_748D:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh [rLCDC], a
    ldh a, [$A0]
    or b
    ldh [$F8], a
    ldh a, [$58]
    sbc b
    jr z, jr_00A_7468

    jr z, jr_00A_746A

    ld a, b
    sbc b
    ld hl, sp-$10
    ldh a, [$E0]
    or b
    ldh [$F0], a
    and b
    ldh a, [$A0]
    ldh a, [$A0]
    ldh a, [$A0]
    ldh [rLCDC], a
    nop
    nop
    inc bc
    inc bc
    ld c, $05
    dec de
    rrca
    ccf
    dec e
    dec sp
    add hl, hl
    ld [hl], a
    ld d, c
    ld d, a
    ld [hl], c
    halt

jr_00A_74C5:
    ld d, c
    ld e, a
    ld [hl], b
    dec hl
    jr c, jr_00A_7507

    inc e
    dec de
    rrca
    inc c

jr_00A_74CF:
    rlca
    inc bc
    inc bc
    nop

jr_00A_74D3:
    nop
    nop
    nop
    ret nz

    ret nz

    or b
    ld h, b
    ld hl, sp-$30
    ld a, h
    jr c, jr_00A_74D3

    inc e
    ld a, [$FE0E]
    ld a, [bc]
    ld a, [$FAEE]
    ld c, $FC
    inc d
    cp h
    jr c, jr_00A_74C5

    ldh a, [$B0]
    ld h, b
    ret nz

    ret nz

    nop
    nop
    nop
    nop
    ldh [$E0], a
    ldh a, [$B0]
    ret c

    cp b
    db $EC
    ld e, h
    halt
    ld l, $3B
    rla
    dec e
    dec bc
    ld c, $05
    rlca

jr_00A_7507:
    ld [bc], a
    dec de
    rrca
    rra
    ld c, $0C
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, b
    nop
    ldh a, [$60]
    jr nc, jr_00A_7582

    ldh [$E0], a
    ret nz

    ret nz

    ldh [$E0], a
    or b
    or b
    ret c

    ret c

    add sp, $6C
    ld a, h
    inc a
    inc l
    inc e
    nop
    nop
    inc bc
    ld bc, $0207
    rlca
    ld b, $1E
    add hl, bc
    rrca
    ld b, $07
    ld [bc], a
    dec bc
    rrca
    rrca
    inc b
    ccf
    jr jr_00A_75C2

    jr nz, jr_00A_75BD

    dec hl
    ld [hl], h
    dec hl
    ld [hl], h
    dec hl
    ld [hl], h
    dec hl
    ld l, d
    dec [hl]
    ccf
    rra
    nop
    nop
    add b
    add b
    ret nz

    ret nz

    ldh [rNR41], a
    ret nz

    ret nz

    ret nz

    add b
    and b
    ldh [$60], a
    ld b, b
    jr nc, jr_00A_7596

    ld [$0808], sp
    ld hl, sp+$08
    ld hl, sp+$08
    ld hl, sp+$08
    ld hl, sp+$08
    ld hl, sp-$08
    ldh a, [rP1]
    nop
    nop
    nop
    jr nc, jr_00A_75B2

    ld c, b
    ld l, h
    inc h
    ld [hl], $16
    dec de
    dec bc
    dec c

jr_00A_7582:
    inc b
    ld b, $06
    inc bc
    ld c, $05
    dec e
    dec bc
    inc sp
    ld d, $66
    inc l
    ld l, h
    ld e, b
    ld a, b
    jr nc, jr_00A_7593

jr_00A_7593:
    nop
    nop
    nop

jr_00A_7596:
    nop
    nop
    inc e
    inc c
    ld a, [hl-]
    ld d, $64
    inc l
    ld l, b
    ret c

    ret nc

    or b
    and b
    ld h, b
    ld b, b
    ldh [$60], a
    or b
    sub b
    ret c

    ret c

    ld l, h
    ld h, h
    ld [hl], $36
    ld a, [de]
    inc e
    inc c

jr_00A_75B2:
    nop
    nop
    inc h
    nop
    ld e, d
    inc h
    nop
    ld a, [hl]
    nop
    ld a, [hl]
    inc h

jr_00A_75BD:
    ld a, [hl]
    ld a, [hl]
    inc h
    inc [hl]
    inc [hl]

jr_00A_75C2:
    ld e, [hl]
    ld l, d
    ld e, [hl]
    ld l, d
    ld e, [hl]
    ld l, d
    ld e, [hl]
    ld l, d
    ld l, d
    ld a, [hl]
    ld e, [hl]
    ld l, d
    ld c, d
    rst $38
    inc a
    inc a
    nop
    jr @+$26

    nop
    ld e, d
    inc h
    nop
    ld a, [hl]
    nop
    ld a, [hl]
    inc h
    ld a, [hl]
    ld a, [hl]
    inc h
    inc [hl]
    inc [hl]
    ld e, [hl]
    ld l, d
    ld e, [hl]
    ld l, d
    ld e, [hl]
    ld l, d
    ld e, [hl]
    ld l, d
    ld l, d
    ld a, [hl]
    ld e, [hl]
    ld l, d
    ld c, d
    rst $38
    inc a
    inc a
    nop
    jr jr_00A_7610

    dec de
    rra
    dec d
    ld c, $0A
    ld c, $0A
    ld c, $0A
    ld e, $0E
    ld a, [bc]
    ld e, $36
    ld e, $22
    ld a, a
    ld e, c
    rst $28
    pop bc
    cp a
    set 6, a
    xor e
    db $DD
    push af
    adc a

jr_00A_7610:
    rst $20
    ld e, d
    inc a
    ld a, $1B
    dec de
    rra
    dec d
    ld c, $0A
    ld c, $0A
    ld c, $0A
    ld e, $0E
    ld a, [bc]
    ld e, $36
    ld e, $22
    ld a, a
    ld e, c
    rst $28
    pop bc
    cp a
    set 6, a
    xor e
    db $DD
    push af
    adc a
    rst $20
    ld e, d
    inc a
    ld a, $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rrca
    rrca
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0000], sp
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_00A_7B21:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_00A_7B5D:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_00A_7F22:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
