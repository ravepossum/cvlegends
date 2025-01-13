; Disassembly of "cvlegends.gb"
; This file was created with:
; mgbdis v2.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $00c", ROMX

    call Call_00C_44DE
    xor a
    ld [$C7D1], a
    ld [$C7D2], a
    call Call_000_057C
    call Call_000_0583
    call Call_000_05DA
    ld hl, $0000
    call Call_000_05AB
    ld hl, $4020
    call Call_00C_475A
    ret


    ld [hl], $40
    ld h, d
    nop
    ld b, [hl]
    ld b, b
    xor d
    nop
    ld c, [hl]
    ld b, b
    inc bc
    ld bc, $4052

jr_00C_402E:
    dec h
    ld bc, $4059
    add e
    ld bc, $FFFF
    rrca
    ld d, e
    ld c, a
    ld d, l
    ld c, [hl]
    ld b, h
    nop
    ld d, e
    ld c, c
    ld c, l
    ld d, l
    ld c, h
    ld b, c
    ld d, h
    ld b, l
    ld d, d
    rlca
    ld b, d
    ld e, c
    nop
    ld c, e
    ld b, e
    ld b, l
    ld c, [hl]
    inc bc
    ld b, d
    ld b, a
    ld c, l
    ld b, $4F
    ld c, e
    ld b, c
    ld b, h
    ld b, c
    jr c, jr_00C_4061

    ld d, e
    ld b, l
    nop
    nop
    scf
    jr c, jr_00C_402E

jr_00C_4061:
    ld [bc], a
    dec b
    ld a, [$C556]
    rst $00
    ld a, c
    ld b, b
    xor $40
    ld [de], a
    ld b, c
    ret z

    ld b, b
    jp c, $7A40

    ld b, b
    cp c
    ld b, b
    cp [hl]
    ld b, b
    cp [hl]
    ld b, b
    ret


    ld a, [$C724]
    or a
    jr nz, jr_00C_4099

    ld a, $00
    call Call_000_0875
    ld a, [$C7D1]
    cp $06
    ret z

    cp $09
    ret z

    ld hl, $40A1
    rst $28
    ld a, [hl]
    call Call_000_0875
    jp Jump_000_0875


jr_00C_4099:
    ld a, [$C7D2]
    add $01
    jp Jump_000_0875


    ld d, c
    ld d, d
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
    ld h, e
    ld h, h
    ld h, l
    ld h, [hl]
    ld b, c
    ld b, d
    ld a, $00
    jp Jump_000_0875


    ld a, $00
    call Call_000_0875
    ld a, $01
    jp Jump_000_0BCC


    ld a, [$C724]
    inc a
    and $01
    ld [$C724], a
    ld hl, $40EC
    rst $28
    ld a, [hl]
    ld [$C507], a
    ret


    ld a, [$C724]
    dec a
    cpl
    inc a
    ld [$C724], a
    ld hl, $40EC
    rst $28
    ld a, [hl]
    ld [$C507], a
    ret


    ld b, h
    ld h, h
    ld a, [$C724]
    or a
    jr nz, jr_00C_4103

    ld a, [$C7D1]
    inc a
    cp $18
    jr c, jr_00C_40FD

    xor a

jr_00C_40FD:
    ld [$C7D1], a
    jp Jump_00C_4136


jr_00C_4103:
    ld a, [$C7D2]
    inc a
    cp $3E
    jr c, jr_00C_410C

    xor a

jr_00C_410C:
    ld [$C7D2], a
    jp Jump_00C_413F


    ld a, [$C724]
    or a
    jr nz, jr_00C_4127

    ld a, [$C7D1]
    or a
    jr nz, jr_00C_4120

    ld a, $18

jr_00C_4120:
    dec a
    ld [$C7D1], a
    jp Jump_00C_4136


jr_00C_4127:
    ld a, [$C7D2]
    or a
    jr nz, jr_00C_412F

    ld a, $3E

jr_00C_412F:
    dec a
    ld [$C7D2], a
    jp Jump_00C_413F


Jump_00C_4136:
    ld hl, $4168
    call $DDD6
    jp Jump_00C_475A


Jump_00C_413F:
    ld hl, $9987
    di

jr_00C_4143:
    ldh a, [rSTAT]
    bit 1, a
    jr nz, jr_00C_4143

    ei
    ld a, [$C7D2]
    inc a
    swap a
    and $0F
    add $37
    ld [hl], a
    di

jr_00C_4156:
    ldh a, [rSTAT]
    bit 1, a
    jr nz, jr_00C_4156

    ei
    inc hl
    ld a, [$C7D2]
    inc a
    and $0F
    add $37
    ld [hl], a
    ret


    sbc b
    ld b, c
    cp e
    ld b, c
    sbc $41
    ld bc, $2242
    ld b, d
    ld b, l
    ld b, d
    ld l, b
    ld b, d
    adc e
    ld b, d
    xor [hl]
    ld b, d
    pop de
    ld b, d
    db $F4
    ld b, d
    rla
    ld b, e
    ld a, [hl-]
    ld b, e
    ld e, l
    ld b, e
    add b
    ld b, e
    and e
    ld b, e
    add $43
    jp hl


    ld b, e
    inc c
    ld b, h
    cpl
    ld b, h
    ld d, d
    ld b, h
    ld [hl], l
    ld b, h
    sbc b
    ld b, h
    cp e
    ld b, h
    and d
    ld b, c
    dec h
    ld bc, $41AE
    ld b, [hl]
    ld bc, $FFFF
    dec bc
    ld c, a
    ld c, e
    ld b, c
    ld b, h
    ld b, c
    jr c, jr_00C_41AA

jr_00C_41AA:
    nop
    nop
    nop
    nop
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
    nop
    push bc
    ld b, c
    dec h
    ld bc, $41D1

Jump_00C_41C1:
    ld b, [hl]
    ld bc, $FFFF
    dec bc
    ld c, a
    ld c, e
    ld b, c
    ld b, h
    ld b, c
    add hl, sp
    nop
    nop
    nop
    nop
    nop
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
    nop
    add sp, $41
    dec h
    ld bc, $41F4
    ld b, [hl]
    ld bc, $FFFF
    dec bc
    ld b, d
    ld b, c
    ld d, h
    ld d, h
    ld c, h
    ld b, l
    nop
    nop
    nop
    nop
    nop
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
    nop
    dec bc
    ld b, d
    dec h
    ld bc, $4217
    ld b, [hl]
    ld bc, $FFFF
    dec bc
    ld b, c
    nop
    ld d, e
    ld b, c
    ld c, [hl]
    ld b, e
    ld d, h
    ld d, l
    ld b, c
    ld d, d
    ld e, c
    ld a, [bc]
    ld c, a
    ld b, [hl]
    nop
    ld b, h
    ld d, d
    ld b, c
    ld b, e
    ld d, l
    ld c, h
    ld b, c
    inc l
    ld b, d
    dec h
    ld bc, $4238
    ld b, [hl]
    ld bc, $FFFF
    dec bc
    ld b, c
    ld c, h
    ld d, l
    ld b, e
    ld b, c
    ld d, d
    ld b, h
    nop
    nop
    nop
    nop
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
    nop
    ld c, a
    ld b, d
    dec h
    ld bc, $425B
    ld b, [hl]
    ld bc, $FFFF
    dec bc
    ld b, a
    ld d, l
    ld b, l
    ld d, e
    ld d, h
    nop
    ld c, b
    ld b, c
    ld c, h
    ld c, h
    nop
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
    nop
    ld [hl], d
    ld b, d
    dec h
    ld bc, $427E
    ld b, [hl]
    ld bc, $FFFF
    dec bc
    ld c, a
    ld c, e
    ld b, c
    ld b, h
    ld b, c
    ld a, $00
    nop
    nop
    nop
    nop
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
    nop
    sub l
    ld b, d
    dec h
    ld bc, $42A1
    ld b, [hl]
    ld bc, $FFFF
    dec bc
    ld c, a
    ld c, e
    ld b, c
    ld b, h
    ld b, c
    ccf
    nop
    nop
    nop
    nop
    nop
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
    nop
    cp b
    ld b, d
    dec h
    ld bc, $42C4
    ld b, [hl]
    ld bc, $FFFF
    dec bc
    ld c, a
    ld c, e
    ld b, c
    ld b, h
    ld b, c
    ld b, b
    nop
    nop
    nop
    nop
    nop
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
    nop
    db $DB
    ld b, d
    dec h
    ld bc, $42E7
    ld b, [hl]
    ld bc, $FFFF
    dec bc
    ld c, a
    ld c, e
    ld b, c
    ld b, h
    ld b, c
    ld b, c
    nop
    nop
    nop
    nop
    nop
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
    nop
    cp $42
    dec h
    ld bc, $430A
    ld b, [hl]
    ld bc, $FFFF
    dec bc
    ld c, a
    ld c, e
    ld b, c
    ld b, h
    ld b, c
    ld b, d
    nop
    nop
    nop
    nop
    nop
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
    nop
    ld hl, $2543
    ld bc, $432D
    ld b, [hl]
    ld bc, $FFFF
    dec bc
    ld d, h
    ld c, c
    ld d, h
    ld c, h
    ld b, l
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    ld b, h
    ld b, e
    dec h
    ld bc, $4350
    ld b, [hl]
    ld bc, $FFFF
    dec bc
    ld d, b
    ld d, d
    ld c, a
    ld c, h
    ld c, a
    ld b, a
    ld d, l
    ld b, l
    nop
    nop
    nop
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
    nop
    ld h, a
    ld b, e
    dec h
    ld bc, $4373
    ld b, [hl]
    ld bc, $FFFF
    dec bc
    ld c, a
    ld c, e
    ld b, c
    ld b, h
    ld b, c
    ld b, l
    nop
    nop
    nop
    nop
    nop
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
    nop
    adc d
    ld b, e
    dec h
    ld bc, $4396
    ld b, [hl]
    ld bc, $FFFF
    dec bc
    ld c, a
    ld c, e
    ld b, c
    ld b, h
    ld b, c
    ld b, [hl]
    nop
    nop
    nop
    nop
    nop
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
    nop
    xor l
    ld b, e
    dec h
    ld bc, $43B9
    ld b, [hl]
    ld bc, $FFFF
    dec bc
    ld c, a
    ld c, e
    ld b, c
    ld b, h
    ld b, c
    ld b, a
    nop
    nop
    nop
    nop
    nop
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
    nop
    ret nc

    ld b, e
    dec h
    ld bc, $43DC
    ld b, [hl]
    ld bc, $FFFF
    dec bc
    ld c, a
    ld c, e
    ld b, c
    ld b, h
    ld b, c
    ld c, b
    nop
    nop
    nop
    nop
    nop
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

Jump_00C_43E7:
    nop
    nop
    di
    ld b, e
    dec h
    ld bc, $43FF
    ld b, [hl]
    ld bc, $FFFF
    dec bc
    ld b, d
    ld c, a
    ld d, e
    ld d, e
    add hl, sp
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    ld d, $44
    dec h
    ld bc, $4422
    ld b, [hl]
    ld bc, $FFFF
    dec bc
    ld b, c
    nop
    ld d, d
    ld b, l
    ld d, c
    ld d, l
    ld c, c
    ld b, l
    ld c, l
    nop
    nop
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
    nop
    add hl, sp
    ld b, h
    dec h
    ld bc, $4445
    ld b, [hl]
    ld bc, $FFFF
    dec bc
    ld c, e
    ld b, c
    ld c, c
    ld d, a
    ld b, c
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    ld e, h
    ld b, h
    dec h
    ld bc, $4468
    ld b, [hl]
    ld bc, $FFFF
    dec bc
    ld c, e
    ld b, c
    ld c, c
    ld d, a
    ld b, c
    add hl, sp
    nop
    nop
    nop
    nop
    nop
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
    nop
    ld a, a
    ld b, h
    dec h
    ld bc, $448B
    ld b, [hl]
    ld bc, $FFFF
    dec bc
    ld b, e
    ld c, a
    ld c, [hl]
    ld d, h
    ld c, c
    ld c, [hl]
    ld d, l
    ld b, l
    nop
    nop
    nop
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
    nop
    and d
    ld b, h
    dec h
    ld bc, $44AE
    ld b, [hl]
    ld bc, $FFFF
    dec bc
    ld b, c
    nop
    ld c, h
    ld d, l
    ld c, h
    ld c, h
    ld b, c
    ld b, d
    ld e, c
    nop
    nop
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
    nop
    push bc
    ld b, h
    dec h
    ld bc, $44D1
    ld b, [hl]
    ld bc, $FFFF
    dec bc
    ld d, h
    ld d, d
    ld b, c
    ld d, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop

Call_00C_44DE:
    ld hl, $44EA
    ld de, $9360
    ld bc, $0270
    jp $DED7


    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    jr jr_00C_4526

    jr c, jr_00C_4548

    jr jr_00C_452A

    jr jr_00C_452C

    jr jr_00C_452E

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

jr_00C_4526:
    ld a, [hl]
    ld a, [hl]
    nop
    nop

jr_00C_452A:
    nop
    nop

jr_00C_452C:
    inc a
    inc a

jr_00C_452E:
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

jr_00C_4548:
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
    jr jr_00C_458C

    jr jr_00C_458E

    jr jr_00C_4590

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

jr_00C_458C:
    inc a
    inc a

jr_00C_458E:
    ld h, [hl]
    ld h, [hl]

jr_00C_4590:
    ld h, [hl]
    ld h, [hl]
    ld a, $3E
    ld b, $06
    inc a
    inc a
    nop
    nop
    nop
    nop
    inc e
    inc e
    ld a, [hl-]
    ld a, [hl-]
    ld [hl], c
    ld [hl], c
    ld a, a
    ld a, a
    ld [hl], c
    ld [hl], c
    ld [hl], c
    ld [hl], c
    nop
    nop
    nop
    nop
    ld a, [hl]
    ld a, [hl]
    ld [hl], c
    ld [hl], c
    ld a, [hl]
    ld a, [hl]
    ld [hl], c
    ld [hl], c
    ld [hl], c
    ld [hl], c
    ld a, [hl]
    ld a, [hl]
    nop
    nop
    nop
    nop
    ld a, $3E
    ld [hl], c
    ld [hl], c
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld [hl], c
    ld [hl], c
    ld a, $3E
    nop
    nop
    nop
    nop
    ld a, [hl]
    ld a, [hl]
    ld [hl], c
    ld [hl], c
    ld [hl], c
    ld [hl], c
    ld [hl], c
    ld [hl], c
    ld [hl], c
    ld [hl], c
    ld a, [hl]
    ld a, [hl]
    nop
    nop
    nop
    nop
    ld a, a
    ld a, a
    ld [hl], b
    ld [hl], b
    ld a, [hl]
    ld a, [hl]
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld a, a
    ld a, a
    nop
    nop
    nop
    nop
    ld a, a
    ld a, a
    ld [hl], b
    ld [hl], b
    ld a, [hl]
    ld a, [hl]
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld [hl], b
    nop
    nop
    nop
    nop
    ld a, $3E
    ld [hl], c
    ld [hl], c
    ld [hl], b
    ld [hl], b
    ld [hl], a
    ld [hl], a
    ld [hl], c
    ld [hl], c
    ld a, $3E
    nop
    nop
    nop
    nop
    ld [hl], c
    ld [hl], c
    ld [hl], c
    ld [hl], c
    ld a, a
    ld a, a
    ld [hl], c
    ld [hl], c
    ld [hl], c
    ld [hl], c
    ld [hl], c
    ld [hl], c
    nop
    nop
    nop
    nop
    ld a, $3E
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    ld a, $3E
    nop
    nop
    nop
    nop
    ld a, a
    ld a, a
    ld c, $0E
    ld c, $0E
    ld c, $0E
    ld c, [hl]
    ld c, [hl]
    inc a
    inc a
    nop
    nop
    nop
    nop
    ld [hl], d
    ld [hl], d
    ld [hl], h
    ld [hl], h
    ld a, b
    ld a, b
    ld [hl], h
    ld [hl], h
    ld [hl], d
    ld [hl], d
    ld [hl], c
    ld [hl], c
    nop
    nop
    nop
    nop
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld [hl], c
    ld [hl], c
    ld a, a
    ld a, a
    nop
    nop
    nop
    nop
    ld [hl], c
    ld [hl], c
    ld a, e
    ld a, e
    ld [hl], l
    ld [hl], l
    ld [hl], c
    ld [hl], c
    ld [hl], c
    ld [hl], c
    ld [hl], c
    ld [hl], c
    nop
    nop
    nop
    nop
    ld [hl], c
    ld [hl], c
    ld a, c
    ld a, c
    ld [hl], l
    ld [hl], l
    ld [hl], e
    ld [hl], e
    ld [hl], c
    ld [hl], c
    ld [hl], c
    ld [hl], c
    nop
    nop
    nop
    nop
    ld a, $3E
    ld [hl], c
    ld [hl], c
    ld [hl], c
    ld [hl], c
    ld [hl], c
    ld [hl], c
    ld [hl], c
    ld [hl], c
    ld a, $3E
    nop
    nop
    nop
    nop
    ld a, [hl]
    ld a, [hl]
    ld [hl], c
    ld [hl], c
    ld [hl], c
    ld [hl], c
    ld a, [hl]
    ld a, [hl]
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld [hl], b
    nop
    nop
    nop
    nop
    ld a, $3E
    ld [hl], c
    ld [hl], c
    ld [hl], c
    ld [hl], c
    ld [hl], a
    ld [hl], a
    ld [hl], l
    ld [hl], l
    ld a, $3E
    rlca
    rlca
    nop
    nop
    ld a, [hl]
    ld a, [hl]
    ld [hl], c
    ld [hl], c
    ld [hl], c
    ld [hl], c
    ld a, [hl]
    ld a, [hl]
    ld [hl], h
    ld [hl], h
    ld [hl], e
    ld [hl], e
    nop
    nop
    nop
    nop
    ld a, $3E
    ld [hl], c
    ld [hl], c
    ld a, $3E
    ld bc, $7101
    ld [hl], c
    ld a, $3E
    nop
    nop
    nop
    nop
    ld a, a
    ld a, a
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    nop
    nop
    nop
    nop
    ld [hl], c
    ld [hl], c
    ld [hl], c
    ld [hl], c
    ld [hl], c
    ld [hl], c
    ld [hl], c
    ld [hl], c
    ld [hl], c
    ld [hl], c
    ld a, $3E
    nop
    nop
    nop
    nop
    ld [hl], c
    ld [hl], c
    ld [hl], c
    ld [hl], c
    ld [hl], c
    ld [hl], c
    ld [hl], c
    ld [hl], c
    ld a, [hl-]
    ld a, [hl-]
    inc e
    inc e
    nop
    nop
    nop
    nop
    ld [hl], c
    ld [hl], c
    ld [hl], c
    ld [hl], c
    ld [hl], c

Call_00C_4701:
    ld [hl], c
    ld [hl], l
    ld [hl], l
    ld a, e
    ld a, e
    ld [hl], c
    ld [hl], c
    nop
    nop
    nop
    nop
    ld h, c
    ld h, c
    ld [hl], d
    ld [hl], d
    inc a
    inc a
    inc e
    inc e
    ld l, $2E
    ld b, a
    ld b, a
    nop
    nop
    nop
    nop
    ld h, c
    ld h, c
    ld [hl], d
    ld [hl], d
    inc a
    inc a
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    nop
    nop
    nop
    nop
    ld a, a
    ld a, a
    ld c, $0E
    inc e
    inc e
    jr c, @+$3A

    ld [hl], b
    ld [hl], b
    ld a, a
    ld a, a
    nop
    nop
    inc a
    inc a
    ld b, d
    ld b, d
    cp l
    cp l
    and c
    and c
    and c
    and c
    cp l
    cp l
    ld b, d
    ld b, d
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
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    nop
    nop

Call_00C_475A:
Jump_00C_475A:
jr_00C_475A:
    ld e, [hl]
    inc hl
    ld d, [hl]
    inc hl
    ld a, d
    and e
    inc a
    ret z

    ld c, [hl]
    inc hl
    ld b, [hl]
    inc hl
    push hl
    ld hl, $9800
    add hl, bc
    call Call_00C_4779
    call $DDA8
    ld c, [hl]
    inc hl
    call Call_00C_478B
    pop hl
    jr jr_00C_475A

Call_00C_4779:
    ldh a, [$84]
    bit 2, b
    jr nz, jr_00C_4785

    bit 3, a
    ret z

    set 2, h
    ret


jr_00C_4785:
    bit 6, a
    ret nz

    res 2, h
    ret


Call_00C_478B:
jr_00C_478B:
    di

jr_00C_478C:
    ldh a, [rSTAT]
    bit 1, a
    jr nz, jr_00C_478C

    ld a, [hl+]
    ld [de], a
    ei
    inc e
    ld a, e
    and $1F
    jr nz, jr_00C_479F

    ld a, e
    sub $20
    ld e, a

