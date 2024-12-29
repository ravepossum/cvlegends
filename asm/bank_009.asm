; Disassembly of "cvlegends.gb"
; This file was created with:
; mgbdis v2.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $009", ROMX[$4000], BANK[$9]

    ld a, [$C729]
    rst $00
    inc e
    ld b, b
    ld c, h
    ld b, b
    ld l, b
    ld b, b
    sbc e
    ld b, b
    jp nc, $E440

    ld b, b
    db $FC
    ld b, b
    ld [$1A41], sp
    ld b, c
    sbc e
    ld b, h
    dec l
    ld b, c
    ld d, c
    ld b, c
    ld a, $00
    call Call_000_0875
    ld de, $C600
    call Call_000_2183
    ld de, $C700
    call Call_000_2183
    ld a, $6B
    ld [$C507], a
    ld a, $00
    ld [$C50D], a
    call Call_000_1FD2
    call Call_000_1FCB
    ld hl, $C50E
    set 5, [hl]
    set 0, [hl]
    ld a, $18
    ld [$C514], a
    jp Jump_000_0E29


    ld hl, $C514
    dec [hl]
    ret nz

    ld de, $C500
    ld bc, $4160
    call Call_000_2F92
    ld bc, $FF70
    ld a, c
    ld [$C509], a
    ld a, b
    ld [$C50A], a
    jp Jump_000_0E29


    ld de, $C500
    ld hl, $4160
    call Call_000_2F9F
    ld a, [$C50D]
    cp $01
    jr nz, jr_009_4084

    ld a, [$C510]
    cp $0C
    jr nz, jr_009_4084

    ld a, $3E
    call Call_000_0875

jr_009_4084:
    ld hl, $C500
    call Call_000_20C4
    ld a, [$C50C]
    cp $70
    ret nc

    ld a, $00
    ld [$C50D], a
    call Call_000_1FCB
    jp Jump_000_0E29


    ld a, $2E
    call Call_000_0875
    push de
    ld hl, $9952
    ld de, $C252
    ld b, $05

jr_009_40A9:
    di

jr_009_40AA:
    ldh a, [rSTAT]
    bit 1, a
    jr nz, jr_009_40AA

    ld a, $4E
    ld [hl+], a
    ld [de], a
    inc de

jr_009_40B5:
    ldh a, [rSTAT]
    bit 1, a
    jr nz, jr_009_40B5

    ld a, $4F
    ld [hl], a
    ld [de], a
    ei
    ld a, $1F
    rst $28
    ld a, $1F
    rst $30
    dec b
    jr nz, jr_009_40A9

    pop de
    ld a, $08
    ld [$C514], a
    jp Jump_000_0E29


    ld hl, $C514
    dec [hl]
    ret nz

    ld hl, $C50E
    res 5, [hl]
    ld a, $10
    ld [$C514], a
    jp Jump_000_0E29


    ld hl, $C514
    dec [hl]
    ret nz

    ld a, $31
    ld de, $C900
    ld e, $0E
    ld [de], a
    xor a
    ldh [$8A], a
    ld a, $08
    call Call_000_0629
    jp Jump_000_0E29


    call Call_000_26F9
    ret c

Jump_009_4100:
    ld a, $08
    ld [$C514], a
    jp Jump_000_0E29


    ld hl, $C514
    dec [hl]
    ret nz

    ld hl, $C50E
    set 5, [hl]
    ld a, $40
    ld [$C514], a
    jp Jump_000_0E29


    ld hl, $C514
    dec [hl]
    ret nz

    xor a
    ld [$D02A], a
    xor a
    ld [$D021], a
    ld [$D022], a
    jp Jump_000_0E29


    xor a
    ld [$C500], a
    ld [$C501], a
    ld [$C502], a
    ld a, $21
    ld [$C50E], a
    ld a, $31
    ld de, $C900
    ld e, $0E
    ld [de], a
    ld a, $01
    ld e, $02
    ld [de], a
    ld a, $40
    ld [$C514], a
    jp Jump_000_0E29


    ld hl, $C514
    dec [hl]
    ret nz

    ld a, $55
    call Call_000_0875
    ld a, $01
    jp Jump_000_0E35


    inc c

Jump_009_4161:
    ld bc, $020C
    inc c
    ld bc, $000C
    cp $FA
    add hl, hl
    rst $00
    rst $00
    ld a, e
    ld b, c
    and h
    ld b, c
    sbc e
    ld b, h
    call nz, $0241
    ld b, d
    rrca
    ld b, d
    ld sp, $3E42
    nop
    call Call_000_0875
    ld a, $01
    ld [$D02A], a
    ld a, $02
    ld [$C737], a
    ld hl, $C50E
    set 0, [hl]
    ld hl, $C900
    ld l, $0E
    set 0, [hl]
    ld de, $CA00
    call Call_000_2183
    ld a, $18
    ld [$C514], a
    jp Jump_000_0E29


    ld hl, $C514
    dec [hl]
    ret nz

    ld de, $C600
    call Call_000_2183
    ld de, $C700
    call Call_000_2183
    ld a, $00
    ld [$C50D], a
    xor a
    ld [$D021], a
    ld [$D022], a
    jp Jump_000_0E29


    xor a
    ld [$C500], a
    ld a, $78
    ld [$C50C], a
    ld a, $6B
    ld [$C507], a
    ld a, $21
    ld [$C50E], a
    call Call_000_1FCB
    call Call_000_1FD2
    ld de, $C900
    ld a, $85
    ld e, $0D
    ld [de], a
    ld a, $31
    ld e, $0E
    ld [de], a
    ld a, $30
    ld e, $0C
    ld [de], a
    ld a, $68
    ld e, $07
    ld [de], a
    call Call_000_20EE
    call Call_000_20F2
    ld a, $30
    ld [$C514], a
    jp Jump_000_0E29


    ld hl, $C514
    dec [hl]
    ret nz

    ld a, $08
    call Call_000_0629
    jp Jump_000_0E29


    call Call_000_2708
    ret c

    ld hl, $C900
    ld l, $0E
    res 0, [hl]
    ld de, $C500
    ld bc, $4160
    call Call_000_2F92
    ld bc, $FF70
    ld a, c
    ld [$C509], a
    ld a, b
    ld [$C50A], a
    jp Jump_000_0E29


    ld de, $C500
    ld hl, $4160
    call Call_000_2F9F
    ld a, [$C50D]
    cp $01
    jr nz, jr_009_424D

    ld a, [$C510]
    cp $0C
    jr nz, jr_009_424D

    ld a, $3E
    call Call_000_0875

jr_009_424D:
    ld hl, $C500
    call Call_000_20C4
    ld a, [$C50C]
    cp $40
    ret nc

    xor a
    ld [$C501], a
    ld [$C502], a
    ld hl, $C511
    set 0, [hl]
    res 5, [hl]
    res 7, [hl]
    call Call_000_1FCB
    call Call_000_060B
    ld a, $01
    jp Jump_000_0E35


    ld a, [$C729]
    rst $00
    adc d
    ld b, d
    cp a
    ld b, d
    rst $10
    ld b, d
    db $E3
    ld b, d
    dec bc
    ld b, e
    ld b, h
    ld b, e
    sbc e
    ld b, h
    ld e, b
    ld b, e
    add b
    ld b, e
    ld a, [$C500]
    bit 2, a
    jr z, jr_009_42AF

    ld hl, $C500
    call Call_000_20D3
    ld a, [$C505]
    bit 7, a
    jr nz, jr_009_42A3

    call Call_000_1F3D
    jr nz, jr_009_42A8

jr_009_42A3:
    ld a, $25
    jp Jump_000_1FB9


jr_009_42A8:
    ld a, [$C507]
    sub c
    ld [$C507], a

jr_009_42AF:
    call Call_000_1FD2
    ld a, $00
    call Call_000_0875
    ld a, $10
    ld [$C514], a
    jp Jump_000_0E29


    ld hl, $C514
    dec [hl]
    ret nz

    ld a, $31
    ld de, $C900
    ld e, $0E
    ld [de], a
    xor a
    ldh [$8A], a
    ld a, $08
    call Call_000_0629
    jp Jump_000_0E29


    call Call_000_26F9
    ret c

    ld a, $20
    ld [$C514], a
    jp Jump_000_0E29


    ld hl, $C514
    dec [hl]
    ret nz

    ld a, $1B
    call Call_000_0875
    ld a, $15
    ld [$C50D], a
    ld bc, $FEE0
    ld a, c
    ld [$C509], a
    ld a, b
    ld [$C50A], a
    ld bc, $FE00
    ld a, c
    ld [$C504], a
    ld a, b
    ld [$C505], a
    jp Jump_000_0E29


    ld de, $C500
    call Call_000_20D3
    call Call_000_20C4
    ld a, [$C505]
    bit 7, a
    jr nz, jr_009_4320

    call Call_000_1F3D
    jr nz, jr_009_4325

jr_009_4320:
    ld a, $20
    jp Jump_000_1FB9


jr_009_4325:
    ld a, [$C507]
    sub c
    ld [$C507], a
    ld a, $00
    ld [$C50D], a
    call Call_000_1FCB
    call Call_000_1FD2
    ld a, $40
    ld [$C514], a
    ld a, $1C
    call Call_000_0875
    jp Jump_000_0E29


    ld hl, $C514
    dec [hl]
    ret nz

    ld a, $02
    ld [$D02A], a
    xor a
    ld [$D021], a
    ld [$D022], a
    jp Jump_000_0E29


    xor a
    ld [$C501], a
    ld [$C502], a
    ld a, $01
    ld [$C50E], a
    ld e, $11
    ld [de], a
    ld a, $11
    ld de, $C900
    ld e, $0E
    ld [de], a
    ld a, $01
    ld e, $01
    ld [de], a
    xor a
    ld e, $02
    ld [de], a
    ld a, $40
    ld [$C514], a
    jp Jump_000_0E29


    ld hl, $C514
    dec [hl]
    ret nz

    ld a, $5F
    call Call_000_0875
    ld a, $01
    jp Jump_000_0E35


    ld a, [$C729]
    rst $00
    sbc l
    ld b, e
    xor d
    ld b, e
    sbc e
    ld b, h
    cp c
    ld b, e
    xor $43
    ld a, $00
    call Call_000_0875
    ld a, $20
    ld [$C514], a
    jp Jump_000_0E29


    ld hl, $C514
    dec [hl]
    ret nz

    xor a
    ld [$D021], a
    ld [$D022], a
    jp Jump_000_0E29


    xor a
    ld [$C501], a
    ld [$C502], a
    ld a, $00
    ld [$C50D], a
    ld a, $01
    ld [$C50E], a
    ld a, $50
    ld [$C50C], a
    ld a, $63
    ld [$C507], a
    call Call_000_1FCB
    call Call_000_1FD2
    ld hl, $C511
    set 0, [hl]
    res 5, [hl]
    res 7, [hl]
    ld de, $C900
    ld a, $20
    ld [$C514], a
    jp Jump_000_0E29


    ld hl, $C514
    dec [hl]
    ret nz

    ld a, $09
    jp Jump_000_0BCC


    ld a, [$C729]
    rst $00
    ld b, $44
    inc de
    ld b, h
    sbc e
    ld b, h
    ld [hl+], a
    ld b, h
    ld a, [hl]
    ld b, h
    ld a, $00
    call Call_000_0875
    ld a, $10
    ld [$C514], a
    jp Jump_000_0E29


    ld hl, $C514
    dec [hl]
    ret nz

    xor a
    ld [$D021], a
    ld [$D022], a
    jp Jump_000_0E29


    xor a
    ld [$C500], a
    ld [$C501], a
    ld [$C502], a
    ld a, $01
    ld [$C50E], a
    ld a, $50
    ld [$C50C], a
    ld a, $63
    ld [$C507], a
    call Call_000_1FCB
    call Call_000_1FD2
    ld de, $C800
    call Call_000_2183
    ld de, $C900
    ld bc, $4473
    call Call_000_2650
    ld a, $50
    ld e, $0C
    ld [de], a
    ld a, $28
    ld e, $07
    ld [de], a
    ld a, $01
    ld e, $18
    ld [de], a
    ld a, $03
    ld e, $01
    ld [de], a
    xor a
    ld e, $02
    ld [de], a
    ld e, $1C
    ld [de], a
    ld a, $40
    ld [$C514], a
    jp Jump_000_0E29


    nop
    nop
    sbc a
    ld de, $0001
    nop
    nop
    nop
    inc bc
    jr nz, jr_009_44A0

    inc d
    push bc
    dec [hl]
    ret nz

    ld a, $60
    call Call_000_0875
    ld a, $01
    jp Jump_000_0E35


Jump_009_448D:
    ld hl, $D021
    inc [hl]
    ret


Jump_009_4492:
    ld [$D021], a
    ret


Jump_009_4496:
    ld hl, $D022
    inc [hl]
    ret


    ld a, [$D021]
    rst $00
    xor a

jr_009_44A0:
    ld b, h
    ldh [rLY], a
    ldh a, [rLY]
    ld a, [c]
    ld b, l
    dec de
    ld b, [hl]
    ld d, $48
    daa
    ld c, b
    ld d, c
    ld c, b
    call Call_000_0597
    call Call_000_0583
    ld de, $C600
    call Call_000_2183
    ld de, $C700
    call Call_000_2183
    ld de, $C800
    call Call_000_2183
    xor a
    ld [$C50D], a
    ld [$C50E], a
    ld de, $C900
    ld e, $0E
    ld [de], a
    xor a
    ld [$D029], a
    ld a, $40
    ld [$D023], a
    jp Jump_009_448D


    ld hl, $FF8B
    dec [hl]
    dec [hl]
    ld hl, $D023
    dec [hl]
    ret nz

    call Call_000_060B
    jp Jump_009_448D


    ld a, [$C73D]
    or a
    jp z, Jump_009_450F

    ld hl, $38DB
    call Call_000_373C
    ld bc, $0004
    call Call_000_38FB
    ld hl, $38CB
    call Call_000_373C
    ld bc, $0004
    call Call_000_38FB

Jump_009_450F:
    ld a, [$D02A]
    rst $00
    dec e
    ld b, l
    ld c, h
    ld b, l
    ld a, e
    ld b, l
    xor d
    ld b, l
    reti


    ld b, l
    ld hl, $4536
    call Call_000_2E53
    ld hl, $4CB9
    ld a, l
    ld [$D024], a
    ld a, h
    ld [$D025], a
    ld a, $64
    call Call_000_0875
    jp Jump_009_448D


    ld [bc], a
    add hl, bc
    ld de, $805D
    nop
    ld c, b
    ld [bc], a
    add hl, bc
    cp c
    ld c, b
    nop
    ld bc, $0240
    add hl, bc
    sub c
    ld h, c
    sbc d
    ld bc, $0048
    ld hl, $4565
    call Call_000_2E53
    ld hl, $516F
    ld a, l
    ld [$D024], a
    ld a, h
    ld [$D025], a
    ld a, $64
    call Call_000_0875
    jp Jump_009_448D


    ld [bc], a
    add hl, bc
    ld de, $805D
    nop
    ld c, b
    ld [bc], a
    add hl, bc
    cp c
    ld c, b
    nop
    ld bc, $0240
    add hl, bc
    ld de, $9A66
    ld bc, $0040
    ld hl, $4594
    call Call_000_2E53
    ld hl, $536A
    ld a, l
    ld [$D024], a
    ld a, h
    ld [$D025], a
    ld a, $65
    call Call_000_0875
    jp Jump_009_448D


    ld [bc], a
    add hl, bc
    pop af
    ld l, h
    add b
    nop
    ld c, b
    ld [bc], a
    add hl, bc
    cp c
    ld c, b
    nop
    ld bc, $0240
    add hl, bc
    ld [hl], c
    ld [hl], c
    sbc d
    ld bc, $0041
    ld hl, $45C3
    call Call_000_2E53
    ld hl, $570B
    ld a, l
    ld [$D024], a
    ld a, h
    ld [$D025], a
    ld a, $65
    call Call_000_0875
    jp Jump_009_448D


    ld [bc], a
    add hl, bc
    pop af
    ld l, h
    add b
    nop
    ld c, b
    ld [bc], a
    add hl, bc
    cp c
    ld c, b
    nop
    ld bc, $0240
    add hl, bc
    add c
    ld [hl], l
    sbc d
    ld bc, $004E
    ld hl, $4594
    call Call_000_2E53
    ld hl, $5C4D
    ld a, l
    ld [$D024], a
    ld a, h
    ld [$D025], a
    ld a, $65
    call Call_000_0875
    jp Jump_009_448D


    ld a, [$D02A]
    ld hl, $4611
    call $DDD6
    ld a, $12
    ld de, $9C00

jr_009_4600:
    push af
    ld bc, $0014
    call $DED7
    ld a, $0C
    rst $30
    pop af
    dec a
    jr nz, jr_009_4600

    jp Jump_009_448D


    ld hl, $896A
    ld l, e
    ld h, c
    ld a, d
    ret


    ld a, e
    ld h, c
    ld a, d
    ld a, [$C555]
    and $80
    ld a, $05
    jp nz, Jump_009_4492

    ld a, [$D022]
    rst $00
    inc sp
    ld b, [hl]
    sub d
    ld b, [hl]
    or c
    ld b, [hl]
    and e
    ld b, a
    db $F4
    ld b, a
    ld a, [$D024]
    ld l, a
    ld a, [$D025]
    ld h, a
    push hl
    inc hl
    ld a, l
    ld [$D024], a
    ld a, h
    ld [$D025], a
    pop hl
    ld a, [hl+]
    ld [$D026], a
    ld de, $CD00
    call Call_000_2183
    ld a, [$D026]
    or a
    jr z, jr_009_4674

    ld bc, $0018
    call Call_000_2098
    ld a, $92
    ld e, $0D
    ld [de], a
    ld a, $11
    ld e, $0E
    ld [de], a
    ld hl, $9C88
    ld a, l
    ld [$D027], a
    ld a, h
    ld [$D028], a
    jp Jump_009_4496


jr_009_4674:
    ld bc, $A018
    call Call_000_2098
    ld a, $91
    ld e, $0D
    ld [de], a
    ld a, $11
    ld e, $0E
    ld [de], a
    ld hl, $9C81
    ld a, l
    ld [$D027], a
    ld a, h
    ld [$D028], a
    jp Jump_009_4496


    ld hl, $CD00
    ld a, [$D026]
    or a
    jr nz, jr_009_46A6

    ld l, $0C
    dec [hl]
    dec [hl]
    ld a, [hl]
    cp $68
    ret nc

    jp Jump_009_4496


jr_009_46A6:
    ld l, $0C
    inc [hl]
    inc [hl]
    ld a, [hl]
    cp $38
    ret c

    jp Jump_009_4496


    ld a, [$D024]
    ld l, a
    ld a, [$D025]
    ld h, a
    push hl
    inc hl
    ld a, l
    ld [$D024], a
    ld a, h
    ld [$D025], a
    pop hl
    ld a, [hl]
    ld [$D02B], a
    cp $FC
    jp z, Jump_009_4778

    cp $FD
    jp z, Jump_009_4496

    cp $FE
    jp z, Jump_009_4496

    cp $FF
    jp z, Jump_009_4496

    bit 7, a
    call nz, Call_009_4705
    cp $65
    jp z, Jump_009_471D

    push af
    ld a, [$D027]
    ld e, a
    ld a, [$D028]
    ld d, a
    pop af
    call Call_009_4758
    di
    call Call_000_0089
    add $80
    ld [de], a
    inc de
    ei
    ld a, e
    ld [$D027], a
    ld a, d
    ld [$D028], a
    ret


Call_009_4705:
    push af
    ld a, [$D027]
    ld e, a
    ld a, [$D028]
    ld d, a
    ld a, $20
    rst $18
    di
    call Call_000_0089
    ld a, $E4
    ld [de], a
    ei
    pop af
    res 7, a
    ret


Jump_009_471D:
    ld a, [$D027]
    ld e, a
    ld a, [$D028]
    ld d, a
    push de
    ld a, $20
    rst $18
    di
    call Call_000_0089
    ld a, $E5
    ld [de], a
    ei
    pop de
    ld a, [$D024]
    ld l, a
    ld a, [$D025]
    ld h, a
    push hl
    inc hl
    ld a, l
    ld [$D024], a
    ld a, h
    ld [$D025], a
    pop hl
    ld a, [hl]
    di
    call Call_000_0089
    add $80
    ld [de], a
    inc de
    ei
    ld a, e
    ld [$D027], a
    ld a, d
    ld [$D028], a
    ret


Call_009_4758:
    cp $5E
    jr z, jr_009_4765

    cp $60
    jr z, jr_009_4765

    cp $62
    jr z, jr_009_4765

    ret


jr_009_4765:
    push de
    push af
    ld a, $20
    rst $18
    pop af
    di
    call Call_000_0089
    ld b, a
    add $80
    ld [de], a
    inc b
    ld a, b
    ei
    pop de
    ret


Jump_009_4778:
    ld a, [$D026]
    ld hl, $4793
    call $DDD6
    ld a, [$D029]
    inc a
    ld [$D029], a
    add a
    rst $28
    ld a, [hl+]
    ld [$D027], a
    ld a, [hl]
    ld [$D028], a
    ret


    sub a
    ld b, a
    sbc l
    ld b, a
    add c
    sbc h
    pop bc
    sbc h
    ld bc, $889D
    sbc h
    ret z

    sbc h
    ld [$CD9D], sp
    ld l, b
    ld c, b
    ld a, [$C555]
    and $10
    ret z

    call Call_009_4884
    xor a
    ld [$D029], a
    ld a, [$D026]
    or a
    jp z, Jump_009_47CD

    ld hl, $9C88
    ld a, l
    ld [$D027], a
    ld a, h
    ld [$D028], a
    ld de, $9C68
    call Call_009_4898
    jr jr_009_47DE

Jump_009_47CD:
    ld hl, $9C81
    ld a, l
    ld [$D027], a
    ld a, h
    ld [$D028], a
    ld de, $9C61
    call Call_009_4898

