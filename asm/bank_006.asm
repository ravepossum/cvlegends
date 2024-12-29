; Disassembly of "cvlegends.gb"
; This file was created with:
; mgbdis v2.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $006", ROMX[$4000], BANK[$6]

    ld hl, $4012
    ld a, [$C725]
    call $DDD6
    ld a, h
    ld [$C784], a
    ld a, l
    ld [$C783], a
    ret


    db $11
    ld d, e

    db $21, $53, $51, $57

    sub c
    ld e, a
    ld h, c
    ld l, b
    ld hl, $D171
    ld a, d

    ld hl, $402F
    call Call_000_2FCD
    ld a, h
    ld [$C786], a
    ld a, l
    ld [$C785], a
    ret


    dec a
    ld b, b

    db $3D, $40, $4D, $40

    ld e, c
    ld b, b
    ld h, e
    ld b, b
    ld l, l
    ld b, b
    ld [hl], a
    ld b, b

    db $7D, $40, $F5, $40, $E5, $41, $49, $42, $61, $43, $B1, $43, $01, $44, $8D, $44
    db $A1, $44

    ld b, c
    ld b, l
    dec e
    ld b, [hl]
    cp l
    ld b, [hl]
    ld sp, hl
    ld b, [hl]
    ld c, c
    ld b, a
    add l
    ld b, a
    jp hl


    ld b, a
    ld c, l
    ld c, b
    ld h, l
    ld c, c
    or l
    ld c, c
    ld b, c
    ld c, d
    call $954A
    ld c, e
    dec [hl]
    ld c, h
    sbc c
    ld c, h
    ld de, $894D
    ld c, l
    ld a, c
    ld c, [hl]
    dec b
    ld c, a
    push af
    ld c, a
    push hl
    ld d, b
    xor l
    ld d, c
    ld [hl], l
    ld d, d

    db $02, $02, $02, $03, $02, $00, $00, $00, $05, $00, $0A, $0A, $09, $06, $0A, $0B
    db $0B, $0B, $07, $0B, $02, $02, $02, $02, $03, $00, $00, $00, $00, $05, $09, $0A
    db $0A, $09, $06, $0B, $0B, $0B, $0B, $07, $02, $03, $02, $02, $02, $00, $05, $00
    db $00, $00, $09, $06, $09, $0A, $0A, $0B, $07, $0B, $0B, $0B, $02, $03, $02, $02
    db $03, $00, $05, $00, $00, $05, $09, $06, $09, $0A, $06, $0B, $07, $0B, $0B, $07
    db $02, $02, $02, $02, $02, $00, $00, $00, $00, $00, $09, $09, $0A, $0A, $09, $0B
    db $0B, $0B, $0B, $0B, $02, $03, $04, $00, $10, $00, $05, $00, $00, $11, $0A, $06
    db $09, $0A, $2F, $0B, $07, $0C, $0E, $0E, $00, $01, $03, $02, $02, $00, $00, $05
    db $00, $00, $00, $0A, $06, $09, $0A, $0E, $0B, $07, $0B, $0B, $03, $03, $04, $00
    db $1F, $05, $05, $00, $3D, $25, $06, $06, $0A, $3E, $1F, $07, $07, $0B, $3E, $1F
    db $14, $13, $13, $3E, $1F, $09, $0A, $09, $3E, $1F, $00, $00, $00, $3F, $1F, $0D
    db $0D, $0E, $21, $22, $10, $11, $3D, $14, $14, $11, $0A, $3E, $00, $08, $00, $00
    db $3E, $00, $06, $0E, $0E, $3E, $0B, $07, $0F, $0F, $3E, $0F, $0F, $11, $14, $3E
    db $14, $11, $1E, $00, $3E, $00, $1F, $0E, $0E, $3E, $0E, $0E, $0F, $14, $3E, $14
    db $0F, $1E, $00, $3F, $00, $11, $1E, $00, $00, $00, $2F, $0E, $0D, $0B, $0B, $0E
    db $02, $02, $02, $02, $02, $00, $00, $00, $00, $00, $09, $09, $00, $00, $0C, $23
    db $0B, $0B, $0E, $0F, $02, $02, $02, $02, $02, $00, $00, $00, $00, $00, $00, $0A
    db $09, $09, $0A, $0E, $0C, $0B, $23, $0B, $11, $11, $14, $14, $14, $0A, $0A, $08
    db $09, $0A, $28, $00, $06, $00, $00, $0B, $0B, $07, $0B, $0B, $13, $13, $14, $11
    db $11, $0A, $09, $00, $08, $0A, $00, $00, $00, $06, $29, $0D, $0C, $0C, $07, $0B
    db $13, $13, $13, $13, $13, $09, $0A, $0A, $09, $09, $00, $00, $00, $00, $00, $0C
    db $0C, $0D, $0E, $0E, $11, $14, $14, $14, $14, $1E, $00, $08, $09, $0A, $1E, $00
    db $06, $00, $00, $0E, $0B, $07, $0C, $0E, $00, $00, $00, $00, $00, $00, $00, $1A
    db $00, $00, $00, $38, $19, $00, $09, $0E, $30, $18, $0B, $0C, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $08, $0A, $0A, $09, $0A, $06, $0E, $0D, $17, $16, $07
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $09, $0A, $0A, $09, $09, $17
    db $15, $0D, $0D, $17, $00, $00, $00, $00, $00, $00, $00, $08, $00, $00, $0A, $00
    db $06, $09, $0A, $16, $16, $07, $15, $0D, $00, $00, $00, $00, $10, $00, $08, $00
    db $00, $11, $09, $06, $00, $00, $2F, $15, $07, $17, $0E, $0E, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $38, $38, $36, $0C, $0E, $31, $30, $17, $10
    db $26, $00, $00, $00, $27, $1E, $42, $41, $40, $1F, $1E, $2B, $2A, $2C, $1F, $1E
    db $12, $12, $12, $1F, $00, $00, $00, $3E, $1F, $09, $0A, $00, $3E, $1F, $37, $09
    db $0A, $3F, $00, $30, $0D, $0E, $15, $15, $3E, $2A, $2A, $2A, $3D, $3F, $35, $39
    db $37, $3E, $36, $39, $29, $35, $3E, $39, $35, $35, $36, $3E, $3D, $13, $13, $2A
    db $11, $3E, $00, $00, $00, $2F, $3E, $00, $33, $38, $25, $3E, $0E, $0C, $0C, $25
    db $00, $00, $00, $00, $00, $00, $00, $00, $08, $00, $28, $09, $0A, $06, $09, $15
    db $17, $24, $07, $16, $00, $00, $00, $00, $00, $0A, $09, $0A, $09, $0A, $0A, $00
    db $17, $00, $0A, $17, $0E, $0F, $0D, $24, $00, $00, $00, $00, $00, $00, $08, $00
    db $0A, $09, $09, $06, $0A, $09, $2B, $17, $07, $24, $31, $30, $00, $00, $00, $00
    db $00, $09, $0A, $0A, $09, $0A, $37, $37, $00, $2B, $37, $31, $30, $17, $16, $30
    db $25, $25

    dec h
    dec h
    dec h

    db $25, $25

    dec h
    dec h
    dec h

    db $00, $00

    nop
    nop
    nop

    db $0B, $17

    dec d
    dec bc
    rla
    inc de
    inc de
    inc de
    inc de
    inc de
    nop
    ld [$0000], sp
    nop
    nop
    ld b, $00
    inc sp
    scf
    ld d, $07
    dec c
    ld hl, $1321
    inc de
    inc de
    inc de
    inc de
    inc sp
    nop
    nop
    nop
    nop
    nop
    scf
    inc sp
    jr c, @+$39

    ld hl, $2121
    ld hl, $1321
    inc de
    inc de
    inc de
    inc de
    nop
    nop
    nop
    nop
    nop
    inc sp
    inc sp
    scf
    nop
    jr z, jr_006_435E

    inc c
    jr nc, @+$19

    ld sp, $1313
    inc de
    inc de
    dec h
    nop
    ld [$0000], sp
    dec h
    scf
    ld b, $00
    inc sp
    dec h
    jr nc, @+$09

jr_006_435E:
    inc c
    db $31
    dec h

    db $2A, $2A, $2A, $2A, $2A, $00, $00, $39, $00, $00, $25, $39, $34, $38, $0E, $25
    db $0E, $0C, $0C, $0F, $26, $00, $00, $00, $27, $1E, $42, $41, $40, $1F, $1E, $2B
    db $2A, $2C, $1F, $1E, $12, $12, $12, $1F, $2A, $00, $33, $35, $1F, $00, $34, $39
    db $39, $1F, $0E, $37, $35, $35, $1F, $0F, $31, $30, $31, $25, $26, $2A, $2A, $2A
    db $11, $1E, $36, $36, $39, $2F, $1E, $32, $39, $34, $27, $1E, $00, $34, $32, $1F
    db $2A, $00, $00, $00, $00, $00, $00, $08, $00, $08, $0E, $00, $06, $00, $06, $0F
    db $0B, $07, $0B, $07, $00, $00, $00, $1D, $00, $00, $00, $00, $1C, $00, $09, $0A
    db $0A, $1C, $09, $0B, $0B, $0B, $1B, $0B, $01, $03, $02, $03, $04, $00, $05, $00
    db $05, $00, $0A, $06, $0A, $06, $09, $0B, $07, $0B, $07, $0C, $00, $00, $00, $00
    db $0F, $00, $0A, $09, $09, $11, $0A, $09, $00, $00, $2F, $0D, $0E, $0E, $0E, $0E
    db $00, $01, $02, $03, $02, $0A, $00, $00, $05, $00, $00, $09, $0A, $06, $09, $0E
    db $0D, $0C, $07, $0B, $03, $04, $00, $3E, $1F, $05, $00, $00, $3E, $1F, $06, $0A
    db $00, $3F, $1F, $07, $0B, $0D, $21, $22, $1E, $00, $00, $00, $00, $25, $3D, $00
    db $08, $09, $1E, $3E, $00, $06, $00, $1E, $3E, $0B, $07, $0D, $00, $00, $00, $00
    db $00, $0A, $09, $0A, $00, $09, $28, $3C, $3C, $3B, $3C, $0F, $21, $21, $21, $21
    db $00, $00, $00, $00, $00, $0A, $09, $09, $0A, $0A, $00, $3C, $3B, $3A, $3B, $12
    db $21, $21, $21, $21, $00, $00, $00, $00, $00, $09, $09, $08, $0A, $0A, $28, $00
    db $06, $00, $28, $0F, $0D, $07, $0B, $31, $00, $00, $00, $00, $0F, $09, $09, $0A
    db $0A, $11, $00, $28, $00, $00, $2F, $31, $30, $31, $0E, $0E, $00, $1A, $00, $00
    db $1D, $09, $19, $0A, $09, $1C, $00, $19, $00, $00, $1C, $0E, $18, $0B, $0B, $1B
    db $01, $01, $01, $01, $01, $00, $00, $03, $03, $03, $00, $00, $04, $04, $04, $02
    db $02, $02, $02, $02

    ld bc, $0A01
    ld a, [bc]
    inc de
    ld c, $00
    ld e, a
    ld e, a
    dec d
    ld a, [bc]
    dec c
    ld e, a
    ld e, a
    nop
    dec b
    ld [bc], a
    dec b
    dec b
    ld [bc], a
    jr nz, jr_006_44CC

    ld h, c

jr_006_44CC:
    ld bc, $1E21
    ld [hl+], a
    inc e
    inc bc
    rra
    dec e
    inc hl
    inc e
    inc b
    dec de
    add hl, de
    ld a, [de]
    jr @+$1C

    rla
    ld [de], a
    ld bc, $0101
    ld l, d
    inc d
    inc bc
    inc bc
    nop
    ld l, d
    nop
    inc b
    inc b
    nop
    ld a, [hl]
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc h
    dec h

    db $0A

    ld bc, $0A0B
    db $01

    db $5F

    add hl, bc
    ld h, b
    ld e, a
    add hl, bc

    db $5F

    ld [$5F60], sp
    db $08

    db $05

    rlca
    ld b, $05
    rlca
    dec bc
    ld a, [bc]
    ld bc, $010B
    ld h, b
    ld e, a
    add hl, bc
    ld h, b
    nop
    ld h, b
    ld e, a
    ld [$0060], sp
    ld b, $05
    rlca
    ld b, $02
    ld bc, $0101
    ld bc, $0001
    ld c, $0E
    ld c, $0E
    inc c
    dec bc
    ld a, [bc]
    ld bc, $020B
    ld b, $05
    ld [bc], a
    ld b, $01
    ld bc, $0101
    ld bc, $0F0F
    ld c, $0E
    ld c, $10
    ld de, $010A
    dec bc
    ld b, $05
    dec b
    ld [bc], a
    ld b, $01
    ld bc, $0101
    ld bc, $0000
    nop
    jr z, jr_006_4559

    nop
    ld c, $0F
    daa
    dec bc
    dec h
    dec h
    ld a, [hl+]
    ld [bc], a
    ld b, $01
    ld bc, $2C01

jr_006_4559:
    dec d
    ld b, c
    ld c, l
    ld c, [hl]
    inc l
    dec d
    ld b, c
    ld c, [hl]
    ld c, l
    dec l
    dec d
    ld h, h
    ld [bc], a
    add h
    dec hl
    ld d, $35
    dec sp
    ld h, a
    dec e
    jr c, jr_006_45A3

    nop
    inc a
    scf
    ld a, [hl-]
    inc [hl]
    ld a, a
    dec c
    inc l
    add hl, sp
    ld [hl], $19
    rla
    inc l
    add hl, sp
    inc [hl]
    inc l
    dec e
    nop
    ld b, b
    inc [hl]
    dec l
    dec e
    ld a, $00
    dec [hl]
    dec a
    dec a
    nop
    ccf
    inc [hl]
    inc a
    inc a
    dec a
    add hl, sp
    ld l, d
    ld bc, $0101
    ld bc, $4100
    ld c, l
    ld c, l
    ld c, l
    ld l, c
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld l, c
    dec hl
    dec hl

jr_006_45A3:
    dec hl
    dec hl
    inc [hl]
    inc l
    inc l
    ld b, c
    add hl, sp
    inc [hl]
    inc l
    inc l
    ld c, l
    add hl, sp
    inc [hl]
    inc l
    inc l
    ld c, [hl]
    add hl, sp
    inc [hl]
    inc l
    dec l
    ld c, l
    add hl, sp
    ld bc, $0101
    ld bc, $0E01
    ld c, $0E
    ld c, $28
    ld bc, $010B
    ld a, [bc]
    daa
    ld [bc], a
    ld b, $02
    dec b
    ld [bc], a
    ld bc, $0A01
    ld l, $30
    nop
    nop
    ld e, a
    ld e, [hl]
    ld e, l
    add hl, hl
    nop
    ld h, d
    cpl
    ld e, l
    ld [bc], a
    inc h
    dec h
    dec h
    dec h
    ld sp, $302E
    ld sp, $320B
    ld e, [hl]
    ld e, l
    ld [hl-], a
    ld h, b
    inc sp
    cpl
    ld e, l
    inc sp
    ld h, e
    dec h
    dec h
    dec h
    dec h
    dec h
    ld [de], a
    ld bc, $0101
    inc de
    inc [hl]
    ld c, l
    scf
    ld b, c
    add hl, sp
    dec [hl]
    scf
    inc l
    ld a, a
    jr c, jr_006_4639

    inc l
    inc l
    ld a, a
    add hl, sp
    ld bc, $0101
    ld bc, $4D6A
    ld c, l
    ld c, l
    ld c, [hl]
    ld a, [hl]
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld l, c
    dec hl
    dec hl
    dec hl
    dec hl
    ld l, e
    ld bc, $4746
    ld c, d
    ld [hl], b
    nop
    nop
    ld b, [hl]
    ld c, d
    ld [hl], c
    ld l, c
    nop
    nop
    ld c, c
    ld [hl], c
    ld h, $6C
    ld l, l
    ld [bc], a
    ld [hl], d
    halt
    ld [hl], l
    ld [hl], b
    halt
    ld [hl], l
    ld c, h
    ld [hl], h
    ld [hl], c

jr_006_4639:
    ld c, h
    ld [hl], h
    ld c, h
    ld [hl], h
    ld [hl], c
    ld c, h
    ld [hl], h
    ld [hl], a
    ld [hl], e
    ld [hl], d
    ld [hl], a
    ld [hl], e
    ld [hl], b
    halt
    ld [hl], l
    ld l, c
    ld bc, $4C71
    ld [hl], h
    scf
    ld b, d
    ld [hl], c
    ld c, h
    ld [hl], h
    inc l
    ld c, [hl]
    ld [hl], d
    ld [hl], a
    ld [hl], e
    inc l
    ld l, c
    scf
    ld l, d
    ld l, d
    inc l
    ld l, d
    inc l
    inc bc
    inc bc
    inc l
    add hl, sp
    inc l
    inc b
    inc b
    dec l
    add hl, sp
    inc l
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld a, b
    inc l
    ld l, d
    ld l, d
    ld l, d
    ld d, $2C
    add c
    add c
    add c
    ld b, b
    inc l
    add b
    add b
    add b
    ld a, [hl]
    inc l
    ld d, $25
    dec h
    dec h
    inc l
    ld bc, $0101
    ld a, [bc]
    dec l
    ld c, l
    ld c, l
    ld c, l
    ld e, a
    ld [bc], a
    ld b, c
    ld c, [hl]
    ld b, c
    ld e, a
    ld h, $6C
    ld l, l
    ld [bc], a
    dec b
    ld c, b
    ld b, a
    ld c, h
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, e
    nop
    nop
    ld b, [hl]
    ld c, c
    nop
    nop
    nop
    nop
    ld [bc], a
    ld l, [hl]
    ld l, a
    dec h
    ld a, [hl+]
    ld bc, $0101
    ld bc, $4E13
    ld b, c
    inc c
    ld b, c
    dec d
    ld l, c
    ld c, [hl]
    ld c, [hl]
    ld a, a
    ld d, $26
    ld l, c
    ld b, l
    ld b, l
    ld d, $6A
    scf
    ld l, d
    ld l, d
    ld l, d
    inc d
    inc l
    nop
    nop
    add hl, sp
    nop
    inc l
    ld b, h
    ld b, h
    add hl, sp
    ld l, c
    inc l
    ld [bc], a
    ld [bc], a
    ld a, b
    scf
    inc l
    ld l, d
    ld l, d
    ld d, $2C
    dec l
    add c
    add c
    ld b, b
    inc l
    add b
    add b
    add b
    ld a, [hl]
    inc l
    ld d, $25
    dec h
    dec h
    inc l
    ld bc, $0101
    ld a, [bc]
    dec l
    ld c, l
    ld c, l
    ld c, l
    ld e, a
    ld [bc], a
    ld b, c
    ld c, [hl]
    ld b, c
    ld e, a
    ld h, $6C
    ld l, l
    ld [bc], a
    dec b
    ld l, d
    nop
    ld d, e
    ld d, [hl]
    ld d, h
    ld l, d
    nop
    nop
    ld d, [hl]
    nop
    nop
    nop
    nop
    ld d, [hl]
    nop
    ld l, c
    ld a, d
    ld a, d
    ld d, l
    ld a, d
    ld d, e
    ld d, [hl]
    ld d, h
    ld d, e
    ld d, [hl]
    nop
    ld d, [hl]
    nop
    nop
    ld d, [hl]
    nop
    ld d, [hl]
    nop
    nop
    ld d, [hl]
    ld a, h
    ld d, l
    ld a, l
    ld a, d
    ld d, l
    ld d, h
    jr z, jr_006_474C

    nop
    nop
    nop
    daa
    daa
    dec c
    nop
    nop
    nop
    ld d, d
    nop
    ld a, d
    ld a, d
    ld c, a
    ld d, b
    ld d, c
    ld l, c
    nop
    nop
    jr z, @+$2A

    ld l, d
    nop
    inc c
    daa
    daa
    ld l, d
    ld a, d
    nop
    ld d, d
    nop
    ld a, [hl]
    ld l, c
    ld c, a
    ld d, b
    ld d, c
    ld l, c
    ld bc, $0101

jr_006_474C:
    ld bc, $0001
    ld c, l
    ld c, l
    ld c, l
    ld c, l
    nop
    ld b, c
    ld c, [hl]
    ld c, [hl]
    ld b, c
    ld l, c
    ld a, d
    ld a, d
    ld a, d
    ld a, d
    ld bc, $302E
    ld sp, $0001
    ld e, [hl]
    ld e, l
    ld [hl-], a
    nop
    nop
    ld e, d
    ld e, e
    ld e, h
    nop
    ld d, a
    ld e, b
    ld e, b
    ld e, b
    ld e, c
    ld bc, $0183
    ld bc, $0083
    ld e, a
    nop
    nop
    ld e, a
    nop
    ld e, a
    nop
    nop
    ld e, a
    ld a, d
    add d
    ld a, d
    ld a, d
    add d
    add hl, bc
    nop
    ld a, [hl-]
    adc e
    inc c
    add hl, bc
    rrca
    cpl
    adc h
    ld a, [bc]
    add hl, bc
    rrca
    nop
    dec b
    inc c
    rlca
    ld bc, $0101
    ld [$8B10], sp
    inc b
    ld sp, $0911
    adc h
    nop
    inc [hl]
    ld a, [bc]
    dec bc
    jr nc, jr_006_47AF

    scf
    inc c
    add hl, bc
    inc sp
    ld sp, $0A4B
    dec bc
    adc d

jr_006_47AF:
    inc sp
    cpl
    ld c, $0B
    adc e
    inc sp
    ld c, e
    ld a, [bc]
    dec bc
    adc e
    ld [hl], $05
    inc c
    rlca
    adc e
    ld bc, $0801
    dec bc
    ld [hl], $34
    dec b
    inc c
    add hl, bc
    dec b
    inc [hl]
    nop
    ld a, [bc]
    dec bc
    cpl
    scf
    adc d
    ld a, [bc]
    dec bc
    ld b, $00
    adc e
    inc c
    db $10
    inc b
    ld [hl-], a
    inc b
    ld b, b
    add hl, bc
    nop
    dec [hl]
    nop
    ld b, e
    dec bc
    ld b, $47
    nop
    ld de, $0009
    inc sp
    ld c, a
    ld a, [bc]
    dec c
    nop
    adc e
    dec b
    inc c
    nop
    nop
    adc e
    nop
    ld a, [bc]
    ld b, c
    inc b
    adc h
    ld bc, $410C
    ld bc, $0101
    ld [$0410], sp
    inc b
    adc e
    ld de, $010D
    nop
    adc h
    ld a, [bc]
    add hl, bc
    ld a, [bc]
    adc d
    ld b, $0A
    add hl, bc
    dec b
    adc e
    nop
    inc c
    add hl, bc
    nop
    ld b, a
    adc d
    ld a, [bc]
    dec bc
    ld b, $36
    adc e
    inc c
    add hl, bc
    nop
    nop
    adc e
    inc c
    rlca
    add hl, sp
    add hl, sp
    adc e
    ld [$3240], sp
    inc b
    ld [hl-], a
    inc c
    nop
    dec [hl]
    nop
    dec [hl]
    ld a, [bc]
    dec bc
    ld c, b
    ld [hl-], a
    ld c, b
    inc c
    add hl, bc
    scf
    dec [hl]
    scf
    ld a, [bc]
    db $10
    inc b
    nop
    inc b
    ld b, b
    add hl, bc
    cpl
    nop
    cpl
    nop
    dec c
    cpl
    nop
    cpl
    ld b, c
    dec c
    ld bc, $0101
    ld b, c
    dec bc
    adc e
    add hl, bc
    dec [hl]
    inc c
    dec bc
    adc e
    dec bc
    dec [hl]
    ld a, [bc]
    dec c
    adc h
    adc d
    jr c, jr_006_486A

    rlca
    ld bc, $018D
    ld [$8B10], sp
    db $10
    ld [hl-], a
    ld de, $8C09
    dec bc
    dec [hl]

jr_006_486A:
    ld a, [bc]
    dec bc
    nop
    add hl, bc
    dec [hl]
    inc c
    add hl, bc
    adc d
    dec bc
    dec [hl]
    ld a, [bc]
    dec bc
    ld b, $00
    nop
    ld a, [bc]
    add hl, bc
    adc d
    inc b
    nop
    inc c
    add hl, bc
    adc e
    dec b
    inc b
    inc c
    rlca
    adc e
    ld bc, $0801
    db $10
    inc b
    inc b
    inc [hl]
    ld de, $4F09
    ld b, $37
    ld a, [bc]
    ld a, l
    nop
    ld c, a
    ld c, e
    inc c
    ld bc, $0200
    inc b
    inc c
    ld a, e
    jr z, jr_006_48A9

    cpl
    ld a, [bc]
    ld a, e
    cpl
    ld [hl], d
    ld [hl-], a
    dec d
    ld a, b
    ld a, d