jr_00C_479F:
    dec c
    jr nz, jr_00C_478B

    ret


    ld a, [$C521]
    rst $00
    pop hl
    ld b, a
    ld bc, $AA48
    ld c, b
    or [hl]
    ld c, b
    jp $F248


    ld c, b
    ld a, [de]
    ld c, c
    jr c, @+$4B

    ld a, l
    ld c, c
    and l
    ld c, c
    cp d
    ld c, c
    push de
    ld c, c
    db $E3
    ld c, c
    inc de
    ld c, d
    inc [hl]
    ld c, d
    ld l, e
    ld c, d
    add b
    ld c, d
    add c
    ld c, d
    rst $08
    ld c, d
    add hl, sp
    ld c, e
    ld d, c
    ld c, e
    ld a, l
    ld c, e
    xor h
    ld c, e
    db $EC
    ld c, e
    ld b, $4C
    ld a, [de]
    ld c, h
    ld d, h
    ld c, h
    ld l, a
    ld c, h
    and [hl]
    ld c, h
    ld hl, $38DB
    call Call_000_373C
    ld bc, $0004
    call Call_000_38FB
    ld hl, $37BB
    call Call_000_373C
    ld bc, $0004
    call Call_000_38FB
    ld a, $08
    call Call_000_0629
    jp Jump_000_0BD6


    call Call_000_0644
    ret c

    call Call_000_0562
    call Call_000_05DA
    ld hl, $0790
    call Call_000_05B2
    call Call_000_05FD
    ld hl, $4D1F
    call Call_000_2E53
    ld de, $C500
    call Call_000_2183
    ld bc, $6020
    call Call_000_2098
    ld bc, $0040
    call Call_000_20E2
    ld a, $AE
    ld [$C50D], a
    ld a, $11
    ld [$C50E], a
    ld de, $C600
    call Call_000_2183
    ld bc, $5050
    call Call_000_2098
    ld bc, $0040
    call Call_000_20E2
    ld a, $B4
    ld [$C60D], a
    ld a, $11
    ld [$C60E], a
    call Call_00C_4CA7
    call Call_00C_4CDA
    xor a
    ldh [$87], a
    ldh [$86], a
    ld a, $02
    call Call_000_01F4
    xor a
    ld [$C782], a
    xor a
    ld [$C774], a
    ld [$C77B], a
    call Call_000_1E59
    call Call_000_1E61
    ld a, $F0
    ld [$C774], a
    ld bc, $0028
    ld a, b
    ld [$C772], a
    ld a, c
    ld [$C770], a
    ld a, $08
    call Call_000_0629
    ld a, [$C73D]
    or a
    jp z, Jump_000_0BD6

    ld hl, $38DB
    call Call_000_373C
    ld bc, $0004
    call Call_000_38FB
    ld hl, $37DB
    call Call_000_373C
    ld bc, $0004
    call Call_000_38FB
    jp Jump_000_0BD6


    call Call_000_0635
    ret c

    ld a, $20
    ld [$C514], a
    jp Jump_000_0BD6


    ld hl, $C514
    dec [hl]
    ret nz

    ld a, $01
    ld [$C782], a
    jp Jump_000_0BD6


    ld hl, $C500
    call Call_000_20C4
    ld hl, $C600
    call Call_000_20C4
    ld a, [$C50C]
    cp $78
    ret nz

    ld a, $B5
    ld [$C60D], a
    xor a
    ld [$C774], a
    ld [$C77B], a
    ld [$C782], a
    call Call_000_1E59
    call Call_000_1E61
    ld a, $40
    ld [$C514], a
    jp Jump_000_0BD6


    ld hl, $C514
    dec [hl]
    ret nz

    ld bc, $FE00
    ld a, b
    ld [$C772], a
    ld a, c
    ld [$C770], a
    ld bc, $FFE0
    ld a, b
    ld [$C779], a
    ld a, c
    ld [$C777], a
    ld a, $01
    ld [$C782], a
    ld a, $37
    call Call_000_0875
    jp Jump_000_0BD6


    ld a, [$C772]
    cpl
    inc a
    ld [$C772], a
    ld a, [$C77B]
    cp $90
    ret nz

    xor a
    ld [$C782], a
    call Call_000_1E59
    call Call_000_1E61
    call Call_000_0583
    jp Jump_000_0BD6


    xor a
    ld [$C774], a
    ld [$C77B], a
    ld [$C731], a
    call Call_000_36A2
    ld a, $0B
    ld [$C731], a
    ld hl, $6EC1
    ld de, $9E21

jr_00C_4950:
    ld c, [hl]
    ld b, $00
    inc hl
    push de
    call $DED7
    pop de
    ld a, $20
    rst $30
    ld a, [$C731]
    dec a
    ld [$C731], a
    jr nz, jr_00C_4950

    ld bc, $0038
    ld a, c
    ld [$C777], a
    ld a, b
    ld [$C779], a
    ld a, $01
    ld [$C782], a
    ld a, $61
    call Call_000_0875
    jp Jump_000_0BD6


    ld a, [$C77B]
    cp $F0
    ret c

    call Call_000_0583
    ld a, [$C758]
    and $1F
    cp $1F
    jr nz, jr_00C_4997

    ld a, $10
    ld [$C731], a
    jp Jump_000_0BD6


jr_00C_4997:
    ld a, $20
    call Call_000_0629
    xor a
    call Call_000_01F4
    ld a, $0C
    jp Jump_000_0BDA


    ld hl, $C731
    dec [hl]
    ret nz

    ld de, $C500
    ld bc, $5045
    call Call_000_2F92
    xor a
    ld [$C782], a
    jp Jump_000_0BD6


    ld de, $C500
    ld hl, $5045
    call Call_000_2F9F
    ld a, [$C510]
    cp $FF
    ret nz

    ld de, $C500
    ld bc, $504E
    call Call_000_2F92
    jp Jump_000_0BD6


    ld de, $C500
    ld hl, $504E
    call Call_000_2F9F
    ld a, $11
    jp Jump_000_0BDA


    call Call_000_063A
    ret c

    xor a
    call Call_000_01F4
    call Call_000_0562
    call Call_00C_44DE
    ld a, $27
    ldh [$88], a
    xor a
    ldh [$87], a
    ldh [$86], a
    ld hl, $4D9D
    call Call_00C_475A

Jump_00C_4A00:
    ld hl, $9947
    call Call_00C_4CF1
    ld a, $40
    ld [$C731], a
    ld a, $02
    ld [$C732], a
    jp Jump_000_0BD6


    ld hl, $C731
    dec [hl]
    ret nz

    ld a, $40
    ld [$C731], a
    ld hl, $C732
    dec [hl]
    ret nz

    ld bc, $0050
    ld a, c
    ld [$C777], a
    ld a, b
    ld [$C779], a
    xor a
    ld [$C731], a
    jp Jump_000_0BD6


    xor a
    ld [$C77A], a
    ld hl, $C777
    call Call_000_1E7A
    ld a, [$C77A]
    or a
    ret z

    ld hl, $FF86
    add [hl]
    ld [hl], a
    ld a, [$C731]
    ld hl, $502F
    rst $28
    ld b, [hl]
    ldh a, [$86]
    cp b
    ret c

    ld a, [$C731]
    inc a
    ld [$C731], a
    cp $0C
    ld a, $10
    jp z, Jump_000_0BDA

    call Call_000_057C
    xor a
    ldh [$86], a
    jp Jump_000_0BD6


    ldh a, [rSCY]
    or a
    ret nz

    ld a, [$C731]
    ld hl, $4D85
    call $DDD6
    call Call_00C_475A
    ld a, $0E
    jp Jump_000_0BDA


    ret


    ld de, $C500
    ld hl, $504E
    call Call_000_2F9F
    xor a
    ld [$C774], a
    ld [$C77B], a
    ld de, $C500
    ld hl, $504E
    call Call_000_2F9F
    ld hl, $6F5E
    ld de, $9E21
    ld a, e
    ld [$C785], a
    ld a, d
    ld [$C786], a
    ld bc, $000C
    call $DED7
    ld bc, $0038
    ld a, c
    ld [$C777], a
    ld a, b
    ld [$C779], a
    ld a, $01
    ld [$C782], a
    ld a, $01
    ld [$C782], a
    xor a
    ld [$C731], a
    ld a, $08
    ld [$C732], a
    jp Jump_000_0BD6


    ld de, $C500
    ld hl, $504E
    call Call_000_2F9F
    ld a, [$C77A]
    or a
    ret z

    ld hl, $C732
    dec [hl]
    ret nz

    ld a, $10
    ld [$C732], a
    ld a, [$C731]
    inc a
    ld [$C731], a
    cp $19
    jp z, Jump_00C_4B31

    ld a, [$C785]
    ld e, a
    ld a, [$C786]
    ld d, a
    ld a, $20
    rst $30
    ld a, d
    cp $A0
    jr nz, jr_00C_4B05

    ld d, $9C

jr_00C_4B05:
    push de
    ld a, [$C731]
    ld hl, $6F2C
    call $DDD6
    pop de
    push de
    ld bc, $000C
    call $DED7
    pop de
    ld a, $20
    rst $30
    ld a, d
    cp $A0
    jr nz, jr_00C_4B22

    ld d, $9C

jr_00C_4B22:
    ld a, e
    ld [$C785], a
    ld a, d
    ld [$C786], a
    ld bc, $000C
    call $DED7
    ret


Jump_00C_4B31:
    ld a, $10
    ld [$C731], a
    jp Jump_000_0BD6


    ld de, $C500
    ld hl, $504E
    call Call_000_2F9F
    ld hl, $C731
    dec [hl]
    ret nz

    call Call_000_0583
    xor a
    ld [$C782], a
    jp Jump_000_0BD6


    xor a
    ld [$C774], a
    ld [$C77B], a
    ld de, $C500
    ld hl, $504E
    call Call_000_2F9F
    call Call_00C_44DE
    ld hl, $4F9B
    call Call_00C_475A
    ld hl, $9D22
    call Call_00C_4CF1
    ld a, $40
    ld [$C731], a
    ld a, $02
    ld [$C732], a
    jp Jump_000_0BD6


    ld de, $C500
    ld hl, $504E
    call Call_000_2F9F
    ld hl, $C731
    dec [hl]
    ret nz

    ld a, $40
    ld [$C731], a
    ld hl, $C732
    dec [hl]
    ret nz

    ld bc, $0050
    ld a, c
    ld [$C777], a
    ld a, b
    ld [$C779], a
    ld a, $01
    ld [$C782], a
    xor a
    ld [$C731], a
    jp Jump_000_0BD6


    ld de, $C500
    ld hl, $504E
    call Call_000_2F9F
    ld a, [$C731]
    ld hl, $503B
    rst $28
    ld b, [hl]
    ld a, [$C77B]
    cp b
    ret c

    ld a, [$C731]
    inc a
    ld [$C731], a
    cp $0A
    jp z, Jump_00C_4BD8

    call Call_000_0583
    xor a
    ld [$C77B], a
    jp Jump_000_0BD6


Jump_00C_4BD8:
    call Call_000_0583
    call Call_000_1E61
    xor a
    ld [$C782], a
    ld a, $20
    call Call_000_0629
    ld a, $18
    jp Jump_000_0BDA


    ld de, $C500
    ld hl, $504E
    call Call_000_2F9F
    ld a, [$C731]
    ld hl, $4F87
    call $DDD6
    call Call_00C_475A
    ld a, $16
    jp Jump_000_0BDA


    ld de, $C500
    ld hl, $504E
    call Call_000_2F9F
    call Call_000_063A
    ret c

    xor a
    call Call_000_01F4
    jp Jump_000_0BD6


    call Call_000_0604
    ld hl, $4D3E
    call Call_000_2E53
    ld hl, $5AA0
    call Call_000_16DF
    ld a, $08
    call Call_000_0629
    xor a
    ld [$C731], a
    ld a, [$C73D]
    or a
    jp z, Jump_000_0BD6

    ld hl, $38DB
    call Call_000_373C
    ld bc, $0004
    call Call_000_38FB
    ld hl, $385B
    call Call_000_373C
    ld bc, $0004
    call Call_000_38FB
    jp Jump_000_0BD6


    call Call_000_063F
    ret c

    ld a, $00
    call Call_000_0875
    ld a, $41
    call Call_000_0875
    ld a, $40
    ld [$C732], a
    ld a, $05
    ld [$C733], a
    jp Jump_000_0BD6


    ld hl, $C732
    dec [hl]
    ret nz

    ld a, $40
    ld [$C732], a
    ld hl, $C733
    dec [hl]
    ret nz

    ld a, $05
    ld [$C733], a
    ld a, [$C731]
    inc a
    ld [$C731], a
    cp $08
    jp z, Jump_000_0BD6

    xor a
    ld hl, $8A00
    ld bc, $0600
    call $DEE8
    ld a, [$C731]
    ld hl, $4D2E
    call $DDD6
    call Call_000_2E53
    ret


    ret


Call_00C_4CA7:
    ld hl, $5598
    ld de, $9800
    ld bc, $0014
    call $DED7
    ld a, $0C
    rst $30
    ld bc, $0014
    call $DED7
    ld a, $0C
    rst $30
    ld bc, $0014
    call $DED7
    ld hl, $56D8
    ld de, $9A00
    ld bc, $0014
    call $DED7
    ld a, $0C
    rst $30
    ld bc, $0014
    jp $DED7


Call_00C_4CDA:
    ld hl, $55D4
    ld de, $9C60
    ld a, $0D

jr_00C_4CE2:
    push af
    ld bc, $0014
    call $DED7
    ld a, $0C
    rst $30
    pop af
    dec a
    jr nz, jr_00C_4CE2

    ret


Call_00C_4CF1:
    ld de, $C75B
    ld b, $03

jr_00C_4CF6:
    di
    push hl
    call Call_000_0089
    pop hl
    ld a, [de]
    swap a
    and $0F
    add $37
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
    add $37
    ld [hl+], a
    nop
    nop
    nop
    nop
    nop
    ei
    dec de
    dec b
    jr nz, jr_00C_4CF6

    ret


    ld bc, $530C
    ld d, b
    add b
    nop
    halt
    ld bc, $000C
    ld d, a
    add b
    ld bc, $0057
    ld a, $4D
    ld c, l
    ld c, l
    ld d, l
    ld c, l
    ld e, l
    ld c, l
    ld h, l
    ld c, l
    ld l, l
    ld c, l
    ld [hl], l
    ld c, l
    ld a, l
    ld c, l
    ld bc, $080C
    ld e, h
    add b
    ld bc, $0180
    inc c
    sbc a
    ld h, e
    nop
    ld bc, $0080
    ld bc, $C40C
    ld h, [hl]
    jr nz, jr_00C_4D54

    ld d, e

jr_00C_4D54:
    nop
    ld bc, $CC0C
    ld h, a
    jr nz, jr_00C_4D5C

    ld d, e

jr_00C_4D5C:
    nop
    ld bc, $EB0C
    ld l, b
    jr nz, jr_00C_4D64

    ld d, l

jr_00C_4D64:
    nop
    ld bc, $130C
    ld l, d
    jr nz, jr_00C_4D6C

    ld d, [hl]

jr_00C_4D6C:
    nop
    ld bc, $A80C
    ld l, e
    jr nz, jr_00C_4D74

    ld b, l

jr_00C_4D74:
    nop
    ld bc, $A40C
    ld l, h
    jr nz, jr_00C_4D7C

    scf

jr_00C_4D7C:
    nop
    ld bc, $6B0C
    ld l, l
    jr nz, jr_00C_4D84

    ld b, [hl]

jr_00C_4D84:
    nop
    sbc l
    ld c, l
    xor l
    ld c, l
    cp c
    ld c, l
    rst $18
    ld c, l
    ld b, $4E
    inc sp
    ld c, [hl]
    ld h, [hl]
    ld c, [hl]
    xor d
    ld c, [hl]
    db $DD
    ld c, [hl]
    inc hl
    ld c, a
    ld sp, $3F4F
    ld c, a
    and e
    ld c, l
    push hl
    nop
    rst $38
    rst $38
    add hl, bc
    ld c, b
    ld c, c
    ld d, h
    nop
    ld d, e
    ld b, e
    ld c, a
    ld d, d
    ld b, l
    or e
    ld c, l
    and a
    ld [bc], a
    rst $38
    rst $38
    dec b
    ld d, e
    ld d, h
    ld b, c
    ld b, [hl]
    ld b, [hl]
    rst $00
    ld c, l
    and c
    ld [bc], a
    ret nc

    ld c, l
    db $E3
    ld [bc], a
    reti


    ld c, l
    db $EC
    ld [bc], a
    rst $38
    rst $38
    ld [$5250], sp
    ld c, a
    ld b, h
    ld d, l
    ld b, e
    ld b, l
    ld d, d
    ld [$4948], sp
    ld d, d
    ld c, a
    ld e, c
    ld d, l
    ld c, e
    ld c, c
    dec b
    ld b, [hl]
    ld d, l
    ld c, e
    ld d, l
    ld c, c
    db $ED
    ld c, l
    and c
    ld [bc], a
    or $4D
    db $E3
    ld [bc], a
    db $FC
    ld c, l
    jp hl


    ld [bc], a
    rst $38
    rst $38
    ld [$4944], sp
    ld d, d
    ld b, l
    ld b, e
    ld d, h
    ld c, a
    ld d, d
    dec b
    ld c, e
    ld c, a
    ld d, l
    ld c, e
    ld c, c
    add hl, bc
    ld e, c
    ld b, c
    ld c, l
    ld b, c
    ld d, e
    ld c, b
    ld c, c
    ld d, h
    ld b, c
    inc d
    ld c, [hl]
    and c
    ld [bc], a
    rra
    ld c, [hl]
    db $E3
    ld [bc], a
    add hl, hl
    ld c, [hl]
    ld [$FF03], sp
    rst $38
    ld a, [bc]
    ld d, b
    ld d, d
    ld c, a
    ld b, a
    ld d, d
    ld b, c
    ld c, l
    ld c, l
    ld b, l
    ld d, d
    add hl, bc
    ld e, c
    ld c, a
    ld d, e
    ld c, b
    ld c, c
    ld d, h
    ld b, l
    ld d, d
    ld d, l
    add hl, bc
    ld e, c
    ld b, c
    ld c, l
    ld b, c
    ld b, a
    ld d, l
    ld b, e
    ld c, b
    ld c, c
    ld b, l
    ld c, [hl]
    and c
    ld [bc], a
    ld c, l
    ld c, [hl]
    xor c
    ld [bc], a
    ld d, [hl]
    ld c, [hl]
    db $E3
    ld [bc], a
    ld e, a
    ld c, [hl]
    db $EC
    ld [bc], a
    rst $38
    rst $38
    rlca
    ld b, a
    ld d, d
    ld b, c
    ld d, b
    ld c, b
    ld c, c
    ld b, e
    ld [$4544], sp
    ld d, e
    ld c, c
    ld b, a
    ld c, [hl]
    ld b, l
    ld d, d
    ld [$414B], sp
    ld e, d
    ld d, l
    ld c, [hl]
    ld c, a
    ld b, d
    ld d, l
    ld b, $55
    ld b, e
    ld c, b
    ld c, c
    ld b, h
    ld b, c
    add b
    ld c, [hl]
    and c
    ld [bc], a
    add [hl]
    ld c, [hl]
    and a
    ld [bc], a
    sub b
    ld c, [hl]
    db $E3
    ld [bc], a
    sub [hl]
    ld c, [hl]
    jp hl


    ld [bc], a
    sbc h
    ld c, [hl]
    inc bc
    inc bc
    and h
    ld c, [hl]
    dec bc
    inc bc
    rst $38
    rst $38
    dec b
    ld d, e
    ld c, a
    ld d, l
    ld c, [hl]
    ld b, h
    add hl, bc
    ld b, h
    ld b, l
    ld d, e
    ld c, c
    ld b, a
    ld c, [hl]
    ld b, l
    ld d, d
    ld d, e
    dec b
    ld c, e
    ld b, c
    ld c, a
    ld d, d
    ld d, l
    dec b
    ld c, a
    ld c, e
    ld b, c
    ld b, h
    ld b, c
    rlca
    ld e, c
    ld c, a
    ld d, l
    ld c, c
    ld b, e
    ld c, b
    ld c, c
    dec b
    ld c, c
    ld d, a
    ld b, c
    ld d, h
    ld b, c
    cp h
    ld c, [hl]
    and c
    ld [bc], a
    call nz, $A94E
    ld [bc], a
    call $E34E
    ld [bc], a
    push de
    ld c, [hl]
    db $EB
    ld [bc], a
    rst $38
    rst $38
    rlca
    ld d, b
    ld d, d
    ld c, a
    ld b, h
    ld d, l
    ld b, e
    ld d, h
    ld [$4544], sp
    ld d, e
    ld c, c
    ld b, a
    ld c, [hl]
    ld b, l
    ld d, d
    rlca
    ld d, h
    ld d, e
    ld d, l
    ld c, e
    ld b, c
    ld d, e
    ld b, c
    rlca
    ld c, b
    ld c, c
    ld e, c
    ld c, a
    ld d, e
    ld c, b
    ld c, c
    rst $30
    ld c, [hl]
    and c
    ld [bc], a
    rst $38
    ld c, [hl]
    xor c
    ld [bc], a
    ld b, $4F
    db $E3
    ld [bc], a
    rrca
    ld c, a
    db $EC
    ld [bc], a
    ld d, $4F
    inc bc
    inc bc
    dec de
    ld c, a
    ld [$FF03], sp
    rst $38
    rlca
    ld d, e
    ld d, b
    ld b, l
    ld b, e
    ld c, c
    ld b, c
    ld c, h
    ld b, $54
    ld c, b
    ld b, c
    ld c, [hl]
    ld c, e
    ld d, e
    ld [$4F54], sp
    ld e, c
    ld c, a
    ld c, b
    ld c, c
    ld d, d
    ld c, a
    ld b, $59
    ld b, c
    ld c, l
    ld b, c
    ld b, h
    ld b, c
    inc b
    ld d, h
    ld b, l
    ld b, c
    ld c, l
    rlca
    ld b, c
    ld d, b
    ld b, l
    ld c, c
    ld d, d
    ld c, a
    ld c, [hl]
    add hl, hl
    ld c, a
    and [hl]
    ld [bc], a
    rst $38
    rst $38
    rlca
    ld b, c
    ld c, [hl]
    ld b, h
    nop
    ld e, c
    ld c, a
    ld d, l
    scf
    ld c, a
    and [hl]
    ld [bc], a
    rst $38
    rst $38
    rlca
    ld d, h
    ld c, b
    ld b, l
    nop
    ld b, l
    ld c, [hl]
    ld b, h
    ld d, c
    ld c, a
    and h
    ld [bc], a
    ld e, [hl]
    ld c, a
    rst $20
    ld [bc], a
    ld h, l
    ld c, a
    and h
    inc bc
    ld [hl], d
    ld c, a
    ret nz

    inc bc
    rst $38
    rst $38
    inc c
    ld d, b
    ld d, d
    ld b, l
    ld d, e
    ld b, l
    ld c, [hl]
    ld d, h
    ld b, l
    ld b, h
    nop
    ld b, d
    ld e, c
    ld b, $4B
    ld c, a
    ld c, [hl]
    ld b, c
    ld c, l
    ld c, c
    inc c
    ld e, e
    jr c, jr_00C_4FA9

    ld b, b
    ld a, $00
    ld c, e
    ld c, a
    ld c, [hl]
    ld b, c
    ld c, l
    ld c, c
    inc d
    ld b, c
    ld c, h
    ld c, h
    nop
    ld d, d
    ld c, c
    ld b, a
    ld c, b
    ld d, h
    ld d, e
    nop
    ld d, d
    ld b, l
    ld d, e
    ld b, l
    ld d, d
    ld d, [hl]
    ld b, l
    ld b, h
    ld e, h
    sbc e
    ld c, a
    and c
    ld c, a
    and a
    ld c, a
    or l
    ld c, a
    jp $D14F


    ld c, a
    db $E3
    ld c, a
    db $FD
    ld c, a
    rrca
    ld d, b
    add hl, hl
    ld d, b
    and e
    ld c, l
    pop hl
    inc b
    rst $38
    rst $38
    or e
    ld c, l
    and e
    ld b, $FF
    rst $38
    rst $00
    ld c, l