jr_009_47DE:
    ld a, [$D02B]
    cp $FD
    jp z, Jump_009_47EE

    cp $FE
    jp z, Jump_009_4496

    jp Jump_009_448D


Jump_009_47EE:
    ld a, $02
    ld [$D022], a
    ret


    ld hl, $CD00
    ld a, [$D026]
    or a
    jr nz, jr_009_480A

    ld l, $0C
    inc [hl]
    inc [hl]
    ld a, [hl]
    cp $A0
    ret c

    xor a
    ld [$D022], a
    ret


jr_009_480A:
    ld l, $0C
    dec [hl]
    dec [hl]
    bit 7, [hl]
    ret z

    xor a
    ld [$D022], a
    ret


    call Call_000_0583
    ld de, $CD00
    call Call_000_2183
    ld a, $00
    call Call_000_0875
    jp Jump_009_448D


    call Call_000_36B0
    ld a, $40
    ld [$D023], a
    ld a, [$C73D]
    or a
    jp z, Jump_009_448D

    ld hl, $38DB
    call Call_000_373C
    ld bc, $0004
    call Call_000_38FB
    ld hl, $38BB
    call Call_000_373C
    ld bc, $0004
    call Call_000_38FB
    jp Jump_009_448D


    ld hl, $FF8B
    inc [hl]
    inc [hl]
    ld hl, $D023
    dec [hl]
    ret nz

    xor a
    ld [$D021], a
    ld [$D022], a
    call Call_000_2BE6
    jp Jump_000_0E29


    ld a, [$C550]
    bit 3, a
    jr nz, jr_009_4884

    ld de, $9D32
    ld a, [$D026]
    or a
    jr nz, jr_009_487B

    ld de, $9D2B

jr_009_487B:
    di
    call Call_000_0089
    ld a, $BE
    ld [de], a
    ei
    ret


Call_009_4884:
jr_009_4884:
    ld de, $9D32
    ld a, [$D026]
    or a
    jr nz, jr_009_4890

    ld de, $9D2B

jr_009_4890:
    di
    call Call_000_0089
    xor a
    ld [de], a
    ei
    ret


Call_009_4898:
    ld b, $06