jr_006_48A9:
    halt
    dec [hl]
    rla
    rlca
    add hl, sp
    add hl, sp
    ld c, b
    ld [$3010], sp
    inc b
    inc b
    ld b, b
    add hl, bc
    inc sp
    add hl, hl
    nop
    ld b, e
    add hl, bc
    inc sp
    cpl
    dec b
    ld de, $3612
    stop
    ld a, [bc]
    nop
    nop
    nop
    nop
    ld d, l
    ld h, h
    nop
    nop
    nop
    ld d, l
    ld bc, $645E
    ld h, h
    ld h, [hl]
    ld bc, $5756
    ld bc, $0001
    ld d, l
    adc e
    ld d, d
    nop
    nop
    ld d, l
    adc e
    ld d, d
    nop
    ld [hl], c
    ld h, [hl]
    adc h
    ld h, a
    ld h, e
    ld h, l
    ld bc, $0101
    ld bc, $3751
    add hl, sp
    ld c, a
    ld d, h
    ld d, c
    ld c, a
    adc d
    ld c, e
    ld d, h
    ld d, c
    ld b, $8B
    dec b
    ld d, h
    ld d, b
    ld bc, $018B
    ld d, e
    ld l, c
    ld e, l
    ld h, h
    nop
    nop
    ld l, c
    ld e, d
    ld h, e
    ld [hl], b
    ld h, h
    ld l, b
    ld e, d
    nop
    ld h, e
    nop
    ld bc, $6C58
    adc c
    ld bc, $0052
    nop
    nop
    ld d, l
    ld d, c
    ld e, [hl]
    ld [hl], b
    ld h, b
    ld d, l
    ld d, c
    ld e, c
    ld h, e
    ld e, d
    ld h, [hl]
    ld d, b
    ld d, [hl]
    ld d, a
    ld e, b
    ld bc, $5200
    nop
    nop
    nop
    ld e, h
    ld h, a
    ld bc, $0200
    ld h, c
    ld h, e
    ld h, e
    ld b, $64
    ld b, c
    ld h, l
    ld bc, $0165
    nop
    nop
    ld d, d
    ld h, h
    nop
    ld e, a
    nop
    ld h, a
    ld bc, $6170
    ld [hl], b
    ld [hl], c
    ld h, e
    inc bc
    ld l, e
    ld l, h
    ld l, l
    ld bc, $5165
    ld [hl], b
    ld [hl-], a
    ld [hl], c
    ld d, h
    ld d, c
    nop
    dec [hl]
    nop
    ld d, h
    ld d, c
    ld sp, $4F35
    ld d, h
    ld d, c
    inc [hl]
    jr c, jr_006_49AF

    ld d, h
    rlca
    ld h, $28
    ld a, d
    ld a, [bc]
    nop
    nop
    dec h
    ld c, h
    jr z, @+$43

    nop
    ld hl, $0A4C
    ld b, d
    ld bc, $0188
    ld a, a
    add b
    inc b
    dec [hl]
    inc b
    ld de, $2912
    dec [hl]
    cpl
    ld a, [bc]
    inc de
    add hl, hl
    ld b, a
    jr z, jr_006_4996

    ld a, e
    ld a, d
    ld [hl], $29
    ld a, [bc]
    inc de
    ld [hl], h
    ld b, c
    ld [hl], e
    ld d, $7B
    halt
    ld b, c
    ld [hl], a

jr_006_4996:
    ld a, h
    ld a, [hl]
    nop
    ld [hl-], a
    nop
    ld a, a
    rlca
    ld bc, $0135
    ld [$0410], sp
    ld b, c
    inc b
    ld b, b
    dec c
    nop
    ld b, c
    dec sp
    ld b, e
    add hl, bc
    ld [hl], d
    ld b, c
    add hl, hl

jr_006_49AF:
    ld de, $7412
    ld b, c
    ld c, e
    dec d
    dec c
    ld sp, $7784
    rla
    nop
    inc [hl]
    rrca
    add hl, hl
    inc c
    ld b, c
    scf
    ld [hl+], a
    ld a, d
    jr z, @+$42

    add hl, sp
    adc b
    adc b
    ld [$3410], sp
    ld [hl-], a
    ld [hl-], a
    ld de, $3712
    jr c, jr_006_4A0A

    dec d
    inc de
    nop
    cpl
    nop
    ld a, [hl+]
    ld a, b
    ld c, a
    dec c
    ld [hl], e
    ld a, [hl+]
    ccf
    nop
    cpl
    ld [hl], l
    ld a, c
    ccf
    ld sp, $773F
    ld a, $09
    inc [hl]
    cpl
    inc hl
    ld a, $7E
    inc [hl]
    ld bc, $0888
    db $10
    adc e
    inc b
    inc b
    ld de, $8C78
    cpl
    nop
    ld a, [bc]
    ccf
    ld [hl], d
    nop
    inc b
    jr z, jr_006_4A0A

    halt
    jr z, jr_006_4A77

    ld a, $09
    nop
    ld [hl], e
    ld a, d
    rla

jr_006_4A0A:
    dec bc
    adc d
    ld [hl], a
    nop
    ld a, [bc]
    add hl, bc
    adc e
    dec sp
    ld hl, $070A
    adc e
    ld bc, $7F88
    db $10
    inc sp
    inc b
    inc b
    ld de, $3609
    nop
    nop
    dec d
    add hl, bc
    ld hl, $2727
    ld a, [hl+]
    ld a, b
    ld e, $2F
    rra
    ld a, [hl+]
    db $10
    jr nc, jr_006_4A34

    add e
    add c
    ld [de], a
    inc sp

jr_006_4A34:
    cpl
    dec e
    ld a, [bc]
    inc de
    inc sp
    add hl, hl
    dec de
    ld c, $7E
    inc sp
    ld bc, $7F82
    ld l, a
    ld l, a
    inc b
    ld l, a
    rrca
    nop
    rla
    nop
    rla
    ld l, h
    ld [hl], d
    ld [hl], d
    nop
    ld [hl], c
    ld l, h
    ld l, [hl]
    ld l, [hl]
    ld bc, $0E6E
    ld e, $38
    ld l, a
    ld [hl], h
    inc d
    ld l, l
    add hl, sp
    jr @+$19

    nop
    ld de, $0811
    ld bc, $1018
    db $10
    dec c
    dec c
    dec c
    ld a, [hl+]
    scf
    ld a, [hl+]
    ld a, [hl+]
    inc l
    nop
    jr c, jr_006_4A71

jr_006_4A71:
    rla
    ld l, h
    nop
    jr c, jr_006_4AE8

    dec bc

jr_006_4A77:
    ld d, [hl]
    daa
    jr c, jr_006_4A8C

    daa
    dec hl
    ld l, a
    ld l, a
    ld l, a
    inc b
    ld l, a
    rla
    nop
    rla
    nop
    rla
    nop
    nop
    nop
    ld [hl], d
    nop

jr_006_4A8C:
    ld bc, $6E6E
    ld bc, $746E
    ld l, a
    ld l, a
    inc b
    inc b
    nop
    rla
    nop
    rla
    nop
    ld de, $0013
    nop
    ld [hl], d
    db $10
    db $10
    ld de, $6E13
    ld d, $6F
    inc d
    ld d, $6F
    rla
    nop
    rla
    nop
    rla
    add hl, bc
    inc b
    ld [$7419], sp
    dec c
    dec c
    dec c
    dec c
    dec c
    db $10
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    dec de
    rla
    nop
    rla
    ld [hl], c
    ld c, l
    ld [hl], c
    ld sp, $3100
    ld de, $3027
    ld [hl], l
    jr nc, jr_006_4AF8

    ld h, d
    jr c, @+$64

    ld a, [hl+]
    nop
    dec [hl]
    jr c, jr_006_4B0B

    ld [hl], c
    ld [hl], d
    dec [hl]
    add hl, sp
    dec [hl]
    nop
    ld [hl], l
    ld [hl-], a
    daa
    ld [hl-], a
    ld de, $003F
    ld d, c
    rlca
    ld l, h
    ld d, e
    inc b

jr_006_4AE8:
    jr c, jr_006_4B5A

    ld d, [hl]
    ld d, e
    nop
    jr c, jr_006_4B63

    ld d, [hl]
    rra
    ld bc, $0138
    ld c, $50
    inc b
    inc b

jr_006_4AF8:
    inc b
    dec de
    ld a, $70
    rla
    nop
    nop
    ld a, $0C
    ld [hl], e
    ld d, a
    ld d, [hl]
    ld a, $19
    nop
    jr jr_006_4B75

    ld l, l
    inc e

jr_006_4B0B:
    rla
    inc b
    ld d, [hl]
    nop
    ld [hl], e
    ld [hl], e
    nop
    ld d, [hl]
    ld de, $1C1C
    add hl, bc
    ld l, h
    db $10
    ld bc, $7301
    ld de, $093E
    ld [hl], h
    ld [hl], h
    rrca
    ccf
    nop
    dec b
    add hl, de
    ld l, h
    ld l, l
    ld bc, $1117
    ld d, [hl]
    ld l, l
    db $10
    jr jr_006_4B40

    ld d, [hl]
    ld e, c
    ld [$7217], sp
    ld l, h
    rra
    ld bc, $0072
    ld l, h
    ld d, b
    inc b
    inc b
    inc b
    ld e, d

jr_006_4B40:
    ld a, $0C
    ld [hl], e
    ld [hl], e
    ld c, $76
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    db $10
    ld [de], a
    nop
    rla
    nop
    dec de
    db $10
    ld h, d
    cpl
    jr jr_006_4B54

jr_006_4B54:
    db $10
    ld [hl-], a
    inc sp
    ld [hl], l
    daa
    dec a

jr_006_4B5A:
    halt
    ld a, [hl+]
    halt
    ld a, [hl+]
    inc a
    rla
    jr jr_006_4B79

    ld [de], a

jr_006_4B63:
    ld a, [hl-]
    jr jr_006_4B66

jr_006_4B66:
    nop
    db $10
    ld h, $75
    daa
    ld [hl], l
    db $10
    ld [hl], $76
    ld a, [hl+]
    ld a, [hl+]
    halt
    daa
    daa
    nop

jr_006_4B75:
    nop
    rla
    add hl, de
    nop

jr_006_4B79:
    ld a, [hl+]
    add hl, hl
    cpl
    ld [hl], l
    daa
    daa
    ld [hl], l
    ld [hl], l
    ld e, $04
    inc b
    inc b
    rrca
    ld d, h
    ld [hl], e
    ld [hl], e
    dec b
    ld l, h
    ld l, l
    add hl, de
    rla
    add hl, bc
    ld e, d
    ld l, l
    inc c
    ld bc, $5573
    ld a, [hl+]
    halt
    halt
    ld a, [hl+]
    ld [hl], a
    ld [hl], d
    ld [hl], b
    rla
    jr jr_006_4C17

    ld [hl], $2F
    ld [hl], c
    nop
    ld a, c
    ld [hl], l
    daa
    daa
    ld [hl], l
    ld [hl], l
    ld a, $47
    ld a, [hl+]
    halt
    halt
    ld a, $00
    rla
    jr jr_006_4BCA

    ccf
    add hl, hl
    ld [hl], l
    ld sp, $2D18
    daa
    ld [hl], l
    jr nc, jr_006_4C32

    ld l, l
    nop
    nop
    ld d, a
    ld d, [hl]
    ld d, b
    inc b
    rra
    ld bc, $3E6C
    ld [hl], e
    ld a, [de]

jr_006_4BCA:
    nop
    ld d, l
    ld a, $0C
    ld bc, $1012
    dec de
    inc b
    ld [hl], h
    inc b
    ld d, d
    ld c, l
    nop
    rla
    jr jr_006_4C29

    ld e, $58
    ld [hl], e
    dec b
    ld c, [hl]
    ld l, l
    ld [hl], d
    add hl, de
    nop
    ld c, a
    ld a, [hl+]
    halt
    halt
    ld a, [hl+]
    halt
    ld sp, $3118
    ld [hl], c
    ld sp, $3636
    ld [hl], $36
    ld [hl], $27
    ld [hl], l
    ld [hl], l
    daa
    daa
    ld a, [hl+]
    ld a, [hl+]
    ld c, c
    ld c, e
    ld a, [hl+]
    ld [hl], l
    ld [hl], l
    nop
    rla
    nop
    ld l, l
    nop
    ld b, h
    jr @+$13

    dec l
    ld [hl], l
    ld b, b
    ld b, b
    db $10
    ld a, [hl+]
    ld a, [hl+]
    ld h, d
    ld c, c
    ld c, e
    nop
    rla
    dec [hl]
    nop
    nop

jr_006_4C17:
    ld bc, $3570
    nop
    ld b, b
    db $10
    ld [de], a
    ld [hl-], a
    daa
    db $10
    dec de
    dec de
    dec de
    dec de
    dec de
    ld b, c
    ld b, e
    nop

jr_006_4C29:
    ld b, c
    ld b, e
    ld sp, $0200
    nop
    inc c
    jr nc, jr_006_4C72

jr_006_4C32:
    ld b, b
    ld b, b
    ld b, b
    ld d, h
    nop
    db $10
    ld [hl], d
    ld d, [hl]
    ld l, l
    ld bc, $041B
    nop
    ld d, h
    ld [hl], d
    nop
    ld bc, $1111
    inc de
    ld [hl], e
    ld bc, $1B10
    inc b
    db $10
    ld [$4D4E], sp
    dec b
    stop
    ld c, a
    ld d, e
    inc c
    db $10
    ld [hl], d
    ld d, [hl]
    ld l, l
    ld bc, $7410
    ld l, h
    ccf
    add hl, bc
    inc b
    ld [hl], h
    rrca
    ld d, h
    ld [bc], a
    ld a, [bc]
    rlca
    ld l, h
    ld l, l
    ld bc, $0201
    ld d, d
    rra
    ld [hl], e
    ld [hl], e
    dec b
    ld c, [hl]
    ld d, e

jr_006_4C72:
    ld [hl], h
    rla
    inc b
    ld l, h
    ld d, b
    ld [de], a
    ld b, $12
    ld l, h
    ld a, $04
    rla
    inc b
    ld d, [hl]
    ld a, $0C
    ld [hl], e
    ld bc, $1E11
    ld [hl], h
    inc b
    ld [hl], h
    rrca
    ld l, l
    ld [de], a
    ld b, $12
    ld l, h
    ld l, l
    inc b
    rla
    inc b
    ld d, [hl]
    ld l, l
    ld [de], a
    dec bc
    ld [de], a
    ld d, [hl]
    ld e, l
    ld e, [hl]
    ld e, a
    ld a, [hl+]
    dec de
    ld e, h
    ld l, c
    ld h, a
    nop
    nop
    ld e, h
    ld l, b
    ld h, a
    nop
    ld de, $6A5B
    ld h, [hl]
    daa
    db $10
    ld bc, $0804
    inc c
    db $10
    ld [bc], a
    dec b
    add hl, bc
    dec c
    ld de, $0602
    ld a, [bc]
    ld c, $12
    inc bc
    rlca
    dec bc
    rrca
    inc de
    ld h, b
    ld a, [hl+]
    ld h, d
    scf
    ld a, [hl+]
    ld h, c
    nop
    dec [hl]
    jr c, jr_006_4CCB

jr_006_4CCB:
    ld h, e
    ld h, h
    ld h, e
    add hl, sp
    nop
    ld [hl-], a
    daa
    ld [hl-], a
    daa
    daa
    ld h, d
    ld a, [hl+]
    halt
    ld h, d
    ld a, [hl+]
    dec [hl]
    jr jr_006_4CF6

    dec [hl]
    nop
    ld h, e
    inc c
    dec b
    ld h, e
    ld h, h
    ld [hl-], a
    ld b, b
    ld b, b
    ld [hl-], a
    daa
    scf
    ld h, d
    ld a, [hl+]
    ld h, b
    ld a, [hl+]
    jr c, jr_006_4D25

    nop
    ld h, c
    nop
    add hl, sp
    ld h, e
    ld h, h

jr_006_4CF6:
    ld h, e
    ld h, h
    daa
    ld [hl-], a
    daa
    ld [hl-], a
    daa
    dec a
    ld e, l
    ld e, [hl]
    ld e, a
    ld a, [hl+]
    inc a
    ld e, h
    ld l, c
    ld h, a
    ld [hl], c
    ld h, l
    ld e, h
    ld l, b
    ld h, a
    nop
    ld [hl], l
    ld e, e
    ld l, d
    ld h, [hl]
    daa
    ld a, $22
    rra
    rra
    rra
    jr z, jr_006_4D18

jr_006_4D18:
    ld a, b
    ld a, c
    ld a, c
    jr z, jr_006_4D1D

jr_006_4D1D:
    ld a, d
    ld a, d
    ld a, d
    add hl, bc
    dec b
    dec bc
    rrca
    rrca

jr_006_4D25:
    dec sp
    ld d, $80
    rla
    rra
    ld a, c
    nop
    ld a, b
    ld a, c
    nop
    ld a, d
    nop
    ld a, d
    ld a, d
    dec c
    inc c
    dec bc
    ld a, [hl+]
    inc l
    ld a, l
    dec sp
    dec sp
    ld e, $40
    dec de
    dec c
    rrca
    ld c, $42
    ld a, b
    ld [bc], a
    rla
    ld e, $00
    ld l, $01
    inc h
    rrca
    ld a, [hl+]
    dec l
    jr jr_006_4D68

    ld a, [de]
    jr nz, jr_006_4D73

    ld a, c
    ld a, c
    nop
    nop
    nop
    ld l, $2E
    nop
    inc sp
    jr c, jr_006_4D8A

    dec l
    rrca
    inc c
    dec bc
    ld [hl+], a
    ld e, $40
    rra
    rra
    nop
    nop

jr_006_4D68:
    ld b, c
    nop
    dec bc
    jr nc, jr_006_4D9F

    ld b, d
    jr nc, jr_006_4D76

    inc a
    dec c
    inc c

jr_006_4D73:
    dec bc
    rrca
    rra

jr_006_4D76:
    rra
    jr jr_006_4D92

    ld a, [de]
    ld c, $00
    ld a, c
    ld a, c
    ld b, e
    rlca
    jr nc, jr_006_4D82

jr_006_4D82:
    ld l, $08
    inc c
    dec bc
    inc l
    dec l
    ld a, [hl]
    rlca

jr_006_4D8A:
    ld b, b
    dec de
    ld e, $7E
    nop
    ld b, c
    ld a, b
    ld a, c

jr_006_4D92:
    ld b, $0A
    ld b, c
    ld a, d
    ld a, d
    nop
    ld a, a
    ld b, c
    dec bc
    db $10
    dec a
    ld a, $22

jr_006_4D9F:
    ld e, $06
    add b
    dec h
    nop
    ld a, b
    ld a, c
    ccf
    nop
    nop
    ld a, d
    ld a, d
    ld a, d
    add hl, bc
    dec b
    dec bc
    rrca
    ld a, [hl+]
    rra
    rra
    ld d, $80
    add b
    ld a, c
    inc sp
    inc sp
    inc sp
    add hl, hl
    ld l, $34
    ld a, c
    ld b, b
    ld [$2B2D], sp
    ld c, $41
    ld a, [hl]
    rlca
    dec de
    ld e, $41
    ld b, $28
    ld a, b
    ld a, c
    ld b, d
    add hl, hl
    jr z, jr_006_4E4B

    ld a, d
    add hl, sp
    add hl, hl
    inc h
    ld a, [hl+]
    inc l
    dec hl
    ld a, l
    rlca
    ld b, c
    dec de
    ld d, $01
    jr z, jr_006_4E21

    nop
    ld h, $80
    jr z, jr_006_4E27

    ld a, d
    ld a, d
    nop
    ld a, [bc]
    dec bc
    rrca
    ld a, [hl+]
    ld a, l
    jr nz, jr_006_4E10

    ld [hl+], a
    dec sp
    jr jr_006_4E18

    ld a, d
    ld a, d
    nop
    ld a, b
    nop
    jr nc, jr_006_4DFA

jr_006_4DFA:
    jr nc, jr_006_4E76

    ld a, [bc]
    inc l
    inc l
    inc l
    ld a, l
    rlca
    dec de
    dec sp
    rra
    rra
    nop
    ld a, b
    ld a, c
    ld a, c
    nop
    ld a, d
    ld l, $2E
    ld l, $36

jr_006_4E10:
    inc l
    dec l
    dec l
    dec l
    ld [$401E], sp
    dec de

jr_006_4E18:
    rra
    rra
    nop
    ld b, c
    dec bc
    db $10
    ld de, $4235

jr_006_4E21:
    dec de
    rra
    rra
    ld a, [bc]
    dec bc
    rrca

jr_006_4E27:
    inc c
    dec bc
    rra
    rra
    rra
    rra
    rra
    ld [de], a
    inc de
    inc d
    dec d
    rrca
    jr jr_006_4E4E

    ld a, [de]
    jr nz, jr_006_4E59

    rrca
    rrca
    rrca
    rrca
    rrca
    dec sp
    rra
    dec sp
    rra
    dec sp
    rrca
    rrca
    rrca
    inc c
    ld a, c
    ld [hl+], a
    rra
    ld d, $28

jr_006_4E4B:
    dec [hl]
    rrca
    rrca

jr_006_4E4E:
    inc hl
    inc bc
    inc l
    add hl, de
    ld a, [de]
    rla
    ld e, $40
    nop
    nop
    nop

jr_006_4E59:
    nop
    ld b, c
    nop
    nop
    jr nc, jr_006_4E90

    ld b, d
    ld b, h
    ld b, l
    ld b, l
    ld b, l
    ld b, [hl]
    dec de
    rra
    rra
    ld d, $01
    dec bc
    rrca
    inc c
    ld h, $80
    dec de
    rra
    inc e
    nop
    ld b, e
    ld b, a
    ld c, b

jr_006_4E76:
    ld c, b
    ld c, c
    add hl, bc
    rla
    ld e, $40
    ld b, $80
    dec h
    nop
    ld b, c
    nop
    add hl, hl
    nop
    jr nc, jr_006_4EC7

    nop
    add hl, hl
    ld a, [bc]
    inc a
    ld b, c
    dec bc
    inc hl
    add b
    rlca
    ld b, c

jr_006_4E90:
    dec de
    jr jr_006_4EBB

    ld a, b
    ld b, d
    ld a, c
    nop
    jr z, jr_006_4F13

    nop
    ld a, d
    ld [hl], $03
    ld c, $04
    ld b, h
    ld b, l
    rra
    jr jr_006_4EBD

    ld a, [de]
    ld bc, $780C
    ld a, c
    ld h, $80
    inc bc
    rrca
    inc c
    nop
    nop
    ld bc, $0301
    ld c, $08
    rla
    rra
    rra
    jr jr_006_4F1F

    dec h

jr_006_4EBB:
    ld a, b
    ld a, c

jr_006_4EBD:
    nop
    ld h, l
    nop
    ld a, d
    ld c, d
    nop
    ld b, e
    ld a, [bc]
    rrca
    dec l

jr_006_4EC7:
    ld c, d
    ld [$1A19], sp
    rla
    rra
    dec sp
    dec bc
    dec l
    inc a
    ld a, c
    ld a, c
    dec de
    rra
    ld e, $81
    nop
    ld b, l
    ld b, l
    ld b, l
    ld b, [hl]
    ld [$1918], sp
    ld a, [de]
    rla
    rra
    nop
    nop
    ld a, c
    ld a, d
    db $10
    ld a, d
    ld a, d
    dec [hl]
    jr nc, @+$1D

    add hl, bc
    add hl, bc
    ld b, h
    ld b, l
    ld b, l
    rra
    rra
    rra
    rra
    rra
    ld de, $0312
    rrca
    rrca
    jr jr_006_4F1F

    rra
    rra
    ld d, $45
    ld b, l
    ld b, l
    ld b, [hl]
    add hl, hl
    rla
    ld e, $4D
    ld e, [hl]
    ld d, [hl]
    dec h
    nop
    jr nc, jr_006_4F6D

    ld d, e
    nop
    jr nc, jr_006_4F12

jr_006_4F12:
    ld c, d

jr_006_4F13:
    nop
    ld a, [bc]
    ld c, d
    inc l
    dec l
    ld h, d
    add h
    ld a, e
    ld h, a
    nop
    add l
    add h

jr_006_4F1F:
    ld a, e
    nop
    ld a, h
    add l
    nop
    nop
    ld h, a
    ld a, h
    add l
    ld h, d
    ld c, d
    ld c, d
    ld c, d
    ld h, d
    ld e, d
    ld c, l
    ld h, [hl]
    ld h, b
    ld h, l
    ld e, h
    nop
    ld h, [hl]
    ld e, [hl]
    nop
    ld d, d
    ld c, l
    ld h, [hl]
    ld e, [hl]
    ld d, [hl]
    ld d, h
    nop
    ld h, [hl]
    ld e, [hl]
    ld d, e
    ld d, b
    ld c, l
    ld c, l
    ld c, l
    ld c, l
    nop
    ld h, a
    ld h, a
    ld h, a
    nop
    ld h, d
    ld c, a
    ld c, l
    ld c, [hl]
    ld h, d
    ld d, h
    ld c, [hl]
    ld c, d
    ld c, a
    ld d, [hl]
    add h
    ld a, e
    nop
    ld a, h
    add l
    add h
    ld a, e
    ld h, a
    ld a, h
    add l
    add h
    ld a, e
    nop
    ld a, h
    add l
    add h
    nop
    ld h, a
    ld a, h
    add l
    ld d, d
    nop
    ld h, [hl]
    ld c, l