jr_00C_4FA9:
    and c
    ld b, $D0
    ld c, l
    ld [c], a
    ld b, $D9
    ld c, l
    inc bc
    rlca
    rst $38
    rst $38
    db $ED
    ld c, l
    and c
    ld b, $F6
    ld c, l
    ld [c], a
    ld b, $FC
    ld c, l
    inc bc
    rlca
    rst $38
    rst $38
    inc d
    ld c, [hl]
    and c
    ld b, $1F
    ld c, [hl]
    ld [c], a
    ld b, $29
    ld c, [hl]
    inc bc
    rlca
    rst $38
    rst $38
    ld b, l
    ld c, [hl]
    and c
    ld b, $4D
    ld c, [hl]
    jp nz, Jump_00C_5606

    ld c, [hl]
    ld [bc], a
    rlca
    ld e, a
    ld c, [hl]
    inc hl
    rlca
    rst $38
    rst $38
    add b
    ld c, [hl]
    and c
    ld b, $86
    ld c, [hl]
    jp nz, $9006

    ld c, [hl]
    ld [bc], a
    rlca
    sub [hl]
    ld c, [hl]
    inc hl
    rlca
    sbc h
    ld c, [hl]
    ld h, d
    rlca
    and h
    ld c, [hl]

jr_00C_4FF9:
    add e
    rlca
    rst $38
    rst $38
    cp h
    ld c, [hl]
    and c
    ld b, $C4
    ld c, [hl]
    jp nz, $CD06

    ld c, [hl]
    ld [bc], a
    rlca
    push de
    ld c, [hl]
    inc hl
    rlca
    rst $38
    rst $38
    rst $30
    ld c, [hl]
    and c
    ld b, $FF
    ld c, [hl]
    jp nz, Jump_000_0606

    ld c, a
    ld [bc], a
    rlca
    rrca
    ld c, a
    inc hl
    rlca
    ld d, $4F
    ld h, d
    rlca
    dec de
    ld c, a
    add e
    rlca
    rst $38
    rst $38
    add hl, hl
    ld c, a
    and e
    ld b, $FF
    rst $38
    ld l, b
    cp b
    ret nz

    ret nz

    ret z

    ret nz

    ret nc

    ret nz

    ret z

    cp b
    cp b
    ld l, b
    ld d, b
    and b
    or b
    or b
    cp b
    ret nz

    ret c

    ret nz

    ret nc

    and b
    db $10
    xor a
    jr nc, jr_00C_4FF9

    db $10
    or c
    ld [$FFB2], sp
    ld [$08B3], sp
    or d
    cp $65
    nop
    sbc $66
    ld bc, $68E8
    sbc $65
    rlca
    rlca
    sbc $61
    rst $38
    ld [hl], $36
    ld e, a
    ld c, c
    sbc a
    jp hl


    ccf
    ld sp, hl
    rst $38
    ld c, a
    ld sp, hl
    ld c, a
    jp hl


    adc a

jr_00C_506F:
    ret


    adc a
    set 7, a
    sbc [hl]
    db $D3
    db $FC
    rst $10
    rst $38
    ei
    ld a, l
    ld [hl], e
    rst $28
    ld l, $36
    rst $28
    ret


    sbc $63
    add b
    add b
    ret nz

    rst $18
    ld b, b
    ldh [rNR41], a
    ldh a, [rNR10]
    ld a, [hl+]
    inc bc
    jr nz, jr_00C_506F

    rst $38
    ret nz

    ret nz

    ldh [$60], a
    ret nc

    sub b
    ldh a, [$90]
    rst $38
    ld hl, sp-$28
    rrca
    add hl, bc
    rla
    inc de
    cpl
    daa
    rst $38
    dec a
    daa
    ld e, e
    ld c, h
    ld [hl], a
    ld e, b
    cp a
    sbc h
    rst $38
    rst $30
    cp e
    ld a, [$7DB5]
    ld e, d
    ld a, a
    ld e, l
    rst $38
    ccf
    cpl
    rra
    ld d, $0E
    rrca
    rrca
    inc c
    rst $38
    rlca
    dec b
    sbc a
    sub d
    cpl
    daa
    rst $08
    ld a, h
    rst $38

jr_00C_50C6:
    cp e
    sbc b
    rst $30
    jr c, jr_00C_50C6

    inc h
    rst $10
    ld c, c
    rst $38
    rst $30
    res 5, a
    sub a
    db $FC
    adc a
    ld a, b
    rrca
    rst $38
    pop af
    ld e, $61
    cp a
    db $E3
    ld a, l
    add $FA
    rst $38
    adc h
    db $FC
    inc [hl]
    inc h
    db $FC
    db $FC
    db $FC
    inc b
    rst $38
    cp $02
    rst $38
    inc bc
    rst $38
    ld a, d
    rst $38
    cp $FF
    rst $08
    rst $38
    adc [hl]
    cp $C6
    cp $D4
    db $EC
    ccf
    db $E4
    call c, Call_00C_546C
    ld [hl-], a
    ld l, $98
    ld bc, $67DE
    sbc $E0
    ld h, a
    ld [bc], a
    ld [bc], a
    inc bc
    ld [bc], a
    ld a, [c]
    ld h, l
    inc bc
    rlca
    rst $38
    dec b
    inc b
    dec b
    inc b
    rrca
    rrca
    dec e
    ld e, $FF
    ld e, $1D
    dec l
    ld a, $5E
    ld a, l
    sbc l
    cp $FF
    ld a, [hl-]
    ld a, a
    cp l
    ld a, e
    sbc $39
    db $EB
    jr @+$01

    jp hl


    ret c

    add hl, sp
    jr c, jr_00C_5141

    rrca
    rst $38
    rst $30
    rst $38
    ld a, c
    ld c, b
    rst $38
    ld e, b
    rst $38
    ei
    ld l, d
    cp c
    rst $38
    push hl
    ld a, h

jr_00C_5141:
    or e
    rst $28
    or b
    rst $28
    sub b
    rst $38
    rst $38
    xor c
    rst $18
    db $FC
    adc e
    db $F4
    adc a
    adc $85
    rst $38
    rst $00
    add d
    add $C2
    add $C2
    ld [hl-], a
    ld l, $FF
    cp [hl]
    and [hl]
    sbc l
    sbc e
    ld d, a
    pop de
    rst $10
    ld d, a
    rst $38
    ret


    ld c, e
    db $EB
    jp hl


    ei
    ld sp, hl
    or l
    di
    rst $38
    rla
    pop af
    rra
    pop af
    dec c
    ei
    ld e, $E6
    ccf
    ld a, h
    add h
    ld hl, sp+$08
    ldh a, [$30]
    sbc $65
    inc h
    ld bc, $60FD
    scf
    nop
    ret nc

    sub b
    cp b
    ret c

    ld [hl], h
    ld h, h
    ccf
    dec sp
    inc hl
    ld a, $33
    ld e, $1F
    ld a, [c]
    ld h, a
    sbc [hl]
    dec bc
    rst $38
    ldh [$E0], a
    ld de, $FB11
    dec de
    ld l, a
    adc l
    rst $28
    ld a, $C2
    db $FC
    db $FC
    ld [c], a
    ld h, l
    inc bc
    ld [bc], a
    ld b, $FF
    dec b
    ld b, $05
    rlca
    dec b
    dec c
    dec bc
    dec c
    ld a, a
    dec bc
    rrca
    dec bc
    dec c
    dec c
    inc b
    inc b
    ld hl, sp+$67
    rst $38
    adc $CE
    db $DD
    ld e, c
    ld h, $FC
    ld [hl], a
    db $FC
    rst $38
    rst $38
    add h
    daa
    sbc l
    rla
    or l

jr_00C_51CA:
    rlca
    adc l
    rst $38
    rla
    dec c
    rst $08
    ld a, [de]
    adc a
    sbc e
    ld [hl], l
    ld a, l
    ld h, a
    ld l, $36
    rst $38
    dec e
    inc b
    ld [hl+], a
    ld [bc], a
    add b
    ret nz

    xor d
    ld hl, $40F9
    xor [hl]
    ld hl, $0124
    and b
    jr nz, jr_00C_51CA

    and b
    ldh [$F5], a
    ret nz

    ld e, $27
    ld b, b
    xor a
    ld [hl+], a
    ldh [$E0], a
    db $D3
    sub e
    rst $38
    db $EC
    adc h
    ei
    call z, Call_00C_7E79
    inc b

Jump_00C_51FF:
    rlca
    ei

jr_00C_5201:
    inc bc
    inc bc
    inc a
    ld sp, $8080
    ld b, h
    ld b, h
    db $EC
    sub a
    ld l, h
    cp h
    inc [hl]
    ld a, [de]
    jr nz, jr_00C_5201

    ldh [$67], a
    ld h, [hl]
    dec h
    ccf
    rst $38
    ccf
    ld e, a
    ld b, a
    and e
    sbc a

jr_00C_521C:
    pop de
    xor a
    ret


    ld a, a
    cp a
    adc [hl]
    rst $30
    rst $00
    cp a
    ld l, a
    ld e, [hl]
    ld a, [hl]
    ld [hl-], a
    rst $38
    rrca
    jp z, $8E19

    sbc c
    ldh a, [$F7]
    reti


    rst $20
    rst $30
    pop af
    sbc [hl]
    sbc [hl]
    ld sp, $0124
    jr nz, jr_00C_521C

    db $10
    rst $38
    ldh a, [$88]
    ld hl, sp-$38
    ld hl, sp+$7F
    ld a, c
    scf
    db $FD
    inc sp
    ld b, d
    add hl, de
    sbc b
    sub a
    jr c, jr_00C_528D

    call c, $FF5B
    or [hl]
    sbc l
    rst $30
    ld l, $FB
    daa
    rst $10
    ld c, e
    rst $30
    rst $30
    res 5, [hl]
    ld l, a
    inc c
    db $E4
    inc a
    ld a, [hl]
    cp [hl]
    rst $38
    dec a
    reti


    rla
    db $FD
    dec d
    rst $38
    cp a
    rst $20
    rst $38
    cp e
    ld [$F233], a
    ld b, d
    jp Jump_00C_41C1


jr_00C_5275:
    adc a
    add c
    add c
    add b
    add b
    and $29
    add $20
    xor l
    ld [hl+], a
    ldh [rIE], a
    ldh [$F8], a
    ld hl, sp-$64
    db $FC
    ld b, $FE
    inc bc
    rra
    db $FD
    dec c

jr_00C_528D:
    di
    ld e, $E2
    jr jr_00C_52C0

    xor c
    ld hl, $22AF
    cp $26
    ld bc, $B070
    jr c, jr_00C_5275

    db $F4
    db $E4
    dec sp
    ld a, c
    inc de
    inc a
    inc sp
    sbc $63
    ld hl, sp-$08
    inc [hl]
    inc b
    ld a, $1D
    set 3, a
    sub e
    ld h, b
    nop
    ld a, l
    ld h, h
    rlca
    adc [hl]
    ld b, e
    ldh a, [$1F]
    db $FD
    ld h, b
    ld [hl], a
    inc b
    ld a, l
    ld [$0CFF], sp

jr_00C_52C0:
    db $FD
    adc [hl]
    rst $38
    cp $E7
    rst $18
    ld b, a
    rst $38
    ld c, e
    rst $30
    db $D3
    rst $38
    ld l, [hl]
    and $FA
    adc [hl]
    pop af
    sbc a
    ld [hl], c
    rst $28
    rst $38
    pop hl
    ld a, a
    pop af
    rst $28
    ld a, $32
    inc e
    inc e
    rst $38
    nop
    nop
    ld a, [$BF02]
    ld b, c
    xor $10
    rst $38
    db $DB
    inc c
    xor a
    ld b, h
    ld d, l
    and [hl]
    rst $28
    or d
    rst $38
    or [hl]
    db $D3
    ld a, l
    ld d, l
    ld [hl], l
    ld a, l
    ld e, h
    ld d, h
    rst $38
    sub h
    sbc h
    inc c
    inc c
    ld [$1008], sp
    db $10
    inc c
    call c, $C063
    ld b, c
    ret nz

    ld b, b
    ret z

    inc hl
    and [hl]
    ld h, b
    xor h
    ld hl, $60A7
    ld hl, sp-$4C
    ld c, c
    and h
    inc h
    sla c
    ld h, b
    ret nc

    ld [hl], b
    rst $28
    ld c, a
    rst $38
    sbc l
    ldh [$27], a
    ret c

    dec sp
    call nz, $E21F
    rst $38

jr_00C_5326:
    rst $08
    ldh a, [$27]
    jr c, jr_00C_5326

    db $FC
    db $FD
    ld b, $FB
    rst $38
    ld [bc], a
    db $E4
    ld h, b
    ld a, d
    cp $FF
    adc $FF
    rst $28
    adc a
    rst $38
    push bc
    db $FD
    sub d
    add hl, de
    inc bc
    inc bc
    db $FC
    rst $38
    db $FC
    ld e, [hl]
    ld bc, $0FF3
    cp [hl]
    ld b, c
    ei
    rst $28
    daa
    db $FD
    inc c
    rst $00
    sbc [hl]
    ld c, $C0
    ret nz

    ld h, b
    rst $38
    jr nz, @-$2E

    ldh a, [$F0]
    jr nc, jr_00C_53C4

    adc b
    call nc, $E4FF
    ld a, [hl+]
    ld [hl-], a
    sub $1A
    cp [hl]
    pop bc
    ld h, l
    rst $38
    ld a, e

jr_00C_5369:
    sbc $1E
    di
    inc bc
    ld a, l
    add c
    rst $20
    rst $38
    ld e, b
    db $FD
    ld e, $7A
    add e
    cp a
    ld b, c
    rst $30
    rst $38
    jr jr_00C_5369

    sbc [hl]
    ld [hl], a
    ld l, a
    ld a, [de]
    ld d, $0E
    ei
    ld a, [bc]
    inc b
    ld e, d
    nop
    ld a, [hl-]
    adc $EE
    or $1E
    rst $38
    ld a, [de]
    dec c
    rrca
    add a
    add l
    ld b, e
    ld b, e
    and d
    rst $38
    ld [hl+], a
    ret nc

    db $10
    cp b
    ret z

    ret c

    ld l, b
    xor h
    rst $38
    inc [hl]
    ld [hl], h
    cp h
    sbc $9A
    halt
    ld d, [hl]
    ld h, d
    rst $20
    ld h, d
    add d
    add d
    cp [hl]
    ld l, l
    call z, $F861
    ld e, b
    sub a
    rst $38
    rst $20
    rlca
    ld hl, sp+$07
    db $FC
    add hl, de
    rst $20
    rst $08
    db $FC
    ei
    ld h, $3C
    daa
    ld c, $0E
    ld [hl], b
    ld [hl], b

jr_00C_53C4:
    ldh [$A0], a
    ld a, a
    pop bc
    ld b, c
    cp $3E
    jp z, $FDF1

    ld a, l
    ld [hl+], a
    cp $3C
    dec hl
    db $10
    db $10
    jr nc, jr_00C_5407

    ld [hl], c
    ld d, c
    db $E3
    rst $38
    and e
    ld h, a
    push hl
    set 1, c
    or [hl]
    or d
    ld a, a

jr_00C_53E3:
    rst $38
    ld b, e
    cp [hl]
    ld d, b
    ei
    inc c
    or $07
    db $DD
    rst $38
    ld hl, $986E
    ld a, $C7
    xor a
    db $D3
    ld e, a
    ld a, a
    ld l, h
    dec hl
    scf
    ld e, $19
    rlca
    ld b, $3A
    dec h
    ld a, a
    jp c, $B4C6

    inc c
    call z, Call_000_383C

jr_00C_5407:
    ld e, e
    ld b, b
    rst $38
    xor b
    jr jr_00C_53E3

jr_00C_540D:
    ld [hl], $FE
    ld a, [$04FC]
    rst $28
    jr jr_00C_540D

    ldh a, [$F0]
    call z, $A020
    ld [hl], b
    ld d, b
    rst $38
    jr nc, jr_00C_544F

    db $10
    db $10
    cpl
    inc hl
    ld l, $22
    cp a
    ld a, $3E
    rra
    rla
    dec de
    rla
    ld [hl], d
    jr nz, jr_00C_543A

    rst $38
    dec c
    rrca
    dec b
    rlca
    rlca
    dec b
    ld [bc], a
    inc bc
    db $FC
    ld [hl-], a

jr_00C_543A:
    inc hl
    inc sp
    ld hl, $F9FB
    cp [hl]
    ld c, $BF
    ld bc, $FF7F
    rst $38
    ld e, $EE
    ld e, $E6

jr_00C_544A:
    ld [de], a
    ld c, c
    ld hl, $EEFF

jr_00C_544F:
    inc d
    db $EC
    add h
    db $EC
    or h
    call z, $77A4
    call c, $D8A8
    ld e, b
    ld hl, $0303
    ld bc, $2660
    cp $DC
    daa
    ld a, a
    ld a, a
    add c
    add c
    dec bc
    inc bc
    ld a, a
    rst $38

Call_00C_546C:
    ld [bc], a
    db $FD
    inc b
    adc b
    ret c

    add h
    db $EC
    sub h
    cp $51
    jr nz, @-$6A

    db $EC
    sbc d
    and $CA
    or $CA
    rst $30
    or $EA
    sub $8E
    jr nz, @-$08

    and e
    rst $38
    and d
    ld a, a
    cp $B1
    ld a, a
    sub l
    ld a, e
    ld de, $FEFB
    ld d, a
    cp a
    rlca
    rlca
    inc a
    inc a
    ld h, a
    ld h, b
    cp $55
    rst $38
    sbc a
    rst $38
    nop
    nop
    ld h, h
    nop
    rst $10

jr_00C_54A3:
    jr nz, jr_00C_54A3

    ld d, h
    cp $EF
    cp $A1
    ld bc, $DBF8
    jr nz, jr_00C_544A

    add b
    adc a
    rst $38
    add b
    add a
    add b
    jp nz, $BBC0

    cp b
    and [hl]
    rst $38
    sbc [hl]
    ld h, e
    ld e, e
    ld [hl], l
    ld l, e
    inc sp
    add hl, sp
    ld c, $C3
    add hl, bc
    ld b, $31
    jr nz, @+$60

    ld hl, $22D2
    dec e
    ld b, e
    ld bc, $FFFF
    inc bc
    cp a
    nop
    ld a, a
    nop
    rrca
    nop
    or a
    rst $38
    add b
    ld c, h
    ld b, b
    ld h, b
    ld h, b
    cp [hl]
    ld a, a
    cp d
    rst $38
    ld e, c
    rra
    ld l, b
    db $DD
    or h
    db $FC
    push de
    ei
    rst $38
    ld [$13F4], sp
    ld hl, sp+$67
    pop bc
    cp a
    rst $38
    db $FD
    cp $1E
    ld b, h
    nop
    stop
    pop bc
    pop bc
    or $FF
    ld [hl], a
    db $FC
    ld e, a
    or d
    ld c, c
    jp c, $DE29

    rst $38
    add hl, hl
    sub l
    ld a, e
    ld d, b
    cp l
    ld [de], a
    db $FD
    or $FF
    ld sp, hl
    ld a, [c]
    inc e
    pop af
    ld e, $F9
    ld c, $F8
    rst $38
    rrca
    ld a, h
    rlca
    scf
    ld [bc], a
    add c
    add c
    ld b, [hl]
    rst $38
    rst $00
    ld a, h
    cp a
    or $31
    xor $21
    xor $B5
    ld hl, $401E
    add b
    add b
    ld b, c
    ld a, a
    ret nz

    add [hl]
    ld b, c
    rst $38
    ld a, a
    ld b, b
    rst $38
    ld b, b
    ret nc

    ld b, b
    add c
    add c
    ld d, h
    ld b, a
    ld sp, hl
    cp $1D
    ld b, l
    dec e
    ld b, h
    ld a, [hl]
    nop
    ld a, [$A100]
    db $E4
    ld [hl], e
    ld c, e
    sbc a
    ld c, d
    ccf
    ld c, a
    ld c, h
    and b
    ld b, a
    db $FD
    nop
    cp $FF
    nop
    ldh a, [rP1]
    db $ED
    ld bc, $0232
    add [hl]
    rst $38
    add [hl]
    ld a, l
    cp $5D
    sbc d
    ld hl, sp+$16
    cp e
    rst $38
    dec l
    ccf
    xor e
    ld e, [hl]
    ld l, l
    ld e, a
    ld h, [hl]
    ld a, $FF
    inc sp
    dec de
    rra
    dec bc
    rrca
    rrca
    rrca
    rlca
    ldh a, [$0A]
    ld h, b
    dec d
    ld b, b
    ld c, $64
    ld h, b
    inc hl
    or a
    ld c, b
    cp [hl]
    ld c, c
    rst $38
    add e
    ld a, l
    ld c, c
    rst $38
    cpl
    rst $38
    cp l
    rst $38
    inc bc
    rst $30
    rst $38
    dec hl
    ld l, a
    jr z, jr_00C_55C5

    dec hl
    dec hl
    jr z, jr_00C_55C9

    dec d
    jr z, jr_00C_55CC

    dec hl
    jr z, jr_00C_55CF

    dec hl
    dec hl
    jr z, @+$17

    dec hl
    dec hl
    dec d
    jr z, jr_00C_55AF

    ld b, $16