jr_009_489A:
    push bc
    push de
    ld hl, $48AE
    ld bc, $000B
    call $DED7
    pop de
    pop bc
    ld a, $20
    rst $30
    dec b
    jr nz, jr_009_489A

    ret


    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, $3E
    halt
    halt
    halt
    halt
    halt
    halt
    dec sp
    dec sp
    nop
    nop
    nop
    nop
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld a, [hl]
    ld a, [hl]
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, [hl]
    ld a, [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, $3E
    ld [hl], a
    ld [hl], a
    ld [hl], b
    ld [hl], b
    ld [hl], a
    ld [hl], a
    ld a, $3E
    nop
    nop
    nop
    nop
    rlca
    rlca
    rlca
    rlca
    ccf
    ccf
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ccf
    ccf
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, $3E
    ld [hl], a
    ld [hl], a
    ld a, a
    ld a, a
    ld [hl], b
    ld [hl], b
    ccf
    ccf
    nop
    nop
    nop
    nop
    ld e, $1E
    dec sp
    dec sp
    jr c, jr_009_4959

    ld a, a
    ld a, a
    jr c, jr_009_495D

    jr c, jr_009_495F

    nop
    nop
    nop
    nop
    ld a, $3E
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ccf
    ccf
    rlca
    rlca
    ld [hl], a
    ld [hl], a
    ld a, $3E
    nop
    nop
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld a, [hl]
    ld a, [hl]
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    nop
    nop
    nop
    nop
    inc e
    inc e
    nop
    nop
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

jr_009_4959:
    nop
    nop
    ld c, $0E

jr_009_495D:
    nop
    nop

jr_009_495F:
    ld c, $0E
    ld c, $0E
    ld l, [hl]
    ld l, [hl]
    ld l, [hl]
    ld l, [hl]
    inc a
    inc a
    nop
    nop
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld [hl], e
    ld [hl], e
    ld a, h
    ld a, h
    halt
    halt
    ld [hl], e
    ld [hl], e
    nop
    nop
    nop
    nop
    inc a
    inc a
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
    nop
    nop
    ld a, [hl]
    ld a, [hl]
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, [hl]
    ld a, [hl]
    ld [hl], e
    ld [hl], e
    ld [hl], e
    ld [hl], e
    ld [hl], e
    ld [hl], e
    ld [hl], e
    ld [hl], e
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, $3E
    ld [hl], e
    ld [hl], e
    ld [hl], e
    ld [hl], e
    ld [hl], e
    ld [hl], e
    ld a, $3E
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, [hl]
    ld a, [hl]
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
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
    ccf
    ccf
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ccf
    ccf
    rlca
    rlca
    rlca
    rlca
    nop
    nop
    nop
    nop
    ld [hl], a
    ld [hl], a
    ld a, h
    ld a, h
    ld a, b
    ld a, b
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld [hl], b
    nop
    nop
    nop
    nop
    nop
    nop
    ccf
    ccf
    ld [hl], b
    ld [hl], b
    ld a, a
    ld a, a
    rlca
    rlca
    ld a, [hl]
    ld a, [hl]
    nop
    nop
    nop
    nop
    jr c, jr_009_4A35

    jr c, jr_009_4A37

    ld a, a
    ld a, a
    jr c, jr_009_4A3B

    dec sp
    dec sp
    ld e, $1E
    nop
    nop
    nop
    nop
    nop
    nop
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ccf
    ccf
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    ld [hl], a
    ld [hl], a
    ld a, $3E
    inc e
    inc e
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, e
    ld h, e
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    ld [hl], a
    ld [hl], a

jr_009_4A35:
    ld h, e
    ld h, e

jr_009_4A37:
    nop
    nop
    nop
    nop

jr_009_4A3B:
    nop
    nop
    ld [hl], a
    ld [hl], a
    ld a, [hl-]
    ld a, [hl-]
    inc e
    inc e
    ld l, $2E
    ld [hl], a
    ld [hl], a
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, e
    ld h, e
    scf
    scf
    ld e, $1E
    inc e
    inc e
    jr c, jr_009_4A8F

    ld [hl], b
    ld [hl], b
    nop
    nop
    nop
    nop
    ld a, a
    ld a, a
    ld c, $0E
    inc e
    inc e
    jr c, jr_009_4A9D

    ld a, a
    ld a, a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr jr_009_4A89

    nop
    nop
    jr jr_009_4A8D

    nop
    nop
    nop
    nop
    nop
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

jr_009_4A89:
    nop
    nop
    jr jr_009_4AA5

jr_009_4A8D:
    jr jr_009_4AA7

jr_009_4A8F:
    jr jr_009_4AA9

    ld [$0008], sp
    nop
    jr jr_009_4AAF

    nop
    nop
    nop
    nop
    ld h, [hl]
    ld h, [hl]

jr_009_4A9D:
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld [hl+], a
    ld [hl+], a
    nop
    nop

jr_009_4AA5:
    ld h, [hl]
    ld h, [hl]

jr_009_4AA7:
    nop
    nop

jr_009_4AA9:
    nop
    nop
    ld a, $3E
    ld h, a
    ld h, a

jr_009_4AAF:
    ld h, a
    ld h, a
    inc c
    inc c
    nop
    nop
    inc c
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
    ld d, h
    ld d, h
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc e
    inc e
    ld a, $3E
    ld [hl], e
    ld [hl], e
    ld a, a
    ld a, a
    ld [hl], e
    ld [hl], e
    ld [hl], e
    ld [hl], e
    nop
    nop
    nop
    nop
    ld a, [hl]
    ld a, [hl]
    ld [hl], e
    ld [hl], e
    ld a, [hl]
    ld a, [hl]
    ld [hl], e
    ld [hl], e
    ld [hl], e
    ld [hl], e
    ld a, [hl]
    ld a, [hl]
    nop
    nop
    nop
    nop
    ld a, $3E
    ld [hl], e
    ld [hl], e
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld [hl], e
    ld [hl], e
    ld a, $3E
    nop
    nop
    nop
    nop
    ld a, [hl]
    ld a, [hl]
    ld [hl], e
    ld [hl], e
    ld [hl], e
    ld [hl], e
    ld [hl], e
    ld [hl], e
    ld [hl], e
    ld [hl], e
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
    ld [hl], e
    ld [hl], e
    ld [hl], b
    ld [hl], b
    ld [hl], a
    ld [hl], a
    ld [hl], e
    ld [hl], e
    ld a, $3E
    nop
    nop
    nop
    nop
    ld [hl], e
    ld [hl], e
    ld [hl], e
    ld [hl], e
    ld a, a
    ld a, a
    ld [hl], e
    ld [hl], e
    ld [hl], e
    ld [hl], e
    ld [hl], e
    ld [hl], e
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
    ld l, [hl]
    ld l, [hl]
    ld l, [hl]
    ld l, [hl]
    inc a
    inc a
    nop
    nop
    nop
    nop
    ld [hl], e
    ld [hl], e
    halt
    halt
    ld a, h
    ld a, h
    ld a, h
    ld a, h
    halt
    halt
    ld [hl], e
    ld [hl], e
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
    ld [hl], e
    ld [hl], e
    ld a, a
    ld a, a
    nop
    nop
    nop
    nop
    ld h, e
    ld h, e
    ld [hl], a
    ld [hl], a
    ld a, a
    ld a, a
    ld l, e
    ld l, e
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    nop
    nop
    nop
    nop
    ld [hl], e
    ld [hl], e
    ld a, e
    ld a, e
    ld a, a
    ld a, a
    ld [hl], a
    ld [hl], a
    ld [hl], e
    ld [hl], e
    ld [hl], e
    ld [hl], e
    nop
    nop
    nop
    nop
    ld a, $3E
    ld [hl], e
    ld [hl], e
    ld [hl], e
    ld [hl], e
    ld [hl], e
    ld [hl], e
    ld [hl], e
    ld [hl], e
    ld a, $3E
    nop
    nop
    nop
    nop
    ld a, [hl]
    ld a, [hl]
    ld [hl], e
    ld [hl], e
    ld [hl], e
    ld [hl], e
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
    ld [hl], e
    ld [hl], e
    ld [hl], e
    ld [hl], e
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, $3E
    rlca
    rlca
    nop
    nop
    ld a, [hl]
    ld a, [hl]
    ld [hl], e
    ld [hl], e
    ld [hl], e
    ld [hl], e
    ld a, [hl]
    ld a, [hl]
    halt
    halt
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
    rlca
    rlca
    ld [hl], a
    ld [hl], a
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
    ld [hl], e
    ld [hl], e
    ld [hl], e
    ld [hl], e
    ld [hl], e
    ld [hl], e
    ld [hl], e
    ld [hl], e
    ld [hl], e
    ld [hl], e
    ld a, $3E
    nop
    nop
    nop
    nop
    ld [hl], e
    ld [hl], e
    ld [hl], e
    ld [hl], e
    ld [hl], e
    ld [hl], e
    ld [hl], e
    ld [hl], e
    ld a, $3E
    inc e
    inc e
    nop
    nop
    nop
    nop
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    ld [hl], a
    ld [hl], a
    ld h, e
    ld h, e
    nop
    nop
    nop
    nop
    ld [hl], a
    ld [hl], a
    ld a, d
    ld a, d
    inc a
    inc a
    ld e, $1E
    cpl
    cpl
    ld [hl], a
    ld [hl], a
    nop
    nop
    nop
    nop
    ld h, e
    ld h, e
    ld [hl], a
    ld [hl], a
    ld a, $3E
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
    jr c, jr_009_4C9B

    ld [hl], b
    ld [hl], b
    ld a, a
    ld a, a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nc, jr_009_4CA5

    jr nc, jr_009_4CA7

    ld h, b
    ld h, b
    nop
    nop
    ld b, $06
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
    ld b, $06
    ld b, $06
    inc c
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

jr_009_4C9B:
    nop
    nop
    rst $38
    rst $38
    ld a, [hl]
    ld a, [hl]
    inc a
    inc a
    jr jr_009_4CBD

jr_009_4CA5:
    nop
    nop

jr_009_4CA7:
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0C21
    dec d

jr_009_4CBD:
    inc bc
    ld bc, $0412
    dec de
    db $FC
    inc sp
    rrca
    ld c, $09
    ld bc, $FC1D
    add hl, hl
    nop
    inc b
    add hl, bc
    inc b
    ld c, $3D
    inc d
    db $FD
    inc d
    ld [$0E09], sp
    dec bc
    nop
    add hl, bc
    inc d
    db $FC
    rla
    ld bc, $0013
    inc d
    ld [de], a
    dec d
    dec b
    dec sp
    db $FC
    ld [bc], a
    dec d
    inc d
    nop
    add hl, bc
    inc d
    db $FD
    add hl, bc
    inc de
    nop
    add hl, de
    rrca
    dec d
    dec e
    cp $00
    inc sp
    rrca
    ld c, $09
    ld bc, $FC1B
    ld hl, $150C
    inc bc
    ld bc, $0412
    ld e, $FD
    add hl, hl
    nop
    inc bc
    rrca
    dec d
    inc c
    inc b
    nop
    inc de
    ld bc, $FC19
    inc d
    ld [$0005], sp
    inc de
    ld bc, $050D
    inc e
    db $FD
    scf
    ld [$1401], sp
    nop
    ld bc, $0512
    db $FC
    add hl, sp
    cpl
    dec [hl]
    nop
    inc b
    rrca
    add hl, bc
    ld c, $07
    db $FC
    ld [$1205], sp
    dec b
    rra
    cp $01
    ld hl, $150C
    inc bc
    ld bc, $0412
    dec de
    db $FC
    inc l
    add hl, bc
    inc de
    inc d
    dec b
    ld c, $00
    inc d
    rrca
    db $FC
    dec c
    dec b
    dec sp
    nop
    inc sp
    rrca
    ld c, $09
    ld bc, $FD1C
    inc [hl]
    ld [$1309], sp
    nop
    add hl, bc
    inc de
    nop
    ld c, $0F
    inc d
    db $FC
    ld bc, $1000
    inc c
    ld bc, $0503
    nop
    ld b, $0F
    ld [de], a
    db $FC
    inc de
    rrca
    dec c
    dec b
    rrca
    ld c, $05
    db $FD
    inc c
    add hl, bc
    dec bc
    dec b
    nop
    add hl, de
    rrca
    dec d
    inc e
    cp $00
    inc sp
    rrca
    ld c, $09
    ld bc, $FC1B
    ld [hl+], a
    dec d
    inc d
    db $FC
    ld hl, $150C
    inc bc
    ld bc, $0412

jr_009_4D91:
    jr nz, jr_009_4D91

    ld bc, $0C21
    dec d
    inc bc
    ld bc, $0412
    dec de
    db $FC
    inc [hl]
    ld [$1309], sp
    db $FC
    db $10
    ld [de], a
    rrca
    ld [bc], a
    inc c
    dec b
    dec c
    db $FD
    inc bc
    rrca
    ld c, $03
    dec b
    ld [de], a
    ld c, $13
    db $FC
    rrca
    ld c, $0C
    add hl, de
    nop
    dec c
    dec b
    nop
    ld bc, $040E
    db $FC
    dec c
    add hl, de
    nop
    ld b, $01
    inc d
    ld [$1205], sp
    inc e
    db $FD
    add hl, hl
    dec a
    ld d, $05
    nop
    inc bc
    rrca
    dec c
    dec b
    db $FC
    inc d
    rrca
    nop
    ld b, $09
    rlca
    ld [$FC14], sp
    inc d
    ld [$0005], sp
    inc c
    rrca
    ld [de], a
    inc b
    nop
    rrca
    ld b, $FD
    inc d
    ld [$1309], sp
    db $FC
    inc bc
    ld bc, $1413
    inc c
    dec b
    inc e
    db $FD
    add hl, hl
    nop
    inc bc
    ld bc, $0E0E
    rrca
    inc d
    db $FC
    inc c
    dec b
    inc d
    nop
    dec c
    add hl, de
    db $FC
    ld b, $01
    inc d
    ld [$1205], sp
    dec sp
    db $FD
    inc hl
    rrca
    dec d
    ld c, $14
    db $FC
    inc h
    ld [de], a
    ld bc, $1503
    inc c
    ld bc, $07FC
    dec b
    inc d
    nop
    ld bc, $0117
    add hl, de
    db $FD
    rla
    add hl, bc
    inc d
    ld [$1400], sp
    ld [$1309], sp
    inc e
    db $FD
    add hl, hl
    nop
    dec c
    dec d
    inc de
    inc d
    nop
    inc b
    rrca
    db $FC
    inc d
    ld [$1309], sp
    nop
    ld b, $0F
    ld [de], a
    db $FC
    dec c
    add hl, de
    nop
    dec c
    rrca
    inc d
    ld [$1205], sp
    nop
    db $FD
    ld bc, $040E
    nop
    ld b, $0F
    ld [de], a
    db $FC
    inc d
    ld [$0005], sp
    rla
    rrca
    ld [de], a
    inc c
    inc b
    db $FC
    inc d
    ld [$1401], sp
    nop
    inc de
    ld [$FD05], sp
    inc de
    rrca
    nop
    inc b
    dec b
    ld bc, $0C12
    add hl, de
    db $FC
    inc c
    rrca
    ld d, $05
    inc b
    inc e
    db $FD
    jr nc, jr_009_4E88

    dec b
    ld bc, $0513
    db $FC
    dec d
    ld c, $04
    dec b
    ld [de], a
    inc de
    inc d

jr_009_4E88:
    ld bc, $040E
    inc e
    db $FD
    add hl, hl
    nop
    ld bc, $000D
    inc d
    ld [$FC05], sp
    rrca
    ld c, $0C
    add hl, de
    nop
    rrca
    ld c, $05
    db $FC
    rla
    ld [$000F], sp
    inc bc
    ld bc, $FD0E
    dec c
    ld bc, $050B
    nop
    ld bc, $050D
    ld c, $04
    inc de
    db $FC
    ld b, $0F
    ld [de], a
    nop
    inc d
    ld [$FC05], sp
    inc de
    add hl, bc
    ld c, $13
    db $FD
    inc bc
    rrca
    dec c
    dec c
    add hl, bc
    inc d
    inc d
    dec b
    inc b
    db $FC
    ld [bc], a
    add hl, de
    db $FC
    dec c
    add hl, de
    nop
    ld b, $01
    inc d
    ld [$1205], sp
    dec sp
    db $FD
    ld bc, $040E
    nop
    inc d
    ld [$1205], sp
    dec b
    db $FC
    add hl, bc
    inc de
    nop
    ld c, $0F
    db $FC
    ld [de], a
    dec b
    ld bc, $0F13
    ld c, $00
    ld b, $0F
    ld [de], a
    db $FD
    add hl, de
    rrca
    dec d
    nop
    inc d
    rrca
    nop
    rlca
    dec b
    inc d
    db $FC
    add hl, bc
    ld c, $16
    rrca
    inc c
    ld d, $05
    inc b
    db $FD
    add hl, bc
    ld c, $00
    inc d
    ld [$1309], sp
    db $FC
    ld [bc], a
    ld bc, $1414
    inc c
    dec b
    inc e
    db $FD
    inc sp
    rrca
    ld c, $09
    ld bc, $FC3B
    add hl, hl
    nop
    inc bc
    rrca
    dec d
    inc c
    inc b
    nop
    ld c, $0F
    inc d
    db $FC
    ld [bc], a
    dec b
    ld bc, $0012
    inc d
    rrca
    db $FD
    inc c
    rrca
    inc de
    dec b
    nop
    add hl, de
    rrca
    dec d
    dec sp
    db $FC
    inc d
    rrca
    rrca
    inc e
    db $FD
    ld l, $0F
    rla
    dec sp
    db $FC
    inc d
    dec d
    ld [de], a
    ld c, $00
    ld [bc], a
    ld bc, $0B03
    dec e
    cp $00
    inc sp
    rrca
    ld c, $09
    ld bc, $FC1B
    inc [hl]
    ld [$0E01], sp
    dec bc
    nop
    add hl, de
    rrca
    dec d
    dec sp
    db $FC
    ld hl, $150C
    inc bc
    ld bc, $0412
    inc e
    db $FD
    add hl, sp
    rrca
    dec d
    ccf
    add hl, de
    rrca
    dec d
    dec a
    ld [de], a
    dec b
    db $FC
    db $10
    ld [de], a
    rrca
    ld [bc], a
    ld bc, $0C02
    add hl, de
    db $FC
    ld [de], a
    add hl, bc
    rlca
    ld [$1C14], sp
    db $FD
    add hl, hl
    ld c, $00
    ld b, $01
    inc bc
    inc d
    dec sp
    db $FC
    add hl, de
    rrca
    dec d
    nop
    ld [$1601], sp
    dec b
    db $FC
    ld bc, $170C
    ld bc, $1319
    nop
    dec c
    ld bc, $0504
    db $FD
    inc d
    ld [$0005], sp
    ld [de], a
    add hl, bc
    rlca
    ld [$FC14], sp
    inc b
    dec b
    inc bc
    add hl, bc
    inc de
    add hl, bc
    rrca
    ld c, $13
    inc e
    db $FD
    ld [hl+], a
    dec d
    inc d
    db $FC
    add hl, hl
    nop
    ld [$1601], sp
    dec b
    nop
    ld c, $0F
    db $FC
    add hl, bc
    ld c, $14
    dec b
    ld c, $14
    add hl, bc
    rrca
    ld c, $FD
    rrca
    ld b, $00
    rlca
    rrca
    add hl, bc
    ld c, $07
    db $FC
    ld [bc], a
    ld bc, $0B03
    nop
    ld c, $0F
    rla
    inc e
    db $FD
    ld a, [hl+]
    dec d
    inc de
    inc d
    nop
    ld bc, $FC13
    add hl, de
    rrca
    dec d
    ld [de], a
    nop
    ld b, $01
    inc d
    ld [$1205], sp
    db $FC
    rla
    ld bc, $0013
    rlca
    ld [de], a
    ld bc, $140E
    dec b
    inc b
    db $FD
    inc de
    inc d
    ld [de], a
    dec b
    ld c, $07
    inc d
    ld [$06FC], sp
    ld [de], a
    rrca
    dec c
    nop
    inc d
    ld [$FC05], sp
    dec b
    ld d, $09
    inc c
    nop
    inc b
    dec b
    add hl, bc
    inc d
    add hl, de
    db $FD
    inc d
    rrca
    nop
    inc bc
    rrca
    ld c, $11
    dec d
    dec b
    ld [de], a
    db $FC
    inc d
    ld [$0005], sp
    rla
    rrca
    ld [de], a
    inc c
    inc b
    dec sp
    db $FC
    add hl, hl
    nop
    ld [$1601], sp
    dec b
    nop
    ld [bc], a
    dec b
    dec b
    ld c, $FD
    rlca
    ld [de], a
    ld bc, $140E
    dec b
    inc b
    db $FC
    inc de
    inc d
    ld [de], a
    dec b
    ld c, $07
    inc d
    ld [$14FC], sp
    rrca
    nop
    ld b, $09
    rlca
    ld [$FD14], sp
    add hl, de
    rrca
    dec d
    ld [de], a
    db $FC
    ld b, $01
    inc d
    ld [$1205], sp
    inc e
    db $FD
    add hl, hl
    nop
    rla
    add hl, bc
    inc c
    inc c
    nop
    ld c, $0F
    inc d
    db $FC
    ld [de], a
    dec d
    ld c, $00
    ld bc, $0117
    add hl, de
    inc e
    db $FD
    scf
    dec b
    nop
    ld bc, $0C0C
    db $FC
    inc b
    dec b
    inc bc
    add hl, bc
    inc b
    dec b
    nop
    rrca
    dec d
    ld [de], a
    db $FC
    rrca
    rla
    ld c, $00
    ld b, $01
    inc d
    dec b
    inc e
    db $FD
    add hl, hl
    inc d
    nop
    rla
    ld bc, $0013
    add hl, de
    rrca
    dec d
    db $FC
    rla
    ld [$000F], sp
    inc d
    ld bc, $0715
    ld [$FC14], sp
    dec c
    dec b
    nop
    inc d
    ld [$1401], sp
    dec sp
    db $FD
    ld hl, $150C
    inc bc
    ld bc, $0412
    inc e
    cp $01
    ld hl, $150C
    inc bc
    ld bc, $0412
    dec de
    db $FC
    ld hl, $120C
    add hl, bc
    rlca
    ld [$3B14], sp
    db $FC
    inc sp
    rrca
    ld c, $09
    ld bc, $FD1C
    inc [hl]
    ld [$0E05], sp
    nop
    inc de
    ld [$170F], sp
    db $FC
    dec c
    dec b
    nop
    inc d
    ld [$1309], sp
    db $FC
    inc de
    inc d
    ld [de], a
    dec b
    ld c, $07
    inc d
    ld [$19FD], sp
    rrca
    dec d
    nop
    ld [bc], a
    dec b
    inc c
    add hl, bc
    dec b
    ld d, $05
    db $FC
    inc de
    rrca
    nop
    inc de
    inc d
    ld [de], a
    rrca
    ld c, $07
    inc c
    add hl, de
    db $FC
    add hl, bc
    ld c, $3B
    db $FD
    ld b, $0F
    ld [de], a
    nop
    add hl, hl
    nop
    inc d
    rrca
    rrca
    db $FC
    rla
    ld bc, $140E
    nop
    inc d
    rrca
    db $FC
    ld [bc], a
    dec b
    inc c
    add hl, bc
    dec b
    ld d, $05
    inc e
    db $FD
    inc l
    dec b
    inc d
    nop
    dec d
    inc de
    nop
    inc d
    dec b
    inc de
    inc d
    db $FC
    inc d
    ld [$1309], sp
    db $FC
    inc de
    inc d
    ld [de], a
    dec b
    ld c, $07
    inc d
    ld [$0FFD], sp
    ld c, $00
    dec c
    dec b
    inc e
    db $FD
    jr nc, jr_009_5166

    dec b
    db $10
    ld bc, $0512
    db $FC
    add hl, de
    rrca
    dec d
    ld [de], a
    inc de
    dec b
    inc c
    ld b, $1D
    cp $00
    inc sp

jr_009_5166:
    rrca
    ld c, $09
    ld bc, $FC1B
    jr nz, @+$20

    rst $38
    ld bc, $0C21
    dec d
    inc bc
    ld bc, $0412
    dec de
    db $FC
    cpl
    rrca
    rla
    rla
    dec e
    db $FD
    add hl, hl
    nop
    ld [$0401], sp
    nop
    ld c, $0F
    db $FC
    add hl, bc
    inc b
    dec b
    ld bc, $1900
    rrca
    dec d
    db $FC
    ld [$0401], sp
    nop
    ld [bc], a
    dec b
    inc bc
    rrca
    dec c
    dec b
    db $FD
    inc de
    rrca
    nop
    inc de
    inc d
    ld [de], a
    rrca
    ld c, $07
    inc e
    cp $00
    inc sp
    rrca
    ld c, $09
    ld bc, $FC1B
    cpl
    ld [$FC3B], sp
    ld hl, $150C
    inc bc
    ld bc, $0412
    dec e
    cp $01
    ld hl, $150C
    inc bc
    ld bc, $0412
    dec de
    db $FC
    add hl, hl
    inc d
    nop
    inc c
    rrca
    rrca
    dec bc
    inc de
    db $FC
    inc c
    add hl, bc
    dec bc
    dec b
    nop
    inc d
    ld [$1309], sp
    db $FD
    inc d
    add hl, bc
    dec c
    dec b
    nop
    add hl, bc
    inc d
    nop
    add hl, bc
    inc de
    db $FC
    add hl, hl
    nop
    rla
    ld [$000F], sp
    ld [$1601], sp
    dec b
    db $FC
    inc c
    dec b
    ld bc, $0E12
    dec b
    inc b
    db $FD
    ld bc, $0C00
    dec b
    inc de
    inc de
    rrca
    ld c, $1C
    cp $00
    inc sp
    rrca
    ld c, $09
    ld bc, $FC1B
    ld hl, $150C
    inc bc
    ld bc, $0412
    dec sp
    db $FD
    inc b
    add hl, bc
    inc b
    nop
    add hl, de
    rrca
    dec d
    db $FC
    db $10
    dec d
    ld [de], a
    db $10
    rrca
    inc de
    dec b
    inc c
    add hl, de
    db $FC
    jr nz, jr_009_5245

    cp $01
    ld hl, $150C
    inc bc
    ld bc, $0412
    dec de
    db $FC
    ld l, $0F
    dec sp
    nop
    inc sp
    rrca
    ld c, $09
    ld bc, $FD1C
    add hl, sp
    rrca
    dec d
    nop
    ld [$1601], sp
    dec b
    db $FC

jr_009_5245:
    dec c
    ld bc, $0504
    nop
    dec c
    dec b
    db $FC
    ld [bc], a
    dec b
    inc c
    add hl, bc
    dec b
    ld d, $05
    db $FD
    add hl, bc
    ld c, $00
    add hl, de
    rrca
    dec d
    ld [de], a
    db $FC
    inc de
    inc d
    ld [de], a
    dec b
    ld c, $07
    inc d
    ld [$FE1C], sp
    nop
    inc sp
    rrca
    ld c, $09
    ld bc, $FC1B
    ld hl, $150C
    inc bc
    ld bc, $0412
    inc e
    db $FD
    add hl, hl
    dec a
    dec c
    nop
    inc de
    rrca
    db $FC
    inc de
    rrca
    ld [de], a
    ld [de], a
    add hl, de
    inc e
    cp $01
    ld hl, $150C
    inc bc
    ld bc, $0412
    dec de
    db $FC
    inc h
    rrca
    nop
    ld c, $0F
    inc d
    db $FC
    inc d
    ld [de], a
    rrca
    dec d
    ld [bc], a
    inc c
    dec b
    db $FD
    add hl, de
    rrca
    dec d
    ld [de], a
    inc de
    dec b
    inc c
    ld b, $FC
    ld bc, $0F02
    dec d
    inc d
    nop
    add hl, bc
    inc d
    dec sp
    db $FC
    inc sp
    rrca
    ld c, $09
    ld bc, $FD1C
    ld l, $0F
    rla
    dec sp
    nop
    add hl, hl
    db $FC
    dec c
    dec d
    inc de
    inc d
    nop
    inc de
    inc c
    dec b
    dec b
    db $10
    inc e
    db $FD
    add hl, hl
    nop
    ld b, $05
    ld bc, $0012
    rla
    dec b
    db $FC
    inc de
    ld [$0C01], sp
    inc c
    nop
    ld c, $0F
    inc d
    db $FC
    dec c
    dec b
    dec b
    inc d
    nop
    ld bc, $0107
    add hl, bc
    ld c, $1C
    db $FD
    ld h, $01
    ld [de], a
    dec b
    rla
    dec b
    inc c
    inc c
    dec sp
    db $FC
    dec c
    add hl, de
    nop
    ld [bc], a
    dec b
    inc c
    rrca
    ld d, $05
    inc b
    dec sp
    db $FD
    dec c
    add hl, de
    db $FC
    ld [bc], a
    dec b
    ld bc, $1415
    add hl, bc
    ld b, $15
    inc c
    db $FC
    ld d, $01
    dec c
    db $10
    add hl, bc
    ld [de], a
    dec b
    db $FD
    ld [$0E15], sp
    inc d
    dec b
    ld [de], a
    inc e
    cp $00
    inc sp
    rrca
    ld c, $09
    ld bc, $FC1B
    ld hl, $150C
    inc bc
    ld bc, $0412
    dec e
    db $FD
    ld hl, $150C
    inc bc
    ld bc, $0412
    dec sp
    db $FC
    add hl, hl
    nop
    rla
    add hl, bc
    inc c
    inc c
    db $FC
    ld c, $05
    ld d, $05
    ld [de], a
    db $FD
    ld b, $0F
    ld [de], a
    rlca
    dec b
    inc d
    nop
    add hl, de
    rrca
    dec d
    inc e
    db $FD
    ld h, $01
    ld [de], a
    dec b
    rla
    dec b
    inc c
    inc c
    dec sp
    db $FC
    inc b
    dec b
    ld bc, $FC12
    ld hl, $150C
    inc bc
    ld bc, $0412
    inc e
    rst $38
    nop
    inc h
    ld [de], a
    ld bc, $1503
    inc c
    ld bc, $FC1B
    add hl, sp
    rrca
    dec d
    nop
    ld [$1601], sp
    dec b
    db $FC
    inc b
    rrca
    ld c, $05
    nop
    rla
    dec b
    inc c
    inc c
    dec sp
    db $FD
    dec c
    add hl, de
    nop
    rlca
    add hl, bc
    ld [de], a
    inc c
    inc e
    db $FD
    add hl, hl
    ld c, $00
    ld b, $01
    inc bc
    inc d
    dec sp
    db $FC
    add hl, de
    rrca
    dec d
    nop
    ld bc, $0512
    db $FC
    inc d
    ld [$0005], sp
    ld b, $09
    ld [de], a
    inc de
    inc d
    db $FD
    ld [$0D15], sp
    ld bc, $000E
    rla
    ld [$FC0F], sp
    ld [$1301], sp
    nop
    inc bc
    rrca
    dec c
    dec b
    db $FC
    inc d
    ld [$1309], sp
    nop
    ld b, $01
    ld [de], a
    inc e
    db $FD
    add hl, sp
    rrca
    dec d
    nop
    ld [$1601], sp
    dec b
    db $FC
    dec c
    add hl, de
    nop
    db $10
    ld [de], a
    ld bc, $1309
    dec b
    inc e
    cp $01
    inc sp
    rrca
    ld c, $09
    ld bc, $FC1B
    add hl, sp
    rrca
    dec d
    nop
    ld bc, $0512
    db $FC
    inc d
    ld [$0005], sp
    jr nc, jr_009_5405

    add hl, bc
    ld c, $03
    dec b
    db $FD
    rrca
    ld b, $FC
    inc h
    ld bc, $0B12
    ld c, $05
    inc de
    inc de
    inc e
    db $FD

jr_009_5405:
    ld [hl+], a
    dec b
    inc bc
    ld bc, $1315
    dec b
    db $FC
    rrca
    ld b, $00
    add hl, de
    rrca
    dec d
    db $FC
    dec c
    ld bc, $190E
    nop
    db $10
    dec b
    rrca
    db $10
    inc c
    dec b
    db $FD
    ld [$1601], sp
    dec b
    nop
    inc b
    add hl, bc
    dec b
    inc b
    dec sp
    db $FC
    dec c
    ld bc, $190E
    nop
    db $10
    dec b
    rrca
    db $10
    inc c
    dec b
    db $FC
    ld [$1601], sp
    dec b
    db $FD
    inc de
    dec d
    ld b, $06
    dec b
    ld [de], a
    dec b
    inc b
    inc e
    cp $00
    inc h
    ld [de], a
    ld bc, $1503
    inc c
    ld bc, $FC1B
    cpl
    ld [$0E00], sp
    rrca
    dec sp
    db $FC
    dec c
    add hl, de
    nop
    inc b
    dec b
    ld bc, $1C12
    db $FD
    add hl, hl
    nop
    ld [$1601], sp
    dec b
    db $FC
    dec c
    dec b
    ld [de], a
    dec b
    inc c
    add hl, de
    nop
    inc b
    rrca
    ld c, $05
    db $FC
    rla
    ld [$1401], sp
    nop
    add hl, de
    rrca
    dec d
    db $FD
    ld [$0D15], sp
    ld bc, $130E
    db $FC
    rla
    add hl, bc
    inc de
    ld [$0405], sp
    nop
    ld b, $0F
    ld [de], a
    dec sp
    db $FC
    ld b, $15
    inc c
    ld b, $09
    inc c
    inc c
    add hl, bc
    ld c, $07
    db $FD
    add hl, de
    rrca
    dec d
    ld [de], a
    db $FC
    add hl, bc
    ld c, $13
    ld bc, $0914
    ld bc, $0C02
    dec b
    db $FC
    inc b
    dec b
    inc de
    add hl, bc
    ld [de], a
    dec b
    inc de
    inc e
    cp $01
    inc sp
    rrca
    ld c, $09
    ld bc, $FC1B
    jr nc, jr_009_54C2

    rrca
    db $10
    inc c
    dec b
    nop

jr_009_54C2:
    dec c
    dec d
    inc de
    inc d
    db $FC
    ld b, $15
    inc c
    ld b, $09
    inc c
    inc c
    db $FD
    inc d
    ld [$0905], sp
    ld [de], a
    db $FC
    inc b
    ld [de], a
    dec b
    ld bc, $130D
    db $FC
    rla
    add hl, bc
    inc d
    ld [$1400], sp
    ld [$0905], sp
    ld [de], a
    db $FD
    rrca
    rla
    ld c, $00
    db $10
    rrca
    rla
    dec b
    ld [de], a
    inc e
    db $FD
    add hl, sp
    rrca
    dec d
    nop
    rla
    ld [$FC0F], sp
    ld [$1601], sp
    dec b
    nop
    ld [bc], a
    dec b
    dec b
    ld c, $FC
    inc bc
    rrca
    ld c, $13
    dec d
    dec c
    dec b
    inc b
    nop
    ld [bc], a
    add hl, de
    db $FD
    inc d
    ld [$0005], sp
    db $10
    rrca
    rla
    dec b
    ld [de], a
    db $FC
    rrca
    ld b, $00
    dec b
    ld d, $09
    inc c
    nop
    ld c, $0F
    db $FC
    inc c
    rrca
    ld c, $07
    dec b
    ld [de], a
    nop
    ld [$1601], sp
    dec b
    db $FD
    inc d
    ld [$FC05], sp
    inc de
    inc d
    ld [de], a
    dec b
    ld c, $07
    inc d
    ld [$1400], sp
    rrca
    db $FC
    inc b
    dec b
    inc d
    dec b
    ld [de], a
    dec c
    add hl, bc
    ld c, $05
    db $FD
    add hl, de
    rrca
    dec d
    ld [de], a
    nop
    rrca
    rla
    ld c, $FC
    ld b, $01
    inc d
    dec b
    dec e
    cp $00
    inc h
    ld [de], a
    ld bc, $1503
    inc c
    ld bc, $FC1B
    inc sp
    add hl, bc
    inc c
    dec b
    ld c, $03
    dec b
    dec e
    db $FD
    cpl
    ld c, $00
    inc d
    ld [$FC05], sp
    inc bc
    rrca
    ld c, $14
    ld [de], a
    ld bc, $1912
    dec sp
    db $FC
    add hl, hl
    nop
    ld bc, $000D
    ld a, [bc]
    dec d
    inc de
    inc d
    db $FD
    inc d
    ld [$0005], sp
    rrca
    ld c, $05
    nop
    inc d
    rrca
    db $FC
    dec d
    inc de
    dec b
    nop
    inc d
    ld [$1309], sp
    db $FC
    db $10
    rrca
    rla
    dec b
    ld [de], a
    dec sp
    db $FD
    ld bc, $040E
    nop
    add hl, hl
    nop
    rla
    add hl, bc
    inc c
    inc c
    db $FC
    ld [bc], a
    dec b
    nop
    inc d
    ld [$0005], sp
    dec bc
    add hl, bc
    ld c, $07
    db $FC
    rla
    ld [$000F], sp
    ld [de], a
    dec d
    inc c
    dec b
    inc de
    db $FD
    rrca
    ld d, $05
    ld [de], a
    nop
    inc d
    ld [$FC05], sp
    dec b
    ld c, $14
    add hl, bc
    ld [de], a
    dec b
    db $FC
    rla
    rrca
    ld [de], a
    inc c
    inc b
    inc e
    db $FD
    daa
    add hl, bc
    ld d, $05
    db $FC
    add hl, de
    rrca
    dec d
    ld [de], a
    inc de
    dec b
    inc c
    ld b, $FC
    inc d
    rrca
    nop
    dec c
    dec b
    dec sp
    db $FD
    add hl, de
    rrca
    dec d
    ld c, $07
    nop
    inc c
    ld bc, $1904
    inc e
    db $FD
    inc [hl]
    ld [$1205], sp
    dec b
    nop
    dec c
    ld bc, $FC19
    ld [bc], a
    dec b
    nop
    dec c
    dec b
    ld [de], a
    add hl, bc
    inc d
    db $FC
    add hl, bc
    ld c, $00
    ld [$1601], sp
    add hl, bc
    ld c, $07
    db $FD
    add hl, de
    rrca
    dec d
    ld [de], a
    nop
    db $10
    rrca
    rla
    dec b
    ld [de], a
    dec sp
    db $FC
    add hl, bc
    ld c, $00
    ld [$1601], sp
    add hl, bc
    ld c, $07
    db $FC
    add hl, de
    rrca
    dec d
    ld [de], a
    db $FD
    db $10
    ld [de], a
    dec b
    inc de
    dec b
    ld c, $03
    dec b
    inc e
    cp $01
    inc sp
    rrca
    ld c, $09
    ld bc, $FC1B
    dec l
    add hl, de
    nop
    inc de
    inc d
    ld [de], a
    dec b
    ld c, $07
    inc d
    ld [$17FC], sp
    add hl, bc
    inc c
    inc c
    nop
    rrca
    ld c, $0C
    add hl, de
    db $FD
    ld [bc], a
    dec b
    nop
    dec d
    inc de
    dec b
    inc b
    db $FC
    inc d
    rrca
    nop
    db $10
    ld [de], a
    rrca
    inc d
    dec b
    inc bc
    inc d
    db $FC
    inc d
    ld [$0005], sp
    rla
    rrca
    ld [de], a
    inc c
    inc b
    dec e
    db $FD
    inc l
    rrca
    ld [de], a
    inc b
    nop
    rrca
    ld b, $FC
    inc h
    ld bc, $0B12
    ld c, $05
    inc de
    inc de
    dec sp
    db $FC
    db $10
    ld [de], a
    dec b
    db $10
    ld bc, $0512
    nop
    inc d
    rrca
    db $FD
    inc de
    dec d
    ld b, $06
    dec b
    ld [de], a
    nop
    ld b, $0F
    ld [de], a
    db $FC
    inc d
    ld [de], a
    add hl, bc
    ld b, $0C
    add hl, bc
    ld c, $07
    db $FC
    rla
    add hl, bc
    inc d
    ld [$1300], sp
    rrca
    db $FD
    dec c
    ld bc, $190E
    nop
    inc c
    add hl, bc
    ld d, $05
    inc de
    dec e
    cp $00
    inc h
    ld [de], a
    ld bc, $1503
    inc c
    ld bc, $FC1B
    ld hl, $0013
    add hl, de
    rrca
    dec d
    db $FC
    rla
    add hl, bc
    inc de
    ld [$003B], sp
    rlca
    add hl, bc
    ld [de], a
    inc c
    inc e
    db $FD
    inc [hl]
    ld [$0E05], sp
    nop
    add hl, bc
    inc d
    nop
    add hl, bc
    inc de
    db $FC
    add hl, de
    rrca
    dec d
    ld [de], a
    nop
    ld b, $01
    inc d
    dec b
    db $FC
    inc d
    rrca
    nop
    dec bc
    ld c, $05
    dec b
    inc c
    db $FD
    ld [bc], a
    dec b
    ld b, $0F
    ld [de], a
    dec b
    db $FC
    dec c
    add hl, de
    nop
    db $10
    rrca
    rla
    dec b
    ld [de], a
    dec e
    rst $38
    nop
    inc h
    ld [de], a
    ld bc, $1503
    inc c
    ld bc, $FC1B
    cpl
    ld [$3B08], sp
    nop
    ld c, $0F
    dec e
    db $FD
    inc [hl]
    ld [$1309], sp
    db $FC
    inc bc
    ld bc, $0E0E
    rrca
    inc d
    nop
    ld [bc], a
    dec b
    dec e
    db $FD
    dec l
    dec b
    nop
    inc c
    rrca
    inc de
    add hl, bc
    ld c, $07
    db $FC
    inc d
    rrca
    nop
    ld bc, $013F
    db $FC
    ld [$0D15], sp
    ld bc, $1F0E
    cp $01
    inc sp
    rrca
    ld c, $09
    ld bc, $FC1B
    add hl, sp
    rrca
    dec d
    nop
    db $10
    rrca
    rrca
    ld [de], a
    db $FC
    dec c
    ld bc, $1C0E
    db $FD
    add hl, hl
    inc d
    nop
    dec c
    dec d
    inc de
    inc d
    nop
    ld [bc], a
    dec b
    db $FC
    inc b
    add hl, bc
    ld b, $06
    add hl, bc
    inc bc
    dec d
    inc c
    inc d
    db $FD
    inc d
    rrca
    db $FC
    dec d
    ld c, $04
    dec b
    ld [de], a
    inc de
    inc d
    ld bc, $040E
    db $FC
    rla
    ld [$0019], sp
    add hl, de
    rrca
    dec d
    dec sp
    db $FD
    rla
    ld [$000F], sp
    db $10
    rrca
    inc de
    inc de
    dec b
    inc de
    inc de
    db $FC
    dec b
    inc d
    dec b
    ld [de], a
    ld c, $01
    inc c
    db $FC
    inc c
    add hl, bc
    ld b, $05
    dec sp
    db $FD
    ld bc, $0512
    nop
    ld bc, $0F02
    dec d
    inc d
    db $FC
    inc d
    rrca
    nop
    db $10
    dec b
    ld [de], a
    add hl, bc
    inc de
    ld [$FD1C], sp
    jr z, @+$17

    dec c
    ld bc, $130E
    nop
    ld bc, $0512
    db $FC
    rlca
    ld [de], a
    ld bc, $140E
    dec b
    inc b
    db $FC
    inc de
    dec d
    inc bc
    ld [$01FD], sp
    nop
    db $10
    ld [de], a
    dec b
    inc bc
    add hl, bc
    rrca
    dec d
    inc de
    db $FC
    inc de
    ld [$120F], sp
    inc d
    nop
    inc c
    add hl, bc
    ld b, $05
    db $FC
    add hl, bc
    ld c, $FD
    inc bc
    rrca
    dec c
    db $10
    ld bc, $0912
    inc de
    rrca
    ld c, $FC
    inc d
    rrca
    nop
    add hl, de
    rrca
    dec d
    ld [de], a
    inc de
    dec sp
    db $FC
    ld [bc], a
    dec d
    inc d
    nop
    add hl, bc
    ld c, $00
    inc d
    ld [$1401], sp
    db $FD
    inc de
    ld [$120F], sp
    inc d
    nop
    inc d
    add hl, bc
    dec c
    dec b
    db $FC
    rla
    dec b
    nop
    ld bc, $0512
    nop
    ld bc, $0C02
    dec b
    db $FC
    inc d
    rrca
    nop
    inc c
    rrca
    ld d, $05
    nop
    ld bc, $040E
    db $FD
    inc d
    rrca
    nop
    inc c
    add hl, bc
    ld d, $05
    db $FC
    ld b, $0F
    ld [de], a
    nop
    inc de
    rrca
    dec c
    dec b
    rrca
    ld c, $05
    db $FC
    dec b
    inc c
    inc de
    dec b
    inc e
    db $FD
    inc [hl]
    ld [$1205], sp
    dec b
    nop
    dec c
    dec d
    inc de
    inc d
    db $FC
    ld [$1601], sp
    dec b
    nop
    ld [bc], a
    dec b
    dec b
    ld c, $FC
    ld bc, $1400
    add hl, bc
    dec c
    dec b
    nop
    rla
    ld [$0E05], sp
    db $FD
    add hl, de
    rrca
    dec d
    nop
    inc d
    rrca
    rrca
    db $FC
    inc bc
    ld [$1205], sp
    add hl, bc
    inc de
    ld [$0405], sp
    db $FC
    inc d
    ld [$0005], sp
    ld [bc], a
    rrca
    ld c, $04
    inc de
    db $FD
    rla
    add hl, bc
    inc d
    ld [$14FC], sp
    ld [$0005], sp
    rrca
    ld c, $05
    inc de
    db $FC
    add hl, de
    rrca
    dec d
    nop
    inc c
    rrca
    ld d, $05
    inc b
    inc e
    db $FD
    scf
    dec b
    nop
    ld [$0D15], sp
    ld bc, $130E
    db $FC
    ld bc, $0512
    nop
    ld c, $0F
    inc d
    nop
    inc de
    rrca
    db $FC
    ld b, $0F
    rrca
    inc c
    add hl, bc
    inc de
    ld [$0100], sp
    inc de
    db $FD
    inc d
    rrca
    nop
    inc d
    ld [$0F12], sp
    rla
    db $FC
    ld bc, $0117
    add hl, de
    nop
    ld bc, $0C0C
    nop
    rrca
    ld b, $FC
    inc d
    ld [$1401], sp
    nop
    add hl, bc
    ld c, $FD
    dec b
    jr jr_009_58DF

    ld [$0E01], sp

jr_009_58DF:
    rlca
    dec b
    db $FC
    ld b, $0F
    ld [de], a
    nop
    inc d
    ld [$FC05], sp
    db $10
    rrca
    rla
    dec b
    ld [de], a
    nop
    add hl, de
    rrca
    dec d
    db $FD
    ld [de], a
    dec b
    inc bc
    dec b
    add hl, bc
    ld d, $05
    inc b
    inc e
    db $FD
    inc [hl]
    ld [$1205], sp
    dec b
    nop
    add hl, bc
    inc de
    nop
    ld c, $0F
    db $FC
    db $10
    inc c
    ld bc, $0503
    nop
    add hl, bc
    ld c, $FC
    inc d
    ld [$1309], sp
    nop
    rla
    rrca
    ld [de], a
    inc c
    inc b
    db $FD
    ld b, $0F
    ld [de], a
    db $FC
    inc d
    ld [$0005], sp
    inc c
    add hl, bc
    dec bc
    dec b
    inc de
    db $FC
    rrca
    ld b, $00
    add hl, de
    rrca
    dec d
    inc e
    db $FD
    add hl, sp
    rrca
    dec d
    nop
    rla
    dec b
    ld [de], a
    dec b
    db $FC
    ld bc, $120C
    dec b
    ld bc, $1904
    db $FC
    inc b
    dec b
    ld b, $05
    ld bc, $0514
    inc b
    db $FD
    rla
    ld [$0E05], sp
    nop
    add hl, de
    rrca
    dec d
    db $FC
    ld bc, $0303
    dec b
    db $10
    inc d
    dec b
    inc b
    db $FC
    inc d
    ld [$0005], sp
    db $10
    rrca
    rla
    dec b
    ld [de], a
    db $FD
    rrca
    ld b, $00
    inc d
    ld [$FC05], sp
    inc b
    ld bc, $0B12
    ld c, $05
    inc de
    inc de
    inc e
    cp $00
    inc h
    ld [de], a
    ld bc, $1503
    inc c
    ld bc, $FC1B
    jr z, @+$07

    ld [$0800], sp
    dec b
    ld [$08FC], sp
    dec b
    ld [$0800], sp
    dec b
    ld [$FD1C], sp
    jr z, jr_009_59B9

    nop

jr_009_5999:
    jr z, jr_009_59BC

    jr z, jr_009_5999

    jr z, @+$23

    jr z, jr_009_59A1

jr_009_59A1:
    jr z, jr_009_59C4

    jr z, jr_009_59CD

    ld e, $FD
    inc h
    rrca
    ld c, $3D
    inc d
    nop
    inc c
    dec b
    inc d
    db $FC
    add hl, bc
    inc d
    nop
    rlca
    rrca
    nop
    inc d
    rrca

jr_009_59B9:
    db $FC
    add hl, de
    rrca

jr_009_59BC:
    dec d
    ld [de], a
    nop
    ld [$0105], sp
    inc b
    dec sp

jr_009_59C4:
    db $FD
    rlca
    add hl, bc
    ld [de], a
    inc c
    inc e
    db $FD
    inc h
    rrca

jr_009_59CD:
    nop
    add hl, de
    rrca
    dec d
    db $FC
    ld [de], a
    dec b
    ld bc, $0C0C
    add hl, de
    db $FC
    inc d
    ld [$0E09], sp
    dec bc
    db $FD
    inc d
    ld [$0005], sp
    inc c
    add hl, bc
    dec bc
    dec b
    inc de
    db $FC
    rrca
    ld b, $00
    add hl, de
    rrca
    dec d
    nop
    inc bc
    ld bc, $FC0E
    inc b
    dec b
    inc de
    inc d
    ld [de], a
    rrca
    add hl, de
    nop
    dec c
    dec b
    rra
    db $FD
    add hl, sp
    rrca
    dec d
    dec a
    ld [de], a
    dec b
    db $FC
    ld bc, $0600
    rrca
    rrca
    inc c
    nop
    ld a, [bc]
    dec d
    inc de
    inc d
    db $FC
    ld bc, $0013
    ld hl, $150C
    inc bc
    ld bc, $0412
    db $FD
    rla
    ld bc, $1C13
    db $FD
    inc l
    add hl, bc
    inc de
    inc d
    dec b
    ld c, $FC
    inc d
    rrca
    nop
    dec c
    dec b
    inc e
    db $FD
    inc h
    ld bc, $0B12
    ld c, $05
    inc de
    inc de
    db $FC
    rla
    add hl, bc
    inc c
    inc c
    nop
    ld c, $05
    ld d, $05
    ld [de], a
    db $FC
    inc b
    add hl, bc
    dec b
    nop
    rrca
    dec d
    inc d
    nop
    ld bc, $FD13
    inc c
    rrca
    ld c, $07
    nop
    ld bc, $FC13
    inc d
    ld [$1205], sp
    dec b
    nop
    add hl, bc
    inc de
    db $FC
    inc c
    add hl, bc
    rlca
    ld [$0014], sp
    add hl, bc
    ld c, $FD
    inc d
    ld [$0005], sp
    rla
    rrca
    ld [de], a
    inc c
    inc b
    inc e
    db $FD
    add hl, hl
    nop
    ld bc, $FC0D
    inc d
    ld [$0005], sp
    ld [de], a
    dec d
    inc c
    dec b
    ld [de], a
    db $FC
    rrca
    ld b, $00
    inc d
    ld [$1401], sp
    db $FD
    inc b
    ld bc, $0B12
    ld c, $05
    inc de
    inc de
    dec sp
    db $FC
    ld bc, $040E
    nop
    add hl, hl
    nop
    rla
    add hl, bc
    inc c
    inc c
    db $FC
    ld [de], a
    add hl, bc
    inc de
    dec b
    nop
    ld bc, $0107
    add hl, bc
    ld c, $FD
    ld bc, $040E
    nop
    ld bc, $0107
    add hl, bc
    ld c, $3B
    db $FC
    ld bc, $0013
    inc c
    rrca
    ld c, $07
    nop
    ld bc, $FC13
    db $10
    dec b
    rrca
    db $10
    inc c
    dec b
    nop
    inc c
    add hl, bc
    dec bc
    dec b
    db $FD
    add hl, de
    rrca
    dec d
    nop
    ld bc, $0512
    db $FC
    ld bc, $090C
    ld d, $05
    inc e
    db $FD
    ld hl, $0107
    add hl, bc
    ld c, $00
    ld bc, $040E
    db $FC
    ld bc, $0107
    add hl, bc
    ld c, $3B
    db $FC
    add hl, hl
    nop
    inc d
    dec b
    inc c
    inc c
    nop
    add hl, de
    rrca
    dec d
    inc e
    db $FD
    jr z, jr_009_5B1D

    jr z, jr_009_5AFE

jr_009_5AFE:
    jr z, jr_009_5B21

    jr z, jr_009_5AFE

    jr z, jr_009_5B25

    jr z, jr_009_5B24

    cp $01
    inc sp
    rrca
    ld c, $09
    ld bc, $FC1B
    scf
    ld [$0E05], sp
    nop
    inc d
    ld [$1401], sp
    db $FC
    ld [$1001], sp
    db $10

jr_009_5B1D:
    dec b
    ld c, $13
    dec sp

jr_009_5B21:
    db $FD
    inc de
    rrca

jr_009_5B24:
    dec c

jr_009_5B25:
    dec b
    rrca
    ld c, $05
    db $FC
    rla
    add hl, bc
    inc c
    inc c
    nop
    ld bc, $1010
    dec b
    ld bc, $FC12
    ld [bc], a
    dec b
    ld b, $0F
    ld [de], a
    dec b
    nop
    add hl, de
    rrca
    dec d
    db $FD
    inc d
    rrca
    nop
    inc d
    ld bc, $050B
    db $FC
    dec c
    add hl, de
    nop
    db $10
    inc c
    ld bc, $0503
    inc e
    db $FD
    add hl, hl
    ld b, $00
    add hl, bc
    inc d
    nop
    add hl, bc
    inc de
    db $FC
    dec c
    add hl, de
    nop
    ld b, $01
    inc d
    dec b
    nop
    inc d
    rrca
    db $FC
    ld bc, $0107
    add hl, bc
    ld c, $00
    ld [bc], a
    dec b
    db $FD
    ld bc, $1600
    ld bc, $100D
    add hl, bc
    ld [de], a
    dec b
    db $FC
    ld [$0E15], sp
    inc d
    dec b
    ld [de], a
    dec sp
    db $FD
    add hl, hl
    nop
    rla
    add hl, bc
    inc c
    inc c
    nop
    ld [bc], a
    dec b
    db $FC
    ld [de], a
    dec b
    ld bc, $1904
    dec e
    db $FC
    ld c, $0F
    dec sp
    db $FD
    add hl, hl
    nop
    rla
    add hl, bc
    inc c
    inc c
    db $FC
    rlca
    inc c
    ld bc, $0C04
    add hl, de
    db $FC
    ld bc, $0303
    dec b
    db $10
    inc d
    nop
    inc d
    ld [$1401], sp
    db $FD
    inc b
    dec b
    inc de
    inc d
    add hl, bc
    ld c, $19
    inc e
    db $FD
    inc sp
    rrca
    dec sp
    nop
    dec d
    ld c, $14
    add hl, bc
    inc c
    db $FC
    add hl, de
    rrca
    dec d
    ld [de], a
    nop
    inc de
    rrca
    dec d
    inc c
    db $FC
    add hl, bc
    inc de
    nop
    inc de
    ld bc, $0516
    inc b
    dec sp
    db $FD
    dec d
    ld c, $14
    add hl, bc
    inc c
    nop
    ld bc, $0C0C
    db $FC
    inc d
    ld [$0005], sp
    dec b
    ld d, $09
    inc c
    db $FC
    inc b
    dec b
    inc de
    add hl, bc
    ld [de], a
    dec b
    inc de
    nop
    add hl, bc
    ld c, $FD
    inc d
    ld [$0005], sp
    rla
    rrca
    ld [de], a
    inc c
    inc b
    db $FC
    ld bc, $0512
    db $FC
    dec b
    jr jr_009_5C0F

    ld bc, $1315
    inc d
    dec b
    inc b
    dec sp
    db $FD

jr_009_5C0F:
    rlca
    rrca
    rrca
    inc b
    ld [bc], a
    add hl, de
    dec b
    dec sp
    db $FC
    ld [de], a
    dec d
    inc c
    dec b
    ld [de], a
    nop
    rrca
    ld b, $FC
    dec b
    ld d, $09
    inc c
    inc e
    db $FD
    daa
    rrca
    rrca
    inc b
    ld [bc], a
    add hl, de
    dec b
    dec sp
    db $FC
    cpl
    nop
    rla
    rrca
    dec b
    ld b, $15
    inc c
    db $FC
    jr nc, jr_009_5C4D

    add hl, bc
    ld c, $03
    dec b
    nop
    rrca
    ld b, $FD
    inc h
    ld bc, $0B12
    ld c, $05
    inc de
    inc de
    inc e
    rst $38

jr_009_5C4D:
    nop
    inc h
    ld [de], a
    ld bc, $1503
    inc c
    ld bc, $FC1B
    scf
    dec b
    inc c
    inc c
    dec sp
    nop
    rla
    dec b
    inc c
    inc c
    inc e
    db $FD
    add hl, sp
    rrca
    dec d
    nop
    ld bc, $0512
    db $FC
    ld bc, $1700
    rrca
    ld [de], a
    inc d
    ld [$FC19], sp
    ld b, $0F
    dec b
    inc e
    db $FD
    add hl, sp
    rrca
    dec d
    nop
    ld [$1601], sp
    dec b
    db $FC
    inc c
    ld bc, $1413
    dec b
    inc b
    nop
    dec c
    dec d
    inc bc
    ld [$0CFC], sp
    rrca
    ld c, $07
    dec b
    ld [de], a
    nop
    inc d
    ld [$0E01], sp
    db $FD
    dec c
    rrca
    inc de
    inc d
    inc e
    cp $01
    inc sp
    rrca
    ld c, $09
    ld bc, $FC1B
    jr nc, jr_009_5CBC

    dec b
    db $10
    ld bc, $0512
    db $FC
    add hl, de
    rrca
    dec d
    ld [de], a
    inc de
    dec b
    inc c
    ld b, $1D
    cp $00
    inc h

jr_009_5CBC:
    ld [de], a
    ld bc, $1503
    inc c
    ld bc, $FC1B
    cpl
    ld [$FC3B], sp
    add hl, hl
    dec a
    ld d, $05
    nop
    ld a, [bc]
    dec d
    inc de
    inc d
    db $FD
    ld [bc], a
    dec b
    dec b
    ld c, $00
    inc d
    rrca
    add hl, de
    add hl, bc
    ld c, $07
    db $FC
    rla
    add hl, bc
    inc d
    ld [$1900], sp
    rrca
    dec d
    db $FC
    inc de
    rrca
    nop
    ld b, $01
    ld [de], a
    inc e
    db $FD
    ld [hl+], a
    dec d
    inc d
    nop
    ld c, $0F
    rla
    db $FC
    add hl, bc
    inc d
    dec a
    inc de
    nop
    inc d
    add hl, bc
    dec c
    dec b
    db $FC
    inc d
    rrca
    nop
    rlca
    dec b
    inc d
    db $FD
    inc de
    dec b
    ld [de], a
    add hl, bc
    rrca
    dec d
    inc de
    dec e
    rst $38
    rst $38
    rst $38
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    rst $38
    rst $38
    inc b
    inc b
    inc b
    inc b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec bc
    add hl, bc
    dec bc
    dec bc
    ld a, [bc]
    dec bc
    ld d, $13
    dec l
    ld h, $5B
    ld c, h
    sbc a
    adc c
    rst $38
    rst $38
    rlca
    inc b
    jp $E3C2


    pop hl
    di
    ldh a, [$D1]
    ldh a, [rBCPD]
    ld hl, sp-$65
    ld hl, sp-$11
    db $FD
    rla
    db $FD
    ld l, a
    db $FD
    or e
    rst $18
    add hl, sp
    db $E3
    ld h, b
    ret nz

    ret nz

    add b
    nop
    add b
    rst $38
    rst $38
    ldh [$60], a
    ret nc

    ld d, b
    ld e, b
    ret c

    call c, $BCDC
    cp h
    xor [hl]
    cp [hl]
    xor a
    cp [hl]
    ld c, e
    ld a, a
    ld d, l
    ld a, a
    ld d, a
    ld a, l
    ld e, a
    ld [hl], c
    rst $38
    add c
    rlca
    nop
    inc bc
    nop
    ld bc, $FF00
    rst $38
    rst $18
    adc b
    ld h, [hl]
    ld b, h
    inc sp
    ld [hl+], a
    inc de
    ld [de], a
    add hl, bc
    ld bc, $0101
    ld bc, $8001
    nop
    add b
    nop
    ret nz

    nop
    ret nz

    nop
    ret nz

    nop
    add sp, -$80
    ld [$F980], a
    add b
    rst $38
    rst $38
    pop af
    ld h, c
    sbc l
    add hl, de
    rlca
    dec b
    ld bc, $A103
    ld bc, $0181
    add c
    ld bc, $81C1
    xor e
    pop bc
    ld l, a
    ld b, c
    ld [hl], a
    ld b, c
    rst $30
    ld hl, $21FF
    rst $38
    ld hl, $31F7
    add c
    add c
    add d
    add d
    add h
    add h
    adc c
    adc b
    sub e
    sub c
    sub e
    sub c
    and [hl]
    and e
    xor h
    and a
    db $DD
    add $D9
    adc $FB
    call c, $9DF2
    db $F4
    cp e
    ldh [$BF], a
    ldh [rIE], a
    pop bc
    rst $38
    ld [hl], $1B
    ld l, [hl]
    inc sp
    db $DB
    ld h, [hl]
    cp a
    call nz, $C43F
    ld [hl], a
    adc h
    rst $28
    rla
    sbc $33
    sbc a
    ld [hl], e
    cp [hl]
    ld h, e
    ccf
    pop hl
    ld e, a
    pop hl
    ld e, a
    db $E3
    or [hl]
    res 6, c
    rst $08
    ld h, e
    sbc a
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add h
    nop
    push bc
    add l
    db $E3
    jp Jump_009_4161


    pop bc
    ld h, b
    ret nz

    ret z

    ld e, h

jr_009_5E2A:
    ret z

    sub h
    sbc b
    or h
    sbc b
    inc l
    db $10
    ld bc, $0100
    nop
    nop
    nop
    nop
    nop
    inc bc
    rrca
    ccf
    ld e, h
    ld [hl], a
    cp b
    pop de
    ld h, b
    rst $38
    rst $38
    inc de
    db $D3
    sub l
    rla
    jr c, jr_009_5E57

    rrca
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ei
    ret nz

    rst $38
    ld b, b
    rst $38
    ld b, b

jr_009_5E57:
    rst $28
    jr nc, jr_009_5E88

    pop af
    and $39
    ld [c], a
    dec a
    ldh [$3F], a
    call nz, $F8FF
    rst $38
    ld [hl], b
    ccf
    and b
    ld a, a
    jr nz, jr_009_5E2A

    jr nz, jr_009_5EAC

    ld h, b
    ccf
    ret nz

    ld a, a
    rst $38
    ld de, $11FF
    rst $18
    ld sp, $31DF
    rst $18
    ld sp, $7997
    rla
    ld sp, hl
    inc de
    db $FD
    ld hl, $21FF
    rst $38
    ld hl, $79FF

jr_009_5E88:
    rst $38
    ld c, e
    db $ED
    ld [hl], a
    push bc
    cp a
    push de
    cp a
    push hl
    jp $86FF


    rst $38
    adc h
    rst $38
    db $DD
    cp $DA
    db $FD
    ldh a, [rIE]
    pop af
    rst $38
    db $E3
    rst $38
    db $E3
    rst $38
    rst $20
    cp $CB
    ld a, [$FBCA]
    jp nc, $D2F3

jr_009_5EAC:
    di
    pop af
    pop af
    rst $38
    rst $38
    ld l, e
    sbc a
    srl a
    sbc e
    ld [hl], a
    add hl, sp
    rst $20
    ld [hl], l
    rst $08
    db $EC
    sbc e
    call c, $983B
    ld [hl], a
    cp c
    ld [hl], a
    add hl, sp
    rst $30
    dec l
    db $EB
    ld c, l
    bit 1, l
    bit 0, l
    rst $00
    ld b, d
    jp $FFFF


    sbc b
    add b
    ld h, b
    ld h, b
    nop
    nop
    jr nz, jr_009_5EF9

    sbc h
    sbc [hl]
    add b
    ret nz

    jp nz, Jump_009_60EC

    ldh [rNR41], a
    ldh a, [$38]
    ldh a, [$2C]
    add sp, -$6A
    db $F4
    sub d
    di
    ld c, c
    ld a, c
    and h
    cp h
    rst $38
    rst $38
    ld bc, $0700
    nop
    ld b, $01
    ld c, $01

jr_009_5EF9:
    dec c
    inc bc
    ld e, $02
    dec e
    inc b
    dec de
    dec bc
    dec a
    rra
    cp $32
    rst $38
    call nz, $186B
    rst $30
    ld sp, $E7EF
    db $FC
    rst $18
    rst $38
    rst $38
    ldh [$5F], a
    ld l, l
    db $D3
    db $DD
    xor e
    rst $18
    or e
    cp [hl]
    ld [hl], a
    db $FD
    ld h, a
    ld sp, hl
    rst $08
    ei
    adc a
    or $1F
    xor $3F
    cp $5F
    rst $20
    rst $38
    rst $08
    rst $30
    rrca
    rst $20
    rrca
    add e
    rst $38
    rst $38
    cp a
    push hl
    ld a, e
    call $CD6B
    rst $38
    ld e, c
    di
    dec a
    ld h, a
    cp e
    call $0DF5
    db $FD
    rra
    rst $38
    ld h, a
    rst $38
    jp $AFFF


    pop af
    ccf
    pop hl
    ccf
    pop af
    sbc a
    ld sp, hl
    rst $38
    rst $38
    rst $38
    rst $38
    add b
    add b
    add e
    add e
    adc [hl]
    adc a
    cp $F5
    cp $88
    rst $38
    adc b
    sub a
    ld hl, sp-$6D
    db $FC
    and e
    db $FC
    and c
    cp $B0
    xor $D1
    rst $28
    ld sp, hl
    rst $00
    db $DD
    db $E3
    rst $08
    pop af
    rst $38
    rst $38
    rst $18
    ldh [rTAC], a
    sub b
    dec b
    nop
    inc bc
    inc bc
    rlca
    ld b, $8A
    ld [$10D0], sp
    jr nz, jr_009_5FA3

    ld h, b
    ld b, b
    ldh a, [$80]
    ld a, [$FE80]
    ld bc, $C13E
    dec c
    ei
    rra
    pop af
    rst $38
    rst $38
    push af
    ld c, $FF
    ccf
    jp hl


    pop bc
    db $FC
    nop
    cp $00
    rst $38
    nop
    ld a, c
    ld b, $2F
    rra

jr_009_5FA3:
    ld a, a
    ccf
    or a
    ld a, a
    ld a, c
    rst $38
    db $EC
    ld a, a
    ld a, [c]
    rst $38
    ld l, l
    ret nc

    ld h, b
    ret nz

    rst $38
    rst $38
    cp a
    pop bc
    cpl
    sbc $17
    ld hl, sp-$5B
    ld a, [$746B]
    db $E3
    inc a
    pop de
    rra
    ld [hl], e
    sbc [hl]
    rst $38
    adc h
    ld a, l
    jp z, $EB3E

    or d
    rst $38
    ld [de], a
    db $FD
    ld [$0070], sp
    nop
    rst $38
    rst $38
    ldh [$E0], a
    ld hl, sp+$18
    db $F4
    inc b
    jp nz, $A202

    ld b, d
    pop hl
    ld de, $E1F1
    ld hl, sp-$10
    sbc $F0
    cp a
    ld hl, sp-$11
    ld a, b
    rst $18
    ld a, b
    rst $18
    ld a, b
    cp e
    ld a, h
    cp e
    ld l, h
    rst $38
    rst $38
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $8101
    add c
    pop bc
    pop bc
    pop af
    or c
    db $FD
    adc l
    rst $38
    add e
    rst $38
    add c
    rst $38
    add c
    cp a
    pop bc
    rst $08
    ld a, [c]
    rst $00
    ld a, [$FBE6]
    and $FB
    and $FB
    and $FB
    ld [c], a
    rst $38
    db $E3
    db $FD
    db $E3
    db $FD
    pop hl
    cp $C9
    or $C9
    or $C9
    cp $89
    cp $94
    ei
    sub [hl]
    db $FD
    sbc a
    ld [hl], e
    rst $38
    inc hl
    ld a, [$BC22]
    ld h, [hl]
    db $FC
    ld b, h
    ld [hl], b
    call nz, $D460
    ld l, b
    call nc, $FC2C
    xor a
    rst $30
    and d
    db $FC
    xor l
    or $9F
    di
    dec e
    di
    inc e
    di
    rrca
    ld a, [$2060]
    jr nc, jr_009_6075

    jr c, jr_009_6067

    jr jr_009_6061

    inc c
    ld [$040C], sp
    inc c
    dec b
    add hl, bc
    inc b

jr_009_6061:
    inc c
    inc b
    adc h
    ret z

    ld a, d
    ld [hl], h

jr_009_6067:
    cp $7F
    pop bc

jr_009_606A:
    push af
    inc bc
    jr c, jr_009_606A

    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_009_6075:
    nop
    nop
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
    adc b
    ld b, b
    add e
    ld c, c
    inc de
    dec bc
    jp nz, $C752

    add h
    add $04
    and $04
    ld h, d
    ld b, $5F
    call nz, $C44F
    xor l
    ld h, [hl]
    ld e, d
    scf
    cpl
    rra
    scf
    rrca
    dec bc
    rrca
    ld sp, $C537
    di
    halt
    db $FD
    call nz, Call_000_17DE
    jp nz, Jump_000_06E3

    inc bc
    ld b, $03
    ld b, $03
    ld b, $9F
    pop hl
    rst $08
    ld [hl], c
    ld b, a
    ld a, c
    and e
    dec a
    pop de
    rra
    ld c, l
    adc a
    xor e
    jp $C1F5


    reti


    pop hl
    push hl
    ld sp, hl
    pop af
    rst $38
    ld e, e
    db $FD
    ld h, l
    ld a, a
    ld [hl], e
    ld a, a
    ld sp, hl
    ld a, a
    ld sp, hl
    ld e, a
    or [hl]
    db $FD
    and $FD
    and $FD
    call z, $8CFB
    ei
    sbc b
    rst $30
    cp b
    rst $30
    ldh a, [rIE]
    ldh a, [$EF]
    ld [c], a
    rst $38
    ldh [rIE], a
    push bc
    cp $C9
    rst $38
    reti


Jump_009_60EC:
    rst $38
    ei
    rst $38
    rst $38
    rst $38
    dec c
    ld sp, hl
    rrca
    ld sp, hl
    ld c, $F8
    daa
    db $FC
    ld h, a
    cp h
    ld h, h
    cp [hl]
    ld h, l
    cp [hl]
    ld l, l
    cp [hl]
    call $DF7E
    ld a, h
    sbc a
    db $FC
    cp a
    db $FD
    ld a, a
    ld sp, hl
    rst $38
    ei
    rst $38
    rst $30
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    ret nz

    add b
    ldh [$80], a
    ldh a, [$80]
    ld hl, sp-$80
    ld hl, sp-$80
    db $FC
    ret nz

    db $FC
    ldh [$FE], a
    ldh a, [rIE]
    db $FC
    rst $38
    rst $38
    rst $30
    rst $38
    ld sp, hl
    rst $38
    ldh a, [$F9]
    rst $38
    rst $38
    dec [hl]
    inc bc
    ld [hl], c
    inc bc
    ld a, b
    ld bc, $01FD
    jr jr_009_613B

jr_009_613B:
    nop
    ld [bc], a
    jr jr_009_615B

    jr nz, jr_009_6161

    inc c
    inc c
    jr jr_009_6145

jr_009_6145:
    ld bc, $8301
    ld bc, $C2FF
    db $FC
    db $FD
    nop
    add c
    rst $38
    rst $38
    rlca
    ld b, $8D
    add [hl]
    adc [hl]
    adc h
    rla
    add hl, de
    ld a, [de]
    rla

jr_009_615B:
    ccf
    cpl
    ld a, a
    ld a, a
    ld e, a
    ld e, a

jr_009_6161:
    sbc a
    sbc a
    sbc l
    sbc c
    sbc l
    add hl, de
    sbc c
    ld de, $2191
    add c
    ld h, c
    ld bc, $FFC1
    rst $38
    ld e, l
    ld l, a
    ld c, l
    ld [hl], a
    rst $20
    ei
    rst $20
    cp c
    inc sp
    db $DD
    inc sp
    db $DD
    cp c
    rst $08
    sbc c
    rst $28
    reti


    rst $28
    ld e, l
    rst $20
    dec l
    rst $30
    xor l
    rst $30
    and a
    rst $38
    rst $28
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    rst $38
    cp $41
    inc bc
    pop af
    inc bc
    db $FD
    inc bc
    db $FD
    inc bc
    rst $38
    rst $38
    ld [hl], l
    rst $18
    ld [$FF9D], a
    ld a, a
    add c
    add b
    rst $28
    add b
    cp a
    ret nz

    cp a
    ret nz

    rst $38
    rst $38
    ld [hl], a
    db $DD
    call z, Call_000_00BB
    db $FC
    nop
    ld c, $00
    rst $38
    nop
    inc bc
    nop
    rst $38
    ld bc, $0106
    ld b, $F9
    ld b, $3E
    ld bc, $0040
    db $FC
    inc bc
    add b
    nop
    db $FC
    add e
    ld b, b
    ret nz

    add b

jr_009_61CE:
    add b
    rst $38
    nop
    inc h
    cp $12
    rra
    ld a, [hl+]
    rrca
    ld l, l
    rlca
    cp [hl]
    ld b, e
    dec de
    push hl
    ld bc, $03FF
    rst $38
    add hl, bc
    rst $38
    add hl, bc
    rrca
    adc c
    rrca
    adc d
    ld c, $EB
    ld c, $FB
    ld c, $16
    rst $38
    ld a, [hl-]
    rst $38
    add b
    rst $38
    add c
    add b
    sbc d
    add b
    cp l
    add b
    rst $30
    nop
    cp $01
    jr nc, jr_009_61CE

Jump_009_61FF:
    add b
    rst $38
    db $FC
    ld a, a
    xor $F7
    dec l
    dec [hl]
    ld l, $34
    or a
    inc e
    or $1B
    inc sp

jr_009_620E:
    db $DD
    rrca
    rst $38
    ei
    ld h, d
    rst $10
    ld [hl], h
    sbc a
    rst $28
    ld a, c
    cp b
    ld l, d
    ldh [$5E], a
    pop bc
    jr nc, jr_009_620E

    ldh a, [rIE]
    ld c, $F9
    inc c
    dec bc
    inc c
    ei
    dec c
    dec bc
    dec bc
    rst $38
    dec c
    dec c
    ld bc, $FF01
    nop
    ld a, $01
    ld b, b
    nop
    db $FC
    inc bc
    add b
    nop
    db $FC
    inc bc
    ret nz

    nop
    ret nz

    nop
    rst $38
    nop
    db $E3
    db $E3
    scf
    push de
    rst $18
    rst $28
    db $EC
    ld [hl], h
    db $FC
    ld a, h
    ret nc

    or b
    ret nc

    ldh a, [$78]
    ld a, b
    dec e
    rst $30
    sbc a
    rra
    ld b, e
    inc bc
    sbc d
    inc bc
    rst $18
    ld [bc], a
    ld a, l
    add [hl]
    dec d
    xor $07
    rst $38
    nop
    rst $38
    ld bc, $1A00
    nop
    cp l
    add b
    rst $30
    add b
    cp $81
    or b
    rst $08
    add b
    rst $38
    cp l
    db $EB
    dec [hl]
    ei
    cp l
    db $D3
    sbc [hl]
    jp hl


    ld e, [hl]
    jp hl


    cp $7D
    or $45
    cp $45
    sub l
    pop af
    ld a, a
    db $FD
    or a
    ld a, a
    jp nc, $D63F

    dec sp
    ld e, [hl]
    cp e
    cp $2F
    rst $38
    ld b, [hl]
    ld de, $13AD
    xor a
    ld [de], a
    xor a
    inc de
    xor [hl]
    rla
    xor [hl]
    rla
    xor h
    rla
    xor h
    ld e, $A9
    ld hl, sp+$3C
    ld h, h
    and $F0
    or $D8
    ld l, b
    inc a
    db $F4
    ld e, d
    cp $95

jr_009_62AE:
    rst $30
    and e
    db $E3
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    ld bc, $0301
    inc bc
    inc bc
    ld [bc], a
    inc bc
    inc bc
    ld bc, $0E01
    rrca
    ld bc, $80FE
    inc bc
    ld e, b
    ld bc, $01BC
    xor $01
    ld a, [hl]
    add c
    inc c
    di
    nop
    rst $38
    nop
    rst $38
    ld bc, $9A00
    nop
    cp l
    nop
    rst $30
    nop
    cp $01
    jr nc, jr_009_62AE

    nop
    rst $38
    nop
    ld a, a
    ld bc, $1AC0
    add b
    dec a
    add b
    ld [hl], a
    add b
    ld a, [hl]
    add c
    jr nc, @-$2F

    nop
    rst $38
    ld a, h
    cp h
    inc a
    db $FC
    halt
    xor $AA
    or $DE
    or d
    sub $FA
    xor $DA
    xor $FA
    sbc h
    rst $38
    inc a
    rst $38
    ld l, [hl]
    rst $38
    db $DD
    rst $28
    ret c

    ld l, [hl]
    ld d, c
    cp $33
    db $FD
    sub c
    db $FD
    ld de, $11AD
    xor l
    ld [de], a
    xor a
    inc de
    xor a
    inc de
    xor [hl]
    ld [de], a
    xor a
    ld de, $11AD
    xor l
    nop
    nop
    nop
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

    ldh [$F0], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0301
    ld [bc], a
    ld [$1818], sp
    ld [$0818], sp
    jr jr_009_6361

    db $10
    jr jr_009_6374

    inc [hl]
    ld l, h
    ld [hl], d
    pop de
    rst $38
    jr nz, @-$3E

    add b
    ld b, b
    add b
    ld b, b
    add b
    ld b, b
    add b
    ld b, b
    add b
    ld b, b
    add b

jr_009_635E:
    ld b, b
    add b
    ld b, b

jr_009_6361:
    ret nc

    cpl
    nop
    ld hl, sp-$6D
    ld [$08F7], sp
    rst $30
    ld [$08F3], sp
    di
    ld [$08F7], sp
    ld bc, $60F4

jr_009_6374:
    rra
    ld [c], a
    db $10
    rst $20
    db $10
    rst $28
    db $10
    rst $20
    db $10
    rst $20
    db $10
    rst $20
    stop
    inc bc
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    ld bc, $0002
    ld [bc], a
    ld bc, $0002
    ld [bc], a
    ld [$1818], sp
    ld [$0818], sp
    jr jr_009_63B1

    db $10
    jr jr_009_63C4

    inc [hl]
    ld l, h
    ld [hl], d
    ld d, c

jr_009_63A0:
    ld a, a
    ldh [$E0], a
    or b
    ldh a, [rBCPS]
    xor b
    ldh [$A0], a
    ldh [$C0], a
    ldh a, [rSVBK]
    add sp, $38
    db $F4
    inc a

jr_009_63B1:
    inc bc
    inc bc
    ccf
    ccf
    dec e
    ld de, $181E
    ccf
    ccf
    ld l, d
    ld d, a
    ld a, [c]
    cp a
    jp z, $107F

    xor h
    db $10

jr_009_63C4:
    xor h
    db $10
    xor h
    db $10
    xor h
    db $10
    xor h
    db $10
    xor h
    db $10
    xor h
    ld de, $00AD
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    ld b, b
    jr nz, jr_009_635E

    jr nz, jr_009_63A0

    jr nz, @-$3E

jr_009_63E2:
    inc h
    ret z

    inc h
    ret z

    inc h
    jp z, $C024

    daa
    ret nc

    jr z, @-$2B

    jr z, @-$37

    jr z, jr_009_644D

    inc h
    ld c, e
    inc h
    ld c, c
    inc h
    ld b, e
    inc h
    dec de
    db $E4
    ld b, c
    inc d
    db $E3
    inc d
    pop hl
    inc d
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
    nop
    inc b
    ld bc, $0304
    inc b
    ld h, d
    ld a, [hl]
    jr c, @+$3E

    jr jr_009_6427

    jr jr_009_6429

    ld [$0818], sp
    jr jr_009_6426

    jr jr_009_6438

    jr jr_009_63E2

    inc h
    ret z

    inc h
    ret z

jr_009_6426:
    inc h

jr_009_6427:
    ret nz

    inc h

jr_009_6429:
    ret z

    inc h
    ret z

    inc h
    ret nz

    inc h
    ret z

    inc h
    ld c, e
    inc h
    add hl, bc
    inc h
    ld b, e
    inc h
    ld c, c

jr_009_6438:
    inc h
    ld b, c
    inc h
    inc bc
    inc h
    dec bc
    inc h
    ld c, e
    inc h
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

jr_009_644D:
    inc a
    inc a
    nop
    jr jr_009_6489

    dec a
    ccf
    dec [hl]
    rst $38
    push de
    rst $20
    push af
    ld a, e
    adc l
    push af
    ld sp, hl
    sub $02
    db $FC
    db $FC
    nop
    nop
    nop
    nop
    ld a, [hl]
    ld a, [hl]
    or l
    jp Jump_000_39FF


    push af
    db $ED
    dec l
    di
    ld e, $1E
    nop
    nop
    nop
    nop
    ld a, b
    ld a, b
    and h
    rst $08
    rst $28
    or a
    cp a
    sbc h
    xor l
    jp Jump_009_7E7E


    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38

jr_009_6489:
    nop
    rst $38
    db $EB
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
    rst $38
    rst $38
    nop
    rst $38
    rst $10
    nop
    rst $38
    rst $38
    nop
    nop
    ld a, b
    db $FC
    db $FC
    xor h
    cp $AB
    rst $20
    xor a
    rst $18
    or c
    xor a
    sbc a
    ld l, e
    ld b, c
    ld a, $3F
    inc e
    ld d, $2C
    ld [hl], $3E
    ld l, $3D
    dec hl
    dec hl
    dec l
    ccf
    dec h
    dec h
    inc sp
    ld e, $1E
    ld e, $1E
    dec l
    inc sp
    ccf
    add hl, hl
    dec [hl]
    dec l
    cpl
    dec [hl]
    rra
    dec e
    dec c
    dec de
    ld c, $1A
    ld l, b
    ld e, b
    ld l, b
    ld e, b
    ld c, b
    ld e, b
    ld l, b
    ld e, b
    ld l, b
    ld e, b
    ld c, b
    ld e, b
    ld l, b
    ld e, b
    ld l, b
    ld e, b
    ld [hl], b
    ld e, b
    or b
    ret c

    ld hl, sp-$48
    db $F4
    xor h
    xor h
    or h
    db $FC
    sub h
    or h
    call z, Call_009_7878
    ld d, $1A
    ld d, $1A
    ld [de], a
    ld a, [de]
    ld d, $1A
    ld d, $1A
    ld [de], a
    ld a, [de]
    ld d, $1A
    ld d, $1A
    ld a, b
    ld a, b
    and h
    call z, $A4FC
    call nc, $BCB4
    call nc, Call_009_747C
    inc [hl]
    ld l, h
    jr c, @+$6A

    ld a, h
    db $FC
    sub $82
    push af
    ld sp, hl
    ei
    adc l
    rst $20
    push af
    ld a, a
    push de
    ccf
    dec [hl]
    ld e, $3F
    nop
    nop
    rst $38
    rst $38
    db $EB
    nop
    nop
    rst $38
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
    rst $38
    rst $38
    rst $10
    nop
    nop
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, [hl]
    ld a, [hl]
    or l
    jp Jump_000_39FD


    rst $30
    db $ED
    dec h
    di
    ld e, $1E
    nop
    nop
    nop
    nop
    ld a, b
    ld a, b
    or h
    rst $08
    xor a
    or a
    rst $38
    sbc h
    xor l
    jp Jump_009_7E7E


    nop
    nop
    nop
    nop
    ccf
    ccf
    ld l, e
    ld b, b
    xor a
    sbc a
    sbc $B1
    rst $20
    xor a
    rst $38
    xor e
    db $FC
    xor h
    db $EC
    cp h
    ld [bc], a
    ld bc, $0300
    ld bc, $0102
    ld b, $01
    ld b, $00
    ld b, $00
    ld c, $00
    ld c, $00
    stop
    stop
    stop
    jr jr_009_658A

jr_009_658A:
    jr jr_009_65AC

    jr jr_009_65AE

    jr jr_009_6590

jr_009_6590:
    jr c, @+$05

    cp $06
    cp $3C
    ld a, b
    ldh a, [$E0]
    ld b, b
    ret nz

    ld b, b
    ret nz

    ld b, b
    ret nz

    ret nz

    add b
    ret nc

    ld h, e
    ld [hl], h
    ld a, b
    dec a
    ld e, $0F
    rlca
    inc bc
    ld [bc], a
    inc bc

jr_009_65AC:
    ld [bc], a
    inc bc

jr_009_65AE:
    ld [bc], a
    inc bc
    ld bc, $0800
    nop
    ld [$0800], sp
    nop
    jr jr_009_65BA

jr_009_65BA:
    jr jr_009_65C0

    jr jr_009_65C2

    jr jr_009_65C0

jr_009_65C0:
    inc e
    ld b, b

jr_009_65C2:
    add b
    nop
    ret nz

    add b
    ld b, b
    add b
    ld h, b
    add b
    ld h, b
    nop
    ld h, b
    nop
    ld [hl], b
    nop
    ld [hl], b
    db $10
    xor h
    db $10
    xor h
    db $10
    xor h
    db $10
    xor h
    db $10
    xor h
    db $10
    xor h
    db $10
    xor h
    db $10
    xor h
    add hl, hl
    nop
    add hl, hl
    nop
    add hl, hl
    nop
    add hl, hl
    nop
    add hl, hl
    nop
    add hl, hl
    nop
    add hl, hl
    nop
    add hl, hl
    nop
    dec bc
    db $FD
    ei
    dec c
    ei
    dec c
    ei
    dec c
    dec bc
    db $FD
    db $DB
    dec l
    db $DB
    dec l
    db $DB
    dec l
    ret nc

    cp a
    sbc $B1
    sbc $B1
    sbc $B1
    ret nc

    cp a
    db $DB
    or h
    db $DB
    or h
    db $DB
    or h
    rst $38
    cp $41
    inc bc
    pop af
    inc bc
    db $FD
    inc bc
    db $FD
    inc bc
    rst $38
    rst $38
    ld [hl], l
    rst $18
    ld [$FF9D], a
    ld a, a
    add c
    add b
    rst $28
    add b
    cp a
    ret nz

    cp a
    ret nz

    rst $38
    rst $38
    ld [hl], a
    db $DD
    call z, Call_000_3EBB
    ld bc, $0040
    db $FC
    inc bc
    add b
    nop
    db $FC
    add e
    ld b, b
    ret nz

    add b
    add b
    rst $38
    nop
    inc h
    cp $12
    rra
    ld a, [hl+]
    rrca
    ld l, l
    rlca
    cp [hl]
    ld b, e
    dec de
    push hl

jr_009_664D:
    ld bc, $03FF
    rst $38
    add hl, bc
    rst $38
    add hl, bc
    rrca
    adc c
    rrca
    adc d
    ld c, $EB
    ld c, $FB
    ld c, $16
    rst $38
    ld a, [hl-]
    rst $38
    cp b
    ccf
    jr z, jr_009_664D

    ld e, b
    add sp, -$24
    add sp, -$51
    cp b
    xor l
    or [hl]
    and [hl]
    ei
    sbc a
    rst $38
    ld hl, sp+$7F
    or b
    rst $38
    inc a
    rst $38
    ld h, e
    cp a
    ld l, [hl]
    or c
    ld a, a
    ldh [$DF], a
    ld l, [hl]
    pop af
    rst $18
    ld [hl-], a
    ccf
    inc sp
    ccf
    cpl
    ccf
    ld e, e
    ld l, a
    ld [hl], d
    ld e, a
    and $BF
    xor $BB
    db $FD
    cp e
    nop
    db $FC
    nop
    ld c, $00
    rst $38
    nop
    inc bc
    nop
    rst $38
    ld bc, $0106
    ld b, $F9
    ld b, $3E
    ld bc, $0040
    db $FC
    inc bc
    add b
    nop
    db $FC
    inc bc
    ret nz

    nop
    ret nz

    nop
    rst $38
    nop
    db $E3
    db $E3
    scf
    push de
    rst $18
    rst $28
    db $EC
    ld [hl], h
    db $FC
    ld a, h
    ret nc

    or b
    ret nc

    ldh a, [$78]
    ld a, b
    dec e
    rst $30
    sbc a
    rra
    ld b, e
    inc bc
    sbc d
    inc bc
    rst $18
    ld [bc], a
    ld a, l
    add [hl]
    dec d

jr_009_66CE:
    xor $07
    rst $38
    add b
    rst $38
    add c
    add b
    sbc d
    add b
    db $FD
    ret nz

    ld [hl], a
    ret nz

Call_009_66DB:
    cp $41
    ret nc

    rst $28
    ldh [rIE], a
    ld e, [hl]
    rst $20
    adc a
    rst $30
    add h
    rst $38
    adc $FD
    or a
    cp $1B
    rst $10
    jr c, jr_009_66CE

    ld a, a
    cp a
    add hl, sp
    cpl
    inc sp
    ccf
    daa
    ccf
    ld c, l
    ld a, a
    ld a, e
    ld a, l
    ld a, e
    ld c, l
    ld c, d
    ld a, a
    ld h, $3F
    ld hl, sp+$3C
    ld h, h
    and $F0
    or $D8
    ld l, b
    inc a
    db $F4
    ld e, d
    cp $95

jr_009_670E:
    rst $30
    and e
    db $E3
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    ld bc, $0301
    inc bc
    inc bc
    ld [bc], a
    inc bc
    inc bc
    ld bc, $0E01
    rrca
    ld bc, $80FE
    inc bc
    ld e, b
    ld bc, $01BC
    xor $01
    ld a, [hl]
    add c
    inc c
    di
    nop
    rst $38
    nop
    rst $38
    ld bc, $9A00
    nop
    cp l
    nop
    rst $30
    nop
    cp $01
    jr nc, jr_009_670E

    nop
    rst $38
    nop
    ld a, a
    ld bc, $1AC0
    add b
    dec a
    add b
    ld [hl], a
    add b
    ld a, [hl]
    add c
    jr nc, @-$2F

    nop
    rst $38
    nop
    nop

jr_009_6753:
    ld a, h
    ld a, h
    or $FE
    xor l
    dec [hl]
    call c, $FC14
    ld hl, sp+$5E
    xor $5D
    rst $20
    nop
    nop
    nop
    nop
    rlca
    rlca
    inc bc
    ld [bc], a
    inc bc
    inc bc
    rlca
    rlca
    dec c

jr_009_676E:
    ld a, [bc]
    ld e, $17
    nop
    nop
    nop
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

    ldh [$F0], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0301
    ld [bc], a
    jr nz, jr_009_6753

    add b
    ld b, b
    add b
    ld b, b
    add b
    ld b, b
    add b
    ld b, b
    add b
    ld b, b
    add b
    ld b, b
    add b
    ld b, b
    ret nc

    cpl
    nop
    ld hl, sp-$6D
    ld [$08F7], sp
    rst $30
    ld [$08F3], sp
    di
    ld [$08F7], sp
    ld bc, $60F4
    rra
    ld [c], a
    db $10
    rst $20
    db $10
    rst $28
    db $10
    rst $20
    db $10
    rst $20
    db $10
    rst $20
    stop
    inc bc
    nop
    ld [bc], a
    nop
    ld [bc], a

jr_009_67C7:
    nop
    ld [bc], a
    ld bc, $0002
    ld [bc], a
    ld bc, $0002
    ld [bc], a

jr_009_67D1:
    ld [$1818], sp
    ld [$0818], sp
    jr @+$1A

    db $10
    jr jr_009_6804

    inc [hl]
    ld l, h
    ld [hl], d
    pop de
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
    ret nz

    ld b, b
    jr nz, jr_009_676E

    jr nz, @-$3E

    jr nz, @-$3E

jr_009_67F2:
    inc h
    ret z

    inc h
    ret z

    inc h
    jp z, $C024

    daa
    ret nc

    jr z, jr_009_67D1

    jr z, jr_009_67C7

    jr z, jr_009_685D

    inc h
    ld c, e

jr_009_6804:
    inc h
    ld c, c
    inc h
    ld b, e
    inc h
    dec de
    db $E4
    ld b, c
    inc d
    db $E3
    inc d
    pop hl
    inc d
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
    nop
    inc b
    ld bc, $0304
    inc b
    ld h, d
    ld a, [hl]
    jr c, @+$3E

    jr jr_009_6837

    jr jr_009_6839

    ld [$0818], sp
    jr jr_009_6836

    jr jr_009_6848

    jr jr_009_67F2

    inc h
    ret z

    inc h
    ret z

jr_009_6836:
    inc h

jr_009_6837:
    ret nz

    inc h

jr_009_6839:
    ret z

    inc h
    ret z

    inc h
    ret nz

    inc h
    ret z

    inc h
    ld c, e
    inc h
    add hl, bc
    inc h
    ld b, e
    inc h
    ld c, c

jr_009_6848:
    inc h
    ld b, c
    inc h
    inc bc
    inc h
    dec bc
    inc h
    ld c, e
    inc h
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

jr_009_685D:
    inc a
    inc a
    nop
    jr jr_009_6899

    dec a
    ccf
    dec [hl]
    rst $38
    push de
    rst $20
    push af
    ld a, e
    adc l
    push af
    ld sp, hl
    sub $02
    db $FC
    db $FC
    nop
    nop
    nop
    nop
    ld a, [hl]
    ld a, [hl]
    or l
    jp Jump_000_39FF


    push af
    db $ED
    dec l
    di
    ld e, $1E
    nop
    nop
    nop
    nop
    ld a, b
    ld a, b
    and h
    rst $08
    rst $28
    or a
    cp a
    sbc h
    xor l
    jp Jump_009_7E7E


    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38

jr_009_6899:
    nop
    rst $38
    db $EB
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
    rst $38
    rst $38
    nop
    rst $38
    rst $10
    nop
    rst $38
    rst $38
    nop
    nop
    ld a, b
    db $FC
    db $FC
    xor h
    cp $AB
    rst $20
    xor a
    rst $18
    or c
    xor a
    sbc a
    ld l, e
    ld b, c
    ld a, $3F
    inc e
    ld d, $2C
    ld [hl], $3E
    ld l, $3D
    dec hl
    dec hl
    dec l
    ccf
    dec h
    dec h
    inc sp
    ld e, $1E
    ld e, $1E
    dec l
    inc sp
    ccf
    add hl, hl
    dec [hl]
    dec l
    cpl
    dec [hl]
    rra
    dec e
    dec c
    dec de
    ld c, $1A
    ld l, b
    ld e, b
    ld l, b
    ld e, b
    ld c, b
    ld e, b
    ld l, b
    ld e, b
    ld l, b
    ld e, b
    ld c, b
    ld e, b
    ld l, b
    ld e, b
    ld l, b
    ld e, b
    ld [hl], b
    ld e, b
    or b
    ret c

    ld hl, sp-$48
    db $F4
    xor h
    xor h
    or h
    db $FC
    sub h
    or h
    call z, Call_009_7878
    ld d, $1A
    ld d, $1A
    ld [de], a
    ld a, [de]
    ld d, $1A
    ld d, $1A
    ld [de], a
    ld a, [de]
    ld d, $1A
    ld d, $1A
    ld a, b
    ld a, b
    and h
    call z, $A4FC
    call nc, $BCB4
    call nc, Call_009_747C
    inc [hl]
    ld l, h
    jr c, @+$6A

    ld a, h
    db $FC
    sub $82
    push af
    ld sp, hl
    ei
    adc l
    rst $20
    push af
    ld a, a
    push de
    ccf
    dec [hl]
    ld e, $3F
    nop
    nop
    rst $38
    rst $38
    db $EB
    nop
    nop
    rst $38
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
    rst $38
    rst $38
    rst $10
    nop
    nop
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, [hl]
    ld a, [hl]
    or l
    jp Jump_000_39FD


    rst $30
    db $ED
    dec h
    di
    ld e, $1E
    nop
    nop
    nop
    nop
    ld a, b
    ld a, b
    or h
    rst $08
    xor a
    or a
    rst $38
    sbc h
    xor l
    jp Jump_009_7E7E


    nop
    nop
    nop
    nop
    ccf
    ccf
    ld l, e
    ld b, b
    xor a
    sbc a
    sbc $B1
    rst $20
    xor a
    rst $38
    xor e
    db $FC
    xor h
    db $EC
    cp h
    ld [bc], a
    ld bc, $0300
    ld bc, $0102
    ld b, $01
    ld b, $00
    ld b, $00
    ld c, $00
    ld c, $00
    stop
    stop
    stop
    jr jr_009_699A

jr_009_699A:
    jr jr_009_69BC

    jr jr_009_69BE

    jr jr_009_69A0

jr_009_69A0:
    jr c, @+$05

    cp $06
    cp $3C
    ld a, b
    ldh a, [$E0]
    ld b, b
    ret nz

    ld b, b
    ret nz

    ld b, b
    ret nz

    ret nz

    add b
    ret nc

    ld h, e
    ld [hl], h
    ld a, b
    dec a
    ld e, $0F
    rlca
    inc bc
    ld [bc], a
    inc bc

jr_009_69BC:
    ld [bc], a
    inc bc

jr_009_69BE:
    ld [bc], a
    inc bc
    ld bc, $0800
    nop
    ld [$0800], sp
    nop
    jr jr_009_69CA

jr_009_69CA:
    jr jr_009_69D0

    jr jr_009_69D2

    jr jr_009_69D0

jr_009_69D0:
    inc e
    ld b, b

jr_009_69D2:
    add b
    nop
    ret nz

    add b
    ld b, b
    add b
    ld h, b
    add b
    ld h, b
    nop
    ld h, b
    nop
    ld [hl], b
    nop
    ld [hl], b
    db $10
    xor h
    db $10
    xor h
    db $10
    xor h
    db $10
    xor h
    db $10
    xor h
    db $10
    xor h
    db $10
    xor h
    db $10
    xor h
    add hl, hl
    nop
    add hl, hl
    nop
    add hl, hl
    nop
    add hl, hl
    nop
    add hl, hl
    nop
    add hl, hl
    nop
    add hl, hl
    nop
    add hl, hl
    nop
    dec bc
    db $FD
    ei
    dec c
    ei
    dec c
    ei
    dec c
    dec bc
    db $FD
    db $DB
    dec l
    db $DB
    dec l
    db $DB
    dec l
    ret nc

    cp a
    sbc $B1
    sbc $B1
    sbc $B1
    ret nc

    cp a
    db $DB
    or h
    db $DB
    or h
    db $DB
    or h
    dec de
    ld a, [de]
    dec de
    ld a, [de]
    dec de
    ld a, [de]
    dec de
    ld a, [de]
    dec de
    ld a, [de]
    dec de
    ld a, [de]
    dec de
    ld a, [de]
    dec de
    ld a, [de]
    dec de
    ld a, [de]
    dec de
    ld a, [de]
    ld h, c
    ld h, b
    nop
    ld e, a
    ld e, [hl]
    ld e, l
    ld e, h
    nop
    nop
    ld e, e
    ld e, d
    nop
    nop
    ld e, c
    ld e, b
    ld e, a
    ld e, [hl]
    nop
    ld h, c
    ld h, b
    ld d, a
    ld d, [hl]
    ld d, l
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, e
    ld d, e
    ld d, e
    ld d, d
    ld d, c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, b
    ld c, a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, b
    ld c, [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, b
    ld c, [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, b
    ld c, [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, b
    ld c, [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, l
    ld c, [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, h
    ld c, e
    ld c, d
    ld c, d
    ld c, d
    ld c, d
    ld c, d
    ld c, d
    ld c, d
    ld c, d
    ld c, d
    ld c, d
    ld c, d
    ld c, d
    ld c, d
    ld c, d
    ld c, d
    ld c, c
    ld c, b
    ld b, a
    ld b, [hl]
    ld h, c
    ld h, b
    nop
    ld e, a
    ld e, [hl]
    nop
    nop
    nop
    nop
    ld b, h
    ld b, e
    nop
    nop
    nop
    nop
    ld e, a
    ld e, [hl]
    nop
    ld h, c
    ld h, b
    ld h, c
    ld h, b
    nop
    ld e, a
    ld e, [hl]
    nop
    nop
    ld b, d
    ld b, c
    ld b, b
    ccf
    ld a, $42
    nop
    nop
    ld e, a
    ld e, [hl]
    nop
    ld h, c
    ld h, b
    ld h, c
    ld h, b
    nop
    ld e, a
    dec a
    inc a
    dec sp
    ld a, [hl-]
    add hl, sp
    jr c, jr_009_6B67

    ld [hl], $35
    inc [hl]
    inc sp
    ld e, a
    ld e, [hl]
    nop
    ld h, c
    ld h, b
    ld h, c
    ld h, b
    nop
    ld e, a
    ld [hl-], a
    ld sp, $2F30
    ld l, $2E
    ld l, $2E
    dec l
    inc l
    dec hl
    ld e, a
    ld e, [hl]
    nop
    ld h, c
    ld h, b
    ld h, c
    ld h, b
    nop
    ld e, a
    ld a, [hl+]
    add hl, hl
    jr z, jr_009_6B7C

    ld l, $2E
    ld l, $2E
    ld l, $26
    dec h
    ld e, a
    ld e, [hl]
    nop
    ld h, c
    ld h, b
    ld h, c
    ld h, b
    nop
    inc h
    inc hl
    ld [hl+], a

jr_009_6B67:
    ld hl, $2E20
    ld l, $2E
    ld l, $2E
    rra
    ld e, $1D
    inc e
    nop
    ld h, c
    ld h, b
    dec de
    ld a, [de]
    dec de
    ld a, [de]
    dec de
    ld a, [de]
    dec de

jr_009_6B7C:
    ld a, [de]
    dec de
    ld a, [de]
    dec de
    ld a, [de]
    dec de
    ld a, [de]
    dec de
    ld a, [de]
    dec de
    ld a, [de]
    dec de
    ld a, [de]
    dec de
    ld a, [de]
    dec de
    ld a, [de]
    dec de
    ld a, [de]
    dec de
    ld a, [de]
    dec de
    ld a, [de]
    dec de
    ld a, [de]
    dec de
    ld a, [de]
    dec de
    ld a, [de]
    dec de
    ld a, [de]
    dec de
    ld a, [de]
    ld e, d
    ld e, c
    nop
    ld e, b
    ld d, a
    ld d, [hl]
    ld d, l
    nop
    nop
    ld d, h
    ld d, e
    nop
    nop
    ld d, d
    ld d, c
    ld e, b
    ld d, a
    nop
    ld e, d
    ld e, c
    ld d, b
    ld c, a
    ld c, [hl]
    ld c, l
    ld c, l
    ld c, l
    ld c, l
    ld c, l
    ld c, l
    ld c, l
    ld c, l
    ld c, l
    ld c, l
    ld c, l
    ld c, l
    ld c, l
    ld c, h
    ld c, h
    ld c, h
    ld c, e
    ld c, d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld b, a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld b, a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld b, a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld b, a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld b, h
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, d
    ld b, c
    ld b, b
    ccf
    ld e, d
    ld e, c
    nop
    ld e, b
    ld d, a
    nop
    nop
    nop
    nop
    dec a
    inc a
    nop
    nop
    nop
    nop
    ld e, b
    ld d, a
    nop
    ld e, d
    ld e, c
    ld e, d
    ld e, c
    nop
    ld e, b
    ld d, a
    nop
    nop
    dec sp
    ld a, [hl-]
    add hl, sp
    jr c, jr_009_6CBC

    dec sp
    nop
    nop
    ld e, b
    ld d, a
    nop
    ld e, d
    ld e, c
    ld e, d
    ld e, c
    nop
    ld e, b
    ld d, a
    nop
    nop
    ld [hl], $35
    inc [hl]
    inc sp
    ld [hl-], a
    ld [hl], $31
    jr nc, jr_009_6CF5

    ld d, a
    nop
    ld e, d
    ld e, c
    ld e, d
    ld e, c
    nop
    ld e, b
    ld d, a
    cpl
    ld l, $2D
    inc l
    inc l
    inc l
    inc l
    dec hl
    ld a, [hl+]
    add hl, hl
    ld e, b
    ld d, a
    nop
    ld e, d
    ld e, c
    ld e, d
    ld e, c
    nop
    ld e, b
    ld d, a
    jr z, jr_009_6CE3

jr_009_6CBC:
    ld h, $2C
    inc l
    inc l
    inc l
    inc l
    dec h
    inc h
    ld e, b
    ld d, a
    nop
    ld e, d
    ld e, c
    ld e, d
    ld e, c
    nop
    inc hl
    ld [hl+], a
    ld hl, $1F20
    inc l
    inc l
    inc l
    inc l
    inc l
    ld e, $1D
    inc e
    ld [hl+], a
    nop
    ld e, d
    ld e, c
    dec de
    ld a, [de]
    dec de
    ld a, [de]
    dec de
    ld a, [de]

jr_009_6CE3:
    dec de
    ld a, [de]
    dec de
    ld a, [de]
    dec de
    ld a, [de]
    dec de
    ld a, [de]
    dec de
    ld a, [de]
    dec de
    ld a, [de]
    dec de
    ld a, [de]
    rst $38
    rst $38
    ret c

    ret c

jr_009_6CF5:
    cp c
    sbc c
    or c
    or c
    or l
    or c
    add sp, -$20
    ldh [$EA], a
    ld hl, sp-$16
    cp $E9
    rst $28
    or l
    db $E4
    cp a
    ld a, [c]
    rst $18
    ld a, [$FAEF]
    cp a
    rst $18
    sbc d
    ei
    sbc h
    rst $38
    rst $38
    rst $20
    ei
    sbc [hl]
    rst $30
    call z, $ACF7
    or $DC
    or $FE
    rst $20
    ld h, [hl]
    ld [hl], e
    ld [hl], e

jr_009_6D22:
    ld [hl], e
    inc sp
    ld sp, $B999
    jp hl


    sbc b
    ld c, b
    ld hl, sp+$48
    ld hl, sp+$58
    ld hl, sp-$47
    pop de
    rst $38
    rst $38
    cp $33
    db $FC
    and a
    ld sp, hl
    adc a
    adc d
    ld a, a
    db $FD
    rlca
    dec b
    inc bc
    inc bc
    ld bc, $8000
    nop
    add b
    add d
    ret nz

    add a
    ret nz

    add e
    call nz, $C281
    add b
    pop hl
    and b
    ret nc

    rst $38
    rst $38
    ld a, a
    rst $38
    rst $08
    rst $38
    scf
    rst $38
    rst $00
    rst $38
    sbc a
    ei
    ccf
    db $E3
    jp Jump_000_1303


    inc bc
    ld de, $2301
    ld bc, $2046
    add b
    ld b, h
    inc c
    add b
    ld [$1F10], sp
    jr nz, @+$01

    rst $38

jr_009_6D73:
    cp $86
    and $81
    jp nz, $C181

    adc b
    add b
    jr nz, jr_009_6D22

    inc h
    and h
    inc h
    and d
    inc h
    jp nc, $D936

    inc sp
    db $EC
    sbc c
    xor $D8
    or $6E
    dec e
    ld de, $0C0E
    rst $38
    rst $38
    rst $18
    cp a
    rst $18
    cpl
    ld e, a
    and a
    ld b, e
    or a
    inc de
    bit 3, c
    adc e
    call $6545
    ld h, e
    ld [hl], a
    inc sp
    ccf
    rra
    rra
    sbc l
    dec e
    sbc e
    add hl, bc
    ld c, l
    dec h
    dec b
    inc de
    inc bc
    cp a
    sub c
    and a
    and c
    and [hl]
    and e
    db $ED
    ldh [$C9], a
    call nz, $C8D1
    adc c
    sbc b
    xor c
    sbc b
    pop de
    cp c
    sub e
    ld sp, hl
    and e
    pop af
    and l
    di
    and l
    ld a, [c]
    db $ED
    call nc, $FCC1
    ret


    cp b
    ld [hl], a
    cp e
    halt
    cp e
    ld a, [hl]
    cp a
    ld a, a
    rst $38
    ld a, a
    rst $38
    rst $00
    rst $38
    rst $00
    rst $38
    db $FC
    rst $20
    ld a, [c]
    ld [c], a
    ld hl, sp-$10

jr_009_6DE5:
    db $FD
    ld sp, hl
    rst $38
    cp $FB
    db $FC
    ld [hl], d
    db $FC
    db $F4
    ld a, b
    ld a, a
    cp b
    jr c, jr_009_6D73

    db $10
    adc h
    ld a, h
    add h
    jr jr_009_6DE5

    call z, Call_009_7BF8
    ld a, b
    ld hl, sp-$08
    ld [de], a
    db $EC
    dec c
    ld a, [de]
    ld b, h
    ld [bc], a
    adc h
    ld [bc], a
    sbc [hl]
    ld [bc], a
    ld a, [de]
    ld b, $1A
    ld b, $1A
    ld b, $05
    inc c
    ld a, b
    nop
    jr nz, jr_009_6E55

    and e
    ld b, b
    cp b
    ld h, a
    ld d, e
    ccf
    sbc [hl]
    ld a, $1F
    ccf
    ld b, $79
    ld a, c
    sub [hl]
    ld b, b
    add b
    ld h, c
    add b
    ld [hl], b
    add b
    ldh a, [$80]
    ldh a, [$80]
    ldh a, [$80]
    ret nz

    ld h, b
    rla
    rrca
    ld h, e
    rra
    adc a
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    pop af
    rst $38
    pop hl
    rst $38
    rra
    pop hl
    inc bc
    ld bc, $030F
    ld a, a
    rrca
    rst $38
    ld a, a
    ld h, a
    rra
    ld d, $0F
    dec e
    rlca
    ld a, a
    rrca
    add hl, bc
    ld bc, $490D

jr_009_6E55:
    and a
    add l
    sub l
    and a
    sub a
    and a
    rst $10
    rst $20
    rst $10
    rst $20
    rst $10
    rst $20
    sbc a
    rst $28
    adc l
    rst $28
    cp l
    rst $18
    add hl, de
    rst $18
    dec sp
    cp l
    rst $30
    ld a, e
    rst $30
    ei
    rst $28
    rst $30
    ret


    cp b
    sbc b
    ld sp, hl
    sbc e
    pop af
    or d
    ld a, [$EBF6]
    and $FD
    db $E4
    rst $18
    adc $FD
    call z, $CEFF
    rst $38
    adc $FF
    rst $28
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_009_6E8F:
    rst $38
    rst $38
    ld a, h
    dec sp
    ld a, l
    dec de
    ld [hl], a
    jr jr_009_6E8F

    inc a
    rst $38
    ld a, h
    ld a, l
    cp $FF
    ld a, [$FEFF]
    rst $38
    db $FD
    cp $9F
    rst $38
    adc a
    rst $08
    add a
    rst $08
    add e
    jp $E1C1


    ldh [rIE], a
    rst $38
    adc h
    inc b
    ld d, $E2
    add $F9
    cp a
    cp a
    call nc, $CF78
    rrca
    ld h, b
    add b
    ld a, b
    add a
    ld e, h
    and b
    ld a, b
    add b
    ld l, e
    ret nc

    jp nc, $8E6A

    di
    or l
    ld [$FFE9], a
    rst $38
    rst $38
    pop hl
    ld b, b
    add h
    add e
    inc hl
    rra
    db $FD
    db $FD
    dec hl
    ld e, $F3
    ldh a, [rTAC]
    nop
    rra
    ldh [$3F], a
    ld bc, $031C
    ld e, b
    dec d
    ld [$055F], sp
    rst $18
    dec a
    rst $10
    ld e, a
    rst $38
    rst $38
    rst $38
    ld c, a
    rst $38
    xor a
    sbc a
    ld c, $3F
    ld e, h
    ccf
    ld e, h
    ccf
    xor c
    ld a, [hl]
    ld e, d
    cp l
    sbc $79
    rst $18
    ld a, c
    dec sp
    db $FD
    ld a, l
    rst $38
    db $FD
    rst $30
    cp $E7
    rst $20
    jp $8FCF


    rst $38
    rst $38
    rst $18
    rst $28
    cp l
    rst $38
    push hl
    ei
    add hl, sp
    rst $08
    pop af
    rra
    ld sp, hl
    scf
    pop af
    ld l, a
    push af
    ld l, a
    push af
    ld l, a
    ld [hl], a
    rst $28
    cp a
    rst $30
    di
    rst $38
    ei
    rst $38
    db $FD
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    adc a
    add [hl]
    cp c
    sbc b
    ldh [$A0], a
    add b
    ret nz

    add l
    add b
    add c
    add b
    add c
    add b
    add e
    add c
    push de
    add e
    or $82
    xor $82
    rst $28
    add h
    rst $38
    add h
    rst $38
    add h
    rst $28
    adc h
    rst $38
    rst $38
    ei
    ld de, $2266
    call z, $C844
    ld c, b
    sub b
    add b
    add b
    add b
    add b
    add b
    ld bc, $0100
    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    rla
    ld bc, $0157
    sbc a
    ld bc, $FFFF
    rlca
    ld b, $0B
    ld a, [bc]
    ld a, [de]
    dec de
    dec sp
    dec sp
    dec a
    dec a
    ld [hl], l
    ld a, l
    push af
    ld a, l
    jp nc, $AAFE

    cp $EA
    cp [hl]
    ld a, [$FF8E]
    add c
    ldh [rP1], a
    ret nz

    nop
    add b
    nop
    rst $38
    rst $38
    ldh [rNR41], a
    jp $C743


    add a
    rst $08
    rrca
    adc e
    rrca
    sub [hl]
    rra
    reti


    rra
    rst $30
    cp a
    add sp, -$41
    or $BF
    call $9CFB
    rst $00
    ld b, $03
    inc bc
    ld bc, $0100
    rst $38
    rst $38
    jr nz, @+$22

    jr nz, @+$22

    and b
    and b
    and b
    and b
    and b
    and b
    and b
    and b
    and b
    and b
    and b
    and b
    ret nc

    sub b
    ret nc

    ret nc

    ld d, b
    ret nc

    ld l, b
    ret z

    or h
    ld h, h
    jp c, $F932

    sub c
    rst $38
    rst $38
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
    rst $38
    adc b
    rst $38
    adc b
    ei
    adc h
    ei
    adc h
    ei
    adc h
    jp hl


    sbc [hl]
    add sp, -$61
    ret z

    cp a
    add h
    rst $38
    add h
    rst $38
    add h
    rst $38
    sbc [hl]
    rst $38
    jp nc, $EEB7

    and e
    db $FD
    xor e
    db $FD
    and a
    rst $18
    inc bc
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $30
    inc c
    ld [hl], h
    adc a
    ld h, a
    sbc h
    ld b, a
    cp h
    rlca
    db $FC
    inc hl
    rst $38
    rra
    rst $38
    ld c, $FC
    dec b
    cp $04
    db $FD
    inc b
    db $FC
    ld b, $FC
    inc bc
    cp $80
    nop
    add b
    nop
    nop
    nop
    nop
    nop
    ret nz

    ldh a, [$FC]
    ld a, [hl-]
    xor $1D
    adc e
    ld b, $FF
    rst $38
    ret z

    res 5, c
    add sp, $1C
    ld [hl], b
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld hl, $A300
    and c
    rst $00
    jp $8286


    add e
    ld b, $03
    inc de
    ld a, [hl-]
    inc de
    add hl, hl
    add hl, de
    dec l
    add hl, de
    inc [hl]
    ld [$D86C], sp
    halt
    call z, Call_009_66DB
    db $FD
    inc hl
    db $FC
    inc hl
    xor $31
    rst $30
    add sp, $7B
    call z, $CEF9
    ld a, l
    add $FC
    add a
    ld a, [$FA87]
    rst $00
    ld l, l
    db $D3
    adc l
    di
    add $F9
    add c
    add c
    ld b, c
    ld b, c
    ld hl, $9121
    ld de, $89C9
    ret


    adc c
    ld h, l
    push bc
    dec [hl]
    push hl
    cp e
    ld h, e
    sbc e
    ld [hl], e
    rst $18
    dec sp
    ld c, a
    cp c
    cpl
    db $DD
    rlca
    db $FD
    rlca
    rst $38
    add e
    rst $38
    db $FD
    and a
    sbc $B3
    sub $B3
    rst $38
    sbc d
    rst $08
    cp h
    and $DD
    or e
    xor a
    or b
    cp a
    ld hl, sp-$01
    and $FF
    jp $F5FF


    adc a
    db $FC
    add a
    db $FC
    adc a
    ld sp, hl
    sbc a
    rst $38
    rst $38
    rlca
    ld a, [$CBB6]
    cp e
    push de
    ei

jr_009_70D8:
    call $EE7D
    cp a
    and $9F
    di
    rst $18
    pop af
    ld l, a
    ld hl, sp+$77
    db $FC
    ld a, a
    ld a, [$FFE7]
    di
    rst $28
    ldh a, [$E7]
    ldh a, [$C1]
    rst $38
    rst $38
    add b
    nop
    ldh [rP1], a
    ld h, b
    add b
    ld [hl], b
    add b
    or b
    ret nz

    ld a, b
    ld b, b
    cp b
    jr nz, jr_009_70D8

    ret nc

    cp h
    ld hl, sp+$7F
    ld c, h
    rst $38
    inc hl
    sub $18
    rst $28
    adc h
    rst $30
    rst $20
    ccf
    ei
    rst $38
    rst $38
    add hl, de
    ld bc, $0606
    nop
    nop
    inc b
    inc b
    add hl, sp
    ld a, c
    ld bc, $4303
    scf
    ld b, $07
    inc b
    rrca
    inc e
    rrca
    inc [hl]
    rla
    ld l, c
    cpl
    ld c, c
    rst $08
    sub d
    sbc [hl]
    dec h
    dec a
    rst $38
    rst $38
    sub $F9
    db $D3
    db $FC
    reti


    xor $9C
    rst $20
    xor [hl]
    di
    scf
    reti


    dec sp
    call c, $EE19
    sbc l
    xor $9C
    rst $28
    or h
    rst $10
    or d
    db $D3
    or d
    db $D3
    and d
    db $E3
    ld b, d
    jp $FFFF


    jp Jump_009_61FF


    rst $38
    ld sp, $BBFF
    ld a, a
    ld e, e
    cp a
    rrca
    rst $38
    adc a
    rst $38
    rst $00
    rst $38
    rst $00
    rst $38
    rst $20
    ld a, a
    db $D3
    ld e, a
    ld d, e
    rst $18
    ld c, e
    rst $08
    ld c, e
    rst $08
    adc a
    adc a
    rst $38
    rst $38
    ld a, $01
    ld b, b
    nop
    db $FC
    inc bc
    add b
    nop
    db $FC
    inc bc
    ret nz

    nop
    ret nz

    nop
    rst $38
    nop
    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ldh [$E0], a
    ldh a, [$F0]
    ld hl, sp-$08
    db $FC
    db $FC
    ld a, a
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    rst $30
    rst $38
    ei
    rst $38
    ld sp, hl
    rst $38
    db $FC
    rst $38
    cp $FF
    daa
    rst $38
    daa
    rst $38
    cpl
    rst $38
    cpl
    rst $38
    cpl
    rst $38
    rrca
    rst $38
    rra
    rst $38
    rra
    rst $38
    ld a, $03
    ld b, d
    inc bc
    cp $03
    add d
    inc bc
    cp $03
    pop hl
    ld bc, $01E1
    rst $38
    ld bc, $81FE
    ret nz

    add b
    db $FC
    add e
    add b
    add b
    db $FC
    add e
    add b
    add b
    ld b, b
    ret nz

    rst $38
    ldh [rNR50], a
    rst $20
    ld b, h
    rst $00
    add h
    add a
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    ld bc, $0201
    inc bc
    ld [bc], a
    inc bc
    dec b
    rlca
    ld a, [bc]
    ld c, $14
    inc e
    inc c
    inc c
    ld b, $06
    nop
    db $FC
    nop
    ld c, $00
    rst $38
    nop
    inc bc
    nop
    rst $38
    ld bc, $0106
    ld b, $F9
    ld b, $00
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
    add b
    add b
    add b
    add b
    rst $18
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    daa
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc hl
    rst $38
    daa
    rst $38
    dec l
    rlca
    inc l
    rlca
    inc l
    rlca
    dec l
    rlca
    dec l
    rlca
    inc l
    rlca
    dec l
    rlca
    ld a, [hl+]
    inc bc
    jp hl


    ld b, b
    jp hl


    ret nz

    add hl, hl
    nop
    add hl, hl
    nop
    add hl, hl
    nop
    add hl, hl
    nop
    add hl, hl
    nop
    add hl, hl
    nop
    dec a
    ccf
    ld h, a
    ld e, a
    sbc $BE
    cp d
    halt
    cp $F2
    ld e, l
    ld l, e
    ld e, l
    ld a, e
    rst $30
    rst $30
    ld b, $06
    rlca
    dec b
    rlca
    rlca
    ld bc, $0101
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    ld a, [hl]
    ld h, c
    add c
    ld d, e
    xor l
    inc sp
    adc l
    add hl, sp
    add a
    ld c, c
    or a
    ld c, a
    or c
    ld a, [hl]
    ld a, [hl]
    nop
    rst $38
    rst $38
    nop
    nop
    rst $38
    nop
    ld b, h
    sbc c
    ld b, h
    nop
    rst $38
    nop
    ld de, $11E6
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, e
    rst $38
    ei
    rst $38
    scf
    rst $38
    rst $30
    rst $38
    ld a, a
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    db $EC
    cp $2F
    rst $38
    ld l, $FD
    rrca
    rst $38
    dec c
    cp $2F
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    add hl, sp
    rra
    add hl, sp
    rra
    add hl, hl
    rrca
    add hl, hl
    rrca
    add hl, hl
    rrca
    dec l
    rlca
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add hl, hl
    nop
    add hl, hl
    nop
    add hl, hl
    nop
    add hl, hl
    nop
    add hl, hl
    nop
    add hl, hl
    nop
    add hl, hl
    nop
    xor c
    add b
    cp $E2
    ld [hl], $3A
    ld a, h
    ld a, h
    sbc $B6
    and $7A
    sub $FE
    ld c, h
    ld a, h
    dec hl
    ccf
    nop
    ld bc, $0301
    nop
    inc bc
    nop
    nop
    ld bc, $0201
    inc bc
    dec b
    rlca
    ld b, $06
    nop
    nop
    add b
    add b
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

    add b
    add b
    rst $30
    rst $38
    ei
    ccf
    ei
    ccf
    rst $38
    ccf
    ld a, e
    ccf
    ccf
    ccf
    ccf
    ccf
    dec sp
    ld a, a
    ld l, $8D
    ccf
    sbc e
    ccf
    cp h
    ld a, $BC
    ld a, h
    db $FC
    ld a, h
    db $FC
    db $EC
    db $FC
    db $EC
    db $FC
    add hl, hl
    nop
    add hl, hl
    nop
    add hl, hl
    nop
    add hl, hl
    nop
    add hl, hl
    nop
    add hl, hl
    nop
    add hl, hl
    nop
    dec hl
    inc hl
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc e
    inc e
    ld a, $7A
    nop
    nop
    nop
    nop
    add b
    add b
    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    add b
    add b
    nop
    nop
    nop
    cp $01
    ld bc, $E100
    di
    inc c
    rst $38
    add b
    rst $00
    ld hl, sp-$21
    pop hl
    rst $38
    ld a, e
    nop
    ld a, a
    ld [$1088], sp
    sub e
    scf
    cp b
    ccf
    or e
    ld [hl], h
    cp a
    ld [hl], a
    cp h
    ld a, a
    inc e
    adc b
    nop
    adc b
    nop
    adc b
    nop
    adc b
    nop
    adc b
    nop
    adc b
    nop
    adc b
    nop
    ld hl, sp+$00
    ld de, $1100
    nop
    ld de, $1100
    nop
    ld de, $1100
    nop
    ld de, $1F00
    nop
    nop
    cp $C1
    ld bc, $D927
    daa
    reti


    ld sp, hl
    rlca
    adc c
    ld [hl], a
    adc a
    ld [hl], c
    cp $FE
    nop
    ld a, a
    ld h, c
    add b
    ld e, [hl]
    and c
    ld [hl-], a
    adc l
    inc sp
    adc h
    ld c, a
    or b
    ld c, c
    or [hl]
    ld a, a
    ld a, a
    adc b
    nop
    adc b
    nop
    adc b
    nop
    adc b
    nop
    adc b
    nop
    adc b
    nop
    adc b
    nop
    adc b
    nop
    ld de, $1100
    nop
    ld de, $1100
    nop
    ld de, $1100
    nop
    ld de, $1100
    nop
    nop
    db $FC
    ld h, b
    add h
    ld [hl], b
    add h
    ld [hl], b
    add h
    ld a, b
    add h
    ld [hl], b
    add h
    ld a, b
    add h
    ld [hl], b
    add h
    cp b
    ld b, d
    nop
    rst $38
    sub h
    nop
    cp $00
    rst $38
    nop
    cp $00
    cp $00
    cp $00
    ld b, b
    ccf
    db $10
    ld hl, $211C
    ld e, $21
    ld e, $21
    inc e
    ld hl, $211C
    ld e, $21
    scf
    dec a
    ccf
    dec [hl]
    rst $38
    push de
    rst $20
    push af
    ld a, e
    adc l
    push af
    ld sp, hl
    sub $02
    db $FC
    db $FC
    nop
    nop
    nop
    nop
    ld a, [hl]
    ld a, [hl]
    or l
    jp Jump_000_39FF


    push af
    db $ED
    dec l
    di
    ld e, $1E
    nop
    nop
    nop
    nop
    ld a, b
    ld a, b
    and h
    rst $08
    rst $28
    or a
    cp a
    sbc h
    xor l
    jp Jump_009_7E7E


    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    rst $38
    db $EB
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
    rst $38
    rst $38
    nop
    rst $38
    rst $10

Call_009_747C:
    nop
    rst $38
    rst $38
    nop
    nop
    ld a, b
    db $FC
    db $FC
    xor h
    cp $AB
    rst $20
    xor a
    rst $18
    or c
    xor a
    sbc a
    ld l, e
    ld b, c
    ld a, $3F
    inc e
    ld d, $2C
    ld [hl], $3E
    ld l, $3D
    dec hl
    dec hl
    dec l
    ccf
    dec h
    dec h
    inc sp
    ld e, $1E
    ld e, $1E
    dec l
    inc sp
    ccf
    add hl, hl
    dec [hl]
    dec l
    cpl
    dec [hl]
    rra
    dec e
    dec c
    dec de
    ld c, $1A
    ld l, b
    ld e, b
    ld l, b
    ld e, b
    ld c, b
    ld e, b
    ld l, b
    ld e, b
    ld l, b
    ld e, b
    ld c, b
    ld e, b
    ld l, b
    ld e, b
    ld l, b
    ld e, b
    ld [hl], b
    ld e, b
    or b
    ret c

    ld hl, sp-$48
    db $F4
    xor h
    xor h
    or h
    db $FC
    sub h
    or h
    call z, Call_009_7878
    ld d, $1A
    ld d, $1A
    ld [de], a
    ld a, [de]
    ld d, $1A
    ld d, $1A
    ld [de], a
    ld a, [de]
    ld d, $1A
    ld d, $1A
    ld a, b
    ld a, b
    and h
    call z, $A4FC
    call nc, $BCB4
    call nc, Call_009_747C
    inc [hl]
    ld l, h
    jr c, jr_009_7559

    ld a, h
    db $FC
    sub $82
    push af
    ld sp, hl
    ei
    adc l
    rst $20
    push af
    ld a, a
    push de
    ccf
    dec [hl]
    ld e, $3F
    nop
    nop
    rst $38
    rst $38
    db $EB
    nop
    nop
    rst $38
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
    rst $38
    rst $38
    rst $10
    nop
    nop
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, [hl]
    ld a, [hl]
    or l
    jp Jump_000_39FD


    rst $30
    db $ED
    dec h
    di
    ld e, $1E
    nop
    nop
    nop
    nop
    ld a, b
    ld a, b
    or h
    rst $08
    xor a
    or a
    rst $38
    sbc h
    xor l
    jp Jump_009_7E7E


    nop
    nop
    nop
    nop
    ccf
    ccf
    ld l, e
    ld b, b
    xor a
    sbc a
    sbc $B1
    rst $20
    xor a

jr_009_754B:
    rst $38
    xor e
    db $FC
    xor h
    db $EC
    cp h
    db $10
    xor h
    db $10
    xor h
    db $10
    xor h
    db $10
    xor h

jr_009_7559:
    db $10
    xor h
    db $10
    xor h
    db $10
    xor h
    db $10
    xor h
    add hl, hl
    nop
    add hl, hl
    nop
    add hl, hl
    nop
    add hl, hl
    nop
    add hl, hl
    nop
    add hl, hl
    nop
    add hl, hl
    nop
    add hl, hl
    nop
    rst $38
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    rst $38
    nop
    jr nz, jr_009_757D

jr_009_757D:
    jr nz, jr_009_757F

jr_009_757F:
    jr nz, jr_009_7581

jr_009_7581:
    jr nc, jr_009_754B

    db $10
    db $E4
    ld [$8CF2], sp
    ld [hl], d
    sbc h
    ld h, d
    ld hl, sp+$02
    ld h, h
    add e
    ld a, [de]
    push hl
    nop
    rst $38
    rst $38
    nop
    nop
    rst $38
    nop
    ld b, h
    sbc c
    ld b, h
    nop
    rst $38
    nop
    ld de, $1166
    nop
    rst $38
    rst $38
    nop

jr_009_75A5:
    nop
    rst $38

jr_009_75A7:
    nop
    ld b, h
    sbc c
    ld b, h
    nop
    rst $38
    nop
    ld de, $11E6
    nop
    ld a, [hl]
    ld h, c
    add c
    ld d, e
    xor l
    inc sp
    adc l
    add hl, sp
    add a
    ld c, c
    or a
    ld c, a
    or c
    ld a, [hl]
    ld a, [hl]
    nop
    ld bc, $0100
    ld bc, $0202
    dec b
    inc b
    dec de
    ld [$1227], sp
    ld c, l
    inc a
    ld b, e
    nop
    add b
    nop
    ld b, b
    add b
    ld b, b
    add b
    jr nz, @+$62

    sub b
    jr nz, jr_009_75A5

    jr nc, jr_009_75A7

    db $10
    add sp, $00
    ld bc, $0201
    ld [bc], a
    dec e
    jr @+$29

    db $10

jr_009_75EA:
    ld c, a
    jr nz, @-$5F

    ld h, b
    sbc a
    ld b, b
    cp a
    inc h
    inc a
    inc h
    inc a
    inc h
    inc a
    inc d
    inc e
    inc d
    inc e
    inc d
    inc e
    ld a, [de]
    ld e, $17
    rla
    add hl, bc
    rrca
    ld [de], a
    ld e, $14
    inc e
    jr z, jr_009_7641

    ld d, b
    ld [hl], b
    and b
    ldh [$60], a
    ld h, b
    jr nc, jr_009_7641

    nop
    ld a, a
    add e
    add b
    db $E4
    sbc e
    db $E4
    sbc e
    sbc a
    ldh [$91], a
    xor $F1
    adc [hl]
    ld a, a
    ld a, a
    jr c, jr_009_75EA

    ld e, h
    and e
    ld [$1CD5], sp
    db $E3
    ld [hl], $C9
    ld a, h
    add e
    ld h, b
    sbc a
    inc h
    db $DB
    xor $FA
    ld a, $FE
    ldh a, [$F0]
    ret nc

    or b
    ldh a, [$90]
    add sp, $58
    add sp, -$28
    cp b
    cp b

jr_009_7641:
    ld sp, $3B31
    ld a, [hl+]
    ld a, $3D
    dec c
    dec bc
    rrca
    rrca
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    rlca
    rlca
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $00
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $FC
    nop
    ld a, h
    nop
    ld a, b
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    inc bc
    nop
    nop
    nop

jr_009_767E:
    nop
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    nop
    ld a, a
    nop
    ccf
    nop
    inc a
    nop
    jr c, jr_009_7690

jr_009_7690:
    jr nc, jr_009_7692

jr_009_7692:
    rst $38
    nop
    ldh [rP1], a
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [$14F7], sp
    db $E3
    ld [de], a
    call $D720
    jr nz, jr_009_767E

    ld b, b
    and d
    nop
    ret nz

    nop
    nop
    nop
    rst $38
    ld b, b
    cp a
    nop

jr_009_76B6:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, b
    cp a
    ld b, b
    cp a
    ld l, $FB
    cp $DB
    db $FC
    rst $10
    ld hl, sp-$11
    ld hl, sp+$0F
    ldh a, [$F7]
    ld b, $F9
    ld [bc], a
    db $FD
    ld e, l
    or a
    ld e, a
    or [hl]
    rrca
    ld a, [$FD07]
    rla
    db $EC
    inc bc
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    ld a, a
    jr nc, jr_009_76B6

    ld h, b
    sbc a
    ld b, h
    sbc e

jr_009_76EB:
    ld c, h
    add e
    ld a, [hl-]
    push bc
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $E3
    nop
    jp Jump_009_4100


    nop
    ld bc, $0100
    nop
    rst $38
    nop
    rlca
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh a, [rNR10]
    or b
    ret nc

    ldh [$E0], a
    ldh a, [$B0]
    jr nc, jr_009_76EB

    or b
    ldh a, [$60]
    ldh [$5C], a
    db $FC
    rlca
    adc a
    add hl, bc
    sbc c
    inc bc
    dec de
    ld b, $05
    rrca
    dec bc
    ld d, $1F
    ld a, [hl+]
    dec sp
    ld sp, $0031
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ccf
    nop
    ld a, $00
    ld e, $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    di
    nop
    ret nz

    nop
    add b
    nop
    nop
    nop
    nop
    nop
    ld hl, sp+$00
    db $FC
    nop
    db $FC
    nop
    cp $00
    cp $00
    cp $00
    rst $38
    nop
    rst $38
    ld hl, sp+$17
    db $FC
    inc sp
    add sp, -$0B
    call z, $86F3
    ld sp, hl
    inc e
    db $E3
    db $10
    rst $28
    inc b
    ei
    rra
    or $1F
    rst $30
    dec de
    rst $38
    dec bc
    rst $38
    ld [bc], a
    rst $38
    dec b
    rst $38
    rlca

jr_009_777E:
    db $FD
    rlca

jr_009_7780:
    db $FD
    cp $1B
    cp $3B
    or $FF
    db $F4
    rst $38
    ld d, b
    rst $38
    jr z, @+$01

    jr c, jr_009_777E

    jr c, jr_009_7780

    rra
    ld [c], a
    dec de
    rst $20
    ld bc, $00FF
    rst $38
    db $10
    rst $28
    nop
    rst $38
    ld [bc], a
    db $FD
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ldh a, [rIF]
    ldh a, [$E7]
    ldh a, [$D1]
    nop
    rst $38
    add e
    ld a, h
    ld sp, $60CC
    sbc a
    ld b, h
    sbc e
    ld c, l
    add d
    jr c, jr_009_7780

    ld bc, $00E3
    cp $C1
    ld bc, $D927
    daa
    reti


    ld sp, hl
    rlca
    adc c
    ld [hl], a
    adc a
    ld [hl], c
    cp $FE
    nop
    ld a, a
    ld h, c
    add b
    ld e, [hl]
    and c
    ld [hl-], a
    adc l
    inc sp
    adc h
    ld c, a
    or b
    ld c, c
    or [hl]
    ld a, a
    ld a, a
    nop
    nop
    nop
    add b
    nop
    ret nz

    nop
    ldh [rP1], a
    ldh [rP1], a
    ldh a, [rP1]
    ldh a, [rP1]
    ld hl, sp-$48
    rst $00
    call c, $88A3
    push de
    sbc h
    db $E3
    ld [hl], $C9
    ld a, h
    inc bc
    ld h, b
    sbc a
    inc h
    db $DB
    ld d, a
    cp b
    sbc e
    db $FC
    and a
    db $FC
    ld b, a
    db $FC
    rst $20
    cp l
    sub $1D
    or $1F
    call nc, Call_000_3F1F
    rst $38
    rst $38
    db $DD
    rst $38
    rrca
    db $FC
    daa
    rst $38
    inc sp
    rst $38
    nop
    rst $38
    ld hl, sp+$3F
    db $F4
    ccf
    rst $38
    ld a, a
    xor $7F
    db $FC
    adc a
    ld sp, hl
    rst $38
    ld [hl], e
    rst $38
    nop
    rst $38
    rlca
    rst $38
    dec bc
    ld a, d
    rst $00
    halt
    rst $08
    ld a, c
    rst $08
    ld a, b
    rst $08
    add hl, sp
    rst $28
    ld a, [hl-]
    xor $1B
    cp $0A
    cp $1C
    db $E3
    ld a, [hl-]
    push bc
    db $10
    xor e
    jr c, @-$37

    ld l, h
    sub e
    ld a, $C1
    ld b, $F9
    inc h
    db $DB
    nop
    nop
    nop
    ld bc, $0300
    nop
    rlca
    nop
    rlca
    nop
    rrca
    nop
    rrca
    nop
    rra
    rst $38
    nop
    jr nz, jr_009_7865

jr_009_7865:
    jr nz, jr_009_7867

jr_009_7867:
    jr nz, jr_009_7869

jr_009_7869:
    rst $38
    nop
    inc b
    nop

jr_009_786D:
    inc b
    nop
    inc b
    nop
    nop
    nop
    nop

jr_009_7874:
    add b
    nop
    ret nz

    nop

Call_009_7878:
    ldh [rP1], a
    ldh a, [rP1]
    ld hl, sp+$00
    db $FC
    nop
    cp $00
    nop
    nop
    nop
    nop
    ld bc, $0100
    nop
    inc bc
    nop
    rrca
    nop
    ccf
    nop
    rst $38
    nop
    ldh [$80], a
    jr nz, jr_009_78D6

    or b
    ld b, b
    db $10
    ld h, b
    sub b
    jr nz, jr_009_7865

    jr nc, jr_009_786D

    sbc b
    rst $20
    add b
    ld a, a
    ret nz

    ccf
    add b
    ld e, a
    ld a, h
    rst $38
    jp nz, $BDFB

    pop bc
    rst $28
    sub c
    rst $28
    or b
    inc bc
    db $FC
    dec b
    ld a, [$FD00]
    nop
    rst $38
    ld c, $FF
    dec sp
    ld sp, hl
    db $FC
    jp Jump_000_3FEF


    nop
    rst $38
    add e
    ld a, h
    ld sp, $80CC
    cp $DC
    rst $38
    ld [hl], a
    rst $20
    rst $08
    ld [hl], b
    db $FD
    ld a, a
    db $10
    ld l, a
    jr nz, jr_009_7874

    ld b, b

jr_009_78D6:
    cp a
    rrca
    rst $38
    db $10
    rst $30
    cpl
    ldh [$3D], a
    ld [c], a
    ld a, l
    jp RST_00


    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    ld bc, $0304
    inc b
    ld b, $09
    nop
    nop
    nop
    nop
    nop
    add b
    nop
    add b
    nop
    ret nz

    nop
    ldh a, [rP1]
    db $FC
    nop
    rst $38
    nop
    rst $38
    add e
    ld a, h
    ld sp, $60CC
    sbc a
    ld b, h
    sbc e
    ld c, h
    add e
    ld a, [hl-]
    push bc
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    ld bc, $0300
    nop
    rlca
    nop
    rrca
    nop
    rra
    nop
    ccf
    nop
    ld a, a
    scf
    dec a
    ccf
    dec [hl]
    rst $38
    push de
    rst $20
    push af
    ld a, e
    adc l
    push af
    ld sp, hl
    sub $02
    db $FC
    db $FC
    nop
    nop
    nop
    nop
    ld a, [hl]
    ld a, [hl]
    or l
    jp Jump_000_39FF


    push af
    db $ED
    dec l
    di
    ld e, $1E
    nop
    nop
    nop
    nop
    ld a, b
    ld a, b
    and h
    rst $08
    rst $28
    or a
    cp a
    sbc h
    xor l
    jp Jump_009_7E7E


    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    rst $38
    db $EB
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
    rst $38
    rst $38
    nop
    rst $38
    rst $10
    nop
    rst $38
    rst $38
    nop
    nop
    ld a, b
    db $FC
    db $FC
    xor h
    cp $AB
    rst $20
    xor a
    rst $18
    or c
    xor a
    sbc a
    ld l, e
    ld b, c
    ld a, $3F
    inc e
    ld d, $2C
    ld [hl], $3E
    ld l, $3D
    dec hl
    dec hl
    dec l
    ccf
    dec h
    dec h
    inc sp
    ld e, $1E
    ld e, $1E
    dec l
    inc sp
    ccf
    add hl, hl
    dec [hl]
    dec l
    cpl
    dec [hl]
    rra
    dec e
    dec c
    dec de
    ld c, $1A
    ld l, b
    ld e, b
    ld l, b
    ld e, b
    ld c, b
    ld e, b
    ld l, b
    ld e, b
    ld l, b
    ld e, b
    ld c, b
    ld e, b
    ld l, b
    ld e, b
    ld l, b
    ld e, b
    ld [hl], b
    ld e, b
    or b
    ret c

    ld hl, sp-$48
    db $F4
    xor h
    xor h
    or h
    db $FC
    sub h
    or h
    call z, Call_009_7878
    ld d, $1A
    ld d, $1A
    ld [de], a
    ld a, [de]
    ld d, $1A
    ld d, $1A
    ld [de], a
    ld a, [de]
    ld d, $1A
    ld d, $1A
    ld a, b
    ld a, b
    and h
    call z, $A4FC
    call nc, $BCB4
    call nc, Call_009_747C
    inc [hl]
    ld l, h
    jr c, jr_009_7A59

    ld a, h
    db $FC
    sub $82
    push af
    ld sp, hl
    ei
    adc l
    rst $20
    push af
    ld a, a
    push de
    ccf
    dec [hl]
    ld e, $3F
    nop
    nop
    rst $38
    rst $38
    db $EB
    nop
    nop
    rst $38
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
    rst $38
    rst $38
    rst $10
    nop
    nop
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, [hl]
    ld a, [hl]
    or l
    jp Jump_000_39FD


    rst $30
    db $ED
    dec h
    di
    ld e, $1E
    nop
    nop
    nop
    nop
    ld a, b
    ld a, b
    or h
    rst $08
    xor a
    or a
    rst $38
    sbc h
    xor l
    jp Jump_009_7E7E


    nop
    nop
    nop
    nop
    ccf
    ccf
    ld l, e
    ld b, b
    xor a
    sbc a
    sbc $B1
    rst $20
    xor a
    rst $38
    xor e
    db $FC
    xor h
    db $EC
    cp h
    rst $38
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop

jr_009_7A59:
    rst $38
    nop
    jr nz, jr_009_7A5D

jr_009_7A5D:
    jr nz, jr_009_7A5F

jr_009_7A5F:
    jr nz, jr_009_7A61

jr_009_7A61:
    ld b, b
    ccf
    ld b, b
    ccf
    ld b, b
    ccf
    ld b, b
    ccf
    ld b, b
    ccf
    ld b, b
    ccf
    ld b, b
    ccf
    ld b, b
    ccf
    ld b, b
    ccf
    ld b, b
    ccf
    ld e, d
    ld e, c
    ld e, b
    ld e, d
    ld e, d
    ld e, d
    ld e, d
    ld e, d
    ld e, d
    nop
    nop
    nop
    ld e, d
    ld e, d
    ld e, d
    ld e, d
    ld e, d
    ld e, c
    ld e, b
    ld e, d
    ld d, a
    ld d, [hl]
    ld d, l
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, e
    ld d, e
    ld d, e
    ld d, d
    ld d, c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, b
    ld c, a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, b
    ld c, [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, b
    ld c, [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, b
    ld c, [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, b
    ld c, [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, l
    ld c, [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, h
    ld c, e
    ld c, d
    ld c, d
    ld c, d
    ld c, d
    ld c, d
    ld c, d
    ld c, d
    ld c, d
    ld c, d
    ld c, d
    ld c, d
    ld c, d
    ld c, d
    ld c, d
    ld c, d
    ld c, c
    ld c, b
    ld b, a
    ld b, [hl]
    nop
    ld e, c
    ld e, b
    ld e, d
    ld b, l
    ld b, h
    ld b, e
    nop
    nop
    ld b, d
    ld b, c
    nop
    nop
    ld b, l
    ld b, h
    ld b, e
    nop
    ld e, c
    ld e, b
    ld e, d
    ld e, d
    ld e, c
    ld e, b
    ld e, d
    ld b, b
    ccf
    ld b, b
    ccf
    nop
    ld a, $3D
    nop
    ld b, b
    ccf
    inc a
    dec sp
    ld a, [hl-]
    ld e, c
    ld e, b
    ld e, d
    ld e, d
    ld e, c
    ld e, b
    nop
    add hl, sp
    ld e, c
    ld e, b
    nop
    nop
    nop
    nop
    nop
    jr c, jr_009_7BAA

    ld [hl], $35
    inc [hl]
    ld e, c
    ld e, b
    nop
    ld b, b
    ccf
    ld e, b
    inc sp
    ld [hl-], a
    ld sp, $0058
    nop
    nop
    nop
    nop
    jr nc, jr_009_7BB6

    ld l, $2D
    inc l
    ld e, c
    ld b, b
    ccf
    dec hl
    ld a, [hl+]
    ld e, b
    add hl, hl
    jr z, jr_009_7BBA

    ld e, b
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, $25
    inc h
    inc hl
    ld e, c
    ld a, [hl+]
    dec hl
    dec hl
    ld a, [hl+]
    ld [hl+], a
    ld hl, $1F20
    ld [hl+], a
    nop
    ld b, b

jr_009_7BAA:
    ccf
    ld b, b
    ccf
    nop
    ld e, $1D
    inc e
    dec de
    ld a, [de]
    ld a, [hl+]
    dec hl
    dec hl

jr_009_7BB6:
    ld a, [hl+]
    ld b, b
    ccf
    ld b, b

jr_009_7BBA:
    ccf
    ld b, b
    ccf
    ld a, [hl+]
    dec hl
    dec hl
    ld a, [hl+]
    ld b, b
    ccf
    ld b, b
    ccf
    ld b, b
    ccf
    ld a, [hl+]
    dec hl
    ccf
    ld a, $3F
    ld a, $00
    nop
    ccf
    ld a, $3F
    ld a, $3F
    ld a, $00
    nop
    ccf
    ld a, $3F
    ld a, $3F
    ld a, $67
    ld h, a
    ld h, a
    nop
    nop
    nop
    nop
    ld h, a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, b
    ld c, b
    ld c, b
    ld h, [hl]
    ld h, l
    ld h, h
    ld h, e
    ld h, e
    ld h, e
    ld h, e

Call_009_7BF8:
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    ld h, d
    ld h, d
    ld h, d
    ld h, c
    ld h, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld e, a
    ld e, [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld e, a
    ld e, l
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld e, a
    ld e, l
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld e, a
    ld e, l
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld e, a
    ld e, l
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld e, l
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld e, d
    ld e, c
    ld e, c
    ld e, c
    ld e, c
    ld e, c
    ld e, c
    ld e, c
    ld e, c
    ld e, c
    ld e, c
    ld e, c
    ld e, c
    ld e, c
    ld e, c
    ld e, c
    ld e, b
    ld d, a
    ld d, [hl]
    ld d, l
    ld h, a
    nop
    ld d, h
    ld d, e
    ld d, d
    ld d, e
    ld d, c
    ld d, b
    ld c, a
    ld c, [hl]
    ld c, l
    ld c, h
    ld c, e
    ld c, d
    ld d, e
    ld d, e
    ld d, e
    ld c, c
    nop
    ld c, b
    nop
    ld b, a
    ld d, e
    ld d, e
    ld d, e
    ld d, d
    ld d, e
    ld b, [hl]
    ld b, l
    ld b, h
    ld b, e
    ld b, d
    ld b, c
    ld d, e
    ld d, d
    ld d, e
    ld d, e
    ld d, e
    ld b, b
    nop
    ccf
    ld a, $53
    ld d, e
    dec a
    inc a
    ld d, e
    ld d, d
    dec sp
    ld a, [hl-]
    add hl, sp
    jr c, @+$55

    ld d, d
    ld d, e
    ld d, e
    ld d, d
    ld d, e
    scf
    nop
    ccf
    ld a, $36
    dec [hl]
    inc [hl]
    inc sp
    ld [hl-], a
    ld sp, $2F30
    ld l, $2D
    inc l
    dec hl
    ld a, [hl+]
    add hl, hl
    jr z, jr_009_7D1A

    ccf
    ld a, $3F
    ld a, $3F
    ld a, $26
    dec h
    nop
    nop
    ld b, [hl]
    ld b, [hl]
    ld d, e
    inc h
    nop
    nop
    nop
    inc hl
    ccf
    ld a, $3F
    ld a, $3F
    ld a, $3F
    ld a, $22
    ld hl, $2000
    ccf
    ld a, $3F
    ld a, $1F
    nop
    ld h, a
    inc hl
    ccf

jr_009_7D1A:
    ld a, $3F
    ld a, $3F
    ld a, $3F
    ld a, $3F
    ld a, $1E
    ld b, [hl]
    dec e
    inc e
    dec de
    dec e
    ld a, [de]
    nop
    ccf
    ld a, $3F
    ld a, $3F
    ld a, $FF
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_009_7E7E:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