jr_006_4F6D:
    ld d, e
    ld d, d
    ld c, l
    ld h, [hl]
    nop
    ld d, [hl]
    ld d, h
    nop
    ld c, l
    ld h, b
    ld d, e
    add hl, bc
    dec b
    ld c, d
    ld e, [hl]
    ld d, [hl]
    ld d, d
    ld c, l
    ld h, [hl]
    ld e, [hl]
    ld d, [hl]
    ld d, h
    nop
    ld h, l
    ld e, a
    ld d, e
    ld d, h
    nop
    nop
    nop
    ld d, [hl]
    ld d, h
    ld c, l
    ld h, d
    ld c, [hl]
    ld d, [hl]
    ld d, b
    ld c, l
    ld c, l
    ld c, l
    ld d, c
    ld d, l
    ld h, a
    ld h, a
    ld h, a
    ld e, c
    ld e, d
    ld c, a
    ld c, [hl]
    ld c, h
    ld e, l
    ld e, d
    nop
    ld c, d
    ld c, d
    ld d, a
    add h
    ld a, e
    nop
    nop
    add l
    add h
    ld a, e
    ld h, a
    nop
    add l
    add h
    nop
    nop
    ld a, h
    add l
    add h
    ld a, e
    ld c, l
    ld a, h
    add l
    ld c, l
    ld c, l
    ld c, l
    ld h, [hl]
    ld c, l
    ld h, a
    ld h, a
    nop
    ld l, b
    ld l, a
    ld c, d
    nop
    nop
    ld l, c
    ld l, [hl]
    ld h, [hl]
    ld h, e
    ld c, d
    ld l, e
    ld l, [hl]
    ld l, h
    ld h, [hl]
    ld l, h
    ld l, h
    ld h, [hl]
    ld l, l
    ld l, b
    ld l, l
    ld l, l
    ld l, b
    ld l, [hl]
    ld l, c
    ld l, [hl]
    ld l, [hl]
    ld l, c
    ld l, [hl]
    ld l, e
    ld l, [hl]
    ld l, [hl]
    ld l, e
    ld l, h
    ld c, l
    ld h, [hl]
    ld c, l
    ld h, [hl]
    ld l, l
    ld l, a
    ld l, b
    nop
    ld h, [hl]
    ld l, [hl]
    ld l, [hl]
    ld l, c
    nop
    add e
    ld l, [hl]
    ld l, [hl]
    ld l, e
    ld c, d
    add d
    ld c, l
    ld c, l
    ld c, l
    ld c, [hl]
    ld e, e
    nop
    nop
    ld l, h
    ld h, e
    ld e, l
    ld c, l
    ld l, h
    ld l, l
    ld l, h
    ld d, e
    ld c, d
    ld l, [hl]
    ld h, d
    ld l, [hl]
    ld d, a
    ld d, b
    ld h, c
    ld c, l
    ld h, b
    ld h, l
    ld d, l
    ld b, c
    nop
    ld e, [hl]
    nop
    ld d, d
    ld b, c
    nop
    ld e, a
    ld h, d
    ld d, h
    ld b, c
    ld h, d
    ld c, d
    ld d, [hl]
    ld d, b
    ld c, l
    ld l, b
    ld [hl], b
    ld [hl], c
    nop
    nop
    ld l, c
    ld [hl], d
    ld [hl], e
    ld h, d
    nop
    ld l, d
    ld [hl], h
    ld [hl], l
    ld h, [hl]
    ld c, d
    ld h, d
    halt
    ld [hl], a
    ld c, l
    ld b, c
    ld [hl], b
    ld [hl], c
    ld d, [hl]
    nop
    ld b, c
    ld [hl], d
    ld [hl], e
    ld d, e
    nop
    ld b, c
    ld [hl], h
    ld [hl], l
    ld d, e
    ld c, d
    ld b, c
    halt
    ld [hl], a
    ld d, a
    ld h, [hl]
    ld b, c
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld b, c
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld b, d
    ld c, l
    ld c, l
    ld d, [hl]
    ld h, l
    ld c, d
    ld c, d
    ld c, d
    ld d, a
    ld bc, $0603
    ld b, $06
    ld bc, $0502
    dec b
    dec b
    ld bc, $0502
    dec b
    dec b
    ld bc, $0402
    inc b
    rlca
    ld d, h
    ld c, l
    ld e, [hl]
    ld c, d
    ld d, a
    ld d, d
    nop
    ld e, [hl]
    ld c, l
    ld e, c
    ld h, d
    ld h, d
    ld e, a
    ld c, d
    ld e, e
    ld h, [hl]
    ld h, [hl]
    ld c, d
    add [hl]
    ld e, e
    ld d, d
    ld b, d
    ld h, b
    nop
    ld d, e
    ld d, l
    ld c, d
    ld e, [hl]
    nop
    ld d, e
    ld d, h
    ld c, l
    ld e, [hl]
    ld h, d
    ld h, d
    ld d, l
    ld c, d
    ld e, [hl]
    ld c, l
    ld h, l
    ld l, b
    ld [hl], b
    ld [hl], c
    ld l, b
    ld [hl], b
    ld l, c
    ld [hl], d
    ld [hl], e
    ld l, c
    ld [hl], d
    ld l, d
    ld [hl], h
    ld [hl], l
    ld l, d
    ld [hl], h
    ld h, d
    halt
    ld [hl], a
    ld h, d
    halt
    ld [hl], c
    ld l, b
    ld [hl], b
    ld [hl], c
    ld l, b
    ld [hl], e
    ld l, c
    ld [hl], d
    ld [hl], e
    ld l, c
    ld [hl], l
    ld l, d
    ld [hl], h
    ld [hl], l
    ld l, d
    ld [hl], a
    ld h, d
    halt
    ld [hl], a
    ld h, d
    ld b, c
    ld l, b
    ld [hl], b
    ld [hl], c
    ld d, [hl]
    ld b, c
    ld l, c
    ld [hl], d
    ld [hl], e
    ld d, e
    ld b, c
    ld l, d
    ld [hl], h
    ld [hl], l
    ld d, e
    ld b, c
    ld h, d
    halt
    ld [hl], a
    ld d, a
    ld a, [bc]
    ld c, $12
    ld c, $0A
    add hl, bc
    dec c
    ld de, $0914
    add hl, bc
    inc c
    db $10
    inc de
    add hl, bc
    ld [$0F0B], sp
    dec bc
    dec d
    rra
    ld a, [hl-]
    nop
    dec sp
    rra
    ld c, [hl]
    nop
    nop
    nop
    ld a, [hl-]
    ld c, [hl]
    jr c, jr_006_512C

    jr c, jr_006_50F4

jr_006_50F4:
    dec b
    add hl, sp
    ld bc, $0139
    inc b
    inc b
    inc b
    dec d
    inc e
    nop
    ld a, [hl-]
    dec sp
    ld d, $1F
    inc d
    dec sp
    ld bc, $4F16
    ld de, $1C0F
    ld d, $4F
    rra
    rra
    nop
    ld d, $04
    ld c, [hl]
    ld a, [hl-]
    ld a, [hl-]
    ld d, $20
    ld c, [hl]
    nop
    dec a
    rla
    jr c, jr_006_512C

    rrca
    inc a
    ld bc, $3F39
    ccf
    inc b
    inc b
    ld [$3E3E], sp
    dec h
    ld [hl+], a
    ld c, a
    rrca

jr_006_512C:
    dec d
    ld b, h
    ld b, l
    inc c
    inc e
    ld d, $42
    ld b, e
    rrca
    inc e
    ld d, $1F
    inc b
    ld d, c
    inc e
    ld d, $00
    nop
    ld b, [hl]
    inc e
    rla
    nop
    daa
    ld d, b
    inc e
    ld bc, $0101
    add hl, sp
    inc b
    inc b
    inc b
    inc b
    inc b
    ld a, [hl-]
    dec sp
    nop
    dec sp
    dec sp
    nop
    nop
    ld bc, $0101
    dec c
    rrca
    inc e
    inc e
    inc e
    inc b
    inc b
    inc b
    inc b
    inc b
    nop
    nop
    nop
    ld a, [hl-]
    ld a, [hl-]
    nop
    ld a, [hl-]
    ld [de], a
    inc de
    inc de
    db $10
    rrca
    ld de, $1111
    inc b
    inc b
    inc b
    inc b
    inc b
    jr nz, jr_006_5198

    jr nz, jr_006_519A

    ld bc, $3D3D
    jr c, jr_006_51BC

    ld e, $3C
    inc a
    add hl, sp
    inc a
    ld bc, $5104
    inc b
    inc e
    inc b
    ld b, a
    ld c, b
    ld b, a
    inc e
    ld a, [hl-]
    jr nc, jr_006_51E1

    jr nc, @+$32

    nop
    ld bc, $0139
    dec c

jr_006_5198:
    ld c, $04

jr_006_519A:
    inc b
    inc b
    inc b
    inc e
    jr c, jr_006_51DA

    jr c, jr_006_51A2

jr_006_51A2:
    rra
    ld c, d
    scf
    ld c, h
    nop
    add hl, hl
    inc e
    ld bc, $0139
    rrca
    inc b
    inc b
    inc b
    inc b
    ld a, [hl+]
    ld a, [hl-]
    dec sp
    dec sp
    nop
    dec hl
    nop
    dec sp
    dec sp
    dec sp
    ld c, a

jr_006_51BC:
    rrca
    ld bc, $0101
    rrca
    inc e
    jr z, jr_006_51C4

jr_006_51C4:
    inc b
    rra
    rra
    nop
    dec h
    nop
    nop
    add hl, bc
    ld hl, $3030
    inc l
    dec b
    ld bc, $0101
    ld a, [hl+]
    dec l
    inc b
    rra
    inc b
    rra

jr_006_51DA:
    ld l, $24
    ld bc, $0000
    add hl, bc
    nop

jr_006_51E1:
    nop
    ld bc, $1C0F
    nop
    daa
    inc e
    inc e
    rrca
    jr nc, jr_006_51EC

jr_006_51EC:
    dec [hl]
    inc e
    rra
    nop
    dec h
    nop
    inc e
    dec l
    nop
    daa
    jr nc, jr_006_5204

    dec l
    ld bc, $0101
    ld b, $1F
    rra
    inc b
    ccf
    ld d, c
    nop
    dec sp

jr_006_5204:
    dec sp
    ld a, $4D
    rrca
    ld bc, $3625
    ld [hl], $1C
    inc e
    dec c
    ld bc, $0701
    inc b
    inc b
    inc b
    inc b
    nop
    nop
    nop
    inc h
    scf
    rrca
    nop
    nop
    ld [hl+], a
    nop
    inc e
    db $10
    rrca
    db $10
    rrca
    rlca
    inc b
    rra
    inc b
    ld [$004E], sp
    nop
    nop
    ld c, a
    ld c, [hl]
    inc b
    jr nc, jr_006_5263

    rrca
    ld a, [bc]
    inc [hl]
    nop
    nop
    inc e
    ccf
    ccf
    ld d, c
    ccf
    inc e
    ld a, $3E
    ld c, l
    ld a, $1C
    ld [hl], $36
    ld [hl], $36
    rra
    ld bc, $0101
    ld bc, $0401
    inc b
    inc b
    inc b
    inc c
    inc bc
    inc bc
    inc bc
    ld [bc], a
    ld c, a
    dec [hl]
    dec [hl]
    ld [bc], a
    nop
    inc c
    ld bc, $0101
    dec c
    rrca
    inc b
    inc b

jr_006_5263:
    inc b
    inc b
    inc e
    scf
    ld hl, $0000
    rra
    nop
    dec h
    nop
    nop
    add hl, hl
    rrca
    rrca
    db $10
    rrca
    inc e
    rra
    inc e
    inc b
    inc b
    inc b
    nop
    ld e, $35
    inc de
    nop
    nop
    nop
    nop
    nop
    daa
    rrca
    rrca
    rrca
    ld bc, $0401
    inc b
    inc b
    inc b
    inc e
    dec [hl]
    dec [hl]
    dec [hl]
    dec [hl]
    rra
    ld [hl+], a
    dec a
    nop
    dec a
    nop
    ld bc, $013C
    inc a
    rrca
    inc b
    ccf
    inc b
    ccf
    rra
    ld a, [hl-]
    ld a, $3A
    ld a, $4F
    nop
    inc b
    dec sp
    inc b
    ld c, a
    rrca
    db $10
    rrca
    db $10
    rrca

    db $22, $00, $00, $00, $21, $00, $00, $00, $22, $00, $00, $00, $21, $00, $00, $00
    db $1A, $1F, $00, $00, $1B, $20, $00, $00, $1C, $1D, $00, $00, $1B, $20, $00, $00
    db $1A, $1D, $1F, $00, $1B, $1E, $20, $00, $1C, $1D, $1D, $00, $1B, $1E, $20, $00

    nop
    ld a, [de]
    dec e
    rra
    nop
    dec de
    ld e, $20
    nop
    inc e
    dec e
    dec e
    nop
    dec de
    ld e, $20
    nop
    nop
    ld a, [de]
    rra
    nop
    nop
    dec de
    jr nz, jr_006_52FA

jr_006_52FA:
    nop
    inc e
    dec e
    nop
    nop
    dec de
    jr nz, jr_006_5302