jr_00C_55AF:
    ld d, $02
    ld [bc], a
    ld b, $02
    ld [bc], a
    ld d, $02
    ld b, $02
    ld d, $02
    ld [bc], a
    ld b, $02
    ld [bc], a
    ld d, $17
    add hl, hl
    ld a, [hl+]
    rla
    add hl, hl

jr_00C_55C5:
    ld a, [hl+]
    ld a, [hl+]
    add hl, hl
    ld a, [hl+]

jr_00C_55C9:
    add hl, hl
    rla
    ld a, [hl+]

jr_00C_55CC:
    add hl, hl
    ld a, [hl+]
    rla

jr_00C_55CF:
    add hl, hl
    ld a, [hl+]
    ld a, [hl+]
    add hl, hl
    rla
    nop
    nop
    nop
    nop
    ld b, c
    nop
    nop
    nop
    nop
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
    ld d, l
    ld d, h
    ld d, e
    ld d, d
    ld d, c
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
    ld c, a
    ld c, [hl]
    ld c, l
    ld c, h
    ld c, e
    ld c, d

Jump_00C_5606:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, c
    ld c, b
    ld b, a
    ld b, l
    ld b, h
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
    ld b, d
    ld b, b
    ccf
    ld a, $3D
    inc a
    dec sp
    nop
    nop
    nop
    nop
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
    add hl, sp
    jr c, jr_00C_5676

    ld [hl], $35
    inc [hl]
    nop
    nop
    nop
    nop
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
    ld [hl-], a
    ld sp, $2F30
    ld l, $2D
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
    ld d, [hl]
    daa
    ld h, $25
    inc h
    inc hl
    ld [hl+], a
    ld hl, $0053
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_00C_5695

jr_00C_5676:
    ld e, $01
    ld bc, $1D01
    ld bc, $011C
    dec de
    ld a, [de]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add hl, de
    jr jr_00C_56A0

    inc de
    ld bc, $0101
    ld bc, $1201
    nop
    nop

jr_00C_5695:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_00C_56A0:
    nop
    ld de, $0110
    ld bc, $0F01
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, $01
    ld bc, $0D01
    nop
    nop
    nop
    nop
    nop
    nop
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
    dec bc
    dec bc
    dec bc
    ld a, [bc]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add hl, bc
    ld [$0907], sp
    ld [$0907], sp
    ld [$0907], sp
    ld [$0907], sp
    ld [$0907], sp
    ld [$0907], sp
    ld [$0405], sp
    inc bc
    dec b
    inc b
    inc bc
    dec b
    inc b
    inc bc
    dec b
    inc b
    inc bc
    dec b
    inc b
    inc bc
    dec b
    inc b
    inc bc
    dec b
    inc b
    ld [hl], l
    nop
    sbc $6C
    rst $38
    xor $6C
    ld d, l
    rst $38
    xor d
    db $FD
    ld h, b
    db $FD
    nop
    inc bc
    ld [bc], a
    xor d
    ld d, l
    ld d, l
    xor d
    or c
    ld a, a
    rst $38
    ld a, a
    ccf
    ccf
    rst $18
    rrca
    rst $38
    inc bc
    cp $F7
    db $E3
    db $FC
    ldh a, [$EE]
    ld h, c
    rst $30
    push hl
    set 2, e
    cp a
    db $EC
    ld l, [hl]
    sbc a
    rra
    rst $38
    cp a
    xor $62
    sbc d
    rst $38
    rst $30
    rst $20
    pop af
    ret nz

    db $DD
    call nz, Call_000_0EBF
    cp a
    ld a, a
    ld e, $FF
    cp a
    ld a, a
    ld a, a
    db $FD
    ld h, d
    ld b, l
    ld a, l
    rst $28
    inc b
    ld [bc], a
    dec sp
    ld a, [hl+]
    dec d
    ld d, l
    xor d
    sbc $61
    rst $38
    adc b
    nop
    db $F4
    nop
    inc sp
    ret nz

    inc c
    di
    rst $28
    ld b, b
    rst $38
    ret nz

    rst $38
    sbc $63
    sub c
    nop
    xor $BF
    ld bc, $07F8
    ld bc, $43FF
    ld e, l
    inc b
    and d
    rst $38
    nop
    ret z

    nop
    ld b, a
    add b
    ld a, $C1
    nop

jr_00C_5777:
    rst $38
    rst $38
    ldh a, [$F8]
    ld h, b
    ld hl, sp-$78
    ldh a, [rP1]
    rst $38
    ld hl, sp-$68
    ld h, b
    ret nc

    jr nz, jr_00C_5777

    nop
    ld d, h
    cp a
    nop
    di
    rst $38
    ld h, b
    rst $38
    adc b
    inc bc
    nop
    sub c
    rst $38
    ld l, [hl]
    sbc $21
    ei
    nop
    ld d, d
    nop
    inc bc
    rst $38
    rrca
    inc bc
    rlca
    inc b
    inc bc
    ld [bc], a
    ld bc, $EF02
    ld bc, $0000
    inc b
    sbc $60
    ldh a, [$F0]
    ldh [$AA], a
    or b
    inc b
    ldh a, [$B8]
    ld [bc], a
    rra
    cp [hl]
    nop
    rrca
    jp nz, $FC08

    ld [bc], a
    adc $00
    ld hl, sp-$2E
    inc b
    cp b
    ld bc, $69EE
    rrca
    ld bc, $03E8
    ret nz

    ld bc, $03CB
    inc bc
    ld [$FE69], a
    ld b, $24
    xor $69
    ccf
    ccf
    ld c, e
    rlca
    rlca
    xor $67
    ld bc, $00A7
    db $EC
    ld h, l
    rst $20
    inc [hl]
    jr nz, @+$11

    rst $38
    rst $38
    dec d
    cp a
    nop
    ld bc, $0400
    ld b, e
    nop
    ld a, [bc]
    ld bc, $0A7A
    ld bc, $04FB
    inc bc
    nop
    ld d, l
    nop
    xor d
    db $ED
    ld h, d
    or e
    rra
    rra
    jr z, jr_00C_5826

    ld [$0763], a
    rlca
    sbc $6D
    nop
    rst $30
    nop
    db $FC
    db $FC

jr_00C_580E:
    xor [hl]
    inc bc
    add b
    add b
    ret nz

    ret nz

    xor e
    ld hl, sp-$08
    xor $69
    db $EC
    xor $6C
    rst $18
    xor $6C
    dec e
    add a
    dec e
    rra
    rra
    dec sp
    nop

jr_00C_5826:
    xor $66
    add sp, $6D

jr_00C_582A:
    sbc $65
    rrca
    db $DD
    rrca
    rrca
    ld bc, $0707
    xor $06
    jr nz, jr_00C_582A

    rst $38
    push af
    ei
    xor $66
    ld e, a
    daa
    nop
    rst $08
    rst $38
    sub a
    rst $38
    rst $38
    or e
    rst $18
    dec sp
    rst $38
    sbc a
    rst $38
    adc l
    rst $38
    rst $38
    sub $FF
    db $FC
    rst $10
    db $D3
    rst $28
    db $EB
    rst $38
    rst $38
    ld a, [$EFEF]
    rst $38
    rst $20
    rst $38
    di
    rst $38
    jp hl


    ld a, a
    daa
    nop
    jr z, jr_00C_5867

    rst $28
    daa
    ld b, b

jr_00C_5867:
    rst $08
    rst $38
    and a
    rst $38
    rst $38
    rst $28
    cp a
    rst $20
    cp a
    rst $30
    cp a
    and a
    rst $28
    rst $38
    sbc a
    rst $28
    rst $18
    xor l
    jr nz, jr_00C_580E

    rst $38
    or e
    rst $38
    rst $28

jr_00C_587F:
    ld h, [hl]
    ei
    ld [$88DF], a
    rst $38
    cp l
    cp e
    rst $18
    cp c
    di
    jr nz, @+$05

    inc bc
    ld bc, $4250
    add e
    ld e, a
    add e
    adc a
    adc [hl]
    sbc c
    sbc a
    xor $63
    cp a
    jr z, jr_00C_589C

jr_00C_589C:
    di
    db $FD
    db $FD
    db $FC
    ld h, e
    ld a, [bc]
    nop
    and d
    rst $38
    nop
    cp a
    ld b, b
    ld d, l
    ld h, $0A
    ld bc, $0403
    ld e, c
    ld h, $F6
    ld l, c
    sbc $63
    add b
    and h
    ld b, b
    xor $7E
    dec h
    cp $FE
    cp a
    xor l
    jr nz, jr_00C_587F

    rst $30
    rst $18
    rst $18
    or a
    rst $08
    rst $38
    sbc [hl]
    xor $E0
    ld [$DFFF], sp
    cp a
    ld a, a
    rst $18
    ld a, a
    rst $28
    rst $38
    db $FD
    daa
    nop
    xor a
    rst $38
    rst $38
    jp c, $EDFF

    rst $18
    db $EB
    rst $30
    or l
    ld hl, sp+$1D
    ld b, b
    sbc $41
    xor $67
    rlca
    cp $47
    cp a
    rst $08
    rst $38
    cp a
    adc e
    rst $38
    cp e
    ld l, a
    dec sp
    rst $28
    ld l, e
    ei
    cp a
    or e
    rst $08
    ld b, b
    xor e
    rst $18
    db $DB
    rst $38
    sbc c
    rst $38
    rst $30
    rst $20
    db $FD
    push hl
    rst $18
    rst $10
    cp l
    inc [hl]
    or $DD
    ld h, $00
    nop
    ld d, b
    ld b, c
    inc bc
    inc bc
    ld a, b
    ld hl, sp-$39
    ld a, a
    rst $38
    ld a, [hl]
    ld b, $20
    adc $01
    adc $01
    db $E3
    db $E3
    sub a
    pop af
    pop af
    ld sp, hl
    ld [hl-], a
    ld h, b
    db $FD
    ld [hl], $60
    xor $6C
    rst $28
    jp z, $4125

    rst $30
    add hl, sp
    nop
    sbc a
    sbc $40
    jp $E725


    sbc a
    rst $38
    rst $08
    cp a
    rst $00
    cp a
    add a
    ld a, a
    sbc d
    ld l, l
    db $FD
    rra
    rst $08
    ld b, b
    adc [hl]
    ld a, c
    dec a
    dec sp
    dec sp
    ccf
    rst $18
    ld a, a
    ld a, e
    ei
    rst $38
    db $FC
    db $F4
    jr nz, jr_00C_59CE

    rst $38
    rst $38
    xor $FD
    ld c, $0E
    rrca
    dec c
    dec c
    dec bc
    cp a
    dec c
    dec bc
    inc c
    dec bc
    ld b, $07
    ld c, [hl]
    ld b, c
    ldh a, [$E7]
    ld [hl], b
    ld [hl], b
    ldh a, [$90]
    ld h, c
    cp b
    inc bc
    ld hl, sp-$08
    ld b, c
    rst $38
    pop bc
    ld b, c
    pop bc
    jp $E3C3


    ld [c], a
    ld [c], a
    rst $28
    db $E3
    ld [c], a
    db $E3
    db $E3
    and a
    ld h, b
    ld [hl], e
    di
    di
    db $DB
    ld [hl], d
    ld [hl], d
    xor a
    ld h, b
    ld a, [hl]
    rst $38
    dec c
    inc hl
    dec e
    ei
    ld a, a
    add hl, de
    rst $38
    ld e, l
    ei
    dec de
    rst $38
    ld sp, hl
    xor $62
    rst $38
    rst $30
    rst $38
    rst $38
    ldh a, [$FC]
    di

jr_00C_59A1:
    inc b
    ei
    ei
    adc b
    ld [hl], a
    sbc $05
    ld [hl], e
    ld l, a
    ld [hl], e
    ld l, a
    ld a, h
    cp e
    ld a, e
    ccf
    db $E4
    ld h, e
    add hl, sp
    dec a
    dec sp
    ld [hl], d
    dec hl
    ld [bc], a
    ld l, c
    ld [bc], a
    xor b
    nop
    nop
    inc b
    ld b, $08
    nop
    ld c, $0E
    ld h, $63
    cp $D2
    dec b
    ld hl, sp+$78
    ret nz

    ret nz

    ld b, b
    ret nz

jr_00C_59CE:
    pop bc
    rst $38
    pop bc
    rst $38
    rst $38
    db $E3
    db $E3
    pop bc
    pop bc
    pop bc
    ei
    ld b, c
    ld b, c
    jr z, jr_00C_59DD

jr_00C_59DD:
    jp $E2C3


    db $E3
    rst $20
    rst $38
    and $E7
    and $E3
    db $E3
    pop hl
    pop hl
    pop af
    set 6, c
    ld b, b
    ld a, $04
    ld h, b
    ld b, [hl]
    ld [bc], a
    call c, Call_00C_4701
    cp a
    rst $18
    ccf
    rst $38
    rra
    rst $38
    ld d, [hl]
    ld d, e
    nop
    ld e, $FF
    db $FD
    dec e
    ld h, c
    jr nz, jr_00C_5A1E

    rla
    rla
    jr jr_00C_59A1

    sbc b
    rst $38
    rst $10
    reti


    rst $18
    ret nc

    rst $38
    ldh a, [$F7]
    ld hl, sp-$02
    cp [hl]
    ld bc, $373F
    scf
    ccf
    ccf
    scf
    ld a, e

jr_00C_5A1E:
    cp l
    ld [hl], a
    ld a, b
    nop
    ld h, a
    ld a, [hl]
    cp $7F
    ld d, e
    nop
    ld a, a
    rst $30
    rst $38
    cp [hl]
    cp $86
    inc bc
    rlca
    ld b, $06
    dec b
    ld l, a
    add [hl]
    add a
    add d
    add e
    sub l
    inc bc
    pop bc
    pop bc
    and h
    ld b, c
    pop af
    ret nz

    and d
    ld [bc], a
    jr z, jr_00C_5A47

    and d
    inc bc
    and b

jr_00C_5A47:
    ldh [$E0], a
    ld h, b
    cp a
    ld h, c
    pop hl
    or c
    ld [hl], c
    rst $38
    rst $38
    and h
    ld b, c
    add b
    db $FD
    add b
    ld d, b
    ld b, e
    rlca
    rlca
    dec e
    rra
    dec c
    dec bc
    rst $18
    dec b
    rlca
    dec b
    rlca
    rla
    call nc, Call_000_1D02
    rra
    db $EB
    rla
    rra
    sub l
    ld h, b
    or b
    inc d
    nop
    cp b
    cp b
    ld hl, sp+$3F
    cp h
    ld a, h
    inc a
    db $FC
    ld a, [hl]
    cp $12
    ld h, a
    ld a, [de]
    ld h, c
    add c
    inc bc
    db $FD
    ld h, b
    ld [hl], d
    add hl, hl
    and [hl]
    ld b, l
    and d
    ld b, e
    adc h
    ld hl, $2B00
    add b
    di
    add b
    ld [bc], a
    ld l, $22
    ld a, [$0300]
    rlca
    rlca
    rlca
    add hl, de
    dec b
    add h
    ld h, b
    ld a, $2A
    inc e
    inc e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec d
    ld d, $17
    jr jr_00C_5AD1

    jr jr_00C_5AD3

    jr jr_00C_5AD5

    jr jr_00C_5AD7

    jr jr_00C_5AD9

    jr jr_00C_5ADB

    jr jr_00C_5ADD

    jr jr_00C_5ADF

    jr z, jr_00C_5AF2

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_00C_5AD1:
    nop
    nop

jr_00C_5AD3:
    nop
    nop

jr_00C_5AD5:
    ld [hl], $37

jr_00C_5AD7:
    jr c, jr_00C_5B12

jr_00C_5AD9:
    nop
    nop

jr_00C_5ADB:
    inc a
    dec a

jr_00C_5ADD:
    and b
    and c

jr_00C_5ADF:
    and d
    and e
    and h
    and l
    and [hl]
    and a
    xor b
    xor c
    nop
    nop
    ld c, d
    ld c, e
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a
    inc a
    ld d, c
    xor d

jr_00C_5AF2:
    xor e
    xor h
    xor l
    xor [hl]
    xor a
    or b
    or c
    or d
    or e
    nop
    nop
    ld e, [hl]
    ld e, a
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    inc a
    ld d, c
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
    nop
    ld [hl], c
    ld [hl], d

jr_00C_5B12:
    ld [hl], e
    ld [hl], h
    ld [hl], l
    halt
    ld [hl], a
    inc a
    ld d, c
    cp [hl]
    cp a
    ret nz

    pop bc
    jp nz, $C4C3

    push bc
    add $C7
    add h
    add l
    add [hl]
    add a
    adc b
    adc c
    adc d
    adc e
    inc a
    ld d, c
    ret z

    ret


    jp z, $CCCB

    call $CFCE
    ret nc

    pop de
    sbc b
    sbc c
    sbc d
    sbc e
    sbc h
    sub a
    sub [hl]
    sub l
    inc a
    ld d, c
    jp nc, $D4D3

    push de
    sub $D7
    ret c

    reti


    jp c, $94DB

    sub e
    sub d
    sub c
    sub b
    adc a
    adc [hl]
    adc l
    inc a
    ld d, c
    call c, $DEDD
    rst $18
    ldh [$E1], a
    ld [c], a
    db $E3
    db $E4
    push hl
    adc h
    add e
    add d
    add c
    add b
    ld a, a
    ld a, [hl]
    ld a, l
    inc a
    ld d, c
    and $E7
    add sp, -$17
    ld [$ECEB], a
    db $ED
    xor $EF
    ld a, h
    ld a, e
    ld a, d
    ld a, c
    ld a, b
    ld [hl], b
    ld l, a
    ld l, [hl]
    inc a
    ld d, c
    ldh a, [$F1]
    ld a, [c]
    di
    db $F4
    push af
    nop
    ld l, l
    ld l, h
    ld l, e
    ld l, d
    ld l, c
    ld l, b
    ld h, a
    ld h, [hl]
    ld h, l
    ld h, h
    ld e, l
    ld e, h
    ld d, c
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld d, b
    ld c, c
    ld c, b
    ld d, c
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, a
    ld b, [hl]
    ld b, l
    ld b, h
    ld b, e
    ld b, d
    ld b, c
    ld b, b
    ccf
    ld a, $3B
    ld a, [hl-]
    dec [hl]
    ld d, c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc [hl]
    inc sp
    ld [hl-], a
    ld sp, $2F30
    ld l, $2D
    inc l
    dec hl
    ld a, [hl+]
    daa
    ld d, c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, $25
    inc h
    inc hl
    ld [hl+], a
    ld hl, $1F20
    ld e, $1D
    inc e
    dec de
    ld a, [de]
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    inc d
    inc de
    ld [de], a
    ld de, $0F10
    ld c, $0D
    inc c
    dec bc
    ld a, [bc]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add hl, bc
    ld [$0607], sp
    dec b
    inc b
    inc bc
    ld [bc], a
    ld bc, $FD00
    nop
    sbc $6C
    ld hl, sp+$08
    ld hl, sp+$08
    add sp, $08
    rst $38
    ldh a, [rNR10]
    ld [hl], b
    sub b
    jr z, @-$06

    call nz, $FFF4
    call nc, $17E4
    ld a, [de]
    ld e, $1B
    ld c, $0B
    rst $38
    ld c, $0F
    ld b, $07
    rlca
    rlca
    dec c
    rrca
    rst $38
    inc c
    dec bc
    db $F4
    inc c
    add sp, $18
    ldh a, [rNR10]
    rst $38
    ldh a, [$30]
    ldh a, [rSVBK]
    sub b
    ldh a, [$38]
    ret z

    rst $38
    ld a, h
    adc h
    ccf
    nop
    cp a
    nop
    rst $38
    nop
    db $FD
    ld a, a
    inc hl
    nop
    rst $38
    ld bc, $03FF
    cp $07
    rst $38
    dec de
    db $FC
    dec sp
    db $FC
    rst $18
    ld hl, sp-$61
    ld hl, sp-$03
    rrca
    dec [hl]
    nop
    rst $20
    jr @-$0F

    db $10
    adc [hl]
    inc bc
    rst $38
    adc [hl]
    inc bc
    ld c, $07
    rra
    rlca
    ccf
    rrca
    rst $38
    db $FC
    rra
    pop af
    cp $57
    xor b
    ld sp, hl
    ld b, $FF
    rlca
    ld hl, sp+$1F
    ldh [rNR32], a
    ldh [rIF], a
    ldh a, [rIE]
    db $E3
    db $FC
    rra
    rst $38
    inc bc
    db $FC
    nop
    rst $38
    rst $38
    add b
    rst $38
    jp nz, $FCFF

    rst $38
    rst $38
    rst $38
    rst $38
    di
    rst $38
    ld [hl], b
    ld a, a
    jr c, jr_00C_5CD8

    rlca
    rlca
    rst $20
    inc bc
    inc bc
    ld bc, $0072
    sbc $65
    scf
    dec a
    ccf
    rst $38
    dec [hl]
    rst $38
    push de
    rst $20
    push af
    ld a, e
    adc l
    push af
    rst $38
    ld sp, hl
    sub $02
    db $FC
    db $FC
    or b
    ld d, b
    or b
    rst $38
    ld d, b
    cp [hl]
    ld a, [hl]
    and l
    ld h, e
    db $FD
    ld a, c
    sub a
    rst $38
    push af
    dec l
    bit 5, [hl]
    adc [hl]
    scf
    db $FC
    ld d, a
    rst $38
    call c, $FC76
    ld a, a
    jp z, $A6A6

    sbc $FF
    sbc [hl]
    reti


    adc a
    ld [hl], l

jr_00C_5CD8:
    ld a, e
    rrca
    nop
    ccf
    cp $AF
    nop
    ld a, [hl]
    ld bc, $01FE
    db $FC
    inc bc
    db $FD
    rst $38
    inc bc
    ld a, [$DE06]
    ldh [$BC], a
    ret nz

    ld [hl], b
    cp a
    add b
    ldh a, [rP1]
    rst $20
    nop
    add a
    rst $00
    nop
    rrca
    rst $38
    nop
    jr c, jr_00C_5D1C

    cp h
    rra
    cp a
    rrca
    xor $FF
    rra
    ld l, a

jr_00C_5D05:
    ld e, $CF
    inc a
    rst $08
    inc a
    adc e
    rst $38
    ld a, h
    cp a
    ld b, d
    db $FD
    ld [bc], a
    rst $28
    nop
    db $EB
    rst $38
    inc b
    rst $38
    nop
    db $ED
    ld [bc], a
    adc $03

jr_00C_5D1C:
    adc $FF
    inc bc
    ld sp, hl
    nop
    cp c
    ld b, b
    ld sp, $73C0
    rst $38
    add b
    db $E3
    nop
    rst $08
    nop
    sbc a
    nop
    cp $FF
    ld bc, $047B
    rst $20
    jr jr_00C_5D05

    jr nc, jr_00C_5D57

    rst $38
    ldh [$3C], a
    jp $FE81


    inc bc
    db $FC
    rlca
    rst $28
    ld hl, sp+$37
    ret z

    rra
    ld d, l
    nop
    ld b, $F9
    add b
    rst $38
    rst $38
    ldh [$7F], a
    rst $38
    rst $38
    ld c, $0F
    ld c, $FB
    rrca
    ld [bc], a

jr_00C_5D57:
    ld [hl], c
    nop
    rst $38
    rst $38
    nop
    rst $38
    jp c, Jump_000_00FD

    inc h
    jr nz, jr_00C_5D63

jr_00C_5D63:
    ccf
    ccf
    ld l, e
    ld b, b
    xor a
    rst $38
    sbc a
    sbc $B1
    rst $20
    xor a
    rst $38
    xor e
    db $FC
    rst $38
    xor h
    db $EC
    cp h
    ld a, b
    ld a, b
    or h
    rst $08
    xor a
    ld a, a
    or a
    rst $38
    sbc h
    xor l
    jp Jump_00C_7E7E


    sbc $61
    rst $38
    ld a, [hl]
    ld a, [hl]
    or l
    jp Jump_000_39FD


    rst $30
    db $ED
    rst $28
    dec h
    di
    ld e, $1E
    sbc $63
    rst $38
    rst $38
    rst $10
    ret nc

    ld e, [hl]
    ld hl, $202B
    sbc $67
    inc h
    ld hl, $29EB
    ld [hl+], a
    ld a, b
    db $FC
    rst $38
    db $FC

jr_00C_5DA7:
    xor h
    cp $AB
    rst $20
    xor a
    rst $18
    or c
    rst $38
    xor a
    sbc a
    ld l, e
    ld b, c
    ld a, $3F
    inc e
    ld d, $FF
    inc l
    ld [hl], $3E
    ld l, $3D
    dec hl
    dec hl
    dec l
    rst $38
    ccf
    dec h
    dec l
    inc sp
    ld e, $1E
    cp e
    jp Jump_00C_66FF


    add [hl]
    sbc h
    inc e
    ld a, b
    ld h, b
    or b
    or b
    rst $38
    ret nc

    sub b
    jr nc, jr_00C_5DA7

    jr nc, @-$2E

    ld a, a
    rst $38
    rst $38
    rst $30
    rst $38
    inc de
    cp $1F
    ld hl, sp+$0D
    db $FD
    ld a, a
    rra
    rst $38
    dec de
    rst $38
    inc sp
    cp $03
    jr z, jr_00C_5DEE

jr_00C_5DEE:
    cp $21
    nop

jr_00C_5DF1:
    rst $38
    ld a, [hl]
    add c
    rst $38

jr_00C_5DF5:
    nop
    sbc e
    nop
    ld a, a
    rlca
    nop
    rlca
    rst $38
    rlca
    rst $38
    ld b, $CF
    jr nz, @+$01

    ld c, $FF
    dec e
    cp $37
    ld hl, sp+$6E
    ldh a, [$DD]
    rst $38
    ld h, e
    nop
    ldh a, [rIE]
    ld h, b
    rla
    jr nz, jr_00C_5DF5

    ccf
    rst $38
    ld [hl], b
    ccf
    ld a, b
    rra
    sub a
    rst $38
    sbc e
    rst $38
    rst $38
    ld c, c
    rst $38
    ld e, e
    db $EC
    rst $10
    ld l, h
    sub [hl]
    ld l, h
    rst $38
    sbc [hl]
    ld h, h
    cp e
    ld b, [hl]
    and d
    ld b, c
    and e
    ld b, b
    rst $38
    pop af
    nop
    ld [hl], c
    add b
    ld [hl], c
    add b
    ld sp, hl
    nop
    rst $38
    ld sp, hl
    nop
    reti


    jr nz, jr_00C_5DF1

    ret nz

    pop af
    add b
    rst $18
    pop af
    add b
    ld h, e
    add b
    rst $20
    push bc
    nop
    call $F702
    sbc a
    nop
    inc a
    cp [hl]
    jr nz, jr_00C_5ECF

    add l
    rst $30
    add hl, bc
    rst $38
    rst $20
    dec sp
    adc $F3
    rra
    ldh [$3F], a
    call nz, $C6FF
    ld hl, sp-$3D
    db $FC
    ldh [rIE], a
    pop af
    ld a, [hl]
    db $FD
    ld a, h
    add hl, de
    jr nz, jr_00C_5EAD

    ccf
    inc e
    rra
    ld a, [de]
    ld a, [de]
    rst $38
    dec c
    inc c
    dec b
    inc b
    inc b
    inc b
    ld [bc], a
    ld [bc], a
    cp $74
    inc bc
    adc [hl]
    ld l, [hl]
    sbc c
    ld l, e
    sbc a
    ld e, c
    cp l
    rst $38
    ld [hl], l
    cp a
    dec h
    ld a, a
    dec a
    call $8E5B
    rst $38
    sbc d
    ld a, h
    db $FC
    sub $82
    push af
    ld sp, hl
    ei
    rst $38
    adc l
    rst $20
    push af
    ld a, a
    push de
    ccf
    dec [hl]
    ld e, $FF
    ccf
    ld a, b
    ld a, b
    and h
    call z, $A4FC
    call nc, $B4FF
    cp h

jr_00C_5EAD:
    call nc, $747C
    inc [hl]
    ld l, h
    jr c, @+$01

    ld l, b
    rra
    nop
    ld c, a
    nop
    db $E3
    nop
    db $FD
    rst $38
    nop
    ld c, $F0
    ld a, [$F4FC]
    ld hl, sp-$03
    rst $38
    ldh [$1F], a
    ldh [$3E], a
    ret nz

    ld hl, sp-$80
    ld a, c
    rst $38

jr_00C_5ECF:
    add b
    and $01
    sbc h
    inc bc
    di
    rrca
    rra
    rst $38
    rst $38
    ld c, $01
    inc c
    inc bc
    adc l
    inc bc
    ei
    rst $38
    rlca
    add $3F
    dec e
    cp $FD
    cp $3E
    rst $38
    rst $38
    ld c, $F8
    ld b, $FC
    rlca
    db $FC
    rrca
    rst $38
    cp $0F
    cp $1F
    rst $38
    ccf
    rst $38
    adc a

jr_00C_5EFB:
    and $24
    jr nz, jr_00C_5EFB

    inc bc
    jp nz, $C221

    ld b, e
    ldh a, [rIE]
    rra
    db $FD
    ldh [$5C], a
    ld bc, $FFC0
    ldh [rIE], a
    ld hl, sp-$01
    rst $38
    cp $FF
    cp a
    rst $38
    cp h
    rst $00
    cp d
    rst $00
    rst $38
    xor e
    rst $00
    rst $20
    jp Jump_00C_43E7


    rst $20
    ld b, e
    rst $38
    pop hl
    ld b, e
    db $E3
    ld b, c
    ld [hl], e
    and c

jr_00C_5F2A:
    cp c
    jr nz, jr_00C_5F2A

    add hl, sp
    pop af
    ld b, b
    ld e, b
    ld h, b
    ld a, b
    ld b, b
    ld hl, sp-$40
    rst $38
    ldh a, [$C0]
    rlca

jr_00C_5F3A:
    ld bc, $07FE
    ld sp, hl
    cp $FF
    db $E3
    db $FC
    or [hl]
    ld a, b
    db $FD
    ld c, $FB
    rlca
    rst $38
    inc e
    inc bc
    rst $30
    ld hl, sp+$1D
    cp $C3
    ccf
    rst $38
    jr nc, jr_00C_5F93

    ld d, a
    ld e, b
    xor a
    or b
    ld l, d
    jr nc, @+$01

    call nz, $BD78
    db $ED
    xor e
    jp hl


    ld [$FFEB], a
    ld [$2AEB], a
    ld l, e
    ld a, [hl+]
    dec hl
    dec hl
    dec hl
    rst $38
    ld a, [hl+]
    ld a, [hl+]
    ld b, d
    add d
    ld d, d
    add d
    halt
    add d
    rst $38
    ld a, [hl]
    add [hl]
    ld a, $C6
    ld a, $C6
    ld l, $CA
    db $E3
    ld e, $EA
    sbc $6B
    ld [hl], h
    rlca
    sbc $61

jr_00C_5F87:
    rst $30
    rst $30
    ld a, [bc]
    db $FD
    ld [$67DE], sp
    inc bc
    inc bc
    dec c
    ld c, $9E

jr_00C_5F93:
    sub e
    cp $DE
    ld h, a
    ret nz

    ret nz

    jr nz, jr_00C_5FFB

    sub b
    jr nc, jr_00C_5F3A

    cp a
    inc bc
    sbc h
    inc bc
    inc a
    inc bc
    ld a, h
    add c
    ld h, b
    sbc [hl]
    rst $28
    ld bc, $003F
    rra
    ld hl, $BF00
    ld b, b
    rst $38
    rst $38
    nop
    cp $00
    ld a, a
    add b
    ld a, a
    add b
    dec sp
    rst $38
    call nz, $F00F
    ld d, $1A

jr_00C_5FC1:
    ld d, $1A
    ld [de], a
    db $FC
    sbc a
    ld h, b
    and b
    ld h, l
    ld [hl], b
    ld e, b
    or b
    ret c

jr_00C_5FCD:
    ld hl, sp-$48
    rst $38
    db $F4
    xor h
    xor h
    or h
    db $FC
    sub h
    or h
    call z, Call_00C_78F7
    ld a, b
    db $FD
    add e
    ld b, b
    ei
    nop
    di
    nop
    db $FD
    db $EB
    rst $00
    nop
    rlca
    nop
    ld b, $01
    db $DB
    jr nc, @+$01

    sbc e
    jr nc, jr_00C_600B

    jr nc, jr_00C_5FCD

    jr nc, jr_00C_5FC1

    jr c, @+$81

    call $CC38
    jr c, jr_00C_5F87

jr_00C_5FFB:
    ld a, b

Jump_00C_5FFC:
    ccf
    inc hl
    nop
    xor [hl]
    adc d
    ld h, c
    ld c, $00
    ld bc, $20CB
    rrca
    ld l, b
    ld h, $80

jr_00C_600B:
    rst $38
    nop
    ret nz

    nop
    ldh [rP1], a
    ld a, h
    add b
    rrca
    rst $38
    ldh a, [$4E]
    ldh a, [$C6]
    ld hl, sp-$1D
    db $FC
    ld [hl], e
    rst $38
    db $FC
    ld de, $08FE
    rst $38
    and h
    rst $18
    jr @+$01

    cpl
    inc e
    daa
    rrca
    daa
    rla
    inc hl
    ld d, [hl]
    rst $38
    inc hl
    inc sp
    ld h, e
    di
    ld h, c
    or e
    pop hl
    ld b, $FF
    inc c
    ld c, h
    nop
    jr nz, jr_00C_607E

    db $F4
    ld b, h
    ret


    rst $38
    sbc h
    ld [bc], a
    ld bc, $0608
    ld bc, $7000
    rst $38
    add c
    dec [hl]
    jp nz, $C430

    or h
    ret nz

    sub [hl]
    rst $38
    pop hl
    ret c

    jr nz, @+$7A

    ret nz

    db $EC
    ld [hl], b
    ld h, a
    rst $38
    rra
    ld h, a
    rra
    rst $20
    rra
    jp hl


    rra
    ld l, e
    rst $38
    inc e
    ld e, b
    dec a
    sub [hl]
    ld [hl], h
    cpl
    and $01
    db $EB
    ld bc, $5002
    ld [bc], a
    ld bc, $0456
    and $7E
    and $FF
    ld a, [hl-]
    jp nz, $1232

jr_00C_607E:
    ld [c], a
    ld [hl-], a
    jp nz, Jump_00C_7D62

    add d
    ld l, b
    ld bc, $62FD
    db $FD
    ld b, d
    rst $30
    ret


    ld [bc], a
    sbc a
    ld e, $01
    ld c, $01
    ld e, $4F
    nop
    ld b, e
    ld b, b
    inc b
    ld a, [$4042]
    dec b
    add a
    inc bc
    inc b
    dec b
    inc bc
    ld [bc], a
    dec b
    rst $38
    pop bc
    jp $E5E1


    ld a, [c]
    db $D3
    ldh a, [$62]
    rst $38
    ld sp, hl
    sbc d
    ld sp, hl
    db $E3
    ld h, c
    ld h, c
    ldh [$C8], a
    rst $38
    ld d, b
    ld d, h
    ret c

    ret c

    call c, $BCBE
    xor h
    rst $38
    cp [hl]
    xor a
    cp [hl]
    adc a
    rra
    rst $18

jr_00C_60C5:
    adc b
    and $FF
    ld c, h
    ld [hl], e
    ld h, $21
    ld [de], a
    dec de
    ld bc, $FF09
    ld bc, $010C
    add b
    add b
    ldh [$60], a
    sbc b
    db $FD
    jr jr_00C_6120

    ld b, c
    and c
    ld bc, $0080
    add b
    add b
    cp $68
    add hl, hl
    add b
    add b
    ld b, b
    ld b, b
    sbc l
    add b
    inc a
    ld hl, sp-$6D
    ld h, b
    ld [c], a
    ld bc, $21C1
    cp a
    ld b, b
    ld l, b
    ld e, b
    ld l, b
    di
    ld e, b
    ld c, b
    rst $28
    nop
    ldh a, [rTIMA]
    or c
    rst $38
    or d
    ld a, [hl]
    rst $38
    call nc, $D83C
    jr c, jr_00C_60C5

    ld [hl], b

Call_00C_610B:
    db $E3
    ldh [rIE], a
    rst $08
    nop
    rst $18
    nop

jr_00C_6112:
    sub a
    rrca
    ld sp, hl
    rst $38
    rst $38
    jp $F33E


    ld c, $F7
    inc c
    rst $30
    inc c
    ld e, a

jr_00C_6120:
    rst $28
    jr jr_00C_6112

    jr jr_00C_6145

    ld h, h
    ld [hl+], a
    adc a
    pop hl
    ld h, b
    ld de, $277F
    ld [hl+], a
    rst $08
    jr nz, @-$3C

    ld b, d
    db $FC
    ld sp, hl
    ld h, b
    ld e, h
    ld [hl+], a
    jp nz, $FD42

    ccf
    sla b
    pop af
    nop
    ldh a, [rP1]
    ld e, $E0
    rst $38
    inc sp

jr_00C_6145:
    jr nz, jr_00C_61BE

    ld b, b
    db $E3
    ret nz

    ld [hl], b
    ret nz

    rst $38
    ld e, b
    ldh [$CF], a
    ld [hl], b
    inc sp
    ld a, h
    ld e, b
    ccf
    rst $18
    ld a, [bc]
    ld b, $07
    ld bc, $E703
    ld h, b
    ld [bc], a
    inc b
    rst $38
    ld [$0100], sp
    ld [de], a
    inc de
    ld [bc], a
    sbc d
    db $E4
    rst $38
    add b
    cp $1D
    ld [c], a
    ld a, $C1
    ld [hl], d
    add c
    rst $38
    ld h, c
    add d
    ld h, h
    add b
    ld h, b
    add b
    ld b, c
    ld b, c
    rst $38
    ld c, c
    ld b, a
    sbc e
    add a
    sub e
    adc a
    or d
    adc a
    ccf
    and d
    sbc a
    ld h, [hl]
    rra
    ld h, [hl]
    rra
    ld b, d
    ld l, c
    ld d, [hl]
    ld bc, $96FF
    sbc d
    sub $DA
    sub $5A
    ld a, [c]
    ld a, d
    rst $38
    sbc $7A
    jp c, $DE6A

    ld l, [hl]
    xor $76
    rst $38
    rst $30
    ld hl, $30DF
    db $DB
    or b
    sbc e
    ldh a, [$F7]
    db $DB
    ldh a, [$FB]
    or a
    jr nz, @+$01

    ld h, b
    dec b
    dec b
    rst $38
    dec bc
    add hl, bc
    add hl, bc
    dec bc
    ld a, [bc]
    dec bc
    ld d, $13
    rst $38
    dec l

jr_00C_61BE:
    ld h, $5B
    ld c, h
    adc a
    sbc c
    db $EB
    db $FD
    rst $38
    rla
    db $FD
    ld l, a
    db $FD
    or e
    rst $18
    add hl, sp
    db $E3
    rst $30
    ld h, b
    pop bc
    ret nz

    jp z, Jump_00C_4A00

    ld a, a
    ld d, l
    ld a, a
    rst $38
    ld d, a
    ld a, l
    ld e, a
    ld [hl], c
    cp $81
    rlca
    nop
    ld a, [$2162]
    add l
    push af
    ld h, d
    ret nz

    nop
    ld b, b
    add b
    ldh [rIE], a
    add b
    ld [$B980], a
    ret nz

    ret nz

    add b
    xor e
    rst $38
    ld b, b
    rst $28
    ld b, b
    ld [hl], a
    ld b, b
    rst $30
    jr nz, @+$01

    cp $07
    ld b, b
    rst $10
    jr nc, jr_00C_6224

    jr nz, jr_00C_6216

    db $10
    sub b
    rst $38
    db $10
    ld [$8808], sp
    ld [$04C4], sp
    db $FC
    rst $38
    inc b
    cp $02
    ld a, e

jr_00C_6216:
    ld c, $3F
    ld d, $77
    rst $38
    inc c
    xor $1C
    adc $38
    ld d, $F0
    inc a
    rst $38

jr_00C_6224:
    ldh a, [rBCPD]
    ldh [rTIMA], a
    inc bc
    ld b, $06
    inc c
    rst $38
    inc c
    ld a, $3C
    db $DB
    ret c

    ccf
    jr c, jr_00C_62AB

    rst $30
    ld a, c
    db $F4
    ei
    ld a, $67
    rra
    rra
    db $F4
    ld [$94BB], a

jr_00C_6241:
    dec bc
    ld a, $61
    inc c
    nop
    jr nc, jr_00C_6241

    ld h, b
    ldh a, [rIE]
    ldh [$DF], a
    rra
    ret nc

    nop
    ld l, b
    ret z

    ld e, b
    rst $38
    ret z

    ld [hl], h
    call nz, $C446
    rst $20
    inc hl
    db $EC
    rst $38
    inc hl
    ld sp, hl
    ld d, $FB
    inc c
    add e
    ld a, a
    inc e
    ccf
    rst $38
    ld l, a
    ldh a, [rIE]
    add b
    rst $38
    dec hl
    ld hl, $40C2
    rst $38
    add hl, sp
    ld l, $28
    cpl
    inc [hl]
    cpl
    dec h
    cpl
    rst $38
    ld d, e
    ld c, [hl]
    ld h, a
    ld e, h
    cpl
    jr c, jr_00C_62BA

    jr nc, jr_00C_6241

    ld l, [hl]
    ld l, b
    ldh [$38], a
    ld hl, sp-$3C
    inc a
    ld a, $49
    ld [hl], c
    rst $30
    ld a, [hl]
    rst $08
    ldh a, [$3E]
    ld l, c
    inc a
    inc a
    daa
    daa
    rst $28
    ldh [rNR41], a
    ld b, b
    ld b, b
    db $FD
    jr nz, @-$7E

    ldh a, [$F0]
    rst $38
    ld hl, sp-$08
    ld a, [hl]
    ld a, [hl]
    and a
    inc hl
    reti


    and $FF

jr_00C_62AB:
    ld a, c
    and $B9
    halt
    rst $08
    dec a
    add a
    ld a, a
    rst $38
    inc a
    db $FC
    rst $28
    ldh [$BF], a
    add [hl]

jr_00C_62BA:
    cp $E1
    ld a, l
    inc bc
    ld a, $64
    ld h, c
    add b
    add b
    ld a, a
    rra
    ld d, [hl]
    nop
    cp $7E
    ld bc, $0809
    rla
    ld de, $230D
    ld l, d
    rst $38
    rlca
    inc e
    ld b, a
    ld [hl], $1B
    ld l, [hl]
    inc sp
    db $DB
    rst $38
    ld h, [hl]
    cp [hl]
    call nz, $C43E
    ld [hl], a
    adc [hl]
    pop hl
    rst $30
    rra
    db $DD
    inc sp
    call $8009
    ld bc, $83C1
    ld sp, hl
    ld bc, $60E7
    ld e, $63
    sbc a
    ld a, a
    rst $18
    ldh [rSTAT], a
    rst $38
    cp [hl]
    ld a, e
    ret nz

    rst $38
    ld b, b
    rst $18
    ld h, b
    xor a
    rst $38
    ld [hl], b
    xor [hl]
    ld [hl], c
    ld h, $F9
    ld h, d
    db $FD
    ld h, b
    ld a, a
    ccf
    rst $38
    db $10
    rst $38
    db $10
    rst $18
    jr nc, @+$44

    ld h, c
    rst $38
    sub a
    ld a, b
    rla
    ld hl, sp+$13
    db $FC
    cp $02
    rst $28
    cp $02
    rst $38
    ld bc, $6152
    db $FD
    inc bc
    ld sp, hl
    rst $18
    rlca
    xor c
    ld d, a
    scf
    rlca
    db $ED
    ld h, l
    ld [$FE07], sp
    adc l
    ld b, c
    inc d
    ld hl, sp+$24
    ld hl, sp+$4A
    call nz, $EF04
    add d
    nop
    ld [bc], a
    ld [bc], a
    db $ED
    ld h, d
    ld a, a
    nop
    ldh [rIE], a
    rra
    ret nz

    ccf
    add c
    ld a, a
    add [hl]
    ld a, a
    inc e
    rst $38
    db $FC
    jr nz, @-$16

    ret c

    ret z

    cp $FE
    db $E3
    rst $30
    ldh [$8F], a
    add b
    ld [c], a
    ld h, c
    ccf
    nop
    ld e, [hl]
    ld bc, $F0F9
    db $EC
    ld h, b
    ld d, [hl]
    ld bc, $0202
    dec b
    ld b, $0F
    cp a
    inc c
    dec de
    inc e
    add hl, de
    ld e, $80
    xor [hl]
    ld h, d
    ret nz

    rst $30
    ld b, b
    and b
    jr nz, @-$48

    ld h, e
    ret nz

    rst $38
    ld hl, $FF3F
    dec sp
    ld a, $6F
    ld a, [hl]
    ret z

    rst $38
    adc l
    ld a, [$9DFF]
    ld a, [c]
    db $DD
    ld a, [c]
    ld a, [de]
    add [hl]
    ld l, $1E
    cp a
    ld [hl], d
    ld a, $DE
    ld [c], a
    ld a, [hl]
    add d
    ld d, b
    ld h, b
    rlca
    inc bc
    db $FD
    dec de
    rst $38
    ret nc

    rst $18
    db $10
    ld e, $18
    inc e
    daa
    ccf
    rst $38
    ld h, b
    ld a, a
    jp Jump_00C_5FFC


    ldh [rIE], a
    jr c, @+$01

    ld bc, $0203