jr_006_5302:
    nop
    nop
    ld [hl+], a
    nop
    nop
    nop
    ld hl, $0000
    nop
    ld [hl+], a
    nop
    nop
    nop
    db $21

    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $7C, $71, $71, $71, $7D, $5C, $5D, $5C, $7E, $70, $70, $70, $00, $6C, $6D, $6C
    db $71, $71, $71, $71, $5C, $5D, $5C, $5D, $70, $70, $70, $70, $6C, $6D, $6C, $6D
    db $71, $71, $71, $71, $5C, $5D, $5C, $5D, $70, $70, $70, $70, $6C, $30, $31, $6C
    db $71, $71, $71, $79, $5C, $5D, $5C, $7A, $70, $70, $70, $7B, $6C, $6D, $6C, $00
    db $00, $40, $41, $00, $00, $50, $51, $00, $00, $40, $41, $00, $00, $50, $51, $00
    db $00, $60, $61, $00, $32, $33, $34, $35, $42, $43, $44, $00, $52, $53, $54, $00
    db $00, $56, $57, $00, $65, $66, $67, $00, $75, $76, $77, $78, $47, $47, $45, $46
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $5A, $5B, $00, $00, $6A, $6B, $00
    db $63, $64, $63, $64, $73, $74, $73, $74, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $63, $64, $63, $64, $73, $74, $73, $74, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $47, $47, $45, $46
    db $00, $00, $00, $00, $00, $00, $00, $00, $47, $47, $45, $46, $47, $36, $37, $47
    db $00, $00, $00, $00, $45, $46, $47, $47, $47, $36, $37, $47, $37, $36, $37, $47
    db $45, $46, $45, $46, $47, $36, $37, $47, $47, $36, $37, $47, $37, $36, $37, $36
    db $47, $36, $37, $47, $47, $36, $37, $47, $47, $36, $37, $36, $37, $36, $37, $47
    db $47, $47, $45, $46, $47, $36, $37, $47, $47, $36, $37, $47, $47, $36, $37, $47
    db $47, $36, $37, $36, $37, $36, $37, $47, $37, $36, $37, $36, $45, $46, $45, $46
    db $00, $00, $00, $00, $00, $00, $00, $00, $47, $47, $45, $46, $37, $36, $37, $36
    db $37, $36, $37, $36, $45, $46, $45, $46, $00, $00, $00, $00, $00, $00, $00, $00
    db $37, $36, $37, $47, $37, $36, $37, $36, $45, $46, $45, $46, $00, $00, $00, $00
    db $00, $00, $2A, $2B, $00, $00, $3A, $3B, $00, $00, $4A, $4B, $47, $47, $45, $46
    db $28, $29, $00, $00, $38, $39, $00, $00, $48, $49, $00, $00, $47, $47, $45, $46
    db $2A, $2B, $28, $29, $3A, $3B, $38, $39, $4A, $4B, $48, $49, $47, $47, $45, $46
    db $25, $26, $3D, $3D, $25, $26, $3D, $3D, $25, $26, $4C, $4D, $47, $47, $45, $46
    db $25, $26, $3D, $3D, $25, $26, $3D, $3D, $25, $26, $3D, $3D, $25, $26, $3D, $3D
    db $00, $00, $00, $00, $5E, $5F, $00, $00, $6E, $6F, $2C, $2D, $45, $46, $3C, $3D
    db $3E, $3E, $25, $26, $3E, $3E, $25, $26, $4E, $4F, $25, $26, $47, $47, $45, $46
    db $3E, $3E, $25, $26, $3E, $3E, $25, $26, $3E, $3E, $25, $26, $3E, $3E, $25, $26
    db $00, $00, $00, $00, $00, $00, $5E, $5F, $2E, $2F, $6E, $6F, $3E, $3F, $45, $46
    db $45, $46, $00, $00, $45, $46, $00, $00, $45, $46, $00, $00, $45, $46, $00, $00
    db $00, $00, $45, $46, $00, $00, $45, $46, $00, $00, $45, $46, $00, $00, $45, $46

    ld b, l
    ld b, [hl]
    nop
    nop
    ld b, l
    ld b, [hl]
    nop
    nop
    ld b, l
    ld b, [hl]
    nop
    nop
    ld b, l
    ld b, [hl]
    ld d, l
    ld d, l

    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $55, $55, $55, $55
    db $00, $00, $45, $46, $00, $00, $45, $46, $00, $00, $45, $46, $55, $55, $45, $46
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $47, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $47
    db $45, $46, $45, $46, $45, $46, $45, $46, $45, $46, $45, $46, $45, $46, $45, $46
    db $45, $46, $45, $46, $45, $46, $00, $00, $45, $46, $00, $00, $45, $46, $00, $00
    db $45, $46, $45, $46, $00, $00, $45, $46, $00, $00, $45, $46, $00, $00, $45, $46
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $45, $46, $45, $46
    db $00, $00, $00, $00, $45, $46, $45, $46, $00, $00, $00, $00, $00, $00, $00, $00
    db $45, $46, $45, $46, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $45, $46, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $45, $46

    ld b, l
    ld b, [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, l
    ld b, [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

    db $00, $00, $22, $00, $00, $00, $21, $00, $00, $00, $22, $00, $00, $00, $21, $00
    db $27, $27, $27, $00, $27, $27, $27, $27, $27, $27, $27, $00, $47, $47, $45, $46
    db $00, $00, $27, $27, $00, $00, $27, $27, $00, $27, $00, $27, $47, $47, $45, $46
    db $00, $00, $00, $00, $00, $27, $00, $27, $00, $27, $27, $27, $00, $27, $45, $46
    db $00, $00, $00, $00, $00, $00, $00, $27, $00, $27, $45, $46, $00, $00, $27, $27
    db $00, $00, $27, $00, $00, $27, $45, $46, $00, $27, $27, $27, $00, $27, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $45, $46, $00, $00, $27, $27, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $45, $46, $45, $46, $27, $27, $00, $27
    db $00, $00, $00, $00, $45, $46, $45, $46, $27, $27, $27, $27, $27, $27, $00, $00
    db $45, $46, $45, $46, $27, $27, $00, $27, $00, $27, $27, $00, $00, $27, $27, $27
    db $00, $27, $00, $00, $00, $00, $27, $00, $27, $27, $27, $00, $00, $27, $00, $27
    db $00, $00, $00, $00, $00, $00, $62, $62, $00, $00, $72, $72, $00, $00, $45, $46
    db $62, $62, $62, $62, $72, $72, $72, $72, $45, $46, $45, $46, $00, $00, $00, $00
    db $00, $00, $00, $00, $62, $62, $00, $00, $72, $72, $00, $00, $45, $46, $00, $00
    db $47, $45, $46, $47, $00, $23, $00, $00, $00, $23, $00, $00, $00, $23, $00, $00
    db $00, $23, $00, $00, $00, $23, $00, $00, $00, $23, $00, $00, $00, $23, $00, $00
    db $00, $23, $00, $00, $00, $23, $00, $00, $00, $24, $00, $00, $00, $00, $00, $00
    db $58, $59, $00, $00, $68, $69, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $58, $59, $00, $00, $68, $69, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $58, $59, $00, $00, $68, $69, $00, $00, $00, $00, $00, $00, $00, $00

    nop
    ld [hl+], a
    nop
    nop
    nop
    ld hl, $0000
    nop
    ld [hl+], a
    nop
    nop
    nop
    ld hl, $0000

    db $27, $28, $27, $28, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $27, $28, $27, $28
    db $00, $00, $00, $00, $35, $38, $00, $00, $33, $34, $00, $00, $43, $44, $00, $00
    db $33, $34, $00, $00, $43, $44, $00, $00, $25, $26, $00, $00, $00, $00, $00, $00
    db $00, $00, $31, $32, $00, $00, $31, $32, $00, $00, $41, $42, $27, $28, $27, $28

    ld sp, $0032
    nop
    ld sp, $0032
    nop
    ld b, c
    ld b, d
    nop
    nop
    daa
    jr z, @+$29

    jr z, @+$45

    ld b, h
    ld b, e
    ld b, h
    inc sp
    inc [hl]
    inc sp
    inc [hl]
    ld b, e
    ld b, h
    ld b, e
    ld b, h
    daa
    jr z, @+$29

    jr z, jr_006_5805

    ld b, h
    ld b, e
    ld b, h
    inc sp
    inc [hl]
    inc sp
    inc [hl]
    ld b, e
    ld b, h
    ld b, e
    ld b, h
    inc sp
    inc [hl]
    inc sp
    inc [hl]
    nop
    nop
    nop
    nop
    dec [hl]
    ld [hl], $37
    jr c, jr_006_581F

    ld b, [hl]
    ld b, a
    ld c, b
    inc sp
    inc [hl]
    inc sp
    inc [hl]

    db $27, $28, $27, $28, $00, $00, $41, $42, $00, $00, $31, $32, $00, $00, $31, $32

    daa
    jr z, jr_006_581B

    jr z, jr_006_5837

    ld b, d
    nop
    nop
    ld sp, $0032
    nop
    ld sp, $0032
    nop
    nop
    nop
    nop
    nop

jr_006_5805:
    nop
    nop
    dec h
    ld h, $00
    dec h
    ld h, $00
    dec h
    ld h, $00
    nop
    nop
    nop
    nop
    nop
    dec h
    ld h, $00
    nop
    nop
    dec h

jr_006_581B:
    ld h, $00
    nop
    nop

jr_006_581F:
    dec h
    ld h, $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nc, jr_006_585B

    jr nc, @+$32

    ld b, b
    ld b, b
    ld b, b
    ld b, b
    nop
    nop
    nop
    nop
    jr nc, @+$32

jr_006_5837:
    jr nc, jr_006_5869

    ld b, b
    ld b, b
    ld b, b
    ld b, b
    daa
    jr z, @+$29

    jr z, @+$43

    ld b, d
    nop
    nop
    ld sp, $0032
    nop
    ld sp, $0032
    nop
    ld sp, $0032
    nop
    nop
    nop
    ld b, c
    ld b, d
    nop
    nop
    ld sp, $0032
    nop

jr_006_585B:
    ld sp, $0032
    nop
    ld sp, $2532
    ld h, $27
    jr z, @+$27

    ld h, $00
    nop

jr_006_5869:
    dec h
    ld h, $00
    nop
    dec h
    ld h, $00
    nop
    daa
    jr z, @+$27

    ld h, $00
    nop
    dec h
    ld h, $00
    nop
    dec h
    ld h, $00
    nop
    dec h
    ld h, $25
    ld h, $00
    nop
    dec h
    ld h, $00
    nop
    dec h
    ld h, $00
    nop
    dec h
    ld h, $00
    nop
    nop
    nop
    dec h
    ld h, $00
    nop
    dec h
    ld h, $00
    nop
    dec h
    ld h, $00
    nop
    dec h
    ld h, $25
    ld h, $25
    ld h, $25
    ld h, $25
    ld h, $25
    ld h, $25
    ld h, $25
    ld h, $25
    ld h, $29
    ld a, [hl+]
    nop
    nop
    add hl, hl
    ld a, [hl+]
    nop
    nop
    add hl, hl
    ld a, [hl+]
    nop
    nop
    dec a
    dec a
    dec a
    ld e, e
    nop
    add hl, hl
    ld a, [hl+]
    nop
    nop
    add hl, hl
    ld a, [hl+]
    nop
    nop
    add hl, hl
    ld a, [hl+]
    nop
    dec a
    dec a
    dec a
    dec a
    nop
    nop
    add hl, hl
    ld a, [hl+]
    nop
    nop
    add hl, hl
    ld a, [hl+]
    nop
    nop
    add hl, hl
    ld a, [hl+]
    dec a
    dec a
    dec a
    dec a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec a
    dec a
    dec a
    dec a
    add hl, hl
    ld a, [hl+]
    nop
    nop
    add hl, hl
    ld a, [hl+]
    nop
    nop
    add hl, hl
    ld a, [hl+]
    nop
    nop
    add hl, hl
    ld a, [hl+]
    nop
    nop
    nop
    add hl, hl
    ld a, [hl+]
    nop
    nop
    add hl, hl
    ld a, [hl+]
    nop
    nop
    add hl, hl
    ld a, [hl+]
    nop
    nop
    add hl, hl
    ld a, [hl+]
    nop
    nop
    nop
    add hl, hl
    ld a, [hl+]
    nop
    nop
    add hl, hl
    ld a, [hl+]
    nop
    nop
    add hl, hl
    ld a, [hl+]
    nop
    nop
    add hl, hl
    ld a, [hl+]
    dec h
    ld h, $29
    ld a, [hl+]
    dec h
    ld h, $29
    ld a, [hl+]
    dec h
    ld h, $29
    ld a, [hl+]
    dec h
    ld h, $29
    ld a, [hl+]
    add hl, hl
    ld a, [hl+]
    dec h
    ld h, $29
    ld a, [hl+]
    dec h
    ld h, $29
    ld a, [hl+]
    dec h
    ld h, $29
    ld a, [hl+]
    dec h
    ld h, $25
    ld h, $27
    jr z, jr_006_596B

    ld h, $29
    ld a, [hl+]
    dec h
    ld h, $29
    ld a, [hl+]
    dec h
    ld h, $29
    ld a, [hl+]
    daa
    jr z, jr_006_5979

    ld h, $29
    ld a, [hl+]
    dec h
    ld h, $29
    ld a, [hl+]
    dec h
    ld h, $29
    ld a, [hl+]
    dec h
    ld h, $00
    nop
    nop
    nop
    nop
    nop
    dec [hl]
    jr c, jr_006_596A

jr_006_596A:
    nop

jr_006_596B:
    inc sp
    inc [hl]
    nop
    nop
    ld b, e
    ld b, h
    nop
    nop
    inc sp
    inc [hl]
    nop
    nop
    ld b, e
    ld b, h

jr_006_5979:
    nop
    nop
    dec h
    ld h, $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    daa
    jr z, jr_006_59B1

    jr z, jr_006_59C9

    dec a
    dec a
    dec a
    dec a
    dec a
    daa
    jr z, jr_006_59BB

    jr z, jr_006_59D3

    dec a
    dec a
    dec a
    dec a
    dec a
    dec a
    dec a
    dec a
    dec a
    dec a
    dec a
    dec a
    dec a
    dec a
    dec a
    dec a
    dec a
    dec a
    dec a
    dec a
    dec a
    dec a
    dec a
    dec a
    dec a
    dec a
    dec a

jr_006_59B1:
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    daa
    jr z, jr_006_59DF

    jr z, jr_006_59BA

jr_006_59BA:
    nop

jr_006_59BB:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_006_59C9:
    nop
    nop
    nop
    nop
    jr nc, jr_006_59FF

    jr nc, jr_006_5A01

    jr nc, jr_006_5A03

jr_006_59D3:
    nop
    nop
    ld b, b
    ld b, b
    nop
    nop
    daa
    jr z, jr_006_59DC

jr_006_59DC:
    nop
    nop
    nop

jr_006_59DF:
    nop
    nop
    dec h
    ld h, $00
    nop
    dec h
    ld h, $00
    nop
    dec h
    ld h, $00
    nop
    daa
    jr z, jr_006_5A17

    jr z, jr_006_59F2

jr_006_59F2:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, d
    ld c, d

jr_006_59FF:
    ld c, d
    ld c, d

jr_006_5A01:
    nop
    inc hl

jr_006_5A03:
    nop
    nop
    nop
    inc hl
    nop
    nop
    nop
    inc hl
    nop
    nop
    nop
    inc hl
    nop
    nop
    nop
    inc hl
    nop
    nop
    nop
    inc hl

jr_006_5A17:
    nop
    nop
    nop
    inc h
    nop
    nop
    nop
    nop
    nop
    nop
    daa
    jr z, @+$29

    jr z, jr_006_5A26

jr_006_5A26:
    nop
    nop
    ld [hl], e
    nop
    nop
    nop
    ld a, b
    nop
    nop
    nop
    ld a, b
    nop
    nop
    nop
    ld a, b
    nop
    nop
    nop
    ld a, b
    nop
    nop
    nop
    ld a, b
    nop
    nop
    nop
    ld a, c
    daa
    jr z, jr_006_5A6B

    jr z, jr_006_5ABA

    ld [hl], l
    ld [hl], l
    halt
    dec [hl]
    ld [hl], $37
    jr c, jr_006_5A93

    ld b, [hl]
    ld b, a
    ld c, b
    daa
    jr z, jr_006_5A7B

    jr z, jr_006_5ACD

    nop
    nop
    nop
    ld a, b
    nop
    nop
    nop
    ld a, b
    nop
    nop
    nop
    ld a, b
    nop
    nop
    nop
    ld a, b
    nop
    nop
    nop
    ld a, b
    nop

jr_006_5A6B:
    nop
    nop
    ld a, b
    nop
    nop
    nop
    ld a, b
    nop
    nop
    nop
    ld a, b
    nop
    nop
    nop
    ld a, b
    nop

jr_006_5A7B:
    nop
    nop
    ld a, c
    nop
    nop
    nop
    ld h, [hl]
    ld h, a
    nop
    nop
    ld h, [hl]
    ld h, a
    nop
    nop
    ld h, [hl]
    ld h, a
    nop
    nop
    ld h, [hl]
    ld h, a
    nop
    nop
    ld h, [hl]
    ld h, a

jr_006_5A93:
    dec h
    ld h, $66
    ld h, a
    nop
    nop
    ld h, [hl]
    ld h, a
    nop
    nop
    ld h, [hl]
    ld h, a
    nop
    nop
    ld h, [hl]
    ld h, a
    nop
    nop
    ld h, [hl]
    ld h, a
    nop
    nop
    ld h, [hl]
    ld h, a
    nop
    nop
    dec a
    dec a
    dec a
    dec a
    ld e, e
    dec h
    ld h, $5B
    nop
    inc hl
    nop
    nop
    nop

jr_006_5ABA:
    inc hl
    nop
    nop
    nop
    inc hl
    nop
    nop
    dec h
    ld h, $66
    ld h, a
    nop
    nop
    ld h, [hl]
    ld h, a
    nop
    nop
    ld h, [hl]
    ld h, a

jr_006_5ACD:
    nop
    nop
    ld h, [hl]
    ld h, a
    nop
    nop
    ld h, [hl]
    ld h, a
    nop
    nop
    ld h, [hl]
    ld h, a
    nop
    nop
    ld h, [hl]
    ld h, a
    nop
    nop
    ld h, [hl]
    ld h, a
    dec h
    ld h, $66
    ld h, a
    dec h
    ld h, $66
    ld h, a
    dec h
    ld h, $66
    ld h, a
    dec h
    ld h, $66
    ld h, a
    add hl, hl
    ld a, [hl+]
    add hl, hl
    ld a, [hl+]
    add hl, hl
    ld a, [hl+]
    add hl, hl
    ld a, [hl+]
    add hl, hl
    ld a, [hl+]
    add hl, hl
    ld a, [hl+]
    add hl, hl
    ld a, [hl+]
    add hl, hl
    ld a, [hl+]
    dec h
    ld h, $29
    ld a, [hl+]
    add hl, hl
    ld a, [hl+]
    add hl, hl
    ld a, [hl+]
    add hl, hl
    ld a, [hl+]
    add hl, hl
    ld a, [hl+]
    add hl, hl
    ld a, [hl+]
    add hl, hl
    ld a, [hl+]
    nop
    nop
    dec h
    ld h, $00
    nop
    add hl, hl
    ld a, [hl+]
    nop
    nop
    add hl, hl
    ld a, [hl+]
    nop
    nop
    add hl, hl
    ld a, [hl+]
    dec h
    ld h, $00
    nop
    add hl, hl
    ld a, [hl+]
    nop
    nop
    add hl, hl
    ld a, [hl+]
    nop
    nop
    add hl, hl
    ld a, [hl+]
    nop
    nop
    dec h
    ld h, $25
    ld h, $00
    nop
    ld h, [hl]
    ld h, a
    nop
    nop
    ld h, [hl]
    ld h, a
    nop
    nop
    ld h, [hl]
    ld h, a
    nop
    nop
    ld h, [hl]
    ld h, a
    nop
    nop
    ld h, [hl]
    ld h, a
    nop
    nop
    ld h, [hl]
    ld h, a
    nop
    nop
    dec h
    ld h, $5E
    ld e, a
    nop
    nop
    ld l, [hl]
    ld l, a
    nop
    nop
    nop
    nop
    ld e, [hl]
    ld e, a
    nop
    nop
    ld l, [hl]
    ld l, a
    nop
    nop
    ld e, [hl]
    ld e, a
    nop
    nop
    ld l, [hl]
    ld l, a
    nop
    nop
    ld e, [hl]
    ld e, a
    nop
    nop
    ld l, [hl]
    ld l, a
    nop
    nop
    nop
    nop
    jr nc, jr_006_5BA7

    jr nc, jr_006_5BA9

    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld c, [hl]
    ld c, a
    ld c, [hl]
    ld c, a
    ld c, h
    ld c, l
    nop
    nop
    ld e, h
    ld e, l
    nop
    nop
    ld l, h
    ld l, l
    nop
    nop
    nop
    nop
    nop
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
    inc a
    inc a
    dec h
    ld h, $25
    ld h, $2B
    cpl
    cpl
    cpl
    dec hl
    ccf

jr_006_5BA7:
    dec l
    dec l

jr_006_5BA9:
    dec hl
    dec l
    dec l
    ld l, $2C
    inc l
    inc l
    inc l
    cpl
    ld l, $2D
    dec l
    cpl
    cpl
    dec l
    dec l
    cpl
    dec l
    dec l
    ld a, $2D
    dec l
    dec l
    dec l
    dec hl
    ld l, $2D
    dec l
    dec hl
    ld l, $2F
    cpl
    dec hl
    cpl
    ld l, $3E
    dec hl
    dec l
    dec l
    dec l
    dec hl
    dec l
    dec l
    dec hl
    dec hl
    dec l
    dec l
    dec hl
    dec hl
    dec l
    ld a, $2B
    inc l
    inc l
    inc l
    inc l
    cpl
    ld l, $3E
    dec hl
    dec l
    dec l
    dec l
    dec hl
    ld l, $2F
    cpl
    dec hl
    ld l, $2D
    dec l
    dec hl
    ccf
    dec l
    dec l
    dec hl
    cpl
    cpl
    cpl
    dec hl
    ccf
    dec l
    dec l
    dec hl
    inc l
    inc l
    inc l
    inc l
    dec l
    dec l
    dec l
    dec l
    cpl
    dec l
    dec l
    ld a, $2E
    cpl
    cpl
    dec l
    inc l
    inc l
    inc l
    inc l
    nop
    nop
    ld e, [hl]
    ld e, a
    ld c, h
    ld c, l
    ld l, [hl]
    ld l, a
    ld e, h
    ld e, l
    ld e, [hl]
    ld e, a
    ld l, h
    ld l, l
    ld l, [hl]
    ld l, a
    nop
    nop
    ld e, [hl]
    ld e, a
    nop
    nop
    ld l, [hl]
    ld l, a
    ld e, [hl]
    ld e, a
    nop
    nop
    ld l, [hl]
    ld l, a
    nop
    nop
    nop
    nop
    add hl, sp
    ld a, [hl-]
    nop
    nop
    ld c, c
    nop
    dec h
    ld h, $25
    ld h, $3D
    dec a
    dec a
    dec a
    ld a, [hl-]
    ld a, [hl-]
    ld a, [hl-]
    ld a, [hl-]
    nop
    nop
    nop
    nop
    dec h
    ld h, $25
    ld h, $3D
    dec a
    dec a
    dec a
    ld a, [hl-]
    dec sp
    nop
    nop
    nop
    ld c, e
    nop
    nop
    dec h
    ld h, $25
    ld h, $3D
    dec a
    dec a
    dec a
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
    nop
    ld [hl], b
    nop
    ld [hl], d
    nop
    ld [hl], d
    ld d, a
    ld d, a
    ld d, a
    ld e, b
    nop
    nop
    ld d, a
    ld l, b
    nop
    nop
    nop
    ld l, b
    nop
    nop
    nop
    ld l, b
    ld d, l
    ld d, [hl]
    ld d, [hl]
    ld d, [hl]
    ld h, l
    ld d, [hl]
    nop
    nop
    ld h, l
    nop
    nop
    nop
    ld h, l
    nop
    nop
    nop
    ld d, b
    ld d, c
    ld d, c
    ld d, d
    ld d, b
    ld d, c
    ld d, c
    ld d, d
    ld h, b
    ld h, c
    ld h, c
    ld h, d
    dec h
    ld h, $25
    ld h, $50
    ld d, c
    ld d, c
    ld d, d
    ld d, b
    ld d, c
    ld d, c
    ld d, d
    ld d, b
    ld d, c
    ld d, c
    ld d, d
    ld d, b
    ld d, c
    ld d, c
    ld d, d
    nop
    ld [hl], b
    nop
    ld a, h
    nop
    ld [hl], d
    ld a, h
    ld a, l
    ld a, h
    ld a, l
    ld a, l
    ld a, l
    dec h
    ld h, $25
    ld h, $7D
    ld a, l
    ld a, l
    ld a, l
    ld a, l
    ld a, l
    ld a, l
    ld a, l
    ld a, l
    ld a, l
    ld a, l
    ld a, l
    dec h
    ld h, $25
    ld h, $7E
    nop
    ld [hl], b
    nop
    ld a, l
    ld a, [hl]
    ld [hl], d
    nop
    ld a, l
    ld a, l
    ld a, l
    ld a, [hl]
    dec h
    ld h, $25
    ld h, $00
    ld [hl], b
    nop
    ld a, b
    ld d, e
    ld [hl], d
    nop
    ld a, c
    ld h, e
    ld d, h
    ld d, h
    ld d, h
    ld h, e
    ld h, h
    ld h, h
    ld h, h
    inc sp
    inc [hl]
    inc sp
    inc [hl]
    ld b, e
    ld b, h
    ld b, e
    ld b, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld h, h
    ld h, h
    ld h, h
    ld h, h
    ld a, b
    nop
    ld [hl], b
    nop
    ld a, c
    nop
    ld [hl], d
    ld d, e
    ld d, h
    ld d, h
    ld d, h
    ld h, e
    ld h, h
    ld h, h
    ld h, h
    ld h, e
    inc sp
    inc [hl]
    inc sp
    inc [hl]
    ld b, e
    ld b, h
    ld b, e
    ld b, h
    inc sp
    inc [hl]
    inc sp
    inc [hl]
    ld b, e
    ld b, h
    ld b, e
    ld b, h
    nop
    nop
    nop
    ld a, b
    nop
    nop
    nop
    ld a, b
    nop
    nop
    nop
    ld a, b
    nop
    nop
    nop
    ld a, b

    db $00, $00, $31, $32, $00, $00, $31, $32, $00, $00, $31, $32, $00, $00, $31, $32

    ld sp, $0032
    nop
    ld sp, $0032
    nop
    ld sp, $0032
    nop
    ld sp, $0032
    nop
    daa
    jr z, @+$29

    jr z, jr_006_5D56

jr_006_5D56:
    add hl, hl
    ld a, [hl+]
    nop
    nop
    add hl, hl
    ld a, [hl+]
    nop
    nop
    add hl, hl
    ld a, [hl+]
    nop
    nop
    nop
    ld sp, $0032
    nop
    ld sp, $0032
    nop
    ld sp, $0032
    nop
    ld b, c
    ld b, d
    ld sp, $0032
    nop
    ld sp, $0032
    nop
    ld sp, $0032
    nop
    ld b, c
    ld b, d
    nop
    nop
    nop
    nop
    nop
    nop
    daa
    jr z, jr_006_5D88

jr_006_5D88:
    nop
    dec a
    dec a
    daa
    jr z, jr_006_5DCB

    dec a
    dec a
    dec a
    add hl, hl
    ld a, [hl+]
    nop
    nop
    add hl, hl
    ld a, [hl+]
    nop
    nop
    add hl, hl
    ld a, [hl+]
    nop
    nop
    add hl, hl
    ld a, [hl+]
    dec h
    ld h, $25
    ld h, $29
    ld a, [hl+]
    nop
    nop
    add hl, hl
    ld a, [hl+]
    nop
    nop
    add hl, hl
    ld a, [hl+]
    nop
    nop
    add hl, hl
    ld a, [hl+]
    add hl, hl
    ld a, [hl+]
    dec h
    ld h, $29
    ld a, [hl+]
    nop
    nop
    add hl, hl
    ld a, [hl+]
    nop
    nop
    add hl, hl
    ld a, [hl+]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_006_5DCB:
    nop
    nop
    inc a
    inc a
    inc a
    inc a
    dec h
    ld h, $25
    ld h, $5B
    dec a
    dec a
    ld e, e
    ld e, e
    dec a
    dec a
    ld e, e
    ld e, e
    dec a
    dec a
    ld e, e
    ld e, e
    dec a
    dec a
    ld e, e
    ld e, e
    dec a
    dec a
    ld e, e
    ld e, e
    dec a
    dec a
    ld e, e
    dec h
    ld h, $25
    ld h, $25
    ld h, $3D
    dec a
    ld e, e
    dec a
    dec a
    dec a
    ld e, e
    dec a
    dec a
    dec a
    ld e, e
    dec a
    dec a
    dec a
    daa
    jr z, jr_006_5E04

jr_006_5E04:
    nop
    dec a
    dec a
    daa
    jr z, jr_006_5E47

    dec a
    dec a
    dec a
    dec a
    dec a
    dec a
    dec a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    daa
    jr z, jr_006_5E1C

jr_006_5E1C:
    nop
    dec a
    dec a
    daa
    jr z, jr_006_5E22

jr_006_5E22:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    daa
    jr z, jr_006_5E55

    jr z, jr_006_5E6D

    dec a
    nop
    nop
    daa
    jr z, @+$29

    jr z, jr_006_5E75

    dec a
    dec a
    dec a
    dec a
    dec a
    dec a
    dec a
    dec a
    dec a
    ld a, b
    ld [hl], e
    ld [hl], h
    ld [hl], l
    ld a, b
    ld a, b

jr_006_5E47:
    dec hl
    dec l
    ld a, b
    ld a, b
    dec hl
    dec l
    ld a, b
    ld a, b
    dec hl
    dec l
    ld a, b
    ld a, b
    dec hl
    dec l

jr_006_5E55:
    ld a, b
    ld a, b
    dec hl
    cpl
    ld a, b
    ld a, b
    dec hl
    ld l, $78
    ld a, b
    inc l
    inc l
    ld a, b
    ld a, b
    dec hl
    dec l
    ld a, b
    ld a, c
    dec hl
    dec l
    ld a, c
    nop
    dec hl
    dec l

jr_006_5E6D:
    daa
    jr z, jr_006_5E97

    jr z, jr_006_5E9F

    dec hl
    ld a, b
    ld a, b

jr_006_5E75:
    dec l
    dec hl
    ld a, c
    ld a, b
    dec l
    dec hl
    nop
    ld a, c
    daa
    jr z, jr_006_5EA7

    jr z, jr_006_5EAF

    dec hl
    ld a, b
    ld a, b
    cpl
    dec hl
    ld a, b
    ld a, b
    ld l, $2B
    ld a, b
    ld a, b
    inc l
    inc l
    ld a, b
    ld a, b
    ld [hl], l
    halt
    ld [hl], a
    ld a, b
    dec l
    dec hl

jr_006_5E97:
    ld a, b
    ld a, b
    dec l
    dec hl
    ld a, b
    ld a, b
    dec l
    dec hl

jr_006_5E9F:
    ld a, b
    ld a, b
    ld [hl], l
    ld [hl], l
    ld [hl], l
    ld [hl], l
    dec l
    dec l

jr_006_5EA7:
    dec l
    dec l
    ld l, $2E
    cpl
    cpl
    cpl
    cpl

jr_006_5EAF:
    ld l, $3E
    dec l
    dec l
    dec l
    dec l
    cpl
    dec l
    dec l
    ld a, $2E
    cpl
    cpl
    dec l
    daa
    jr z, jr_006_5EE7

    jr z, jr_006_5EC2

jr_006_5EC2:
    nop
    ld h, [hl]
    ld h, a
    nop
    nop
    ld h, [hl]
    ld h, a
    nop
    nop
    ld h, [hl]
    ld h, a
    daa
    jr z, jr_006_5EF7

    jr z, jr_006_5F3D

    ld l, e
    ld l, e
    ld l, e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_006_5EE7:
    nop
    nop
    nop
    nop
    nop
    nop
    dec h
    ld h, $25
    ld h, $00
    nop
    ld h, [hl]
    ld h, a
    nop
    nop

jr_006_5EF7:
    ld h, [hl]
    ld h, a
    nop
    nop
    ld h, [hl]
    ld h, a
    dec h
    ld h, $25
    ld h, $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld e, e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld e, e
    nop
    nop
    ld [hl+], a
    nop
    nop
    nop
    ld hl, $0000
    nop
    ld [hl+], a
    nop
    nop
    nop
    ld hl, $5B00
    dec h
    ld h, $5B
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_006_5F3D:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    xor $EE
    xor $EE
    rst $28
    rst $28
    rst $28
    rst $28
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld sp, $0032
    nop
    ld sp, $0032
    nop
    ld sp, $2532
    ld h, $25
    ld h, $27
    jr z, jr_006_5F9B

    jr z, jr_006_5F76

jr_006_5F76:
    nop
    ld sp, $0032
    nop
    ld sp, $0032
    nop
    ld sp, $0032
    nop
    nop
    nop
    nop
    nop
    daa
    jr z, jr_006_5FB1

    jr z, jr_006_5FC9

    ld e, e
    dec a
    dec a
    dec a
    ld e, e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_006_5F9B:
    nop
    nop
    jr z, jr_006_5FC8

    jr z, jr_006_5FCA

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr z, jr_006_5FD4

    jr z, jr_006_5FD6

    nop
    nop
    nop
    nop

jr_006_5FB1:
    nop
    nop
    nop
    nop
    jr z, jr_006_5FE0

    jr z, jr_006_5FE2

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr z, jr_006_5FEC

    jr z, jr_006_5FEE

    nop
    ld a, e
    nop

jr_006_5FC8:
    ld a, e

jr_006_5FC9:
    nop

jr_006_5FCA:
    ld a, e
    ld a, e
    nop
    ld a, e
    nop
    nop
    ld a, e
    nop
    nop
    nop

jr_006_5FD4:
    daa
    nop

jr_006_5FD6:
    nop
    jr z, jr_006_6002

    nop
    jr z, jr_006_6005

    nop
    jr z, jr_006_6008

    nop

jr_006_5FE0:
    nop
    daa

jr_006_5FE2:
    nop
    nop
    nop
    jr z, @+$2B

    nop
    nop
    nop
    jr z, jr_006_6015

jr_006_5FEC:
    nop
    nop

jr_006_5FEE:
    nop
    jr z, jr_006_601A

    ld a, [hl+]
    nop
    ld a, e
    ld a, e
    ld a, [hl+]
    ld a, e
    ld a, e
    ld a, e
    ld a, [hl+]
    nop
    ld a, e
    nop
    jr z, jr_006_6028

    jr z, jr_006_602A

    nop

jr_006_6002:
    ld a, e
    ld a, e
    ld a, [hl+]

jr_006_6005:
    ld a, e
    ld a, e
    ld a, e

jr_006_6008:
    ld a, [hl+]
    nop
    ld a, e
    ld a, e
    ld a, [hl+]
    jr z, jr_006_6038

    jr z, jr_006_603A

    ld a, [hl+]
    nop
    ld a, e
    ld a, e

jr_006_6015:
    ld a, [hl+]
    ld a, e
    ld a, e
    ld a, e
    ld a, [hl+]

jr_006_601A:
    nop
    ld a, e
    nop
    ld a, [hl+]
    ld a, e
    nop
    ld a, e
    nop
    ld a, e
    ld a, e
    ld a, [hl+]
    ld a, e
    ld a, e
    ld a, e

jr_006_6028:
    ld a, [hl+]
    nop

jr_006_602A:
    nop
    ld a, e
    ld a, [hl+]
    ld a, e
    ld a, e
    ld a, e
    ld a, [hl+]
    ld a, [hl+]
    daa
    jr z, jr_006_605E

    ld a, [hl+]
    ld a, e
    ld a, e

jr_006_6038:
    ld a, e
    ld a, [hl+]

jr_006_603A:
    nop
    ld a, e
    nop
    ld a, [hl+]
    ld a, e
    nop
    ld a, e
    jr z, jr_006_606C

    daa
    ld a, [hl+]
    ld a, e
    ld a, e
    ld a, e
    ld a, [hl+]
    nop
    nop
    ld a, e
    ld a, [hl+]
    ld a, e
    ld a, e
    ld a, e
    ld a, [hl+]
    ld a, [hl+]
    nop
    ld a, e
    ld a, e
    ld a, [hl+]
    ld a, e
    ld a, e
    ld a, e
    ld a, [hl+]
    nop
    ld a, e
    nop
    ld a, [hl+]

jr_006_605E:
    daa
    jr z, jr_006_608A

    nop
    ld a, e
    ld a, e
    ld a, [hl+]
    ld a, e
    ld a, e
    ld a, e
    ld a, [hl+]
    nop
    nop
    ld a, e

jr_006_606C:
    ld a, [hl+]
    jr z, jr_006_6098

    daa
    ld a, [hl+]
    nop
    ld a, e
    ld a, e
    ld a, e
    ld a, e
    ld a, e
    ld a, e
    nop
    nop
    ld a, e
    ld a, e
    ld a, e
    ld a, e
    nop
    ld a, e
    ld a, e
    jr z, jr_006_60AC

    jr z, jr_006_60AE

    ld a, [hl+]
    ld a, e
    ld a, e
    ld a, e
    ld a, [hl+]

jr_006_608A:
    nop
    ld a, e
    nop
    ld a, [hl+]
    ld a, e
    nop
    ld a, e
    jr z, jr_006_60BC

    jr z, jr_006_60BE

    ld a, e
    ld a, e
    ld a, e

jr_006_6098:
    ld a, [hl+]
    nop
    nop
    ld a, e
    ld a, [hl+]
    ld a, e
    ld a, e
    ld a, e
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl-]
    ld [hl], $7B
    ld a, [hl+]
    ld a, e
    dec sp
    nop
    ld a, [hl+]
    ld a, e
    dec sp

jr_006_60AC:
    ld a, e
    ld a, [hl+]

jr_006_60AE:
    ld a, e
    dec sp
    nop
    ld a, [hl+]
    ld a, e
    dec a
    nop
    ld a, [hl+]
    ld a, e
    ccf
    ld a, e
    ld a, [hl+]
    ld a, e
    ccf

jr_006_60BC:
    nop
    ld a, [hl+]

jr_006_60BE:
    ld a, e
    dec a
    ld a, e
    ld a, [hl+]
    ld a, e
    dec sp
    nop
    ld a, [hl+]
    ld a, e
    dec sp
    ld a, e
    ld a, [hl+]
    ld a, e
    dec sp
    ld a, e
    ld a, [hl+]
    ld a, [hl-]
    add hl, sp
    nop
    ld a, e
    scf
    ld a, [hl-]
    ld a, [hl+]
    ld a, e
    dec sp
    ld a, e
    ld a, [hl+]
    ld a, e
    dec sp
    nop
    ld a, [hl+]
    nop
    dec sp
    ld a, e
    ld a, [hl+]
    nop
    dec a
    ld a, e
    ld a, [hl+]
    ld a, e
    ccf
    ld a, e
    ld a, [hl+]
    nop
    ccf
    ld a, e
    ld a, [hl+]
    ld a, e
    dec a
    ld a, e
    ld a, [hl+]
    nop
    dec sp
    ld a, e
    ld a, [hl+]
    ld a, e
    dec sp
    ld a, e
    ld a, [hl+]
    ld a, e
    dec sp
    ld a, e
    ld a, [hl+]
    nop
    jr c, jr_006_613A

    ld a, [hl+]
    dec sp
    nop
    nop
    nop
    dec sp
    nop
    nop
    nop
    dec sp
    nop
    nop
    nop
    dec sp
    nop
    nop
    nop
    nop
    nop
    nop
    dec sp
    nop
    nop
    nop
    dec sp
    nop
    nop
    nop
    dec sp
    nop
    nop
    nop
    dec sp
    nop
    nop
    nop
    dec a
    nop
    nop
    nop
    dec sp
    nop
    nop
    nop
    dec sp
    nop
    scf
    ld a, [hl-]
    add hl, sp
    dec a
    nop
    nop
    nop
    dec sp
    nop
    nop
    nop
    dec sp

jr_006_613A:
    nop
    nop
    nop
    jr c, jr_006_6179

    ld [hl], $00
    nop
    jr c, jr_006_617E

    ld [hl], $00
    nop
    nop
    dec sp
    nop
    nop
    nop
    dec sp
    nop
    nop
    nop
    dec a
    scf
    ld a, [hl-]
    add hl, sp
    nop
    dec sp
    nop
    nop
    nop
    dec sp
    nop
    nop
    nop
    dec a
    nop
    nop
    nop
    nop
    dec a
    nop
    nop
    nop
    ccf
    nop
    nop
    nop
    ccf
    nop
    nop
    nop
    dec a
    nop
    nop
    nop
    nop
    dec a
    nop
    nop
    nop
    ccf
    nop

jr_006_6179:
    nop
    nop
    ccf
    nop
    nop

jr_006_617E:
    nop
    dec a
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
    ld a, $3E
    inc a
    nop
    nop
    nop
    nop
    dec hl
    inc l
    dec l
    nop
    nop
    dec a
    nop
    nop
    nop
    ccf
    dec hl
    dec l
    nop
    dec a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec hl
    inc l
    inc l
    dec l
    nop
    dec a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec hl
    dec l
    dec hl
    inc l
    dec l
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec hl
    dec l
    nop
    nop
    nop
    dec hl
    inc l
    dec l
    ld c, h
    nop
    nop
    nop
    ld e, h
    nop
    nop
    nop
    ld e, h
    inc a
    ld a, $3C
    ld l, h
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, h
    nop
    nop
    nop
    ld e, h
    inc a
    ld a, $3C
    ld e, h
    nop
    nop
    nop
    ld l, h
    nop
    ld c, h
    ld c, h
    nop
    nop
    ld e, h
    ld e, h
    nop
    inc a
    ld e, h
    ld e, h
    inc a
    nop
    ld l, h
    ld l, h
    nop
    jr nc, jr_006_6234

    ld [hl-], a
    inc sp
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, a
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a
    ld [hl], h
    ld [hl], l
    halt
    ld b, a
    ld a, e
    ld a, h
    nop
    ld a, [hl+]
    nop
    ld a, h
    ld a, e
    ld a, [hl+]
    nop
    ld a, h
    ld a, e
    ld a, [hl+]
    ld a, e
    ld a, h
    nop
    ld a, [hl+]
    ld a, [hl+]
    ld a, e
    ld a, h

jr_006_6234:
    nop
    ld a, [hl+]
    ld a, e
    ld a, h
    ld a, e
    ld a, [hl+]
    ld a, e
    ld a, h
    nop
    ld a, [hl+]
    nop
    ld a, h
    ld a, e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld l, $2F
    ld l, $2F
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld l, $2F
    ld l, $2F
    ld l, $2F
    ld l, $2F
    nop
    nop
    nop
    nop
    ld l, $2F
    ld l, $2F
    ld l, $2F
    ld l, $2F
    ld l, $2F
    ld l, $2F
    nop
    ld a, e
    nop
    ld a, e
    ld a, e
    ld a, e
    nop
    nop
    nop
    nop
    ld a, e
    nop
    ld a, e
    nop
    ld a, e
    ld a, e
    daa
    jr z, jr_006_62AD

    daa
    inc h
    dec h
    nop
    nop
    inc [hl]
    dec [hl]
    nop
    nop
    inc hl
    inc hl
    nop
    nop
    daa
    jr z, jr_006_62BD

    daa
    nop
    nop
    inc h
    dec h
    nop
    nop
    inc [hl]
    dec [hl]
    nop
    nop
    inc hl
    inc hl
    daa
    jr z, jr_006_62CD

    daa
    inc h
    dec h
    inc h
    dec h
    inc [hl]
    dec [hl]
    inc [hl]
    dec [hl]

jr_006_62AD:
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    nop
    nop
    inc hl
    inc hl
    nop
    nop
    inc hl
    inc hl
    nop
    nop

jr_006_62BD:
    inc hl
    inc hl
    nop
    nop
    nop
    nop
    inc hl
    inc hl
    nop
    nop
    inc hl
    inc hl
    nop
    nop
    inc hl
    inc hl

jr_006_62CD:
    nop
    nop
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    ld h, $23
    nop
    nop
    nop
    ld h, $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc hl
    inc hl
    nop
    nop
    inc hl
    ld h, $00
    nop
    ld h, $00
    nop
    nop
    nop
    nop
    inc hl
    inc hl
    inc hl
    inc hl
    ld h, $23
    ld h, $23
    nop
    ld h, $00
    ld h, $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, d
    ld c, d
    ld c, d
    ld c, d
    jr z, jr_006_6348

    jr z, @+$2B

    ld c, d
    ld c, d
    ld c, d
    ld c, d
    jr z, jr_006_6350

    jr z, jr_006_6352

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr z, @+$2B

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_006_6348:
    nop
    jr z, jr_006_6374

    nop
    nop
    nop
    nop
    nop

jr_006_6350:
    nop
    nop

jr_006_6352:
    nop
    nop
    nop
    jr z, jr_006_6380

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, e
    ld a, e
    ld l, $2F
    nop
    ld a, e
    ld l, $2F
    ld a, e
    ld a, e
    ld l, $2F
    ld a, e
    nop
    ld l, $2F
    ld l, $2F
    ld a, e

jr_006_6374:
    ld a, e
    ld l, $2F
    ld a, e
    nop
    ld l, $2F
    nop
    ld a, e
    ld l, $2F
    ld a, e

jr_006_6380:
    nop
    daa
    ld c, l
    ld c, [hl]
    daa
    daa
    ld c, l
    ld c, [hl]
    daa
    daa
    ld c, l
    ld c, [hl]
    daa
    jr z, @+$2B

    jr z, jr_006_63BA

    jr z, jr_006_63BC

    jr z, jr_006_63BE

    daa
    ld c, l
    ld c, [hl]
    daa
    daa
    ld c, l
    ld c, [hl]
    daa
    daa
    ld c, l
    ld c, [hl]
    daa
    daa
    ld c, l
    ld c, [hl]
    daa
    daa
    ld c, l
    ld c, [hl]
    daa
    daa
    ld c, l
    ld c, [hl]
    daa
    daa
    ld c, l
    ld c, [hl]
    daa
    nop
    nop
    ld [hl+], a
    nop
    nop
    nop
    ld hl, $0000

jr_006_63BA:
    nop
    ld [hl+], a

jr_006_63BC:
    nop
    nop

jr_006_63BE:
    nop
    ld hl, $0000
    ld [hl+], a
    nop
    nop
    nop
    ld hl, $0000
    nop
    ld [hl+], a
    nop
    nop
    nop
    ld hl, $0000
    nop
    ld hl, $0000
    nop
    ld [hl+], a
    nop
    nop
    nop
    ld hl, $0000
    jr z, jr_006_6408

    jr z, jr_006_640A

    ld a, [hl+]
    ld a, e
    nop
    ld a, e
    ld a, [hl+]
    ld a, e
    ld a, e
    nop
    jr z, @+$2B

    jr z, jr_006_6416

    nop
    ld [hl+], a
    nop
    nop
    inc hl
    inc hl
    inc hl
    ld h, $23
    inc hl
    ld h, $00
    inc hl
    inc hl
    nop
    nop
    inc hl
    inc hl
    nop
    nop
    ld h, $23
    inc hl
    inc hl
    nop
    ld h, $23

jr_006_6408:
    inc hl
    nop

jr_006_640A:
    nop
    inc hl
    inc hl
    nop
    nop
    inc hl
    inc hl
    nop
    nop
    ld hl, $0000

jr_006_6416:
    nop
    ld [hl+], a
    nop
    nop
    nop
    ld hl, $2800
    add hl, hl
    jr z, jr_006_644A

    ld a, e
    nop
    ld a, e
    ld a, [hl+]
    ld a, e
    ld a, e
    nop
    ld a, [hl+]
    jr z, jr_006_6454

    jr z, jr_006_6456

    nop
    nop
    ld [hl+], a
    nop
    jr z, @+$2B

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_006_644A:
    nop
    nop
    nop
    nop
    nop
    jr z, jr_006_647A

    nop
    nop
    nop

jr_006_6454:
    nop
    nop

jr_006_6456:
    nop
    nop
    nop
    nop
    nop
    jr z, jr_006_6486

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr z, jr_006_6492

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr z, jr_006_649E

    nop
    nop
    nop
    nop
    nop

jr_006_647A:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld l, b
    ld l, c
    ld a, b
    ld a, c
    ld l, b

jr_006_6486:
    ld l, c
    ld a, d
    ld [hl], a
    ld l, b
    ld l, c
    nop
    nop
    jr z, jr_006_64B8

    jr z, jr_006_64BA

    ld l, b

jr_006_6492:
    ld l, c
    ld a, b
    ld a, c
    ld l, b
    ld l, c
    ld a, d
    ld [hl], a
    ld l, b
    ld l, c
    nop
    nop
    ld l, b

jr_006_649E:
    ld l, c
    nop
    nop
    ld l, b
    ld l, c
    nop
    nop
    ld l, b
    ld l, c
    nop
    nop
    ld l, b
    ld l, c
    ld a, b
    ld c, e
    ld l, b
    ld l, c
    ld a, d
    ld c, a
    ld a, b
    ld a, c
    ld l, b
    ld l, c
    ld a, d
    ld [hl], a
    ld l, b

jr_006_64B8:
    ld l, c
    nop

jr_006_64BA:
    nop
    ld l, b
    ld l, c
    jr z, jr_006_64E8

    jr z, jr_006_64EA

    ld a, b
    ld a, c
    ld l, b
    ld l, c
    ld a, d
    ld [hl], a
    ld l, b
    ld l, c
    nop
    nop
    ld l, b
    ld l, c
    nop
    nop
    ld l, b
    ld l, c
    nop
    nop
    ld l, b
    ld l, c
    nop
    nop
    ld l, b
    ld l, c
    nop
    nop
    ld l, b
    ld l, c
    nop
    nop
    ld l, b
    ld l, c
    ld [hl], d
    ld [hl], e
    ld e, d
    ld e, e
    ld [hl], d
    ld [hl], e
    ld l, d

jr_006_64E8:
    ld l, e
    ld [hl], d

jr_006_64EA:
    ld [hl], e
    ld l, d
    ld l, e
    jr z, jr_006_6518

    jr z, jr_006_651A

    nop
    ld e, d
    ld e, e
    nop
    nop
    ld l, d
    ld l, e
    nop
    nop
    ld l, d
    ld l, e
    nop
    jr z, jr_006_6528

    jr z, jr_006_652A

    ld e, d
    ld e, e
    ld [hl], d
    ld [hl], e
    ld l, d
    ld l, e
    ld [hl], d
    ld [hl], e
    ld l, d
    ld l, e
    ld [hl], d
    ld [hl], e
    jr z, jr_006_6538

    jr z, jr_006_653A

    ld [hl], d
    ld [hl], e
    ld a, b
    ld a, c
    ld [hl], d
    ld [hl], e
    ld a, d

jr_006_6518:
    ld [hl], a
    ld [hl], d

jr_006_651A:
    ld [hl], e
    nop
    nop
    ld [hl], d
    ld [hl], e
    nop
    nop
    nop
    nop
    ld [hl], d
    ld [hl], e
    nop
    nop
    ld [hl], d

jr_006_6528:
    ld [hl], e
    ld a, b

jr_006_652A:
    ld a, c
    ld [hl], d
    ld [hl], e
    ld a, d
    ld [hl], a
    ld [hl], d
    ld [hl], e
    ld a, b
    ld a, c
    ld a, b
    ld a, c
    ld a, d
    ld [hl], a
    ld a, d

jr_006_6538:
    ld [hl], a
    ld a, b

jr_006_653A:
    ld a, c
    nop
    nop
    ld a, d
    ld [hl], a
    nop
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
    ld [hl], c
    ld a, b
    ld c, e
    ld [hl], d
    ld [hl], e
    ld a, d
    ld c, a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, b
    ld c, e
    ld [hl], b
    ld [hl], c
    ld a, d
    ld c, a
    ld [hl], d
    ld [hl], e
    ld [hl], b
    ld [hl], c
    nop
    nop
    ld [hl], d
    ld [hl], e
    ld a, b
    ld c, e
    ld [hl], d
    ld [hl], e
    ld a, d
    ld c, a
    ld [hl], d
    ld [hl], e
    nop
    nop
    nop
    nop
    nop
    nop
    ld [hl], b
    ld [hl], c
    nop
    nop
    ld [hl], d
    ld [hl], e
    ld a, b
    ld c, e
    ld [hl], d
    ld [hl], e
    ld a, d
    ld c, a
    nop
    nop
    nop
    nop
    nop
    nop
    ld [hl], b
    ld [hl], c
    ld a, b
    ld c, e
    ld [hl], d
    ld [hl], e
    ld a, d
    ld c, a
    ld [hl], d
    ld [hl], e
    ld [hl], d
    ld [hl], e
    nop
    nop
    ld [hl], d
    ld [hl], e
    ld a, b
    ld c, e
    ld [hl], d
    ld [hl], e
    ld a, d
    ld c, a
    ld [hl], d
    ld [hl], e
    nop
    nop
    nop
    nop
    ld [hl], d
    ld [hl], e
    ld a, b
    ld c, e
    ld [hl], d
    ld [hl], e
    ld a, d
    ld c, a
    ld [hl], d
    ld [hl], e
    nop
    nop
    ld [hl], d
    ld [hl], e
    ld a, b
    ld a, c
    ld a, b
    ld a, c
    ld a, d
    ld [hl], a
    ld a, d
    ld [hl], a
    ld a, b
    ld a, c
    nop
    nop
    ld a, d
    ld [hl], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, b
    ld c, e
    ld a, b
    ld c, e
    ld a, d
    ld c, a
    ld a, d
    ld c, a
    nop
    ld e, l
    ld e, [hl]
    ld e, a
    nop
    ld l, l
    ld l, [hl]
    ld l, a
    nop
    ld a, l
    ld a, [hl]
    ld a, a
    jr z, jr_006_6608

    jr z, jr_006_660A

    ld a, b
    ld c, e
    ld l, b
    ld l, c
    ld a, d
    ld c, a
    ld l, b
    ld l, c
    ld a, b
    ld a, c
    jr z, jr_006_6616

    ld a, d
    ld [hl], a
    nop
    nop
    ld l, b
    ld l, c
    ld a, b
    ld c, e
    ld l, b
    ld l, c
    ld a, d
    ld c, a
    jr z, jr_006_6624

    ld a, b
    ld a, c
    nop
    nop
    ld a, d
    ld [hl], a
    ld l, b
    ld l, c
    ld l, b
    ld l, c
    ld l, b
    ld l, c
    ld l, b

jr_006_6608:
    ld l, c
    daa

jr_006_660A:
    jr z, jr_006_6635

    daa
    nop
    nop
    nop
    nop
    ld l, b
    ld l, c
    ld l, b
    ld l, c
    ld l, b

jr_006_6616:
    ld l, c
    ld l, b
    ld l, c
    ld l, b
    ld l, c
    ld l, b
    ld l, c
    ld l, b
    ld l, c
    ld l, b
    ld l, c
    ld l, b
    ld l, c
    ld l, b

jr_006_6624:
    ld l, c
    ld l, b
    ld l, c
    ld l, b
    ld l, c
    daa
    jr z, jr_006_6655

    daa
    nop
    nop
    ld [hl+], a
    nop
    jr z, @+$2B

    jr z, jr_006_665E

jr_006_6635:
    daa
    ld l, b
    ld l, c
    daa
    daa
    ld l, b
    ld l, c
    daa
    ld l, b
    ld l, c
    ld l, b
    ld l, c
    nop
    nop
    nop
    nop
    jr z, jr_006_6670

    jr z, jr_006_6672

    daa
    ld l, b
    ld l, c
    daa
    ld l, b
    ld l, c
    ld l, b
    ld l, c
    nop
    nop
    nop
    nop

jr_006_6655:
    nop
    nop
    nop
    nop
    jr z, jr_006_6684

    jr z, jr_006_6686

    ld l, b

jr_006_665E:
    ld l, c
    ld l, b
    ld l, c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, d
    ld c, d
    ld c, d
    daa
    jr z, jr_006_6699

jr_006_6670:
    daa
    nop

jr_006_6672:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, d
    ld c, d
    ld c, d
    nop
    daa
    jr z, jr_006_66A9

    daa
    ld a, b
    ld c, e
    nop

jr_006_6684:
    nop
    ld a, d

jr_006_6686:
    ld c, a
    ld a, b
    ld c, e
    nop
    nop
    ld a, d
    ld c, a
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, b
    ld c, e
    ld a, b
    ld c, e
    ld a, d
    ld c, a

jr_006_6699:
    ld a, d
    ld c, a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    scf
    ld a, $3C
    ld a, e
    ld a, h
    nop
    ld a, e

jr_006_66A9:
    nop
    ld a, h
    ld a, e
    ld a, e
    ld a, e
    ld a, h
    nop
    ld a, e
    inc a
    ld a, $36
    nop
    ld a, e
    nop
    ld a, h
    ld a, e
    ld a, e
    nop
    ld a, h
    nop
    ld a, e
    ld a, e
    ld a, h
    nop
    nop
    ld a, h
    ld a, e
    nop
    ld a, e
    ld a, h
    nop
    ld a, e
    nop
    ld a, h
    ld a, e
    ld a, e
    nop
    ld a, h
    ld a, e
    nop
    ld a, e
    nop
    ld a, h
    nop
    nop
    ld a, e
    ld a, h
    nop
    ld a, e
    nop
    ld a, h
    nop
    ld a, e
    nop
    ld a, h
    ld a, e
    ld a, e
    ld a, h
    nop
    ld a, e
    nop
    ld a, h
    ld a, e
    ld a, e
    ld a, e
    ld a, h
    nop
    ld a, e
    nop
    jr c, jr_006_672E

    inc a
    ld a, e
    ld a, e
    ld a, h
    nop
    ld a, e
    nop
    ld a, h
    nop
    ld a, e
    nop
    ld a, h
    ld a, e
    inc a
    ld a, $39
    nop
    ld a, [hl+]
    ld b, h
    ld b, l
    ld b, [hl]
    ld a, [hl+]
    ld d, l
    ld d, [hl]
    ld d, a
    ld a, [hl+]
    ld h, l
    ld h, [hl]
    ld h, a
    ld a, [hl+]
    ld [hl], l
    halt
    ld b, a
    ld b, h
    ld b, l
    ld b, [hl]
    ld a, [hl+]
    ld d, h
    ld d, l
    ld d, [hl]
    ld a, [hl+]
    ld h, h
    ld h, l
    ld h, [hl]
    ld a, [hl+]
    ld [hl], h
    ld [hl], l
    halt
    ld a, [hl+]
    nop
    nop
    dec a
    nop
    dec hl
    inc l
    inc l
    dec l
    nop
    ccf
    nop
    nop
    nop

jr_006_672E:
    dec a
    nop
    nop
    ld a, [hl+]
    ld a, e
    dec a
    nop
    ld a, [hl+]
    ld a, e
    ccf
    ld a, e
    ld a, [hl+]
    ld a, e
    dec a
    ld a, e
    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld a, e
    dec a
    nop
    ld a, [hl+]
    ld a, e
    ccf
    ld a, e
    ld a, [hl+]
    ld a, e
    dec a
    ld a, e
    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld a, [hl+]
    ld a, [hl+]
    ld a, e
    nop
    ld a, e
    ld a, [hl+]
    ld a, e
    ld a, e
    nop
    jr z, @+$2B

    nop
    ld a, e
    nop
    nop
    nop
    nop
    ld a, [hl+]
    ld b, h
    ld b, l
    ld b, [hl]
    ld a, [hl+]
    ld d, l
    ld d, [hl]
    ld d, a
    ld a, [hl+]
    ld h, l
    ld h, [hl]
    ld h, a
    jr z, jr_006_6798

    jr z, jr_006_679A

    ld b, h
    ld b, l
    ld b, [hl]
    ld a, [hl+]
    ld d, h
    ld d, l
    ld d, [hl]
    ld a, [hl+]
    ld h, h
    ld h, l
    ld h, [hl]
    ld a, [hl+]
    jr z, jr_006_67A8

    jr z, jr_006_67AA

    jr z, jr_006_67AC

    jr z, @+$2B

    ld a, [hl+]
    ld d, l
    ld d, [hl]
    ld d, a
    ld a, [hl+]
    ld h, l
    ld h, [hl]
    ld h, a
    ld a, [hl+]
    ld [hl], l
    halt
    ld b, a
    jr z, jr_006_67BC

    jr z, jr_006_67BE

    ld d, h
    ld d, l
    ld d, [hl]

jr_006_6798:
    ld a, [hl+]
    ld h, h

jr_006_679A:
    ld h, l
    ld h, [hl]
    ld a, [hl+]
    ld [hl], h
    ld [hl], l
    halt
    ld a, [hl+]
    nop
    nop
    dec a
    nop
    nop
    nop
    ccf

jr_006_67A8:
    nop
    nop

jr_006_67AA:
    nop
    ccf

jr_006_67AC:
    nop
    jr z, jr_006_67D8

    jr z, jr_006_67DA

    jr z, jr_006_67DC

    jr z, jr_006_67DE

    nop
    nop
    ccf
    nop
    nop
    nop
    ccf

jr_006_67BC:
    nop
    nop

jr_006_67BE:
    nop
    dec a
    nop
    ld a, [hl+]
    ld a, e
    nop
    ld a, e
    ld a, [hl+]
    nop
    ld a, e
    nop
    ld a, [hl+]
    ld a, e
    ld a, e
    nop
    ld a, [hl+]
    ld a, $3E
    ld a, $2A
    ld a, $3E
    ld a, $2A
    ld a, e
    nop

jr_006_67D8:
    ld a, e
    ld a, [hl+]

jr_006_67DA:
    ld a, e
    ld a, e

jr_006_67DC:
    nop
    ld a, [hl+]

jr_006_67DE:
    ld a, e
    nop
    nop
    nop
    nop
    ld a, e
    ld a, [hl+]
    nop
    ld a, e
    ld a, e
    ld a, [hl+]
    ld a, e
    nop
    ld a, e
    ld a, [hl+]
    ld a, $3E
    ld a, $2A
    ld a, $3E
    ld a, $2A
    ld a, e
    nop
    ld a, e
    ld a, [hl+]
    ld a, e
    ld a, e
    nop
    ld a, [hl+]
    nop
    nop
    ld a, e
    ld a, [hl+]
    nop
    dec a
    nop
    nop
    nop
    ccf
    nop
    nop
    nop
    ccf
    nop
    nop
    jr z, jr_006_6838

    jr z, jr_006_683A

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, d
    ld c, d
    nop
    nop
    daa
    jr z, jr_006_6849

    daa
    daa
    jr z, jr_006_684D

    daa
    nop
    inc h
    dec h
    nop
    nop
    inc [hl]
    dec [hl]
    nop
    nop
    inc hl
    inc hl
    nop
    nop
    inc hl
    inc hl
    nop
    nop
    inc hl
    inc hl

jr_006_6838:
    nop
    nop

jr_006_683A:
    inc hl
    inc hl
    nop
    nop
    inc hl
    inc hl
    nop
    nop
    inc hl
    inc hl
    nop
    nop
    inc hl
    ld h, $00

jr_006_6849:
    nop
    ld h, $00
    nop

jr_006_684D:
    nop
    nop
    nop
    nop
    nop
    inc hl
    inc hl
    nop
    nop
    inc hl
    ld h, $00
    nop
    inc hl
    nop
    nop
    nop
    ld h, $00
    nop
    ld [hl-], a
    inc sp
    nop
    nop
    ld b, d
    ld b, e
    ld [hl-], a
    inc sp
    nop
    nop
    ld b, d
    ld b, e
    jr z, jr_006_6898

    jr z, jr_006_689A

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr z, jr_006_68A4

    jr z, jr_006_68A6

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr z, jr_006_68B0

    jr z, jr_006_68B2

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr z, jr_006_68BC

    jr z, jr_006_68BE

    ld [hl-], a
    inc sp
    nop

jr_006_6898:
    nop
    ld b, d

jr_006_689A:
    ld b, e
    ld [hl-], a
    inc sp
    nop
    nop
    ld b, d
    ld b, e
    nop
    nop
    nop

jr_006_68A4:
    nop
    nop

jr_006_68A6:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr z, jr_006_68D8

    nop

jr_006_68B0:
    nop
    nop

jr_006_68B2:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr z, @+$2B

    nop

jr_006_68BC:
    nop
    nop

jr_006_68BE:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr z, jr_006_68F0

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr z, jr_006_68FC

    nop
    nop
    nop
    nop
    nop

jr_006_68D8:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr z, jr_006_690E

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_006_68F0:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr z, jr_006_6922

    nop
    nop
    nop

jr_006_68FC:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr z, jr_006_6936

    nop

jr_006_690E:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr z, jr_006_694A

    nop

jr_006_6922:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc l
    inc l
    inc l
    inc l
    jr z, jr_006_6958

    jr z, jr_006_695A

    nop
    nop
    nop
    daa
    nop

jr_006_6936:
    ld [hl-], a
    inc sp
    daa
    nop
    ld b, d
    ld b, e
    daa
    jr z, jr_006_6968

    jr z, jr_006_696A

    jr z, jr_006_696C

    jr z, jr_006_696E

    nop
    ld [hl-], a
    inc sp
    daa
    nop

jr_006_694A:
    ld b, d
    ld b, e
    daa
    nop
    nop
    nop
    daa
    daa
    ld a, [hl+]
    dec hl
    daa
    daa
    ld a, [hl+]
    dec hl

jr_006_6958:
    daa
    daa

jr_006_695A:
    ld a, [hl+]
    dec hl
    daa
    daa
    ld a, [hl+]
    dec hl
    daa
    jr z, @+$2B

    jr z, jr_006_698E

    daa
    ld a, [hl+]
    dec hl

jr_006_6968:
    daa
    daa

jr_006_696A:
    ld a, [hl+]
    dec hl

jr_006_696C:
    daa
    daa

jr_006_696E:
    ld a, [hl+]
    dec hl
    daa
    nop
    nop
    nop
    nop
    jr z, jr_006_69A0

    jr z, @+$2B

    daa
    ld a, [hl+]
    dec hl
    daa
    daa
    ld a, [hl+]
    dec hl
    daa
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr z, @+$2B

    jr z, jr_006_69B6

    daa

jr_006_698E:
    ld a, [hl+]
    dec hl
    daa
    jr z, jr_006_69BC

    jr z, jr_006_69BE

    ld l, $2F
    cpl
    cpl
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_006_69A0:
    nop
    jr z, jr_006_69CC

    jr z, jr_006_69CE

    cpl
    cpl
    cpl
    cpl
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr z, jr_006_69DC

    jr z, jr_006_69DE

    cpl

jr_006_69B6:
    cpl
    cpl
    ld l, $00
    nop
    nop

jr_006_69BC:
    nop
    nop

jr_006_69BE:
    nop
    nop
    nop
    nop
    jr nc, jr_006_69F5

    nop
    nop
    ld b, b
    ld b, c
    nop
    ld [hl-], a
    ld d, b
    ld d, c

jr_006_69CC:
    inc sp
    ld b, d

jr_006_69CE:
    ld h, b
    ld h, c
    ld b, e
    ld [hl-], a
    inc sp
    nop
    nop
    ld b, d
    ld b, e
    ld [hl-], a
    inc sp
    nop
    nop
    ld b, d

jr_006_69DC:
    ld b, e
    nop

jr_006_69DE:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [hl-], a
    inc sp
    ld [hl-], a
    inc sp
    ld b, d
    ld b, e
    ld b, d
    ld b, e
    nop
    nop
    ld [hl-], a
    inc sp
    ld [hl-], a
    inc sp

jr_006_69F5:
    ld b, d
    ld b, e
    ld b, d
    ld b, e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    daa
    ld a, [hl+]
    dec hl
    daa
    daa
    ld a, [hl+]
    dec hl
    daa
    daa
    ld a, [hl+]
    dec hl
    daa
    jr z, jr_006_6A38

    jr z, jr_006_6A3A

    daa
    ld a, [hl+]
    dec hl
    daa
    daa
    ld a, [hl+]
    dec hl
    daa
    jr z, jr_006_6A44

    jr z, jr_006_6A46

    nop
    nop
    nop
    nop
    daa
    ld a, [hl+]
    dec hl
    daa
    jr z, @+$2B

    jr z, @+$2B

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr z, jr_006_6A5C

    jr z, jr_006_6A5E

    daa
    ld [hl-], a
    inc sp

jr_006_6A38:
    nop
    daa

jr_006_6A3A:
    ld b, d
    ld b, e
    nop
    daa
    nop
    nop
    nop
    daa
    nop
    nop

jr_006_6A44:
    nop
    daa

jr_006_6A46:
    ld [hl-], a
    inc sp
    nop
    daa
    ld b, d
    ld b, e
    nop
    jr z, jr_006_6A78

    jr z, jr_006_6A7A

    jr z, jr_006_6A7C

    daa
    ld a, [hl+]
    ld [hl-], a
    inc sp
    daa
    ld a, [hl+]
    ld b, d
    ld b, e
    daa

jr_006_6A5C:
    ld a, [hl+]
    nop

jr_006_6A5E:
    nop
    daa
    ld a, [hl+]
    dec hl
    daa
    jr z, jr_006_6A8E

    dec hl
    daa
    ld [hl-], a
    inc sp
    dec hl
    daa
    ld b, d
    ld b, e
    dec hl
    daa
    nop
    nop
    nop
    nop
    daa
    ld a, [hl+]
    nop
    nop
    daa

jr_006_6A78:
    ld a, [hl+]
    ld [hl-], a

jr_006_6A7A:
    inc sp
    daa

jr_006_6A7C:
    ld a, [hl+]
    ld b, d
    ld b, e
    daa
    ld a, [hl+]
    dec hl
    daa
    ld [hl-], a
    inc sp
    dec hl
    daa
    ld b, d
    ld b, e
    dec hl
    daa
    nop
    nop
    dec hl

jr_006_6A8E:
    daa
    nop
    nop
    ld [hl-], a
    inc sp
    daa
    ld a, [hl+]
    ld b, d
    ld b, e
    daa
    ld a, [hl+]
    nop
    nop
    jr z, jr_006_6AC6

    nop
    nop
    nop
    nop
    dec hl
    daa
    nop
    nop
    dec hl
    daa
    nop
    nop
    jr z, jr_006_6AD4

    nop
    nop
    nop
    ld [hl+], a
    nop
    nop
    nop
    ld hl, $0000
    nop
    ld [hl+], a
    nop
    nop
    nop
    ld hl, $0000
    jr z, @+$2B

    jr z, jr_006_6AEA

    nop
    nop
    ld [hl-], a
    inc sp
    ld [hl-], a

jr_006_6AC6:
    inc sp
    ld b, d
    ld b, e
    ld b, d
    ld b, e
    nop
    nop
    ld [hl], $37
    ld [hl], $37
    nop
    nop
    nop

jr_006_6AD4:
    nop
    nop
    nop
    nop
    nop
    ld [hl], $37
    ld [hl], $37
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [hl], $37
    ld [hl], $37
    nop

jr_006_6AEA:
    nop
    ld [hl-], a
    inc sp
    nop
    nop
    ld b, d
    ld b, e
    ld [hl], $37
    ld [hl], $37
    ld [hl-], a
    inc sp
    nop
    nop
    ld b, d
    ld b, e
    ld [hl-], a
    inc sp
    nop
    nop
    ld b, d
    ld b, e
    nop
    nop
    nop
    daa
    nop
    ld [hl-], a
    inc sp
    daa
    nop
    ld b, d
    ld b, e
    daa
    ld [hl], $37
    ld [hl], $37
    ld [hl], $37
    ld [hl], $37
    nop
    ld [hl-], a
    inc sp
    daa
    nop
    ld b, d
    ld b, e
    daa
    nop
    nop
    nop
    daa
    daa
    nop
    nop
    nop
    daa
    ld [hl-], a
    inc sp
    nop
    daa
    ld b, d
    ld b, e
    nop
    ld [hl], $37
    ld [hl], $37
    ld [hl], $37
    ld [hl], $37
    daa
    ld [hl-], a
    inc sp
    nop
    daa
    ld b, d
    ld b, e
    nop
    daa
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [hl], $37
    nop
    nop
    nop
    ld [hl], $37
    nop
    nop
    nop
    ld [hl], $37
    nop
    ld [hl], l
    halt
    nop
    nop
    ld [hl], l
    halt
    nop
    nop
    ld [hl], l
    halt
    nop
    ld [hl], $37
    ld [hl], $37
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, a
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a
    nop
    ld [hl], l
    halt
    nop
    nop
    ld h, d
    ld h, e
    nop
    nop
    ld h, d
    ld h, e
    nop
    nop
    ld d, d
    ld d, e
    nop
    ld [hl], $37
    ld [hl], $37
    nop
    nop
    ld h, d
    ld h, e
    nop
    nop
    ld h, d
    ld h, e
    nop
    nop
    ld d, d
    ld d, e
    ld [hl], $37
    ld [hl], $37
    ld [hl], $37
    ld [hl], $37
    nop
    ld h, d
    ld h, e
    nop
    nop
    ld h, d
    ld h, e
    nop
    nop
    ld d, d
    ld d, e
    nop
    nop
    ld h, d
    ld h, e
    nop
    nop
    ld h, d
    ld h, e
    nop
    nop
    ld h, d
    ld h, e
    nop
    nop
    ld h, d
    ld h, e
    nop
    ld [hl], $37
    ld [hl], $37
    dec l
    dec l
    dec l
    dec l
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [hl], $37
    ld [hl], $37
    nop
    inc h
    dec h
    nop
    nop
    inc [hl]
    dec [hl]
    nop
    nop
    inc hl
    inc hl
    nop
    nop
    inc hl
    inc hl
    nop
    nop
    inc hl
    inc hl
    nop
    nop
    inc hl
    inc hl
    nop
    nop
    inc hl
    inc hl
    nop
    nop
    inc hl
    inc hl
    nop
    nop
    ld h, $23
    nop
    nop
    nop
    ld h, $00
    nop
    nop
    nop
    nop
    ld c, [hl]
    ld c, a
    nop
    nop
    ld c, [hl]
    ld c, a
    nop
    nop
    ld e, [hl]
    ld e, a
    nop
    nop
    nop
    ld [hl+], a
    nop
    nop
    nop
    ld hl, $0000
    nop
    ld [hl+], a
    nop
    nop
    nop
    ld hl, $0000
    ld [hl], $37
    ld [hl], $37
    ld c, [hl]
    ld c, a
    nop
    nop
    ld c, [hl]
    ld c, a
    nop
    nop
    ld c, [hl]
    ld c, a
    ld [hl-], a
    inc sp
    ld c, [hl]
    ld c, a
    ld b, d
    ld b, e
    ld [hl], $37
    ld [hl], $37
    ld c, [hl]
    ld c, a
    ld [hl-], a
    inc sp
    ld c, [hl]
    ld c, a
    ld b, d
    ld b, e
    ld c, [hl]
    ld c, a
    nop
    nop
    daa
    nop
    inc hl
    inc hl
    daa
    nop
    inc hl
    inc hl
    daa
    nop
    inc hl
    inc hl
    daa
    nop
    inc hl
    inc hl
    daa
    nop
    inc hl
    inc hl
    daa
    nop
    ld h, $23
    daa
    nop
    nop
    ld h, $27
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc l
    inc l
    inc l
    inc l
    ld [hl], $37
    ld [hl], $37
    ld l, $2F
    cpl
    cpl
    nop
    nop
    nop
    nop
    ld [hl-], a
    inc sp
    nop
    nop
    ld b, d
    ld b, e
    nop
    nop
    cpl
    cpl
    cpl
    cpl
    nop
    nop
    ld [hl-], a
    inc sp
    ld [hl-], a
    inc sp
    ld b, d
    ld b, e
    ld b, d
    ld b, e
    nop
    nop
    cpl
    cpl
    cpl
    ld l, $32
    inc sp
    nop
    nop
    ld b, d
    ld b, e
    ld [hl-], a
    inc sp
    nop
    nop
    ld b, d
    ld b, e
    nop
    nop
    ld [hl-], a
    inc sp
    ld [hl-], a
    inc sp
    ld b, d
    ld b, e
    ld b, d
    ld b, e
    nop
    nop
    ld [hl], $37
    nop
    nop
    nop
    nop
    ld [hl-], a
    inc sp
    nop
    nop
    ld b, d
    ld b, e
    ld [hl-], a
    inc sp
    nop
    nop
    ld b, d
    ld b, e
    ld [hl], $37
    ld [hl], $37
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [hl-], a
    inc sp
    nop
    nop
    ld b, d
    ld b, e
    ld [hl-], a
    inc sp
    ld [hl], $37
    ld b, d
    ld b, e
    nop
    nop
    nop
    nop
    ld [hl-], a
    inc sp
    nop
    nop
    ld b, d
    ld b, e
    ld [hl], $37
    nop
    nop
    nop
    ld [hl], $37
    nop
    nop
    nop
    ld [hl], $37
    nop
    nop
    nop
    nop
    ld [hl], $37
    ld [hl], $37
    ld l, $2F
    cpl
    cpl
    nop
    nop
    ld [hl-], a
    inc sp
    nop
    nop
    ld b, d
    ld b, e
    ld [hl], $37
    ld [hl], $37
    cpl
    cpl
    cpl
    cpl
    ld [hl-], a
    inc sp
    nop
    nop
    ld b, d
    ld b, e
    nop
    nop
    ld [hl], $37
    ld [hl], $37
    cpl
    cpl
    cpl
    ld l, $32
    inc sp
    nop
    nop
    ld b, d
    ld b, e
    nop
    nop
    nop
    nop
    ld [hl+], a
    nop
    nop
    nop
    ld hl, $0000
    nop
    ld [hl+], a
    nop
    nop
    nop
    ld hl, $0000
    ld [hl+], a
    nop
    nop
    nop
    ld hl, $0000
    nop
    ld [hl+], a
    nop
    nop
    nop
    ld hl, $0000
    inc hl
    inc hl
    nop
    daa
    inc hl
    inc hl
    nop
    daa
    inc hl
    inc hl
    nop
    daa
    inc hl
    inc hl
    nop
    daa
    inc hl
    inc hl
    nop
    daa
    ld h, $23
    nop
    daa
    nop
    ld h, $00
    daa
    nop
    nop
    nop
    daa
    jr z, jr_006_6D7C

    jr z, jr_006_6D7E

    daa
    nop
    inc h
    dec h
    daa
    nop
    inc [hl]
    dec [hl]
    daa
    nop
    inc hl
    inc hl
    daa
    jr z, jr_006_6D8D

    daa
    nop
    inc h
    dec h
    nop
    nop
    inc [hl]
    dec [hl]
    nop
    nop
    inc hl
    inc hl
    nop
    jr z, jr_006_6D9C

    jr z, jr_006_6D9E

    inc h
    dec h
    nop
    daa
    inc [hl]
    dec [hl]
    nop

jr_006_6D7C:
    daa
    inc hl

jr_006_6D7E:
    inc hl
    nop
    daa
    daa
    jr z, jr_006_6DAD

    daa
    daa
    ld [hl-], a
    inc sp
    nop
    daa
    ld b, d
    ld b, e
    nop

jr_006_6D8D:
    daa
    nop
    nop
    nop
    daa
    nop
    nop
    nop
    daa
    ld [hl-], a
    inc sp
    nop
    daa
    ld b, d
    ld b, e

jr_006_6D9C:
    nop
    daa

jr_006_6D9E:
    jr z, jr_006_6DC9

    daa
    nop
    nop
    nop
    daa
    nop
    ld [hl-], a
    inc sp
    daa
    nop
    ld b, d
    ld b, e
    daa

jr_006_6DAD:
    daa
    jr z, jr_006_6DD9

    daa
    daa
    jr z, jr_006_6DDD

    daa
    nop
    ld [hl-], a
    inc sp
    daa
    nop
    ld b, d
    ld b, e
    daa
    nop
    nop
    nop
    daa
    nop
    nop
    nop
    daa
    nop
    nop
    jr z, jr_006_6DF2

jr_006_6DC9:
    nop
    jr z, jr_006_6DF5

    nop
    jr z, jr_006_6DF8

    nop
    nop
    daa
    nop
    nop
    nop
    jr z, jr_006_6E00

    nop
    nop

jr_006_6DD9:
    nop
    jr z, jr_006_6E05

    nop

jr_006_6DDD:
    nop
    nop
    jr z, jr_006_6E0A

    daa
    nop
    nop
    nop
    daa
    nop
    nop
    nop
    daa
    nop
    nop
    nop
    daa
    jr z, jr_006_6E19

    nop
    nop

jr_006_6DF2:
    nop
    nop
    daa

jr_006_6DF5:
    nop
    nop
    nop

jr_006_6DF8:
    daa
    nop
    nop
    nop
    daa
    nop
    jr z, jr_006_6E29

jr_006_6E00:
    daa
    nop
    inc a
    dec a
    ld a, [hl-]

jr_006_6E05:
    nop
    inc a
    dec a
    ld a, [hl-]
    nop

jr_006_6E0A:
    ld a, $3F
    dec sp
    ld [hl], $37
    ld [hl], $37
    nop
    inc a
    dec a
    ld a, [hl-]
    nop
    inc a
    dec a
    ld a, [hl-]

jr_006_6E19:
    nop
    inc a
    dec a
    ld a, [hl-]
    nop
    inc a
    dec a
    ld a, [hl-]
    ld [hl], $37
    ld [hl], $37
    nop
    inc a
    dec a
    ld c, b

jr_006_6E29:
    nop
    inc a
    dec a
    ld e, b
    nop
    inc a
    dec a
    ld a, [hl-]
    ld [hl], $37
    ld [hl], $37
    ld c, c
    ld c, d
    ld c, e
    ld c, h
    ld e, c
    ld e, d
    ld e, e
    ld e, h
    ld l, d
    ld l, e
    ld l, h
    ld l, l
    ld [hl], $37
    ld [hl], $37
    ld c, l
    inc a
    dec a
    nop
    ld e, l
    inc a
    dec a
    nop
    ld a, [hl-]
    inc a
    dec a
    nop
    ld [hl], $37
    ld [hl], $37
    nop
    ld l, b
    ld l, c
    nop
    nop
    ld [hl], a
    ld a, c
    nop
    ld [hl], a
    ld a, b
    ld a, b
    ld a, c
    nop
    ld [hl], e
    ld [hl], h
    nop
    nop
    nop
    ld [hl-], a
    inc sp
    ld [hl-], a
    inc sp
    ld b, d
    ld b, e
    ld b, d
    ld b, e
    nop
    nop
    ld [hl], $37
    ld [hl], $37
    nop
    ld d, d
    ld d, e
    nop
    nop
    ld h, d
    ld h, e
    nop
    nop
    ld h, d
    ld h, e
    nop
    ld [hl], $37
    ld [hl], $37
    jr c, @+$3B

    jr c, jr_006_6EC2

    nop
    ld h, d
    ld h, e
    nop
    nop
    ld h, d
    ld h, e
    nop
    ld [hl], $37
    ld [hl], $37
    jr c, jr_006_6ED0

    jr c, jr_006_6ED2

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
    ld [hl-], a
    inc sp
    ld c, [hl]
    ld c, a
    ld b, d
    ld b, e
    ld e, [hl]
    ld e, a
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, [hl-]
    inc a
    dec a
    nop
    ld a, [hl-]
    inc a
    dec a
    nop
    dec sp
    ld a, $3F
    nop
    ld [hl], $37
    ld [hl], $37
    ld a, [hl-]

jr_006_6EC2:
    inc a
    dec a
    nop
    ld a, [hl-]
    inc a
    dec a
    nop
    ld a, [hl-]
    inc a
    dec a
    nop
    ld a, [hl-]
    inc a
    dec a

jr_006_6ED0:
    nop
    ld a, [hl]

jr_006_6ED2:
    ld a, [hl]
    ld a, [hl]
    ld a, [hl]
    ld l, [hl]
    ld l, [hl]
    ld l, [hl]
    ld l, [hl]
    ld a, [hl]
    ld a, [hl]
    ld a, [hl]
    ld a, [hl]
    ld l, [hl]
    ld l, [hl]
    ld l, [hl]
    ld l, [hl]
    ld a, d
    ld a, e
    ld a, h
    ld a, l
    ld l, [hl]
    ld l, [hl]
    ld l, [hl]
    ld l, [hl]
    ld a, [hl]
    ld a, [hl]
    ld a, [hl]
    ld a, [hl]
    ld l, [hl]
    ld l, [hl]
    ld l, [hl]
    ld l, [hl]
    ld a, [hl]
    ld a, [hl]
    ld a, [hl]
    ld a, [hl]
    ld l, [hl]
    ld l, [hl]
    ld l, [hl]
    ld l, [hl]
    ld a, [hl]
    ld a, [hl]
    ld a, [hl]
    ld a, [hl]
    ld [hl], $37
    ld [hl], $37
    ld a, [hl-]
    inc a
    dec a
    nop
    ld a, [hl-]
    inc a
    dec a
    nop
    dec sp
    ld a, $3F
    nop
    ld [hl], $37
    ld [hl], $37
    ld [hl-], a
    inc sp
    nop
    daa
    ld b, d
    ld b, e
    nop
    daa
    nop
    ld [hl-], a
    inc sp
    daa
    nop
    ld b, d
    ld b, e
    daa
    daa
    nop
    nop
    nop
    daa
    nop
    nop
    nop
    daa
    ld [hl-], a
    inc sp
    nop
    daa
    ld b, d
    ld b, e
    nop
    nop
    nop
    nop
    nop
    ld [hl-], a
    inc sp
    nop
    nop
    ld b, d
    ld b, e
    nop
    nop
    jr z, jr_006_6F68

    jr z, jr_006_6F6A

    jr z, jr_006_6F6C

    jr z, jr_006_6F6E

    ld [hl-], a
    inc sp
    nop
    nop
    ld b, d
    ld b, e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [hl-], a
    inc sp
    nop
    nop
    ld b, d
    ld b, e
    nop
    nop
    ld [hl-], a
    inc sp
    nop
    nop
    ld b, d

jr_006_6F68:
    ld b, e
    nop

jr_006_6F6A:
    nop
    nop

jr_006_6F6C:
    nop
    nop

jr_006_6F6E:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [hl-], a
    inc sp
    nop
    nop
    ld b, d
    ld b, e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr z, jr_006_6FB8

    jr z, jr_006_6FBA

    jr z, jr_006_6FBC

    jr z, jr_006_6FBE

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [hl], $37
    ld [hl], $37
    ld [hl], $37
    ld [hl], $37
    nop
    nop
    nop

jr_006_6FB8:
    nop
    nop

jr_006_6FBA:
    nop
    nop

jr_006_6FBC:
    nop
    nop

jr_006_6FBE:
    nop
    nop
    nop
    ld [hl], $37
    ld [hl], $37
    ld [hl-], a
    inc sp
    ld c, [hl]
    ld c, a
    ld b, d
    ld b, e
    ld c, [hl]
    ld c, a
    nop
    nop
    ld c, [hl]
    ld c, a
    nop
    nop
    ld c, [hl]
    ld c, a
    nop
    nop
    ld c, [hl]
    ld c, a
    ld [hl-], a
    inc sp
    ld c, [hl]
    ld c, a
    ld b, d
    ld b, e
    ld c, [hl]
    ld c, a
    ld [hl-], a
    inc sp
    ld c, [hl]
    ld c, a
    ld b, d
    ld b, e
    ld c, [hl]
    ld c, a
    nop
    nop
    ld e, [hl]
    ld e, a
    nop
    nop
    nop
    nop
    ld [hl], $37
    ld [hl], $37
    ld c, [hl]
    ld c, a
    nop
    ld h, d
    ld c, [hl]
    ld c, a
    cpl
    ld h, d
    ld c, [hl]
    ld c, a
    ccf
    ld h, d
    ld c, [hl]
    ld c, a
    cpl
    ld h, d
    ld c, [hl]
    ld c, a
    ccf
    ld h, d
    ld c, [hl]
    ld c, a
    nop
    ld h, d
    ld c, [hl]
    ld c, a
    nop
    ld h, d
    ld c, [hl]
    ld c, a
    nop
    ld h, d
    ld c, [hl]
    ld c, a
    cpl
    ld h, d
    ld c, [hl]
    ld c, a
    ccf
    ld d, d
    ld [hl], $37
    ld [hl], $37
    ld [hl], $37
    ld [hl], $37
    ld h, e
    inc h
    dec h
    nop
    ld h, e
    inc [hl]
    dec [hl]
    nop
    ld h, e
    ld b, h
    ld b, l
    ld b, [hl]
    ld h, e
    ld d, h
    ld d, l
    ld d, [hl]
    ld h, e
    nop
    ld h, l
    ld h, [hl]
    ld h, e
    ld l, $2F
    nop
    ld h, e
    ld a, $3F
    nop
    ld h, e
    ld l, $2F
    nop
    ld h, e
    ld a, $3F
    ld [hl], b
    ld h, e
    nop
    nop
    ld [hl], c
    ld h, e
    nop
    nop
    ld [hl], d
    ld h, e
    nop
    nop
    jr nc, jr_006_70B9

    nop
    jr nc, jr_006_708A

    ld d, e
    jr nc, jr_006_708D

    ld sp, $3736
    ld [hl], $37
    ld [hl], $37
    ld [hl], $37
    nop
    ld l, b
    ld l, c
    nop
    nop
    ld [hl], a
    ld a, c
    nop
    ld [hl], a
    ld a, b
    ld a, b
    ld a, c
    nop
    ld [hl], e
    ld [hl], h
    nop
    ld h, a
    ld h, h
    ld l, l
    ld l, d
    nop
    nop
    nop
    nop
    nop
    ld h, $27
    nop
    nop
    jr z, jr_006_70AD

    nop
    nop
    ld a, [hl+]
    dec hl
    nop
    ld b, a

jr_006_708A:
    ld c, b
    ld c, c
    ld c, d

jr_006_708D:
    ld d, a
    ld e, b
    ld e, c
    ld e, d
    ld sp, $3131
    ld sp, $3131
    ld sp, $3131
    ld sp, $3131
    ld [hl], $37
    ld [hl], $37
    ld [hl], $37
    ld [hl], $37
    nop
    inc l
    dec l
    ld h, d
    nop
    inc a
    dec a
    ld h, d

jr_006_70AD:
    ld c, e
    ld c, h
    ld c, l
    ld h, d
    ld e, e
    ld e, h
    ld e, l
    ld h, d
    ld l, e
    ld l, h
    nop
    ld h, d

jr_006_70B9:
    nop
    nop
    nop
    ld h, d
    nop
    nop
    nop
    ld h, d
    nop
    nop
    nop
    ld h, d
    ld [hl], b
    nop
    nop
    ld h, d
    ld [hl], c
    nop
    nop
    ld h, d
    ld [hl], d
    nop
    nop
    ld h, d
    ld [hl-], a
    nop
    nop
    ld h, d
    ld sp, $0032
    ld h, d
    ld sp, $3231
    ld d, d
    ld [hl], $37
    ld [hl], $37
    ld [hl], $37
    ld [hl], $37
    ld h, e
    nop
    ld c, [hl]
    ld c, a
    ld h, e
    nop
    ld c, [hl]
    ld c, a
    ld h, e
    nop
    ld c, [hl]
    ld c, a
    ld h, e
    nop
    ld c, [hl]
    ld c, a
    ld h, e
    nop
    ld c, [hl]
    ld c, a
    ld h, e
    nop
    ld c, [hl]
    ld c, a
    ld h, e
    nop
    ld c, [hl]
    ld c, a
    ld h, e
    nop
    ld c, [hl]
    ld c, a
    ld h, e
    nop
    ld c, [hl]
    ld c, a
    ld h, e
    nop
    ld e, [hl]
    ld e, a
    ld h, e
    nop
    nop
    nop
    ld h, e
    nop
    nop
    nop
    ld h, e
    nop
    nop
    nop
    ld d, e
    nop
    nop
    nop
    ld [hl], $37
    ld [hl], $37
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    nop
    nop
    ld l, $28
    nop
    ld l, $28
    inc b
    ld l, $28
    inc b
    inc b
    jr z, jr_006_7143

    inc b
    inc b
    daa
    inc l

jr_006_7143:
    nop
    nop
    inc b
    daa
    inc l
    nop
    inc b
    inc b
    daa
    inc l
    inc b
    inc b
    inc b
    daa
    nop
    nop
    ld l, $25
    nop
    ld l, $28
    inc b
    ld l, $28
    inc b
    inc b
    ld [hl], c
    inc b
    inc b
    inc b
    ld h, $2C
    nop
    nop
    inc b
    daa
    inc l
    nop
    inc b
    inc b
    daa
    inc l
    inc b
    inc b
    inc b
    cpl
    ld [hl], c
    inc b
    inc b
    inc b
    dec l
    ld a, [hl+]
    inc b
    inc b
    nop
    dec l
    ld a, [hl+]
    inc b
    nop
    nop
    dec l
    ld [hl], d
    inc b
    inc b
    inc b
    cpl
    inc b
    inc b
    add hl, hl
    dec hl
    inc b
    add hl, hl
    dec hl
    nop
    ld [hl], e
    dec hl
    nop
    nop
    ld l, $26
    dec h
    ld h, $71
    inc b
    inc b
    inc b
    ld [hl], c
    inc b
    inc b
    inc b
    ld [hl], c
    inc b
    inc b
    inc b
    dec h
    ld h, $25
    ld h, $04
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    dec h
    ld h, $25
    inc l
    inc b
    inc b
    inc b
    cpl
    inc b
    inc b
    inc b
    cpl
    inc b
    inc b
    inc b
    cpl
    nop
    nop
    nop
    ld [hl-], a
    nop
    nop
    ld [hl-], a
    ld b, d
    nop
    ld [hl-], a
    ld b, d
    nop
    ld l, $25
    ld h, $25
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc l
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld l, $00
    ld [hl-], a
    nop
    nop
    ld [hl-], a
    ld b, d
    nop
    ld [hl-], a
    ld b, d
    nop
    ld [hl-], a
    nop
    dec h
    ld h, $25
    inc l
    nop
    nop
    ld [hl-], a
    nop
    nop
    ld [hl-], a
    ld b, d
    ld [hl-], a
    ld [hl-], a
    ld b, d
    nop
    nop
    dec h
    ld h, $25
    ld h, $32
    nop
    nop
    nop
    ld b, d
    ld [hl-], a
    nop
    nop
    ld l, $25
    ld h, $25
    jr z, jr_006_7223

    inc b
    inc b
    nop
    nop

jr_006_7223:
    nop
    nop
    ld l, $25
    ld h, $25
    jr z, jr_006_722F

    inc b
    inc b
    inc b
    inc b

jr_006_722F:
    inc b
    inc b
    ld l, $25
    ld h, $25
    jr z, jr_006_723B

    inc b
    inc b
    inc b
    inc b

jr_006_723B:
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    dec h
    ld h, $25
    inc l
    inc b
    inc b
    inc b
    daa
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    nop
    nop
    nop
    nop
    dec h
    ld h, $25
    inc l
    inc b
    inc b
    inc b
    daa
    inc b
    inc b
    inc b
    inc b
    ld [hl-], a
    nop
    nop
    nop
    ld b, d
    nop
    ld [hl-], a
    nop
    dec h
    ld h, $25
    inc l
    inc b
    inc b
    inc b
    daa
    ld a, [hl+]
    inc b
    inc b
    inc b
    dec l
    ld a, [hl+]
    inc b
    inc b
    nop
    dec l
    ld a, [hl+]
    inc b
    nop
    nop
    dec l
    ld [hl], d
    inc b
    inc b
    inc b
    add hl, hl
    inc b
    inc b
    add hl, hl
    dec hl
    inc b
    add hl, hl
    dec hl
    nop
    ld [hl], e
    dec hl
    nop
    nop
    ld a, [hl+]
    inc b
    inc b
    inc b
    dec l
    ld [hl], d
    ld [hl], e
    ld [hl], d
    nop
    ld sp, $4131
    nop
    ld b, c
    ld b, c
    nop
    inc b
    inc b
    inc b
    inc b
    ld a, [hl+]
    inc b
    inc b
    inc b
    dec l
    ld [hl], d
    ld [hl], e
    ld [hl], d
    nop
    nop
    nop
    nop
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    ld a, [hl+]
    inc b
    inc b
    inc b
    dec l
    ld [hl], d
    ld [hl], e
    ld [hl], d
    dec l
    ld [hl], d
    ld [hl], e
    ld [hl], d
    nop
    inc sp
    nop
    nop
    nop
    ld b, e
    inc sp
    ld b, e
    nop
    nop
    ld b, e
    nop
    dec hl
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec l
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [hl], d
    ld [hl], e
    ld [hl], d
    dec hl
    inc sp
    nop
    nop
    inc sp
    ld b, e
    nop
    inc sp
    ld b, e
    nop
    nop
    ld b, e
    nop
    ld [hl], d
    ld [hl], e
    ld [hl], d
    ld [hl], e
    nop
    nop
    nop
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
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    add hl, hl
    ld [hl], d
    ld [hl], e
    ld [hl], d
    dec hl
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    add hl, hl
    ld [hl], d
    ld [hl], e
    ld [hl], d
    dec hl
    nop
    nop
    nop
    nop
    inc b
    inc b
    inc b
    add hl, hl
    ld [hl], d
    ld [hl], e
    ld [hl], d
    dec hl
    ld sp, $4131
    nop
    ld b, c
    ld b, c
    nop
    nop
    nop
    ld [hl-], a
    nop
    ld [hl], c
    ld [hl-], a
    ld b, d
    nop
    ld [hl], c
    ld b, d
    nop
    nop
    ld [hl], c
    dec h
    ld h, $25
    jr z, jr_006_7381

    nop
    nop
    ld [hl-], a
    cpl
    nop
    ld [hl-], a
    nop
    cpl
    ld [hl-], a
    ld b, d
    nop
    daa
    dec h
    ld h, $25
    cpl
    ld [hl-], a
    nop
    nop
    cpl
    ld b, d
    ld [hl-], a
    nop
    cpl
    nop
    ld b, d
    ld [hl-], a
    dec hl
    nop
    ld [hl-], a
    nop
    nop
    nop
    nop
    ld [hl], c
    nop
    ld [hl-], a
    nop
    ld [hl], c
    ld [hl-], a
    ld b, d
    nop
    ld [hl], c
    ld b, d
    nop
    ld [hl-], a
    dec l

jr_006_7381:
    nop
    ld d, c
    ld d, e
    nop
    nop
    inc sp
    ld b, e
    nop
    nop
    ld b, e
    nop
    nop
    nop
    nop
    nop
    nop
    cpl
    ld [hl-], a
    nop
    nop
    cpl
    ld b, d
    ld [hl-], a
    nop
    cpl
    nop
    ld b, d
    nop
    cpl
    nop
    nop
    ld [hl-], a
    nop
    nop
    ld [hl-], a
    ld [hl], c
    ld [hl-], a
    nop
    ld b, d
    ld [hl], c
    ld b, d
    ld [hl-], a
    nop
    ld [hl], c
    nop
    ld b, d
    nop
    ld [hl], c
    nop
    nop
    nop
    nop
    nop
    inc [hl]
    dec [hl]
    nop
    nop
    ld b, h
    ld b, l
    jr nc, jr_006_73E3

    ld h, $25
    ld h, $00
    nop
    nop
    nop
    nop
    inc [hl]
    dec [hl]
    nop
    jr nc, jr_006_740F

    ld b, l
    nop
    dec h
    ld h, $25
    ld h, $00
    inc [hl]
    dec [hl]
    nop
    jr nc, jr_006_741B

    ld b, l
    jr nc, jr_006_741A

    ld b, h
    ld b, l
    ld b, b
    dec h
    ld h, $25
    ld h, $30
    ld b, h

jr_006_73E3:
    ld b, l
    nop
    ld b, b
    ld b, h
    ld b, l
    jr nc, jr_006_743A

    ld b, h
    ld b, l
    ld b, b
    dec h
    ld h, $25
    ld h, $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc [hl]
    dec [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    jr nc, jr_006_7408

jr_006_7408:
    nop
    jr nc, jr_006_744B

    nop
    nop
    ld b, b
    ld d, b

jr_006_740F:
    jr nc, jr_006_7411

jr_006_7411:
    ld d, c
    ld d, d
    ld d, d
    ld d, e
    ld b, e
    inc sp
    inc sp
    ld b, e
    nop

jr_006_741A:
    ld b, e

jr_006_741B:
    ld b, e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, c
    ld d, d
    ld d, d
    ld d, e
    ld b, e
    inc sp
    inc sp
    ld b, e
    nop
    ld b, e
    ld b, e
    nop
    nop
    ld [hl-], a
    ld [hl-], a
    nop
    ld [hl-], a
    ld b, d
    ld b, d
    ld [hl-], a
    ld d, c

jr_006_743A:
    ld d, d
    ld d, d
    ld d, e
    nop
    nop
    nop
    nop
    nop
    ld [hl-], a
    nop
    nop
    nop
    ld b, d
    ld [hl-], a
    nop
    ld [hl-], a
    nop

jr_006_744B:
    ld b, d
    nop
    ld d, c
    ld d, d
    ld d, d
    ld d, e
    ld b, e
    inc sp
    inc sp
    ld b, e
    nop
    ld b, e
    ld b, e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, c
    ld d, e
    nop
    nop
    inc sp
    ld b, e
    nop
    nop
    ld b, e
    nop
    ld [hl-], a
    nop
    nop
    nop
    ld b, d
    ld [hl-], a
    nop
    nop
    ld d, c
    ld d, e
    nop
    nop
    inc sp
    ld b, e
    ld [hl-], a
    nop
    ld b, e
    nop
    ld b, d
    ld [hl-], a
    nop
    nop
    nop
    ld d, c
    ld d, e
    nop
    nop
    inc sp
    ld b, e
    nop
    ld [hl-], a
    ld b, e
    nop
    nop
    ld b, d
    nop
    ld [hl-], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, c
    ld d, e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [hl-], a
    ld d, c
    ld d, e
    nop
    ld b, d
    inc sp
    ld b, e
    nop
    nop
    ld b, e
    nop
    nop
    nop
    nop
    ld [hl-], a
    nop
    nop
    nop
    ld b, d
    nop
    nop
    ld [hl-], a
    nop
    ld d, c
    ld d, e
    nop
    ld [hl-], a
    nop
    nop
    ld [hl], d
    ld [hl], e
    ld [hl], d
    ld [hl], e
    ld b, c
    ld sp, $4131
    nop
    ld b, c
    ld b, c
    nop
    nop
    nop
    nop
    nop
    nop
    jr nc, jr_006_74D4

jr_006_74D4:
    nop
    jr nc, jr_006_7517

    nop
    nop
    ld b, b
    ld d, b
    jr nc, jr_006_74DD

jr_006_74DD:
    dec h
    ld h, $25
    inc l
    nop
    nop
    ld l, $25
    nop
    ld l, $28
    inc b
    dec h
    jr z, jr_006_74F0

    inc b
    inc b
    inc b
    inc b

jr_006_74F0:
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    add hl, hl
    ld [hl], d
    inc b
    add hl, hl
    dec hl
    nop
    ld [hl], d
    dec hl
    nop
    nop
    ld sp, $3141
    nop
    ld b, c
    nop
    ld b, c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec l
    ld [hl], d
    ld [hl], e
    dec hl
    nop
    nop

jr_006_7517:
    inc hl
    nop
    nop
    nop
    inc hl
    nop
    nop
    nop
    inc hl
    nop
    nop
    nop
    inc hl
    nop
    nop
    nop
    inc hl
    nop
    nop
    nop
    inc hl
    nop
    nop
    nop
    inc hl
    nop
    nop
    nop
    inc hl
    nop
    nop
    nop
    inc hl
    nop
    nop
    nop
    inc hl
    nop
    nop
    nop
    inc h
    nop
    nop
    nop
    ld [hl+], a
    nop
    nop
    nop
    ld hl, $0000
    nop
    ld [hl+], a
    nop
    nop
    nop
    ld hl, $2500
    ld h, $25
    inc l
    inc b
    inc b
    inc b
    cpl
    inc b
    inc b
    inc b
    ld c, a
    inc b
    inc b
    inc b
    daa
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, [hl]
    ld b, a
    ld b, [hl]
    ld b, a
    dec h
    ld h, $25
    ld h, $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, b
    ld c, c
    nop
    nop
    ld e, b
    ld e, c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, d
    ld c, e
    nop
    nop
    ld e, d
    ld e, e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, h
    ld c, l
    ld c, h
    ld c, l
    dec h
    ld h, $25
    ld h, $00
    nop
    nop
    ld l, $00
    nop
    nop
    ld [hl], c
    ld c, h
    ld c, l
    ld c, h
    ld c, [hl]
    dec h
    ld h, $25
    jr z, jr_006_75EC

    nop
    nop
    nop
    nop
    ld a, [hl-]
    ld a, [hl-]
    nop
    ld a, [hl-]
    ld a, [hl-]
    nop
    nop
    ld [hl], $37
    ld [hl], $37
    nop
    nop
    ld a, [hl-]
    nop
    nop
    ld a, [hl-]
    ld a, [hl-]
    ld a, [hl-]
    ld [hl], $37
    ld [hl], $37
    ld a, [hl-]
    ld a, [hl-]
    nop
    nop
    nop
    nop
    nop
    ld a, [hl-]
    ld [hl], $37
    ld [hl], $37
    ld a, [hl-]
    ld a, [hl-]
    nop
    ld a, [hl-]
    ld a, [hl-]
    nop
    nop
    nop
    ld [hl], $37
    ld [hl], $37
    ld a, [hl-]
    ld a, [hl-]
    ld a, [hl-]
    nop
    ld a, [hl-]
    ld a, [hl-]
    nop

jr_006_75EC:
    nop
    ld a, [hl-]
    nop
    nop
    ld a, [hl-]
    ld [hl], $37
    nop
    nop
    ld a, [hl-]
    ld a, [hl-]
    nop
    nop
    ld a, [hl-]
    nop
    nop
    ld a, [hl-]
    nop
    nop
    ld a, [hl-]
    nop
    nop
    nop
    ld [hl], $37
    ld a, [hl-]
    ld a, [hl-]
    nop
    ld a, [hl-]
    nop
    nop
    ld a, [hl-]
    ld a, [hl-]
    nop
    nop
    nop
    ld a, [hl-]
    ld [hl], $37
    ld [hl], $37
    jr c, @+$3C

    ld a, [hl-]
    ld a, [hl-]
    jr c, @+$3C

    ld a, [hl-]
    nop
    jr c, jr_006_7659

    nop
    nop
    ld [hl], $37
    ld [hl], $37
    ld a, [hl-]
    ld a, [hl-]
    ld a, [hl-]
    jr c, jr_006_762A

jr_006_762A:
    ld a, [hl-]
    ld a, [hl-]
    jr c, jr_006_762E

jr_006_762E:
    nop
    ld a, [hl-]
    jr c, @+$3A

    ld a, [hl-]
    nop
    ld a, [hl-]
    jr c, @+$3C

    ld a, [hl-]
    nop
    jr c, @+$3C

    ld a, [hl-]
    nop
    jr c, @+$3C

    nop
    nop
    nop
    nop
    ld a, [hl-]
    jr c, jr_006_7646

jr_006_7646:
    ld a, [hl-]
    ld a, [hl-]
    jr c, jr_006_764A

jr_006_764A:
    nop
    ld a, [hl-]
    jr c, jr_006_7688

    ld a, [hl-]
    ld a, [hl-]
    jr c, jr_006_768A

    ld [hl], $37
    jr c, jr_006_768E

    ld a, [hl-]
    ld a, [hl-]
    nop

jr_006_7659:
    jr c, @+$3C

    nop
    nop
    jr c, jr_006_765F

jr_006_765F:
    nop
    nop
    jr c, jr_006_769D

    nop
    nop
    jr c, jr_006_76A1

    nop
    nop
    jr c, @+$3C

    ld a, [hl-]
    nop
    jr c, @+$38

    scf
    jr c, jr_006_76AA

    ld [hl], $37
    jr c, jr_006_7676

jr_006_7676:
    ld a, [hl-]
    ld a, [hl-]
    jr c, jr_006_76B4

    nop
    ld a, [hl-]
    jr c, jr_006_767E

jr_006_767E:
    nop
    ld a, [hl-]
    jr c, jr_006_7682

jr_006_7682:
    nop
    ld a, [hl-]
    jr c, jr_006_7686

jr_006_7686:
    ld a, [hl-]
    ld a, [hl-]

jr_006_7688:
    jr c, jr_006_76C4

jr_006_768A:
    ld a, [hl-]
    ld a, [hl-]
    jr c, jr_006_76C6

jr_006_768E:
    ld [hl], $37
    jr c, jr_006_76CA

    ld [hl], $37
    jr c, jr_006_76CE

    nop
    inc hl
    nop
    jr c, jr_006_769B

jr_006_769B:
    inc hl
    nop

jr_006_769D:
    jr c, jr_006_769F

jr_006_769F:
    inc hl
    nop

jr_006_76A1:
    jr c, jr_006_76D9

    scf
    jr c, jr_006_76A6

jr_006_76A6:
    inc hl
    nop
    jr c, jr_006_76AA

jr_006_76AA:
    inc hl
    nop
    jr c, jr_006_76AE

jr_006_76AE:
    inc hl
    nop
    jr c, jr_006_76EA

    nop
    inc hl

jr_006_76B4:
    nop
    jr c, jr_006_76B7

jr_006_76B7:
    inc hl
    nop
    jr c, jr_006_76BB

jr_006_76BB:
    inc hl
    nop
    jr c, jr_006_76BF

jr_006_76BF:
    inc hl
    nop
    nop
    inc hl
    nop

jr_006_76C4:
    jr c, jr_006_76C6

jr_006_76C6:
    inc hl
    nop
    jr c, jr_006_76CA

jr_006_76CA:
    inc hl
    nop
    jr c, jr_006_76CE

jr_006_76CE:
    inc hl
    nop
    jr c, jr_006_770A

    nop
    inc hl
    nop
    jr c, jr_006_76D7

jr_006_76D7:
    inc hl
    nop

jr_006_76D9:
    jr c, jr_006_76DB

jr_006_76DB:
    inc hl
    nop
    jr c, jr_006_76DF

jr_006_76DF:
    inc h
    nop
    nop
    inc hl
    nop
    jr c, jr_006_76E6

jr_006_76E6:
    inc hl
    nop
    jr c, jr_006_76EA

jr_006_76EA:
    inc hl
    nop
    jr c, jr_006_76EE

jr_006_76EE:
    inc h
    nop
    jr c, jr_006_76F2

jr_006_76F2:
    inc hl
    nop
    nop
    nop
    inc hl
    nop
    nop
    nop
    inc hl
    nop
    nop
    nop
    inc hl
    nop
    nop
    nop
    inc hl
    nop
    nop
    nop
    inc hl
    nop
    nop
    nop

jr_006_770A:
    inc hl
    nop
    nop
    nop
    inc h
    nop
    nop
    ld [hl], $37
    ld [hl], $37
    nop
    inc hl
    nop
    nop
    nop
    inc hl
    nop
    nop
    nop
    inc hl
    nop
    nop
    ld [hl], $37
    ld [hl], $37
    nop
    nop
    inc hl
    nop
    nop
    nop
    inc hl
    nop
    nop
    nop
    inc hl
    nop
    ld [hl], $37
    ld [hl], $37
    jr c, @+$3D

    dec sp
    jr c, @+$3A

    dec sp
    dec sp
    jr c, jr_006_7776

    dec sp
    dec sp
    jr c, jr_006_7742

jr_006_7742:
    nop
    nop
    nop
    ld [hl], $37
    ld [hl], $37
    jr c, jr_006_7786

    dec sp
    jr c, jr_006_7786

    dec sp
    dec sp
    jr c, jr_006_7752

jr_006_7752:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [hl], $37
    ld [hl], $37
    jr c, jr_006_779A

    dec sp
    jr c, jr_006_779A

    dec sp
    dec sp
    jr c, jr_006_779E

    dec sp
    dec sp
    jr c, jr_006_77A2

    dec sp
    dec sp
    jr c, jr_006_77A4

    scf
    ld [hl], $37
    jr c, jr_006_77AE

    dec sp
    jr c, jr_006_77AE

jr_006_7776:
    dec sp
    dec sp
    jr c, jr_006_77B2

    dec sp
    dec sp
    jr c, jr_006_77B6

    dec sp
    dec sp
    jr c, jr_006_77BC

    nop
    nop
    nop
    ld a, [hl-]

jr_006_7786:
    ld a, [hl-]
    ld a, [hl-]
    nop
    ld a, [hl-]
    ld a, [hl-]
    ld a, [hl-]
    ld a, [hl-]
    nop
    ld a, [hl-]
    ld a, [hl-]
    nop
    ld [hl], $37
    ld [hl], $37
    ld d, l
    ld h, l
    ld [hl], l
    ld d, h
    nop

jr_006_779A:
    ld d, [hl]
    ld d, a
    nop
    nop

jr_006_779E:
    ld h, [hl]
    ld h, a
    nop
    nop

jr_006_77A2:
    halt
    ld [hl], a

jr_006_77A4:
    nop
    nop
    halt
    ld [hl], a
    nop
    nop
    halt
    ld [hl], a
    nop
    nop

jr_006_77AE:
    halt
    ld [hl], a
    nop
    nop

jr_006_77B2:
    halt
    ld [hl], a
    nop
    nop

jr_006_77B6:
    halt
    ld [hl], a
    nop
    nop
    halt
    ld [hl], a

jr_006_77BC:
    nop
    nop
    halt
    ld [hl], a
    nop
    nop
    halt
    ld [hl], a
    nop
    nop
    halt
    ld [hl], a
    nop
    nop
    halt
    ld [hl], a
    nop
    ld [hl], $37
    ld [hl], $37
    ld [hl], $37
    ld [hl], $37
    inc a
    dec a
    ld a, $3F
    ld e, h
    ld e, l
    ld e, [hl]
    ld e, a
    ld l, h
    ld l, l
    ld l, [hl]
    ld l, a
    ld a, h
    ld a, l
    ld a, [hl]
    ld a, a
    ld a, h
    ld a, l
    ld a, [hl]
    ld a, a
    ld a, h
    ld a, l
    ld a, [hl]
    ld a, a
    ld a, h
    ld a, l
    ld a, [hl]
    ld a, a
    ld a, h
    ld a, l
    ld a, [hl]
    ld a, a
    ld a, h
    ld a, l
    ld a, [hl]
    ld a, a
    ld a, h
    ld a, l
    ld a, [hl]
    ld a, a
    ld [hl], $37
    ld [hl], $37
    nop
    nop
    nop
    nop
    inc a
    dec a
    ld a, $3F
    ld e, h
    ld e, l
    ld e, [hl]
    ld e, a
    ld l, h
    ld l, l
    ld l, [hl]
    ld l, a
    ld [hl], $37
    ld [hl], $37
    nop
    nop
    nop
    nop
    nop
    ld l, b
    nop
    nop
    nop
    ld l, c
    ld h, b
    ld h, c
    ld [hl], $37
    ld [hl], $37
    nop
    nop
    nop
    nop
    nop
    nop
    ld l, b
    nop
    ld h, d
    ld [hl], b
    ld l, c
    nop
    nop
    ld l, d
    ld h, e
    ld h, e
    nop
    ld l, e
    ld a, b
    ld a, c
    nop
    ld l, d
    inc a
    dec a
    nop
    ld l, d
    ld e, h
    ld e, l
    ld h, e
    ld h, e
    ld l, d
    nop
    ld a, d
    ld a, e
    ld l, e
    nop
    ld a, $3F
    ld l, d
    nop
    ld e, [hl]
    ld e, a
    ld l, d
    nop
    nop
    ld l, d
    ld l, h
    ld l, l
    nop
    ld l, d
    ld a, h
    ld a, l
    nop
    ld l, d
    ld a, h
    ld a, l
    nop
    ld l, d
    ld a, h
    ld a, l
    ld l, [hl]
    ld l, a
    ld l, d
    nop
    ld a, [hl]
    ld a, a
    ld l, d
    nop
    ld a, [hl]
    ld a, a
    ld l, d
    nop
    ld a, [hl]
    ld a, a
    ld l, d
    nop
    nop
    ld l, d
    ld a, h
    ld a, l
    nop
    ld l, d
    ld a, h
    ld a, l
    nop
    ld l, d
    ld a, h
    ld a, l
    ld [hl], $37
    ld [hl], $37
    ld a, [hl]
    ld a, a
    ld l, d
    nop
    ld a, [hl]
    ld a, a
    ld l, d
    nop
    ld a, [hl]
    ld a, a
    ld l, d
    nop
    ld [hl], $37
    ld [hl], $37
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc sp
    ld b, e
    nop
    nop
    ld b, e
    nop
    nop
    nop
    nop
    nop
    ld b, e
    inc sp
    nop
    inc sp
    nop
    ld b, e
    inc sp
    ld b, e
    nop
    nop
    ld b, e
    nop
    nop
    nop
    ld [hl-], a
    nop
    nop
    ld [hl-], a
    ld b, d
    ld [hl-], a
    ld [hl-], a
    ld b, d
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, [hl-]
    ld a, [hl-]
    nop
    nop
    ld a, [hl-]
    ld a, [hl-]
    ld a, [hl-]
    ld a, [hl-]
    ld a, [hl-]
    ld a, [hl-]
    ld a, [hl-]
    nop
    ld a, [hl-]
    nop
    ld a, [hl-]
    nop
    ld a, [hl-]
    nop
    nop
    ld a, [hl-]
    nop
    nop
    ld a, [hl-]
    ld a, [hl-]
    nop
    ld a, [hl-]
    ld a, [hl-]
    ld a, [hl-]
    nop
    nop
    nop
    ld a, [hl-]
    ld l, $26
    dec h
    jr z, jr_006_7957

    inc b
    inc b
    inc b
    ld [hl], c
    inc b
    inc b
    inc b
    jr z, jr_006_78F3

    inc b
    inc b
    ld [hl], c
    inc b

jr_006_78F3:
    inc b
    inc b
    ld [hl], c
    inc b
    inc b
    inc b
    ld [hl], c
    inc b
    inc b
    inc b
    jr z, jr_006_7903

    inc b
    inc b
    inc b
    inc b

jr_006_7903:
    inc b
    cpl
    inc b
    inc b
    inc b
    cpl
    inc b
    inc b
    inc b
    cpl
    inc b
    inc b
    inc b
    cpl
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    ld [hl], d
    ld [hl], e
    ld [hl], d
    ld [hl], e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, c
    ld d, e
    nop
    nop
    nop
    ld hl, $0000
    nop
    ld [hl+], a
    nop
    nop
    nop
    ld hl, $3600
    scf
    ld [hl], $37
    jr c, @+$3D

    dec sp
    jr c, @+$3A

    dec sp
    dec sp
    jr c, jr_006_7980

    scf
    ld [hl], $37
    nop
    nop
    ld [hl+], a
    nop
    jr c, jr_006_798C

    ld a, [hl-]
    ld a, [hl-]
    jr c, jr_006_7990

jr_006_7957:
    ld a, [hl-]
    ld a, [hl-]
    jr c, jr_006_7994

    ld a, [hl-]
    ld a, [hl-]
    jr c, jr_006_7998

    ld a, [hl-]
    ld a, [hl-]
    ld a, [hl-]
    ld a, [hl-]
    add hl, sp
    jr c, jr_006_79A0

    ld a, [hl-]
    add hl, sp
    jr c, @+$3C

    ld a, [hl-]
    add hl, sp
    jr c, jr_006_79A8

    ld a, [hl-]
    add hl, sp
    jr c, jr_006_7972

jr_006_7972:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [hl], $37
    nop

jr_006_7980:
    nop
    jr c, @+$3D

    dec sp
    jr c, @+$3A

    dec sp
    dec sp
    jr c, jr_006_79C2

    dec sp
    dec sp

jr_006_798C:
    jr c, jr_006_79C6

    dec sp
    dec sp

jr_006_7990:
    jr c, jr_006_7992

jr_006_7992:
    nop
    inc hl

jr_006_7994:
    nop
    nop
    nop
    inc hl

jr_006_7998:
    nop
    nop
    nop
    inc hl
    nop
    nop
    nop
    inc hl

jr_006_79A0:
    nop
    ld [hl], $37
    ld [hl], $37
    nop
    nop
    inc hl

jr_006_79A8:
    nop
    nop
    nop
    inc hl
    nop
    nop
    nop
    inc hl
    nop
    nop
    halt
    ld [hl], a
    nop
    nop
    halt
    ld [hl], a
    nop
    nop
    halt
    ld [hl], a
    nop
    ld [hl], $37
    ld [hl], $37
    nop

jr_006_79C2:
    halt
    ld [hl], a
    nop
    nop

jr_006_79C6:
    halt
    ld [hl], a
    nop
    nop
    halt
    ld [hl], a
    nop
    nop
    halt
    ld [hl], a
    nop
    ld [hl], $37
    ld [hl], $37
    ld d, l
    ld h, l
    ld [hl], l
    ld d, h
    nop
    ld d, [hl]
    ld d, a
    nop
    nop
    ld h, [hl]
    ld h, a
    nop
    nop
    halt
    ld [hl], $37
    nop
    halt
    jr c, jr_006_7A24

    nop
    halt
    jr c, jr_006_7A28

    ld [hl], $37
    jr c, jr_006_7A2C

    ld [hl], $37
    ld [hl], e
    nop
    dec sp
    jr c, jr_006_7A6B

    nop
    dec sp
    jr c, jr_006_7A43

    nop
    dec sp
    jr c, jr_006_7A36

    scf
    ld a, [hl-]
    ld [hl], d
    ld [hl], e
    ld a, [hl-]
    nop
    ld [hl], d
    ld [hl], e
    ld a, [hl-]
    ld a, [hl-]
    ld [hl], d
    ld [hl], e
    ld a, [hl-]
    ld a, [hl-]
    ld [hl], d
    ld [hl], e
    nop
    ld [hl], $37
    ld [hl], $37
    ld a, [hl-]
    ld [hl], d
    ld [hl], e
    ld a, [hl-]
    ld a, [hl-]
    ld [hl], d
    ld [hl], e
    ld a, [hl-]
    nop
    ld [hl], d
    ld [hl], e
    ld a, [hl-]
    nop
    ld [hl], d
    ld [hl], e

jr_006_7A24:
    nop
    nop
    ld [hl], d
    ld [hl], e

jr_006_7A28:
    nop
    nop
    ld b, [hl]
    ld b, a

jr_006_7A2C:
    nop
    ld [hl], $37
    ld [hl], $37
    ld l, b
    ld l, c
    ld l, d
    ld e, b
    ld a, b

jr_006_7A36:
    ld a, c
    ld a, d
    nop
    ld [hl], $37
    ld [hl], $37
    nop
    ld [hl], d
    ld [hl], e
    nop
    ld a, [hl-]
    nop

jr_006_7A43:
    nop
    inc [hl]
    nop
    daa
    ld h, $44
    jr z, jr_006_7A74

    ld a, [hl+]
    dec h
    dec hl
    inc l
    dec l
    ld c, b
    ld [hl], $37
    ld [hl], $37
    ld a, [hl-]
    ld a, [hl-]
    ld a, [hl-]
    ld a, [hl-]
    ld a, [hl-]
    nop
    nop
    nop
    ld a, [hl-]
    ld a, [hl-]
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
    ld [hl], $37

jr_006_7A6B:
    ld [hl], $37
    jr c, @+$3D

    dec sp
    jr c, jr_006_7ACB

    ld b, d
    ld b, e

jr_006_7A74:
    ld e, d
    nop
    ld d, d
    ld d, e
    nop
    nop
    ld h, d
    ld h, e
    nop
    nop
    nop
    nop
    nop
    dec [hl]
    ld d, b
    ld d, c
    inc a
    ld b, l
    ld h, b
    ld h, c
    ld c, h
    dec h
    ld [hl], b
    ld [hl], c
    dec h
    ld c, c
    ld [hl-], a
    inc sp
    ld c, d
    ld [hl], $37
    ld [hl], $37
    ld a, [hl-]
    nop
    nop
    nop
    nop
    jr nc, jr_006_7ACD

    nop
    nop
    ld b, b
    ld b, c
    nop
    ld e, e
    ld l, b
    ld l, c
    ld l, d
    nop
    ld a, b
    ld a, c
    ld a, d
    ld [hl], $37
    ld [hl], $37
    nop
    ld [hl], d
    ld [hl], e
    nop
    dec a
    nop
    nop
    nop
    ld c, l
    ld h, $27
    nop
    dec h
    ld l, $29
    cpl
    ld c, e
    ld a, $2C
    ccf
    nop
    ld [hl], d
    ld [hl], $37
    nop
    ld [hl], d
    jr c, jr_006_7B04

    nop
    ld b, [hl]

jr_006_7ACB:
    jr c, jr_006_7B08

jr_006_7ACD:
    ld [hl], $37
    jr c, jr_006_7B0C

    nop
    nop
    nop
    nop
    ld a, [hl+]
    nop
    nop
    nop
    nop
    ld a, [hl+]
    nop
    ld a, [hl+]
    dec h
    ld h, $25
    ld h, $00
    nop
    nop
    nop
    ld a, [hl+]
    nop
    ld a, [hl+]
    ld a, [hl+]
    dec h
    ld h, $25
    ld h, $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec h
    ld h, $25
    ld h, $2A
    nop
    nop
    ld a, [hl+]
    nop
    nop
    nop
    nop
    dec h
    ld h, $25

jr_006_7B04:
    ld h, $2A
    ld a, [hl+]
    nop

jr_006_7B08:
    ld a, [hl+]
    ld a, [hl+]
    nop
    nop

jr_006_7B0C:
    nop
    nop
    nop
    nop
    nop
    daa
    nop
    nop
    ld a, [hl+]
    daa
    ld a, [hl+]
    nop
    nop
    daa
    ld a, [hl+]
    ld a, [hl+]
    nop
    dec h
    ld h, $25
    ld h, $00
    nop
    ld a, [hl+]
    daa
    ld a, [hl+]
    nop
    nop
    daa
    nop
    ld a, [hl+]
    ld a, [hl+]
    daa
    dec h
    ld h, $25
    ld h, $25
    ld h, $25
    ld h, $27
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    daa
    ld a, [hl+]
    nop
    nop
    daa
    nop
    nop
    ld a, [hl+]
    dec h
    ld h, $25
    ld h, $00
    ld a, [hl+]
    ld a, [hl+]
    daa
    nop
    nop
    ld a, [hl+]
    daa
    ld a, [hl+]
    nop
    ld a, [hl+]
    daa
    daa
    nop
    nop
    ld a, [hl+]
    daa
    ld a, [hl+]
    nop
    nop
    daa
    ld a, [hl+]
    ld a, [hl+]
    nop
    daa
    dec h
    ld h, $27
    daa
    dec h
    ld h, $27
    daa
    ld a, [hl+]
    nop
    nop
    daa
    ld a, [hl+]
    nop
    nop
    daa
    nop
    nop
    ld a, [hl+]
    nop
    nop
    ld a, [hl+]
    daa
    ld a, [hl+]
    nop
    ld a, [hl+]
    daa
    nop
    ld a, [hl+]
    ld a, [hl+]
    daa
    daa
    dec h
    ld h, $27
    daa
    dec h
    ld h, $27
    ld a, [hl+]
    nop
    ld a, [hl+]
    daa
    nop
    nop
    ld a, [hl+]
    daa
    nop
    nop
    ld a, [hl+]
    daa
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec h
    ld h, $25
    ld h, $27
    jr z, jr_006_7BC9

    daa
    nop
    nop
    nop
    nop
    dec h
    ld h, $25
    ld h, $27
    add hl, hl
    jr z, jr_006_7BD4

    daa
    jr z, jr_006_7BD9

    daa
    dec h
    ld h, $25
    ld h, $27
    jr z, @+$2B

    daa
    daa
    add hl, hl
    jr z, jr_006_7BE4

    daa
    jr z, jr_006_7BE9

    daa
    nop
    nop
    nop
    daa
    inc [hl]
    inc [hl]
    inc [hl]
    daa

jr_006_7BC9:
    ld b, h
    ld b, h
    ld b, h
    daa
    daa
    dec h
    ld h, $27
    nop
    nop
    nop

jr_006_7BD4:
    nop
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]

jr_006_7BD9:
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    dec h
    ld h, $25
    ld h, $00
    nop
    dec [hl]

jr_006_7BE4:
    ld [hl], $00
    nop
    dec l
    dec l

jr_006_7BE9:
    nop
    nop
    dec h
    ld h, $00
    nop
    nop
    nop
    ld [hl], $36
    ld [hl], $36
    dec l
    dec l
    dec l
    dec l
    dec h
    ld h, $25
    ld h, $00
    nop
    nop
    nop
    ld [hl], $37
    nop
    nop
    dec l
    dec l
    nop
    nop
    dec h
    ld h, $00
    nop
    nop
    nop
    nop
    nop
    dec h
    ld h, $25
    ld h, $00
    nop
    inc hl
    nop
    nop
    nop
    inc hl
    nop
    nop
    nop
    inc hl
    nop
    nop
    nop
    inc hl
    nop
    nop
    nop
    inc hl
    nop
    nop
    nop
    inc hl
    nop
    nop
    nop
    inc hl
    nop
    nop
    nop
    inc hl
    nop
    nop
    nop
    inc hl
    nop
    nop
    nop
    inc hl
    nop
    nop
    nop
    inc h
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    daa
    jr z, @+$2B

    daa
    daa
    add hl, hl
    jr z, jr_006_7CB0

    daa
    jr z, jr_006_7CB5

    daa
    daa
    jr z, jr_006_7CB9

    daa
    daa
    jr z, jr_006_7CBD

    daa
    dec h
    ld h, $25
    ld h, $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    daa
    jr z, jr_006_7CCD

    daa
    daa
    add hl, hl
    jr z, @+$29

    dec h
    ld h, $25
    ld h, $00
    nop
    nop

jr_006_7CB0:
    nop
    daa
    jr z, jr_006_7CDD

    daa

jr_006_7CB5:
    daa
    add hl, hl
    jr z, jr_006_7CE0

jr_006_7CB9:
    daa
    jr z, jr_006_7CE5

    daa

jr_006_7CBD:
    dec h
    ld h, $25
    ld h, $2A
    inc sp
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    ld b, e
    ld a, [hl+]
    ld a, [hl+]
    daa
    dec h
    ld h, $27

jr_006_7CCD:
    daa
    dec h
    ld h, $27
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, [hl+]
    nop
    nop
    nop

jr_006_7CDD:
    dec h
    ld h, $2A

jr_006_7CE0:
    nop
    dec h
    ld h, $00
    nop

jr_006_7CE5:
    ld a, [hl+]
    ld a, [hl+]
    nop
    nop
    ld a, [hl+]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec h
    ld h, $2A
    nop
    ld a, [hl+]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, [hl+]
    nop
    ld a, [hl+]
    dec h
    ld h, $00
    ld a, [hl+]
    dec h
    ld h, $00
    nop
    ld a, [hl+]
    ld a, [hl+]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, [hl+]
    dec h
    ld h, $00
    nop
    nop
    ld a, [hl+]
    nop
    nop
    nop
    daa
    nop
    nop
    dec h
    ld h, $00
    dec h
    ld h, $00
    dec h
    ld h, $00
    nop
    daa
    nop
    nop
    nop
    dec h
    ld h, $00
    nop
    nop
    dec h
    ld h, $00
    nop
    nop
    dec h
    ld h, $00
    nop
    ld [hl+], a
    nop
    nop
    nop
    ld hl, $0000
    nop
    ld [hl+], a
    nop
    nop
    nop
    ld hl, $0000
    inc hl
    nop
    daa
    nop
    inc hl
    nop
    daa
    nop
    inc hl
    nop
    daa
    nop
    inc hl
    nop
    daa
    nop
    inc hl
    nop
    daa
    nop
    inc hl
    nop
    daa
    nop
    inc hl
    nop
    daa
    nop
    inc h
    nop
    daa
    daa
    dec h
    ld h, $27
    nop
    inc hl
    nop
    daa
    nop
    inc hl
    nop
    daa
    nop
    inc hl
    nop
    daa
    daa
    nop
    inc hl
    nop
    daa
    nop
    inc hl
    nop
    daa
    nop
    inc hl
    nop
    daa
    nop
    inc hl
    nop
    daa
    nop
    inc hl
    nop
    daa
    nop
    inc hl
    nop
    daa
    nop
    inc hl
    nop
    daa
    nop
    inc h
    nop
    daa
    dec h
    ld h, $27
    daa
    nop
    inc hl
    nop
    daa
    nop
    inc hl
    nop
    daa
    nop
    inc hl
    nop
    daa
    dec h
    ld h, $27
    dec h
    ld h, $25
    ld h, $2A
    ld a, [hl+]
    nop
    ld a, [hl+]
    nop
    ld a, [hl+]
    ld a, [hl+]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec [hl]
    ld [hl], $36
    ld [hl], $2D
    dec l
    dec l
    dec l
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [hl], $36
    ld [hl], $36
    dec l
    dec l
    dec l
    dec l
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [hl], $36
    ld [hl], $37
    dec l
    dec l
    dec l
    dec l
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec [hl]
    ld [hl], $36
    scf
    dec l
    dec l
    dec l
    dec l
    dec [hl]
    ld [hl], $36
    scf
    dec l
    dec l
    dec l
    dec l
    daa
    dec h
    ld h, $27
    dec h
    ld h, $25
    ld h, $27
    dec h
    ld h, $27
    dec h
    ld h, $25
    ld h, $2A
    inc sp
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    ld b, e
    ld a, [hl+]
    ld a, [hl+]
    nop
    ld a, [hl+]
    nop
    nop
    ld a, [hl+]
    ld a, [hl+]
    nop
    ld a, [hl+]
    daa
    dec h
    ld h, $27
    dec h
    ld h, $25
    ld h, $00
    nop
    ld a, [hl+]
    nop
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    jr nc, jr_006_7E7C

    ld sp, $4032
    ld b, c
    ld b, c
    ld b, d
    ld b, b
    ld b, c
    ld b, c
    ld b, d
    ld b, b
    ld b, c
    ld b, c
    ld b, d
    ld b, b
    ld b, c
    ld b, c
    ld b, d
    dec h
    ld h, $25
    ld h, $2A
    nop
    nop
    nop
    ld a, [hl+]
    nop
    nop
    ld a, [hl+]
    nop
    ld a, [hl+]
    nop
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, [hl+]
    nop
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    nop

jr_006_7E7C:
    nop
    nop
    nop
    ld a, [hl+]
    nop
    ld a, [hl+]
    ld c, [hl]
    ld c, a
    nop
    nop
    ld e, [hl]
    ld e, a
    ld a, [hl+]
    nop
    ld l, [hl]
    ld l, a
    ld a, [hl+]
    dec h
    ld h, $25
    ld h, $00
    nop
    nop
    nop
    nop
    ld a, [hl+]
    ld a, [hl+]
    nop
    ld a, [hl+]
    ld l, $2F
    ld a, [hl+]
    nop
    ld a, $3F
    ld a, [hl+]
    nop
    ld a, $3F
    ld a, [hl+]
    ld a, [hl+]
    ld c, [hl]
    ld c, a
    nop
    nop
    ld e, [hl]
    ld e, a
    ld a, [hl+]
    nop
    ld l, [hl]
    ld l, a
    ld a, [hl+]
    dec h
    ld h, $25
    ld h, $00
    nop
    nop
    nop
    nop
    ld a, [hl+]
    ld a, [hl+]
    nop
    ld a, [hl+]
    ld l, $2F
    ld a, [hl+]
    ld a, $3F
    ld a, $3F
    ld c, [hl]
    ld c, a
    ld c, [hl]
    ld c, a
    ld e, [hl]
    ld e, a
    ld e, [hl]
    ld e, a
    ld l, [hl]
    ld l, a
    ld l, [hl]
    ld l, a
    nop
    nop
    nop
    nop
    nop
    ld a, [hl+]
    ld a, [hl+]
    nop
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    ld l, $2F
    ld l, $2F
    nop
    nop
    ld b, b
    ld b, c
    nop
    ld a, [hl+]
    ld b, b
    ld b, c
    ld a, [hl+]
    ld a, [hl+]
    ld b, b
    ld b, c
    dec h
    ld h, $25
    ld h, $41
    ld b, d
    nop
    ld a, [hl+]
    ld b, c
    ld b, d
    ld a, [hl+]
    nop
    ld b, c
    ld b, d
    ld a, [hl+]
    ld a, [hl+]
    dec h
    ld h, $25
    ld h, $00
    ld a, [hl+]
    nop
    nop
    nop
    nop
    ld a, [hl+]
    ld a, [hl+]
    nop
    ld a, [hl+]
    jr nc, jr_006_7F3E

    nop
    ld a, [hl+]
    ld b, b
    ld b, c
    nop
    ld a, [hl+]
    nop
    nop
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    nop
    ld sp, $0032
    nop
    ld b, c
    ld b, d
    ld a, [hl+]
    ld a, [hl+]
    ld b, b
    ld b, c
    ld b, c
    ld b, d
    ld b, b
    ld b, c
    ld b, c
    ld b, d
    dec [hl]
    ld [hl], $36
    ld [hl], $2D
    dec l
    dec l
    dec l
    ld a, [hl+]
    nop
    ld a, [hl+]
    ld a, [hl+]
    nop
    nop
    nop
    ld a, [hl+]
    ld [hl], $36
    ld [hl], $36
    dec l

jr_006_7F3E:
    dec l
    dec l
    dec l
    ld b, b
    ld b, c
    ld b, c
    ld b, d
    ld b, b
    ld b, c
    ld b, c
    ld b, d
    ld [hl], $36
    ld [hl], $36
    dec l
    dec l
    dec l
    dec l
    dec h
    ld h, $25
    ld h, $2A
    nop
    nop
    ld a, [hl+]
    ld a, [hl+]
    nop
    ld a, [hl+]
    nop
    jr nc, jr_006_7F90

    ld sp, $4032
    ld b, c
    ld b, c
    ld b, d
    ld b, b
    ld b, c
    ld b, c
    ld b, d
    dec h
    ld h, $25
    ld h, $27
    jr z, jr_006_7F99

    daa
    ld a, [hl+]
    nop
    nop
    ld a, [hl+]
    ld a, [hl+]
    nop
    ld a, [hl+]
    ld a, [hl+]
    daa
    dec h
    ld h, $27
    dec h
    ld h, $25
    ld h, $40
    ld b, c
    ld b, c
    ld b, d
    ld b, b
    ld b, c
    ld b, c
    ld b, d
    daa
    dec h
    ld h, $27
    dec h
    ld h, $25

jr_006_7F90:
    ld h, $40
    ld b, c
    ld b, c
    ld b, d
    ld b, b
    ld b, c
    ld b, c
    ld b, d

jr_006_7F99:
    ld b, b
    ld b, c
    ld b, c
    ld b, d
    ld b, b
    ld b, c
    ld b, c
    ld b, d
    daa
    ld a, [hl+]
    nop
    nop
    daa
    ld a, [hl+]
    nop
    nop
    daa
    ld a, [hl+]
    ld a, [hl+]
    nop
    daa
    ld a, [hl+]
    nop
    ld a, [hl+]
    nop
    nop
    ld a, [hl+]
    daa
    ld a, [hl+]
    nop
    ld a, [hl+]
    daa
    nop
    ld a, [hl+]
    ld a, [hl+]
    daa
    nop
    nop
    ld a, [hl+]
    daa
    daa
    dec h
    ld h, $27
    dec h
    ld h, $25
    ld h, $30
    ld sp, $3231
    ld b, b
    ld b, c
    ld b, c
    ld b, d
    dec h
    ld h, $25
    ld h, $2A
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    jr nc, @+$33

    ld sp, $4032
    ld b, c
    ld b, c
    ld b, d
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