jr_00C_63B5:
    add a
    add b
    ret z

    ret nz

    ldh [rIE], a
    jr jr_00C_63B5

    and $9E
    rlca
    rst $38
    adc h
    ld a, a
    rst $38
    ld b, d
    jp $C1C1


    db $FC
    db $FC
    cpl
    rlca
    rst $38
    cp $01
    adc [hl]
    ld [hl], c
    inc sp
    db $FC
    db $DD
    jp nz, Jump_00C_51FF

    ld [hl], c
    ld d, b
    ld [hl], b
    ld d, b
    ld [hl], b
    inc sp
    or e
    rst $38
    sbc l
    db $FC
    scf
    jr nc, jr_00C_643C

    ld h, a
    pop bc
    rst $38
    db $FD
    nop
    ld e, $01
    ld bc, $0103
    nop
    ld [bc], a
    ld bc, $02FF
    rlca
    ld [bc], a
    inc bc
    inc b
    dec [hl]
    adc [hl]
    cp c
    rst $38
    adc [hl]
    ld l, e
    inc e
    ld d, d
    dec a
    or h
    ld a, e
    xor b
    rst $38
    ld [hl], a
    ld b, b
    rst $38
    pop de
    rst $28
    sbc l
    ld [hl], e
    xor a
    rst $38
    ld [hl], e
    ccf
    pop hl
    ld e, a
    pop hl
    ld e, l
    db $E3
    or [hl]
    rst $38
    res 6, b
    rst $08
    ld h, e
    sbc a
    ld [c], a
    pop bc
    ldh [rIE], a
    ld b, b
    ld b, b
    ldh [$EC], a
    ret nz

    ld d, d
    call z, $FF42
    sbc h
    and [hl]
    sbc b
    ld l, $10
    cp a
    ld a, a
    sub a
    ld a, a
    ld [hl], a
    inc d
    cp [hl]
    add hl, hl
    inc e
    db $10
    rrca
    rra
    ld [bc], a
    rst $38
    nop

jr_00C_643C:
    inc b
    rst $38
    ld hl, sp-$01
    or b
    ld a, a
    ld h, b
    rst $38
    cp a
    ldh [$3F], a
    ld [c], a
    dec a
    ld [c], a
    dec a
    add $FF
    ld a, c
    ld hl, $21FE
    cp $20
    rst $38
    ld a, b
    rst $38
    rst $38
    ld c, b
    rst $28
    ld [hl], h
    rst $00
    cp h
    rst $10
    cp h
    ld a, a
    rst $20
    ld hl, $01DF
    rst $38
    ld [bc], a
    cp $92
    ld bc, $04FF
    db $FC
    inc b
    db $FC
    ld [$06F8], sp
    ld b, $3F
    ld [bc], a
    inc bc
    inc bc
    inc bc
    ld bc, $1E01
    ld [bc], a
    and [hl]
    inc b
    cp l
    add b
    or d
    nop
    ret nz

    ret nz

    ret nz

    ld b, b
    cp b
    ld bc, $FF1E
    cp $7F
    rst $38
    db $E3
    rst $38
    xor a
    pop af
    ld a, $FF
    ldh [$3E], a
    ldh a, [$9F]
    ld hl, sp-$22
    db $FC
    or $FF
    rra
    xor $3F
    cp $5F
    rst $20
    rst $38
    rst $08
    rst $38
    rst $30
    rra
    rst $20
    rra
    db $E3
    dec e
    jp $FF3D


    rra
    ld h, [hl]
    ld a, [hl-]
    rra
    db $E4
    ld l, e
    jr @-$07

    rst $38
    ld sp, $E7EF
    ld a, h
    ld e, a
    ldh a, [$BF]
    and b
    rst $38
    ldh a, [$98]
    ldh a, [$8D]
    add sp, -$7A
    db $E4
    add d
    rst $38
    di
    ld b, c
    ld [hl], c
    jr nz, jr_00C_6504

    nop
    inc c
    cp c
    rst $38
    ld [hl], a
    add hl, sp
    rst $30
    add hl, sp
    rst $30
    ld e, l
    db $D3
    ld c, l
    rst $38
    db $D3
    ld b, l
    bit 1, [hl]
    ret


    ld b, [hl]
    push bc
    jp nz, $FFFF

    add a
    cp $8B
    ld a, [$FB8A]
    sub d
    rst $38
    di
    sub d
    di
    sub c
    pop af
    sub c
    pop af
    add hl, bc
    xor l
    rrca
    ld e, $21
    ld a, [bc]
    ld c, $24
    ld hl, $2A06
    jr nz, jr_00C_650F

    ld a, a
    ldh a, [rNR41]
    ldh [rLCDC], a

jr_00C_6504:
    ret nz

    add b
    add b
    and [hl]
    dec b
    rst $38
    cp h
    rst $20
    ld a, b
    rst $08
    ld l, b

jr_00C_650F:
    rst $08
    ld hl, sp+$5F
    rst $38
    pop af
    ccf
    ld h, d
    cp [hl]
    call nz, $0CFC
    db $FC
    rst $38
    db $E4
    ld e, e
    dec l
    db $D3
    push de
    xor e
    ld c, l
    or e
    rst $38
    sbc d
    ld [hl], a
    cp l
    ld h, a
    ld [hl], c
    rst $08
    ei
    adc a
    rst $38
    ld [bc], a
    dec b
    rrca
    dec b
    dec c
    rlca
    ld c, $07
    rst $30
    ld [bc], a
    rlca
    inc b
    ld h, a
    ld [hl+], a
    add e
    rst $38
    ld b, $FF
    rst $38
    inc c
    rst $38
    dec e
    cp $1A
    db $FD
    jr nc, @+$01

    rst $38
    ld h, c
    rst $38
    pop bc
    rst $38
    ld l, e
    sbc a
    jp z, $FF3F

    sbc d
    ld [hl], a
    add hl, sp
    rst $20
    ld [hl], l
    rst $08
    db $EC
    sbc e
    rst $38
    ld e, h
    cp e
    sbc b
    ld [hl], a
    call c, $C080
    ld h, b
    rst $38
    nop
    nop
    jr @+$22

    cp l
    sbc [hl]
    adc d
    ret nz

    rst $38
    call nz, $A0E8
    ldh [$03], a
    nop
    rlca
    nop
    rst $38
    ld b, $01
    ld c, $01
    adc l
    inc bc
    ld e, $02
    adc a
    dec e
    inc b
    add hl, de
    dec bc
    and [hl]
    add hl, bc
    cp c
    ccf
    ld e, $01
    inc e
    rst $38
    inc e

jr_00C_658D:
    ld a, $3E
    ld [hl], e
    ld [hl], e
    ld a, a
    ld a, a
    ld [hl], e
    db $FC
    add sp, $20
    ld e, $01
    ld e, $1E
    dec sp

jr_00C_659C:
    dec sp
    jr c, jr_00C_65D7

    add a
    ld a, a
    ld a, a
    jr c, jr_00C_659C

    jr nz, jr_00C_65C4

    ld bc, $21F8
    or $21
    dec sp
    rst $30
    dec sp
    ld e, $1E
    and [hl]
    inc bc
    ld a, $3E
    ld [hl], a
    ld [hl], a
    cp a
    ld a, a
    ld a, a
    ld [hl], b
    ld [hl], b
    ccf
    ccf
    and [hl]
    inc bc
    ld [hl], a

jr_00C_65C0:
    ccf
    ld [hl], a
    ld a, h
    ld a, h

jr_00C_65C4:
    ld a, b
    ld a, b
    ld [hl], b
    jr z, @+$42

    cp [hl]
    inc sp
    rst $38
    ccf
    ccf
    ld [hl], b
    ld [hl], b
    ld a, a
    ld a, a
    rlca
    rlca
    di
    ld a, [hl]
    ld a, [hl]

jr_00C_65D7:
    inc c
    ld b, l
    add sp, $21
    ld [hl], e
    ld [hl], e
    ld a, $3E
    adc [hl]
    and [hl]
    inc bc
    ld a, [hl]
    ld a, [hl]
    ld l, e
    ld h, h
    ld b, h
    inc c
    ld d, c
    nop
    ld c, l
    inc e
    and c
    inc e
    sbc $21
    sub h
    ld b, e
    ld e, h
    ld e, a
    and [hl]
    rlca
    jr nc, jr_00C_65C0

    ld b, b
    ld h, b
    jr c, jr_00C_658D

    jr nz, jr_00C_65FE

jr_00C_65FE:
    ld c, l
    jr z, jr_00C_6642

    ld a, [hl]
    ld a, [hl]
    ld [hl], a
    and $42
    xor h
    ld e, c
    cp $00
    ld [hl], a
    ld h, e
    ld h, e
    scf
    scf
    ld e, $1E
    inc e
    rst $00
    inc e
    jr c, @+$3A

    ld a, [hl+]
    ld b, e
    ld d, d
    ld c, l
    and $43
    ld [hl], a
    ld [hl], a
    add [hl]
    ld a, [de]
    ld b, l
    ld a, [hl]
    ld a, [hl]
    ld d, h
    ld b, e
    ld [$1223], a
    ld b, c
    ld c, b
    ld h, c
    rlca
    rlca
    rlca
    ld [hl], a
    ld [hl], a
    ld e, d
    ld b, l
    and [hl]
    add hl, bc
    ld h, b
    ld l, l
    sub b
    ld c, a
    ld [hl+], a
    ld c, e
    inc bc
    inc a
    inc a
    sub h
    ld b, l
    sbc d
    ld b, l
    ld d, d

jr_00C_6642:
    ld c, e
    ldh a, [$2D]
    ld l, [hl]
    ld [hl], c
    inc [hl]
    ld a, e
    nop
    ld [hl+], a
    ld e, l
    ld sp, $A61F
    add hl, bc
    or b
    ld [hl], c
    inc d
    ld c, c
    ld h, b
    ld l, a
    ld [de], a
    ld c, l
    ld d, d
    ld l, e
    dec c
    rlca
    or b
    nop
    ccf
    ccf
    ld b, [hl]
    ld l, c
    pop bc
    rra
    sbc $19
    ldh [rBGP], a
    ret c

    ld c, d
    ld b, a
    inc d
    ld c, e
    ld [de], a
    ld b, c
    ld [hl], b
    ld [hl], b
    ld l, d
    ld h, a
    ld a, $3E
    dec c
    halt
    inc [hl]
    ld [hl+], a
    dec sp
    dec sp
    sbc h
    ld e, a
    sbc $73
    inc [hl]
    dec hl
    add b
    dec a
    nop
    ld h, d
    ld c, a
    ld d, h
    ld c, c
    ret nc

    ld e, a
    ld [de], a
    ld e, a
    call nz, Call_000_0F49
    ld e, a
    ld [de], a
    ld l, a
    ld h, [hl]
    ld b, c
    rst $08
    ld [hl], a
    ld [hl], a
    ld h, e
    ld h, e
    call z, Call_000_3435
    ld l, e
    ccf
    ccf
    ccf
    ld [hl], b
    ld [hl], b
    ld a, a
    ld a, a
    rlca
    rlca
    ld a, [bc]
    dec [hl]
    sub c
    ld e, a
    nop
    or e
    ld e, a
    ld [hl], h
    ld l, l
    ld h, $27
    ret nc

    dec l
    sub b
    ld l, l
    or b
    ld l, l
    or b
    rra
    ld b, c
    ld a, a
    nop
    ld h, e
    ld a, a
    add l
    ld a, a
    and a
    ld a, a
    ret


    ld [hl], c
    db $DD
    nop
    sbc $60
    ld h, e
    ld h, e
    ld l, e
    db $E4
    ld h, b
    ld [hl], a
    ld [hl], a
    ei
    ld h, e
    ld h, e
    sbc $61
    nop
    nop
    ld a, $3E
    ld [hl], e
    sub $F4
    ld h, d
    ld a, $3E
    db $EC
    ld h, e
    ld [hl], a
    ld [bc], a
    inc b
    ccf
    ccf
    ld c, [hl]
    sbc $61
    inc a
    inc a
    inc e
    ld [de], a
    ld b, $DE
    ld h, c
    rlca
    jr nz, jr_00C_66F2

jr_00C_66F2:
    jp Jump_000_3F3F


    ld b, $07
    cpl
    rra
    ld d, c
    rra
    ld h, b
    dec bc
    ld a, $3E

Jump_00C_66FF:
    cp a
    ld [hl], a
    ld [hl], a
    ld [hl], b
    ld [hl], b
    ld [hl], a
    ld [hl], a
    ld a, [$3E65]
    db $DB
    ld a, $76
    sub h
    ld [bc], a
    dec sp
    dec sp
    db $FC
    ld h, l
    ld a, h
    ld a, h
    rst $20
    ld a, b
    ld a, b
    ld [hl], b
    xor b
    nop
    sbc h
    inc de
    ld h, e
    ld h, e
    scf
    ld a, a
    scf
    ld e, $1E
    inc e
    inc e
    jr c, jr_00C_675F

    xor d
    dec b
    ld l, h
    ld [hl], h
    dec c
    db $F4
    ld l, e
    ld a, [hl]
    ld a, [hl]
    db $F4
    ld h, e
    ld [hl], e
    ld [hl], e
    ld h, b
    rra
    rst $30
    nop
    nop
    jr c, jr_00C_675B

    jr nz, jr_00C_67BC

    ld a, a
    jr c, jr_00C_6778

    rst $08
    dec sp
    dec sp
    ld e, $1E
    sbc $61
    xor b
    ld bc, $7E7E
    cp h
    ld [bc], a
    inc bc
    ld a, h
    rlca
    ld a, a
    ld a, a
    ld [hl], b
    ld [hl], b
    ld a, [hl+]
    inc de
    ld e, $37
    ld e, $3B
    dec sp

jr_00C_675B:
    ld [hl+], a
    inc hl
    jr c, jr_00C_6797

jr_00C_675F:
    adc h
    ld de, $2D20
    nop
    ld b, b
    dec a
    ld [hl], b
    ld de, $0B94
    ld a, [c]
    dec bc
    jr nz, jr_00C_678D

    ld bc, $235F
    ld e, a
    ld b, $3F
    ld h, b
    adc b
    daa
    and d

jr_00C_6778:
    dec c
    sub d
    dec bc
    add d
    ld bc, $0108
    rlca
    rlca
    adc b
    dec b
    nop
    ld b, d
    dec hl
    ldh [$2F], a
    jp nz, $F41F

    ld l, c
    ld h, b

jr_00C_678D:
    dec l
    jr nz, jr_00C_67CF

    sub d
    ccf
    ld b, e
    ld a, a
    jr nc, jr_00C_67FB

    ld a, a

jr_00C_6797:
    ld a, [hl]
    ld [hl], l
    ld a, [c]
    ld bc, $03F2
    ld a, [hl]
    ld a, [hl]
    inc e
    ld [hl], c
    db $10
    dec c
    ld [bc], a
    ldh a, [rSB]
    ld l, e
    call nc, $DC64
    rra
    ld a, [hl]
    ld sp, $1F11
    ld d, h
    ccf
    add $2B
    and b
    call nc, $CA69
    ld h, c
    call nz, $C069
    ld l, a

jr_00C_67BC:
    jp nz, $3053

    xor b
    nop
    ld h, b
    ld bc, $BE60
    ccf
    ldh [$2D], a
    nop
    ld a, a
    ld b, d
    add hl, hl
    ld [hl], a
    nop
    nop

jr_00C_67CF:
    ld [hl], b
    ldh [$60], a
    ld a, [hl]
    ld a, [hl]
    ld [hl], a
    and $60
    ld [hl], a
    ld a, [hl]
    ld a, [hl]
    nop
    db $EC
    ld h, b
    inc a
    inc a
    inc e
    ld a, [c]
    ld h, [hl]
    cp [hl]
    db $EC
    ld h, c
    nop
    nop
    ld a, $3E
    ld [hl], e
    inc b
    ld [bc], a
    ld a, $B5
    ld a, $FC
    ld [hl], c
    rlca
    jr nz, jr_00C_67F4

jr_00C_67F4:
    ccf
    ccf
    and $61
    ccf
    or c
    ccf

jr_00C_67FB:
    db $EC
    ld [hl], c
    ld a, [$F461]
    ld l, e
    ld a, [hl]
    ld a, [hl]
    inc b
    inc bc
    ld [hl], e
    db $FD
    ld [hl], e
    db $FC
    ld h, l
    ld [hl], a
    ld [hl], a
    ld a, a
    ld a, a
    ld [hl], b
    ld [hl], b
    ld hl, sp+$2A
    inc bc
    ld l, h
    rrca
    ld [bc], a
    dec bc
    ld e, $1E
    dec sp
    dec sp
    jr c, @+$11

    jr c, jr_00C_689E

    ld a, a
    jr c, @-$66

    nop
    ld l, h
    ld de, $0D20
    nop
    ld bc, $76ED
    call nz, Call_000_3B02
    dec sp
    db $FC
    ld h, e
    ld [hl], a
    ld [hl], a
    ld a, h
    rst $00
    ld a, h
    ld a, b
    ld a, b
    ldh [$61], a
    db $EC
    ld h, c
    ldh [$61], a
    ld [hl], e
    ld [hl], e
    adc a
    ld a, h
    ld a, h
    halt
    halt
    ld e, d
    dec b
    pop af
    rra
    ld l, h
    dec bc
    ld h, e
    ld a, e
    ld h, e
    ld l, e
    inc h
    jr nz, jr_00C_68C9

    ld [hl], a
    ld h, e
    ld h, e
    cp h
    inc de
    rst $38
    ld h, e
    ld h, e
    scf
    scf
    ld e, $1E
    inc e
    inc e
    ei
    jr c, @+$3A

    jp c, Jump_000_3F03

    ccf
    ld [hl], b
    ld [hl], b
    ld a, a
    daa
    ld a, a
    rlca
    rlca
    ld [$6C63], a
    dec b
    ld h, b
    ld l, b
    jr nz, jr_00C_6876

jr_00C_6876:
    ccf
    ld l, h
    adc l
    ccf
    ld l, h
    dec c
    inc e
    inc e
    ld [bc], a
    ld bc, $7F7F
    ld e, b
    rlca
    ld a, [hl]
    ld [hl], d
    rrca
    ld [hl], a
    ld [hl], a
    ld [hl], b
    ld [hl], b
    ld [hl], a
    ld [hl], a
    ld a, [bc]
    inc bc
    ld b, $E0
    ld h, a
    ld [hl], a
    ld [hl], a
    inc a
    ld de, $6DF0
    or b
    rrca
    ld sp, $6C5F
    add hl, bc

jr_00C_689E:
    nop
    ldh [$6D], a
    ret nc

    ld bc, $23F6
    ld l, d
    dec b
    jp nc, $B00B

    ld de, $0B64
    ld d, d
    dec de
    ldh [rNR41], a
    ld e, a
    ld [de], a
    dec sp
    ld b, b
    dec c
    sbc b
    ld bc, $0196
    dec sp
    dec sp
    ld e, $01
    ld e, $EC
    ld sp, $1170
    call nz, Call_00C_610B
    ld a, a
    add b
    ld a, e

jr_00C_68C9:
    ld [c], a
    dec hl
    ld [hl], b
    ld e, l
    nop
    ld d, b
    cpl
    jp nz, Jump_000_035F

    rra
    ld e, $17
    sub b
    rrca
    jp nz, $200B

    ld l, l
    and b
    ld c, a
    nop
    ld h, d
    ccf
    and e
    rra
    and [hl]
    ccf
    ret z

    daa
    or d
    ld c, e
    ldh a, [rOCPD]
    db $FD
    nop
    sbc $60
    ld h, e
    ld h, e
    scf
    scf
    ld e, $1E
    cp a
    inc e
    inc e
    jr c, jr_00C_6932

    ld [hl], b
    ld [hl], b
    sbc $61
    ld a, $FF
    ld a, $77
    ld [hl], a
    ld a, a
    ld a, a
    ld [hl], b
    ld [hl], b
    ccf
    push af
    ccf
    sbc $61
    jr c, jr_00C_690E

jr_00C_690E:
    nop
    ld a, a
    ld a, a
    jr c, jr_00C_694B

    adc a
    dec sp
    dec sp
    ld e, $1E
    sbc $61
    inc c
    dec c
    nop
    dec c
    ld [hl], b
    adc $30
    nop
    ld a, [hl]
    ld a, [hl]
    ld [hl], a
    ld [hl], $02
    sbc $61
    inc e
    inc e
    ld hl, sp+$3E
    ld bc, $0344
    inc c
    inc bc

jr_00C_6932:
    ccf
    ccf
    ld [hl], b
    ld [hl], b
    ld a, a
    rra
    ld a, a
    rlca
    rlca

jr_00C_693B:
    ld a, [hl]
    ld a, [hl]
    inc c
    ld de, $0F0C
    ld a, [c]
    ld h, c
    cp a
    ld [hl], b
    ld [hl], b
    ld [hl], a
    ld [hl], a
    ld a, $3E
    inc l

jr_00C_694B:
    rra
    nop
    and a
    nop
    inc a
    inc a
    ld b, h
    dec b
    ld c, d
    inc bc
    rlca
    ret nz

    nop
    ccf
    pop de
    ccf
    ld [hl], $01
    ld a, [$0C63]
    dec b
    jr nc, jr_00C_693B

    nop
    ld h, b
    ld h, b
    ld a, [c]
    xor $63
    ld [hl], e
    db $E4
    ld [bc], a
    adc d
    inc bc
    nop
    nop
    ld a, [hl]
    ld a, [hl]
    ld b, $E4
    inc bc
    ld [hl], e
    ld [hl], e
    ld a, h
    ld de, $6DF0
    nop
    ld sp, $19E4
    nop
    rrca
    nop
    ld [de], a
    dec l
    ld b, d
    dec a
    inc c
    dec bc
    ld b, b
    rrca
    ld b, d
    dec sp
    jr nc, jr_00C_699B

    db $10
    cpl
    inc c
    dec bc
    inc b
    or b
    dec c
    ldh [rIF], a
    ld h, e
    ld [hl+], a
    ld b, b
    adc b

jr_00C_699B:
    ld bc, $470A
    db $E4
    add hl, sp
    ld [hl], b
    ld de, $E4DE
    add hl, bc
    ld e, $1E
    dec sp
    dec sp
    ld [bc], a
    inc bc
    jr c, jr_00C_69E5

    ldh [$8C], a
    ccf
    ld a, [hl]
    ld sp, $1F52
    db $D3
    ld e, a
    inc c
    add hl, bc
    ld a, [hl]
    ld a, [hl]
    ld l, e
    ldh a, [rDIV]
    ld h, h
    inc l
    ld sp, $3FC0
    ld [de], a
    dec l
    ld [hl], a
    ld [hl], a
    ld a, h
    ld a, h
    jp $7878


    jr nc, @+$03

    call z, Call_00C_7113
    ld a, a
    inc c
    dec bc
    ld h, e
    ld h, e
    ld e, $04
    ld h, c
    ld [hl], a
    ld [hl], a
    ld h, e
    ld h, e
    sbc h
    rra
    cp $31
    ld [hl], d
    rrca
    dec c
    halt
    db $F4

jr_00C_69E5:
    ld h, d
    dec sp
    dec sp
    db $FC
    inc sp
    or d
    ld c, l
    ld [c], a
    dec c
    add b
    ld l, l
    nop
    ld d, d
    ld l, e
    and b
    cpl
    ld [de], a
    rrca
    db $E4
    add hl, sp
    ld d, b
    ld sp, $1B24
    cp [hl]
    dec de
    ld [hl], b
    ld c, l
    db $FC
    and b
    dec l
    ld [hl+], a
    ld hl, $7777
    ccf
    ccf
    rlca
    rlca
    nop
    ld h, $41
    ld l, $6F
    sub b
    dec bc
    db $FD
    nop
    sbc $60
    inc a
    inc a
    halt
    halt
    ld [hl], b
    ld [hl], b
    rst $28
    halt
    halt
    inc a
    inc a
    sbc $61
    nop
    nop
    ld a, c
    db $DB
    ld a, c
    db $ED
    db $F4
    ld h, d
    ld a, b
    ld a, b
    db $EC
    ld h, e
    or [hl]
    or [hl]
    cp l
    or a
    inc b
    nop
    or [hl]
    or [hl]
    or $F6
    db $EC
    ld h, e
    rst $18
    ld l, a
    rst $18
    cp e
    cp e
    dec sp
    ld d, $00
    dec e
    dec e
    sbc $61
    rst $30
    inc e
    inc e
    ld [hl], $22
    nop
    ld e, $1E
    ld b, $06
    rst $28
    or [hl]
    or [hl]
    inc e
    inc e
    sbc $61
    ld a, b
    ld a, b
    db $ED
    ld a, a
    db $ED
    db $FD
    db $FD
    pop hl
    pop hl
    ld a, h
    ld a, h
    db $EC
    ld h, e
    or a
    di
    di
    db $DB
    ld b, h
    ld [bc], a
    pop af
    pop af
    db $EC
    ld h, e
    ld h, a
    rst $38
    ld h, a
    ld l, h
    ld l, h
    ld l, a
    ld l, a
    ld h, c
    ld h, c
    rst $28
    ld a, l
    rst $28
    sbc $63
    sbc l
    sbc l
    inc e
    inc e
    sbc h
    ld h, [hl]
    nop
    rst $28
    inc e
    inc e
    ld bc, $DE01
    ld h, c
    adc h
    adc h
    call c, $DCFF
    ld a, b
    ld a, b
    ld [hl], b
    ld [hl], b
    ldh [$E0], a
    ret nz

    db $DD
    ret nz

    sbc $61
    ld a, $3E
    halt
    add h
    ld [bc], a
    dec sp
    dec sp
    ld a, [$037E]
    ld [hl], a
    sub d
    nop
    ccf
    ccf
    rlca
    rlca
    ld [hl], a
    daa
    ld [hl], a
    ld a, $3E
    ld a, [hl]

jr_00C_6AB3:
    rrca
    inc l
    ld bc, $B41C
    inc b
    db $EC
    ld h, e
    rst $20
    ld a, [hl]
    ld a, [hl]
    ld [hl], e
    call nz, $EC04
    ld h, e
    ccf
    ccf
    ld [hl], b
    ld a, a
    ld [hl], b
    ld a, a
    ld a, a
    rlca
    rlca
    ld a, [hl]
    ld a, [hl]
    sbc $61
    db $FD
    jr c, jr_00C_6AB3

    nop
    ld a, a
    ld a, a
    jr c, jr_00C_6B10

    dec sp
    dec sp
    ld b, e
    ld e, $1E
    db $EC
    ld h, e
    pop af
    rra
    cp $09
    ldh [$0D], a
    ld [hl], b
    jr nc, jr_00C_6B08

    sbc e
    ld a, [hl]
    ld a, [hl]
    sub d
    ld bc, $7777
    db $EC
    ld h, e
    sub b
    ld bc, $9F7F
    ld a, a
    ld [hl], b
    ld [hl], b
    ccf
    ccf
    cp $11
    jp nz, Jump_00C_7E03

    ld a, c
    ld a, [hl]
    jr nc, jr_00C_6B24

    db $EC
    ld h, e
    ld [hl], a
    ld [hl], a
    ld a, h

jr_00C_6B08:
    ld a, h
    halt
    ld bc, $6A98
    inc hl
    or b
    rra

jr_00C_6B10:
    sub b
    ld bc, $7070
    sbc d
    dec b
    ld b, b
    cpl
    ld a, $79
    ld a, $C4
    inc bc
    sbc h
    inc bc
    ld e, $1E
    dec sp
    dec sp
    ld [c], a

jr_00C_6B24:
    inc bc
    inc bc
    jr c, jr_00C_6B60

    cp $1F
    db $FD
    ccf
    rra
    ld e, a
    ld a, $5B
    jp nz, $DA07

    inc bc
    ld hl, sp-$80
    dec c
    ld [hl], b
    dec l
    jr nc, jr_00C_6B5C

    ld [hl], e
    ld [hl], e
    ld a, h
    ld a, h
    halt
    add c
    halt
    jp z, $9205

    ld sp, $2946
    jp nc, $C00B

    ld c, a
    db $EC
    ld h, e
    jr nc, jr_00C_6BC6

    add sp, $40
    ld h, b
    ld h, b
    ld a, $51
    ld h, e
    ld h, e
    ld l, e
    inc b
    ld h, b
    rrca

jr_00C_6B5C:
    ld [hl], a
    ld [hl], a
    ld h, e
    ld h, e

jr_00C_6B60:
    inc l
    dec [hl]
    call nz, $F029
    ld e, l
    add b
    dec l
    inc bc
    inc a
    inc a
    or h
    dec b
    ld e, d
    ld [hl], e
    ld a, a
    ld a, a
    ld [hl], d
    dec hl
    ld b, b
    dec l
    ldh [rIF], a
    nop
    ld [hl], $23
    sub h
    ld bc, $739C
    jp nz, $010D

    rra
    jr nz, jr_00C_6B9F

    ld [hl+], a
    ld l, l
    sub d
    ccf
    add b
    ld b, h
    add hl, sp
    adc a
    rra
    or c
    rra
    inc [hl]
    dec c
    ld [hl], h
    ld c, c
    ld b, d
    ld hl, $61D8
    rlca
    and c
    rlca
    xor b
    dec h
    ld [hl], d
    ld c, e
    add b

jr_00C_6B9F:
    ccf
    ret nz

    inc bc
    ld h, b
    jr c, jr_00C_6BC5

    nop
    ld bc, $5F00
    nop
    nop
    ld a, a
    ld a, a
    inc e
    ld [c], a
    ld h, [hl]
    nop
    db $EC
    ld h, b
    dec e
    ld [hl], b
    ldh a, [$60]
    ld a, [hl]
    ld a, [hl]
    ld [hl], a
    or $62
    db $EC
    ld h, c
    ld [$FE61], a
    db $E4
    ld l, c

jr_00C_6BC3:
    nop
    nop

jr_00C_6BC5:
    ccf

jr_00C_6BC6:
    ccf
    ld [hl], b
    ld [hl], b
    ld a, a
    sbc a
    ld a, a
    rlca
    rlca
    ld a, [hl]
    ld a, [hl]
    inc c
    inc bc
    inc e
    dec bc
    ld a, $F7
    ld a, $73
    ld [hl], e
    ldh a, [$61]
    ld [hl], e
    ld [hl], e
    ld a, $3E
    ld e, [hl]
    db $EC
    ld a, a
    nop
    nop
    inc a
    inc a
    ld [c], a
    ld l, e
    rlca
    ld [hl], b
    nop
    db $DB
    ccf
    ccf
    or $61
    ccf
    ccf
    inc c
    inc bc
    ld h, e
    ld h, e
    dec a
    ld l, e
    add h
    nop
    ld [hl], a
    ld [hl], a
    ld h, e
    ld h, e
    inc a
    ld de, $032E
    ld l, b
    and h
    ld bc, $033A
    inc e
    dec b
    jr nc, jr_00C_6BC3

    nop
    ld h, b
    ld h, b
    sbc [hl]
    ld de, $7EDB
    ld a, [hl]
    and h
    inc bc
    ld [hl], e
    ld [hl], e
    ld a, [hl+]
    dec b
    ld [hl], a
    ld [hl], a
    rrca
    ld a, a
    ld a, a
    ld [hl], b
    ld [hl], b
    ld a, d
    dec b
    pop af
    rra
    inc e
    add hl, bc
    ld [hl], b
    rrca
    or a
    ld a, $3E
    halt
    inc [hl]
    ld [hl+], a
    dec sp
    dec sp
    ld a, h
    dec b
    scf
    rst $38
    scf
    ld e, $1E
    inc e
    inc e
    jr c, jr_00C_6C73

    ld [hl], b
    ld bc, $1C70
    ld de, $0B82
    ld d, b

jr_00C_6C43:
    dec e
    ld h, b
    dec c
    sbc [hl]
    dec a
    ldh a, [$67]
    ld a, [de]
    dec b
    ldh a, [$E2]
    dec e
    call nz, $F025
    ld h, c
    inc a
    ld bc, $7777
    ld a, h
    ld a, h
    inc bc
    ld a, b
    ld a, b
    ld a, [$3025]
    dec l
    nop
    rra
    ld [c], a
    dec bc
    ld [hl], b
    dec c
    ret nz

    cpl
    ret nc

    ld b, d
    dec a
    ld [hl-], a
    dec hl
    add b
    ccf
    inc e
    dec bc
    jr c, jr_00C_6C43

jr_00C_6C73:
    ld b, b
    ld a, a
    ld a, a
    ccf
    jr c, jr_00C_6CB1

    dec sp
    dec sp
    ld e, $1E
    adc h
    dec d
    db $E4
    dec bc
    nop
    ld a, [c]
    dec l
    ld [c], a
    dec c
    jp nz, $F40F

    add hl, hl
    sub b
    cpl
    ld [c], a
    dec e
    ld [hl-], a
    dec l
    ld [de], a
    dec de
    ld h, b
    jr nc, jr_00C_6CC4

    or d
    dec [hl]
    ld [$0255], a
    ld c, a
    and h
    rrca
    ld d, h
    ld d, h
    sbc [hl]
    dec hl
    nop
    ld b, $15
    ccf
    nop
    nop
    ld a, [hl]
    ld a, [hl]
    ld [hl], e
    ld [hl], e
    ldh [$61], a
    ld [c], a
    ld h, c
    or l
    nop

jr_00C_6CB1:
    db $EC
    ld h, d
    ld [hl], a
    ld a, [c]
    ld h, h
    ccf
    ccf
    db $EC
    ld h, c

jr_00C_6CBA:
    jr c, jr_00C_6CBA

    nop
    nop
    ld a, a
    ld a, a
    jr c, jr_00C_6CFA

    dec sp
    dec sp

jr_00C_6CC4:
    ld e, $D1
    ld e, $EC
    ld h, e
    inc c
    dec bc
    nop
    dec c
    ld [hl], b
    jr nc, jr_00C_6CD0

jr_00C_6CD0:
    ld a, [hl]
    ld a, [hl]
    call c, $63F2
    db $EC
    ld h, e
    ld a, $3E
    halt
    ld b, h
    ld [bc], a
    dec sp
    dec sp
    sbc h
    db $FC
    ld a, a
    inc c
    rrca
    inc a
    inc a
    inc e
    add d
    ld b, $3C
    dec b
    ld [hl], a
    rra
    ld [hl], a
    ld a, a
    ld a, a
    ld [hl], b
    ld [hl], b
    ld a, [$9263]
    ld bc, $61F8
    ccf
    rlca
    rlca

jr_00C_6CFA:
    ld [hl], a
    ld [hl], a
    ld a, $3E
    adc [hl]
    rrca
    sbc $63
    inc [hl]
    call nz, $EC03
    ld h, c
    rlca
    ret nc

    nop
    ccf
    ccf
    or $67
    rst $18
    rra
    adc $00
    dec a
    ld a, [hl]
    ld a, [hl]
    ld l, e
    inc h
    inc h
    db $EC
    ld [hl], c
    nop
    nop
    rst $38
    ccf
    ccf
    ld [hl], b
    ld [hl], b
    ld a, a
    ld a, a
    rlca
    rlca
    nop
    ld [$0063], a
    dec e
    jr nc, jr_00C_6D33

    ld [$B265], a
    dec c
    sub c
    ccf
    inc d

jr_00C_6D33:
    add hl, de
    ld b, b
    ld bc, $C400
    inc bc
    xor h
    inc bc
    add b
    dec c
    ret nc

    rra
    ld de, $335F
    ld e, a
    xor h
    add hl, hl
    ld b, d
    dec bc
    ldh a, [$C0]
    dec c
    ret nc

    dec l
    jr nz, jr_00C_6D6D

    or d
    dec c
    ld [hl], a
    ld [hl], a
    ld a, h
    ld a, h
    inc bc
    ld a, b
    ld a, b
    jr nc, jr_00C_6D5A

    ld b, b

jr_00C_6D5A:
    ld e, a
    xor [hl]
    ccf
    adc d
    ld bc, $0B84
    ld [hl+], a
    dec l
    ld a, [de]
    add d
    inc sp
    ld h, b
    ld c, b
    ld h, b
    nop
    nop
    db $DD
    nop

jr_00C_6D6D:
    sbc $6C
    db $FC
    db $FC
    add d
    ldh a, [$60]
    db $FC
    db $FC
    ld sp, hl
    add b
    or $62
    db $EC
    ld h, a
    adc b
    adc b
    add h
    add h
    add d
    sbc a
    add d
    nop
    nop
    cp $FE
    or $61
    db $F4
    ld h, e
    cp $FF
    cp $00
    nop
    ld a, h
    ld a, h
    add d
    add d
    add b
    rst $38
    add b
    ld a, h
    ld a, h
    ld [bc], a
    ld [bc], a
    add d
    add d
    ld a, h
    db $FD
    ld a, h
    inc c
    rrca
    add d
    add d
    jp nz, $A2C2

    and d
    cp a
    sub d
    sub d
    adc d
    adc d
    add [hl]
    add [hl]
    ld a, [bc]
    inc bc
    db $10
    call z, $0850
    inc c
    rrca
    ld hl, sp-$08
    ld [$F001], sp
    ld h, c
    add h
    add h
    inc bc
    ld hl, sp-$08
    sbc $6D
    adc e
    rra
    xor l
    rra
    rst $08
    rra
    pop af
    rra
    inc de
    ccf
    ldh a, [$35]
    ccf
    add sp, $6B
    ldh a, [$63]
    inc a
    ld bc, $8282
    ld b, h
    ld b, h
    inc bc
    jr z, @+$2A

    ld d, [hl]
    dec b
    ld a, l
    ccf
    sbc a
    ccf
    pop bc
    ccf
    db $E3
    ccf
    dec b
    ld e, a
    ld hl, sp+$27
    ld e, a
    ld c, c
    ld e, a
    ld e, h
    ld c, a
    add h
    add h
    adc b
    adc b
    sub b
    rra
    sub b
    ldh [$E0], a
    sub b
    sub b
    ld b, $01
    inc e
    inc bc
    sub b
    ld b, l
    db $FC
    ld a, [hl+]
    ld bc, $0D3E
    db $10
    db $10
    jr z, @+$2A

    ld b, h
    ld b, h
    db $FC
    adc [hl]
    ld b, l
    inc a
    ld bc, $C6C6
    xor d
    xor d
    sub d
    sub d
    ld [hl], $B6
    ld b, l
    jr c, jr_00C_6E55

    ld d, b
    rlca
    jr c, jr_00C_6E59

    ld e, h
    ld e, a
    db $FD
    ld e, a
    ldh [$1F], a
    ld a, a
    ld b, c
    ld a, a
    ld h, e
    ld a, a
    add l
    ld a, a
    sbc $63
    ld e, $1E
    ld hl, $21FF
    ld c, h
    ld c, h
    ld d, b
    ld d, b
    ld c, h
    ld c, h
    ld hl, $21FF
    ld e, $1E
    nop
    nop
    ld de, $3211
    rst $38
    ld [hl-], a
    sub d
    sub d
    sub c
    sub c
    sub b
    sub b
    ld [de], a
    rst $38
    ld [de], a
    add hl, sp
    add hl, sp
    nop
    nop
    adc h

jr_00C_6E55:
    adc h
    ld d, d
    cp $D0

jr_00C_6E59:
    ld h, b
    adc $CE
    ld b, d
    ld b, d
    ld d, d
    ld d, d
    adc h
    rst $38
    adc h
    nop
    nop
    pop af
    pop af
    sub c
    sub c
    ld de, $E2FA
    ld h, b
    ld hl, $62E6
    nop
    nop
    sbc c
    sbc c
    sbc e
    rst $38
    sbc e
    or e
    or e
    db $E3
    db $E3
    or e
    or e
    sbc e
    rst $38
    sbc e
    sbc c
    sbc c
    nop
    nop
    and $E6
    ld d, $EB
    ld d, $17
    ld [bc], a
    nop
    ld d, $06
    nop
    and $E6
    nop
    rst $28
    nop
    daa
    daa
    inc l
    db $10
    ld [bc], a
    xor a
    xor a
    ld l, h
    cp $18
    nop
    nop
    nop
    sbc b
    sbc b
    ld e, b
    ld e, b
    ld e, h
    rst $38
    ld e, h
    ld e, [hl]
    ld e, [hl]
    db $DB
    db $DB
    ld e, c
    ld e, c
    ld e, b
    rst $28
    ld e, b
    nop
    nop
    ld [hl], $2E
    nop
    halt
    halt
    or $37
    or $B6
    or [hl]
    ld l, $01
    nop
    nop
    ld [$88B4], sp
    sub l
    sub e
    cp e
    sub h
    adc b
    add l
    rlca
    add [hl]
    add l
    add c
    sub d
    nop
    adc a
    add [hl]
    ld [$8184], sp
    sub d
    adc e
    adc [hl]
    add l
    sub e
    sub e
    inc b
    sub h
    adc b
    add c
    sub h
    add hl, bc
    add e
    adc a
    adc [hl]
    sub h
    adc c
    adc [hl]
    sub l
    add l
    add h
    ld a, [bc]
    sub h
    adc a
    nop
    add l
    adc [hl]
    sub [hl]
    add l
    adc h
    adc a
    sub b
    add hl, bc
    sub h
    adc b
    add l
    nop
    sub a
    adc a
    sub d
    adc h
    add h
    ld a, [bc]
    sub a
    add c
    sub e
    nop
    adc h
    adc c
    add [hl]
    sub h
    add l
    add h
    rlca
    sub e
    adc c
    adc [hl]
    add a
    adc h
    add l
    cp a
    dec bc
    adc b
    add c
    adc [hl]
    add h
    add l
    add h
    adc h
    sbc c
    nop
    add d
    sbc c
    dec c
    add c
    nop
    sbc c
    adc a
    sub l
    adc [hl]
    add a
    nop
    add a
    adc c
    sub d
    adc h
    sbc h
    ld e, [hl]
    ld l, a
    ld l, d
    ld l, a
    add d
    ld l, a
    sbc d
    ld l, a
    or d
    ld l, a
    jp z, $E26F

    ld l, a
    ld a, [$126F]
    ld [hl], b
    ld a, [hl+]
    ld [hl], b
    ld b, d
    ld [hl], b
    ld e, d
    ld [hl], b
    ld [hl], d
    ld [hl], b
    adc d
    ld [hl], b
    and d
    ld [hl], b
    cp d
    ld [hl], b
    jp nc, $EA70

    ld [hl], b
    ld [bc], a
    ld [hl], c
    ld a, [de]
    ld [hl], c
    ld [hl-], a
    ld [hl], c
    ld c, d
    ld [hl], c
    ld h, d
    ld [hl], c
    ld a, d
    ld [hl], c
    sub d
    ld [hl], c
    or h
    adc b
    add l
    sub d
    add l
    nop
    add c
    sub d
    add l
    nop
    add c
    sub e
    adc l
    add c
    adc [hl]
    sbc c
    nop
    adc h
    add l
    add a
    add l
    adc [hl]
    add h
    sub e
    adc c
    adc [hl]
    nop
    sub h
    adc b
    add l
    nop
    sub a
    adc a
    sub d
    adc h
    add h
    sub h
    adc b
    add c
    sub h
    nop
    add h
    add l
    sub e
    add l
    sub d
    sub [hl]
    add l
    sub d
    add l
    sub h
    add l
    adc h
    adc h
    adc c
    adc [hl]
    add a
    nop
    add c
    sub e
    sub h
    adc b
    add l
    sub d
    add l
    nop
    add c
    sub d
    add l
    nop
    nop
    nop
    sub e
    sub h
    add c
    sub d
    sub e
    nop
    adc c
    adc [hl]
    nop
    sub h
    adc b
    add l
    adc [hl]
    adc c
    add a
    adc b
    sub h
    nop
    sub e
    adc e
    sbc c
    sbc h
    nop
    nop
    and d
    sub l
    sub h
    nop
    sub h
    adc b
    adc c
    sub e
    nop
    nop
    nop
    nop
    sub e
    sub h
    adc a
    sub d
    sbc c
    nop
    adc l
    add c
    sub d
    adc e
    sub e
    nop
    sub h
    adc b
    add l
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add d
    add l
    add a
    adc c
    adc [hl]
    adc [hl]
    adc c
    adc [hl]
    add a
    db $E4
    nop
    nop
    adc a
    add [hl]
    nop
    sub h
    adc b
    add l
    nop
    nop
    nop
    nop
    nop
    nop
    and d
    add l
    adc h
    adc l
    adc a
    adc [hl]
    sub h
    nop
    nop
    nop
    nop
    nop
    add [hl]
    add c
    adc l
    adc c
    adc h
    sbc c
    nop
    nop
    nop
    nop
    nop
    nop
    adc h
    add l
    add a
    add l
    adc [hl]
    add h
    nop
    nop
    nop
    nop
    nop
    nop
    sub h
    adc b
    add c
    sub h
    nop
    adc b
    add c
    sub e
    nop
    nop
    nop
    nop
    add d
    add l
    add l
    adc [hl]
    nop
    sub b
    add c
    sub e
    sub e
    add l
    add h
    nop
    adc a
    adc [hl]
    nop
    sub h
    adc b
    sub d
    adc a
    sub l
    add a
    adc b
    nop
    nop
    adc l
    add c
    adc [hl]
    sbc c
    nop
    add c
    add a
    add l
    sub e
    sbc h
    nop
    nop
    and c
    adc [hl]
    add h
    nop
    sub h
    adc b
    add l
    sub d
    add l
    nop
    adc c
    sub e
    adc [hl]
    adc a
    sub h
    nop
    add c
    nop
    sub e
    adc c
    adc [hl]
    add a
    adc h
    add l
    sub b
    add l
    sub d
    sub e
    adc a
    adc [hl]
    nop
    adc [hl]
    adc a
    sub a
    nop
    nop
    sub a
    adc b
    adc a
    nop
    adc e
    adc [hl]
    adc a
    sub a
    sub e
    nop
    nop
    nop
    sub a
    adc b
    add l
    adc [hl]
    nop
    sub h
    adc b
    add l
    nop
    nop
    nop
    nop
    adc [hl]
    add l
    sbc b
    sub h
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    adc h
    add l
    add a
    add l
    adc [hl]
    add h
    add c
    sub d
    sbc c
    nop
    nop
    nop
    add [hl]
    adc c
    add a
    adc b
    sub h
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add d
    add l
    sub h
    sub a
    add l
    add l
    adc [hl]
    nop
    nop
    nop
    nop
    nop
    add c
    adc [hl]
    adc a
    sub h
    adc b
    add l
    sub d
    nop
    nop
    nop
    nop
    nop
    or b
    sub d
    adc c
    adc [hl]
    add e
    add l
    nop
    adc a
    add [hl]
    nop
    nop
    nop
    and h
    add c
    sub d
    adc e
    adc [hl]
    add l
    sub e
    sub e
    nop
    nop
    nop
    nop
    add c
    adc [hl]
    add h
    nop
    adc b
    sub l
    adc l
    add c
    adc [hl]
    nop
    nop
    nop
    sub a
    adc c
    adc h
    adc h
    nop
    add d
    add l
    add a
    adc c
    adc [hl]
    sbc h
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_00C_7113:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

    db $00, $00, $00, $04, $05, $06, $07, $00, $00, $0A, $00, $0C, $0D, $0E, $00, $10
    db $11, $12, $00, $00, $00, $00, $17, $18, $19, $1A, $1B, $1C, $1D, $1E, $1F, $20
    db $21, $22, $23, $24, $25, $26, $27, $28, $00, $2A, $2B, $2C, $2D, $2E, $2F, $30
    db $31, $32, $33, $34, $35, $36, $37, $38, $39, $3A, $3B, $3C, $00, $3E, $3F, $40
    db $41, $00, $43, $44, $45, $46, $47, $48, $49, $4A, $4B, $4C, $4D, $4E, $4F, $50
    db $51, $52, $53, $54, $55, $00, $57, $58, $59, $5A, $5B, $5C, $5D, $5E, $5E, $5E
    db $61, $62, $63, $64, $65, $66, $67, $68, $69, $6A, $6B, $6C, $6D, $00, $6F, $70
    db $70, $70, $73, $74, $75, $76, $77, $00, $79, $7A, $7B, $7C, $7D, $7E, $7F, $80
    db $81, $82, $83, $70, $70, $70, $70, $88, $89, $8A, $8B, $8C, $8D, $8E, $8F, $90
    db $91, $92, $93, $94, $95, $96, $70, $70, $70, $70, $70, $9C, $9D, $9E, $9F, $A0
    db $A1, $A2, $A3, $A4, $A5, $A6, $A7, $A8, $A9, $AA, $AB, $AB, $AB, $AB, $AB, $B0
    db $B1, $B2, $B3, $B4, $B5, $B6, $B7, $AF, $AE, $AD, $AC, $9B, $9A, $99, $98, $98
    db $98, $98, $98, $97, $87, $86, $85, $84, $78, $72, $71, $6E, $6E, $6E, $6E, $60
    db $5F, $70, $56, $42, $AF, $AF, $AF, $3D, $29, $16, $15, $70, $70, $70, $70, $70
    db $70, $70, $70, $70, $70, $70, $14, $13, $6E, $6E, $6E, $0F, $0B, $70, $70, $70
    db $09, $09, $09, $09, $09, $09, $09, $09, $09, $09, $09, $09, $09, $09, $09, $09
    db $09, $09, $09, $09, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08
    db $08, $08, $08, $08, $08, $08, $08, $08, $03, $03, $03, $03, $03, $03, $03, $03
    db $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $02, $01, $02, $01, $02, $01, $02, $01, $02, $01, $02, $01
    db $02, $01, $02, $01, $02, $01, $02, $01, $00, $00, $00, $04, $05, $06, $07, $00
    db $00, $0A, $00, $0C, $0D, $0E, $00, $10, $11, $12, $00, $00, $00, $00, $17, $18
    db $19, $1A, $1B, $1C, $1D, $1E, $1F, $20, $21, $22, $23, $24, $25, $26, $27, $28
    db $00, $2A, $2B, $2C, $2D, $2E, $2F, $30, $31, $32, $33, $34, $35, $36, $37, $38
    db $39, $3A, $3B, $3C, $00, $3E, $3F, $40, $41, $00, $43, $44, $45, $46, $47, $48
    db $49, $4A, $4B, $4C, $4D, $4E, $4F, $50, $51, $52, $53, $54, $55, $00, $57, $58
    db $59, $5A, $5B, $5C, $5D, $5E, $5E, $5E, $61, $62, $63, $64, $65, $66, $67, $68
    db $69, $6A, $6B, $6C, $6D, $00, $6F, $70, $70, $70, $73, $74, $75, $76, $77, $00
    db $79, $7A, $7B, $7C, $7D, $7E, $7F, $80, $81, $82, $83, $70, $70, $70, $70, $88
    db $89, $8A, $8B, $8C, $8D, $8E, $8F, $90, $91, $92, $93, $94, $95, $96, $70, $70
    db $70, $70, $70, $9C, $9D, $9E, $9F, $A0, $A1, $A2, $A3, $A4, $A5, $A6, $A7, $A8
    db $A9, $AA, $AB, $AB, $AB, $AB, $AB, $B0, $B1, $B2, $B3, $B4, $B5, $B6, $B7, $B8
    db $AF, $AE, $AD, $AC, $9B, $9A, $99, $99, $99, $99, $99, $98, $97, $87, $86, $85
    db $84, $78, $72, $71, $71, $71, $71, $6E, $60, $70, $5F, $56, $B8, $B8, $B8, $42
    db $3D, $29, $16, $70, $70, $70, $70, $70, $70, $70, $70, $70, $70, $70, $15, $14
    db $13, $13, $13, $0F, $0B, $70, $70, $70, $09, $09, $09, $09, $09, $09, $09, $09
    db $09, $09, $09, $09, $09, $09, $09, $09, $09, $09, $09, $09, $08, $08, $08, $08
    db $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08
    db $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03
    db $03, $03, $03, $03, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $02, $01, $02, $01
    db $02, $01, $02, $01, $02, $01, $02, $01, $02, $01, $02, $01, $02, $01, $02, $01
    db $00, $00, $00, $04, $05, $06, $07, $00, $00, $0A, $00, $0C, $0D, $0E, $00, $10
    db $11, $12, $00, $00, $00, $00, $17, $18, $19, $1A, $1B, $1C, $1D, $1E, $1F, $20
    db $21, $22, $23, $24, $25, $26, $27, $28, $00, $2A, $2B, $2C, $2D, $2E, $2F, $30
    db $31, $32, $33, $34, $35, $36, $37, $38, $39, $3A, $3B, $3C, $00, $3E, $3F, $40
    db $41, $00, $43, $44, $45, $46, $47, $48, $49, $4A, $4B, $4C, $4D, $4E, $4F, $50
    db $51, $52, $53, $54, $55, $00, $57, $58, $59, $5A, $5B, $5C, $5D, $5E, $5E, $5E
    db $61, $62, $63, $64, $65, $66, $67, $68, $69, $6A, $6B, $6C, $6D, $00, $6F, $70
    db $70, $70, $73, $74, $75, $76, $77, $00, $79, $7A, $7B, $7C, $7D, $7E, $7F, $80
    db $81, $82, $83, $70, $70, $70, $70, $88, $89, $8A, $8B, $8C, $8D, $8E, $8F, $90
    db $91, $92, $93, $94, $95, $96, $70, $70, $70, $70, $70, $9C, $9D, $9E, $9F, $A0
    db $A1, $A2, $A3, $A4, $A5, $A6, $A7, $A8, $A9, $AA, $AB, $AB, $AB, $AB, $AB, $B0
    db $B1, $B2, $B3, $B4, $B5, $B6, $B7, $B8, $AF, $AE, $AD, $AC, $9B, $9A, $99, $99
    db $99, $99, $99, $98, $97, $87, $86, $85, $84, $78, $72, $71, $71, $71, $71, $6E
    db $60, $70, $5F, $56, $B8, $B8, $B8, $42, $3D, $29, $16, $70, $70, $70, $70, $70
    db $70, $70, $70, $70, $70, $70, $15, $14, $13, $13, $13, $0F, $0B, $70, $70, $70
    db $09, $09, $09, $09, $09, $09, $09, $09, $09, $09, $09, $09, $09, $09, $09, $09
    db $09, $09, $09, $09, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08
    db $08, $08, $08, $08, $08, $08, $08, $08, $03, $03, $03, $03, $03, $03, $03, $03
    db $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $02, $01, $02, $01, $02, $01, $02, $01, $02, $01, $02, $01
    db $02, $01, $02, $01, $02, $01, $02, $01, $00, $00, $00, $04, $05, $06, $07, $00
    db $00, $0A, $00, $0C, $0D, $0E, $00, $10, $11, $12, $00, $00, $00, $00, $17, $18
    db $19, $1A, $1B, $1C, $1D, $1E, $1F, $20, $21, $22, $23, $24, $25, $26, $27, $28
    db $00, $2A, $2B, $2C, $2D, $2E, $2F, $30, $31, $32, $33, $34, $35, $36, $37, $38
    db $39, $3A, $3B, $3C, $00, $3E, $3F, $40, $41, $00, $43, $44, $45, $46, $47, $48
    db $49, $4A, $4B, $4C, $4D, $4E, $4F, $50, $51, $52, $53, $54, $55, $00, $57, $58
    db $59, $5A, $5B, $5C, $5D, $5E, $5E, $5E, $61, $62, $63, $64, $65, $66, $67, $68
    db $69, $6A, $6B, $6C, $6D, $00, $6F, $70, $70, $70, $73, $74, $75, $76, $77, $00
    db $79, $7A, $7B, $7C, $7D, $7E, $7F, $80, $81, $82, $83, $70, $70, $70, $70, $88
    db $89, $8A, $8B, $8C, $8D, $8E, $8F, $90, $91, $92, $93, $94, $95, $96, $70, $70
    db $70, $70, $70, $9C, $9D, $9E, $9F, $A0, $A1, $A2, $A3, $A4, $A5, $A6, $A7, $A8
    db $A9, $AA, $AB, $AB, $AB, $AB, $AB, $B0, $B1, $B2, $B3, $B4, $B5, $B6, $B7, $B8
    db $AF, $AE, $AD, $AC, $9B, $9A, $99, $99, $99, $99, $99, $98, $97, $87, $86, $85
    db $84, $78, $72, $71, $71, $71, $71, $6E, $60, $70, $5F, $56, $B8, $B8, $B8, $42
    db $3D, $29, $16, $70, $70, $70, $70, $70, $70, $70, $70, $70, $70, $70, $15, $14
    db $13, $13, $13, $0F, $0B, $70, $70, $70, $09, $09, $09, $09, $09, $09, $09, $09
    db $09, $09, $09, $09, $09, $09, $09, $09, $09, $09, $09, $09, $08, $08, $08, $08
    db $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08
    db $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03
    db $03, $03, $03, $03, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $02, $01, $02, $01
    db $02, $01, $02, $01, $02, $01, $02, $01, $02, $01, $02, $01, $02, $01, $02, $01
    db $00, $00, $00, $04, $05, $06, $07, $00, $00, $0A, $00, $0C, $0D, $0E, $00, $10
    db $11, $12, $00, $00, $00, $00, $17, $18, $19, $1A, $1B, $1C, $1D, $1E, $1F, $20
    db $21, $22, $23, $24, $25, $26, $27, $28, $00, $2A, $2B, $2C, $2D, $2E, $2F, $30
    db $31, $32, $33, $34, $35, $36, $37, $38, $39, $3A, $3B, $3C, $00, $3E, $3F, $40
    db $41, $00, $43, $44, $45, $46, $47, $48, $49, $4A, $4B, $4C, $4D, $4E, $4F, $50
    db $51, $52, $53, $54, $55, $00, $57, $58, $59, $5A, $5B, $5C, $5D, $5E, $5E, $5E
    db $61, $62, $63, $64, $65, $66, $67, $68, $69, $6A, $6B, $6C, $6D, $00, $6F, $70
    db $71, $71, $73, $74, $75, $76, $77, $00, $79, $7A, $7B, $7C, $7D, $7E, $7F, $80
    db $81, $82, $83, $84, $71, $71, $71, $88, $89, $8A, $8B, $8C, $8D, $8E, $8F, $90
    db $91, $92, $93, $94, $95, $96, $97, $98, $71, $71, $71, $9C, $9D, $9E, $9F, $A0
    db $A1, $A2, $A3, $A4, $A5, $A6, $A7, $A8, $A9, $AA, $AB, $AC, $AD, $AD, $AD, $B0
    db $B1, $B2, $B3, $B4, $B5, $B6, $B7, $B8, $B9, $BA, $BB, $BC, $BD, $BE, $BF, $C0
    db $AF, $AF, $AF, $AE, $9B, $9A, $99, $87, $86, $85, $78, $72, $72, $72, $72, $6E
    db $60, $71, $5F, $56, $B8, $B8, $B8, $42, $3D, $29, $16, $71, $71, $71, $71, $71
    db $71, $71, $71, $71, $71, $71, $15, $14, $13, $13, $13, $0F, $0B, $71, $71, $71
    db $09, $09, $09, $09, $09, $09, $09, $09, $09, $09, $09, $09, $09, $09, $09, $09
    db $09, $09, $09, $09, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08
    db $08, $08, $08, $08, $08, $08, $08, $08, $03, $03, $03, $03, $03, $03, $03, $03
    db $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $02, $01, $02, $01, $02, $01, $02, $01, $02, $01, $02, $01
    db $02, $01, $02, $01, $02, $01, $02, $01

    nop
    nop
    nop
    inc b
    dec b
    ld b, $07
    nop
    nop
    ld a, [bc]
    nop
    inc c
    dec c
    ld c, $00
    db $10
    ld de, $0012
    nop
    nop
    nop
    rla
    jr jr_00C_78E4

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1F
    jr nz, jr_00C_78F4

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_00C_78DB

jr_00C_78DB:
    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2F
    jr nc, jr_00C_7914

    ld [hl-], a

jr_00C_78E4:
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_00C_7924

    ld a, [hl-]
    dec sp
    inc a
    nop
    ld a, $3F
    ld b, b
    ld b, c
    nop

jr_00C_78F4:
    ld b, e
    ld b, h
    ld b, l

Call_00C_78F7:
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
    ld e, [hl]
    ld e, [hl]
    ld h, c
    ld h, d

jr_00C_7914:
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
    nop
    ld l, a
    ld [hl], b
    ld [hl], c
    ld [hl], c

jr_00C_7924:
    ld [hl], e
    ld [hl], h
    ld [hl], l
    halt
    ld [hl], a
    nop
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
    ld [hl], c
    ld [hl], c
    ld [hl], c
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
    ld [hl], c
    ld [hl], c
    ld [hl], c
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
    xor l
    xor l
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
    ret nz

    pop bc
    pop bc
    pop bc
    call nz, $C6C5
    rst $00
    ret z

    ret


    jp z, $CCCB

    call z, $CCCC
    ret nc

    pop de
    ld [hl], c
    rst $08
    adc $B8
    cp b
    cp b
    call $C2C3
    xor a
    ld [hl], c
    ld [hl], c
    ld [hl], c
    ld [hl], c
    ld [hl], c
    ld [hl], c
    ld [hl], c
    ld [hl], c
    ld [hl], c
    ld [hl], c
    ld [hl], c
    xor [hl]
    sbc e
    call z, $9ACC
    sbc c
    add a
    add [hl]
    add l
    ld a, b
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld l, [hl]
    ld h, b
    ld [hl], d
    ld e, a
    ld d, [hl]
    ld b, d
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
    add hl, hl
    ld d, $15
    dec d
    inc d
    inc de
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    dec bc
    add hl, bc
    ld [$0808], sp
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld bc, $0102
    ld [bc], a
    ld bc, $0102
    ld [bc], a
    ld bc, $0102
    ld [bc], a
    ld bc, $0102
    ld [bc], a
    ld bc, $0102

    db $00, $00, $00, $04, $05, $06, $07, $00, $00, $0A, $00, $0C, $0D, $0E, $00, $10
    db $11, $12, $00, $00, $00, $00, $17, $18, $19, $1A, $1B, $1C, $1D, $1E, $1F, $20
    db $21, $22, $23, $24, $25, $26, $27, $28, $00, $2A, $2B, $2C, $2D, $2E, $2F, $30
    db $31, $32, $33, $34, $35, $36, $37, $38, $39, $3A, $3B, $3C, $00, $3E, $3F, $40
    db $41, $00, $43, $44, $45, $46, $47, $48, $49, $4A, $4B, $4C, $4D, $4E, $4F, $50
    db $51, $52, $53, $54, $55, $00, $57, $58, $59, $5A, $5B, $5C, $5D, $5E, $5E, $5E
    db $61, $62, $63, $64, $65, $66, $67, $68, $69, $6A, $6B, $6C, $6D, $00, $6F, $70
    db $71, $71, $73, $74, $75, $76, $77, $00, $79, $7A, $7B, $7C, $7D, $7E, $7F, $80
    db $81, $82, $83, $84, $71, $71, $71, $88, $89, $8A, $8B, $8C, $8D, $8E, $8F, $90
    db $91, $92, $93, $94, $95, $96, $97, $98, $71, $71, $71, $9C, $9D, $9E, $9F, $A0
    db $A1, $A2, $A3, $A4, $A5, $A6, $A7, $A8, $A9, $AA, $AB, $AC, $AD, $AD, $AD, $B0
    db $B1, $B2, $B3, $B4, $B5, $B6, $B7, $B8, $B9, $BA, $BB, $BC, $BD, $BE, $BF, $C0
    db $C1, $C1, $C1, $C4, $C5, $C6, $C7, $C8, $C9, $CA, $CB, $CC, $CC, $CC, $CC, $D0
    db $D1, $71, $CF, $CE, $B8, $B8, $B8, $CD, $C3, $C2, $AF, $71, $71, $71, $71, $71
    db $71, $71, $71, $71, $71, $71, $AE, $9B, $CC, $CC, $9A, $99, $87, $86, $85, $78
    db $72, $72, $72, $72, $72, $72, $72, $72, $72, $72, $72, $72, $72, $72, $6E, $60
    db $72, $5F, $56, $42, $3D, $3D, $3D, $3D, $3D, $3D, $3D, $3D, $3D, $3D, $3D, $3D
    db $3D, $3D, $29, $16, $15, $15, $14, $13, $0F, $0F, $0F, $0F, $0F, $0F, $0F, $0F
    db $0F, $0F, $0F, $0F, $0F, $0F, $0B, $09, $08, $08, $08, $03, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $02, $01, $02, $01, $02, $01, $02, $01, $02, $01, $02, $01
    db $02, $01, $02, $01, $02, $01, $02, $01

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_00C_7D62:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_00C_7E03:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_00C_7E79:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_00C_7E7E:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
