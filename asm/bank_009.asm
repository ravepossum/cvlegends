; Disassembly of "cvlegends.gb"
; This file was created with:
; mgbdis v2.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $009", ROMX

    ld a, [$C729]
    rst $00

    db $1C, $40, $4C, $40, $68, $40, $9B, $40, $D2, $40, $E4, $40, $FC, $40, $08, $41
    db $1A, $41, $9B, $44, $2D, $41, $51, $41

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


    db $0C, $01, $0C, $02, $0C, $01, $0C, $00, $FE

    ld a, [$C729]
    rst $00

    db $7B, $41, $A4, $41, $9B, $44, $C4, $41, $02, $42, $0F, $42, $31, $42

    ld a, $00
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

    db $8A, $42, $BF, $42, $D7, $42, $E3, $42, $0B, $43, $44, $43, $9B, $44, $58, $43
    db $80, $43

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

    db $06, $44, $13, $44, $9B, $44, $22, $44, $7E, $44

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


    db $00, $00, $9F, $11, $01, $00, $00, $00, $00, $03, $20

    ld hl, $C514
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

    db $AF, $44, $E0, $44, $F0, $44, $F2, $45, $1B, $46, $16, $48, $27, $48, $51, $48

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

    db $1D, $45, $4C, $45, $7B, $45

    xor d
    ld b, l

    db $D9, $45

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


    db $02, $09, $11, $5D, $80, $00, $48, $02, $09, $B9, $48, $00, $01, $40, $02, $09
    db $91, $61, $9A, $01, $48, $00

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


    db $02, $09, $11, $5D, $80, $00, $48, $02, $09, $B9, $48, $00, $01, $40, $02, $09
    db $11, $66, $9A, $01, $40, $00

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


    db $02, $09, $F1, $6C, $80, $00, $48, $02, $09, $B9, $48, $00, $01, $40, $02, $09
    db $71, $71, $9A, $01, $41, $00

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


    db $21, $6A, $89, $6B, $61, $7A

    ret


    ld a, e

    db $61, $7A

    ld a, [$C555]
    and $80
    ld a, $05
    jp nz, Jump_009_4492

    ld a, [$D022]
    rst $00

    db $33, $46, $92, $46, $B1, $46, $A3, $47, $F4, $47

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


    db $97, $47, $9D, $47

    add c
    sbc h

    db $C1, $9C, $01, $9D

    adc b
    sbc h

    db $C8, $9C, $08, $9D

    call Call_009_4868
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


Call_009_4868:
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


    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00

    INCBIN "gfx/image_009_48b9.2bpp"

    db $01, $21, $0C, $15, $03, $01, $12, $04, $1B, $FC, $33, $0F, $0E, $09, $01, $1D
    db $FC, $29, $00, $04, $09, $04, $0E, $3D, $14, $FD, $14, $08, $09, $0E, $0B, $00
    db $09, $14, $FC, $17, $01, $13, $00, $14, $12, $15, $05, $3B, $FC, $02, $15, $14
    db $00, $09, $14, $FD, $09, $13, $00, $19, $0F, $15, $1D, $FE, $00, $33, $0F, $0E
    db $09, $01, $1B, $FC, $21, $0C, $15, $03, $01, $12, $04, $1E, $FD, $29, $00, $03
    db $0F, $15, $0C, $04, $00, $13, $01, $19, $FC, $14, $08, $05, $00, $13, $01, $0D
    db $05, $1C, $FD, $37, $08, $01, $14, $00, $01, $12, $05, $FC, $39, $2F, $35, $00
    db $04, $0F, $09, $0E, $07, $FC, $08, $05, $12, $05, $1F, $FE, $01, $21, $0C, $15
    db $03, $01, $12, $04, $1B, $FC, $2C, $09, $13, $14, $05, $0E, $00, $14, $0F, $FC
    db $0D, $05, $3B, $00, $33, $0F, $0E, $09, $01, $1C, $FD, $34, $08, $09, $13, $00
    db $09, $13, $00, $0E, $0F, $14, $FC, $01, $00, $10, $0C, $01, $03, $05, $00, $06
    db $0F, $12, $FC, $13, $0F, $0D, $05, $0F, $0E, $05, $FD, $0C, $09, $0B, $05, $00
    db $19, $0F, $15, $1C, $FE, $00, $33, $0F, $0E, $09, $01, $1B, $FC, $22, $15, $14
    db $FC, $21, $0C, $15, $03, $01, $12, $04, $20, $FE, $01, $21, $0C, $15, $03, $01
    db $12, $04, $1B, $FC, $34, $08, $09, $13, $FC, $10, $12, $0F, $02, $0C, $05, $0D
    db $FD, $03, $0F, $0E, $03, $05, $12, $0E, $13, $FC, $0F, $0E, $0C, $19, $00, $0D
    db $05, $00, $01, $0E, $04, $FC, $0D, $19, $00, $06, $01, $14, $08, $05, $12, $1C
    db $FD, $29, $3D, $16, $05, $00, $03, $0F, $0D, $05, $FC, $14, $0F, $00, $06, $09
    db $07, $08, $14, $FC, $14, $08, $05, $00, $0C, $0F, $12, $04, $00, $0F, $06, $FD
    db $14, $08, $09, $13, $FC, $03, $01, $13, $14, $0C, $05, $1C, $FD, $29, $00, $03
    db $01, $0E, $0E, $0F, $14, $FC, $0C, $05, $14, $00, $0D, $19, $FC, $06, $01, $14
    db $08, $05, $12, $3B, $FD, $23, $0F, $15, $0E, $14, $FC, $24, $12, $01, $03, $15
    db $0C, $01, $FC, $07, $05, $14, $00, $01, $17, $01, $19, $FD, $17, $09, $14, $08
    db $00, $14, $08, $09, $13, $1C, $FD, $29, $00, $0D, $15, $13, $14, $00, $04, $0F
    db $FC, $14, $08, $09, $13, $00, $06, $0F, $12, $FC, $0D, $19, $00, $0D, $0F, $14
    db $08, $05, $12, $00, $FD, $01, $0E, $04, $00, $06, $0F, $12, $FC, $14, $08, $05
    db $00, $17, $0F, $12, $0C, $04, $FC, $14, $08, $01, $14, $00, $13, $08, $05, $FD
    db $13, $0F, $00, $04, $05, $01, $12, $0C, $19, $FC, $0C, $0F, $16, $05, $04, $1C
    db $FD, $30, $0C, $05, $01, $13, $05, $FC, $15, $0E, $04, $05, $12, $13, $14, $01
    db $0E, $04, $1C, $FD, $29, $00, $01, $0D, $00, $14, $08, $05, $FC, $0F, $0E, $0C
    db $19, $00, $0F, $0E, $05, $FC, $17, $08, $0F, $00, $03, $01, $0E, $FD, $0D, $01
    db $0B, $05, $00, $01, $0D, $05, $0E, $04, $13, $FC, $06, $0F, $12, $00, $14, $08
    db $05, $FC, $13, $09, $0E, $13, $FD, $03, $0F, $0D, $0D, $09, $14, $14, $05, $04
    db $FC, $02, $19, $FC, $0D, $19, $00, $06, $01, $14, $08, $05, $12, $3B, $FD, $01
    db $0E, $04, $00, $14, $08, $05, $12, $05, $FC, $09, $13, $00, $0E, $0F, $FC, $12
    db $05, $01, $13, $0F, $0E, $00, $06, $0F, $12, $FD, $19, $0F, $15, $00, $14, $0F
    db $00, $07, $05, $14, $FC, $09, $0E, $16, $0F, $0C, $16, $05, $04, $FD, $09, $0E
    db $00, $14, $08, $09, $13, $FC, $02, $01, $14, $14, $0C, $05, $1C, $FD, $33, $0F
    db $0E, $09, $01, $3B, $FC, $29, $00, $03, $0F, $15, $0C, $04, $00, $0E, $0F, $14
    db $FC, $02, $05, $01, $12, $00, $14, $0F, $FD, $0C, $0F, $13, $05, $00, $19, $0F
    db $15, $3B, $FC, $14, $0F, $0F, $1C, $FD, $2E, $0F, $17, $3B, $FC, $14, $15, $12
    db $0E, $00, $02, $01, $03, $0B, $1D, $FE, $00, $33, $0F, $0E, $09, $01, $1B, $FC
    db $34, $08, $01, $0E, $0B, $00, $19, $0F, $15, $3B, $FC, $21, $0C, $15, $03, $01
    db $12, $04, $1C, $FD, $39, $0F, $15, $3F, $19, $0F, $15, $3D, $12, $05, $FC, $10
    db $12, $0F, $02, $01, $02, $0C, $19, $FC, $12, $09, $07, $08, $14, $1C, $FD, $29
    db $0E, $00, $06, $01, $03, $14, $3B, $FC, $19, $0F, $15, $00, $08, $01, $16, $05
    db $FC, $01, $0C, $17, $01, $19, $13, $00, $0D, $01, $04, $05, $FD, $14, $08, $05
    db $00, $12, $09, $07, $08, $14, $FC, $04, $05, $03, $09, $13, $09, $0F, $0E, $13
    db $1C, $FD, $22, $15, $14, $FC, $29, $00, $08, $01, $16, $05, $00, $0E, $0F, $FC
    db $09, $0E, $14, $05, $0E, $14, $09, $0F, $0E, $FD, $0F, $06, $00, $07, $0F, $09
    db $0E, $07, $FC, $02, $01, $03, $0B, $00, $0E, $0F, $17, $1C, $FD, $2A, $15, $13
    db $14, $00, $01, $13, $FC, $19, $0F, $15, $12, $00, $06, $01, $14, $08, $05, $12
    db $FC, $17, $01, $13, $00, $07, $12, $01, $0E, $14, $05, $04, $FD, $13, $14, $12
    db $05, $0E, $07, $14, $08, $FC, $06, $12, $0F, $0D, $00, $14, $08, $05, $FC, $05
    db $16, $09, $0C, $00, $04, $05, $09, $14, $19, $FD, $14, $0F, $00, $03, $0F, $0E
    db $11, $15, $05, $12, $FC, $14, $08, $05, $00, $17, $0F, $12, $0C, $04, $3B, $FC
    db $29, $00, $08, $01, $16, $05, $00, $02, $05, $05, $0E, $FD, $07, $12, $01, $0E
    db $14, $05, $04, $FC, $13, $14, $12, $05, $0E, $07, $14, $08, $FC, $14, $0F, $00
    db $06, $09, $07, $08, $14, $FD, $19, $0F, $15, $12, $FC, $06, $01, $14, $08, $05
    db $12, $1C, $FD, $29, $00, $17, $09, $0C, $0C, $00, $0E, $0F, $14, $FC, $12, $15
    db $0E, $00, $01, $17, $01, $19, $1C, $FD, $37, $05, $00, $01, $0C, $0C, $FC, $04
    db $05, $03, $09, $04, $05, $00, $0F, $15, $12, $FC, $0F, $17, $0E, $00, $06, $01
    db $14, $05, $1C, $FD, $29, $14, $00, $17, $01, $13, $00, $19, $0F, $15, $FC, $17
    db $08, $0F, $00, $14, $01, $15, $07, $08, $14, $FC, $0D, $05, $00, $14, $08, $01
    db $14, $3B, $FD, $21, $0C, $15, $03, $01, $12, $04, $1C, $FE, $01, $21, $0C, $15
    db $03, $01, $12, $04, $1B, $FC, $21, $0C, $12, $09, $07, $08, $14, $3B, $FC, $33
    db $0F, $0E, $09, $01, $1C, $FD, $34, $08, $05, $0E, $00, $13, $08, $0F, $17, $FC
    db $0D, $05, $00, $14, $08, $09, $13, $FC, $13, $14, $12, $05, $0E, $07, $14, $08
    db $FD, $19, $0F, $15, $00, $02, $05, $0C, $09, $05, $16, $05, $FC, $13, $0F, $00
    db $13, $14, $12, $0F, $0E, $07, $0C, $19, $FC, $09, $0E, $3B, $FD, $06, $0F, $12
    db $00, $29, $00, $14, $0F, $0F, $FC, $17, $01, $0E, $14, $00, $14, $0F, $FC, $02
    db $05, $0C, $09, $05, $16, $05, $1C, $FD, $2C, $05, $14, $00, $15, $13, $00, $14
    db $05, $13, $14, $FC, $14, $08, $09, $13, $FC, $13, $14, $12, $05, $0E, $07, $14
    db $08, $FD, $0F, $0E, $00, $0D, $05, $1C, $FD, $30, $12, $05, $10, $01, $12, $05
    db $FC, $19, $0F, $15, $12, $13, $05, $0C, $06, $1D, $FE, $00, $33, $0F, $0E, $09
    db $01, $1B, $FC, $20, $1E, $FF, $01, $21, $0C, $15, $03, $01, $12, $04, $1B, $FC
    db $2F, $0F, $17, $17, $1D, $FD, $29, $00, $08, $01, $04, $00, $0E, $0F, $FC, $09
    db $04, $05, $01, $00, $19, $0F, $15, $FC, $08, $01, $04, $00, $02, $05, $03, $0F
    db $0D, $05, $FD, $13, $0F, $00, $13, $14, $12, $0F, $0E, $07, $1C, $FE, $00, $33
    db $0F, $0E, $09, $01, $1B, $FC, $2F, $08, $3B, $FC, $21, $0C, $15, $03, $01, $12
    db $04, $1D, $FE, $01, $21, $0C, $15, $03, $01, $12, $04, $1B, $FC, $29, $14, $00
    db $0C, $0F, $0F, $0B, $13, $FC, $0C, $09, $0B, $05, $00, $14, $08, $09, $13, $FD
    db $14, $09, $0D, $05, $00, $09, $14, $00, $09, $13, $FC, $29, $00, $17, $08, $0F
    db $00, $08, $01, $16, $05, $FC, $0C, $05, $01, $12, $0E, $05, $04, $FD, $01, $00
    db $0C, $05, $13, $13, $0F, $0E, $1C, $FE, $00, $33, $0F, $0E, $09, $01, $1B, $FC
    db $21, $0C, $15, $03, $01, $12, $04, $3B, $FD, $04, $09, $04, $00, $19, $0F, $15
    db $FC, $10, $15, $12, $10, $0F, $13, $05, $0C, $19, $FC, $20, $1F, $FE, $01, $21
    db $0C, $15, $03, $01, $12, $04, $1B, $FC, $2E, $0F, $3B, $00, $33, $0F, $0E, $09
    db $01, $1C, $FD, $39, $0F, $15, $00, $08, $01, $16, $05, $FC, $0D, $01, $04, $05
    db $00, $0D, $05, $FC, $02, $05, $0C, $09, $05, $16, $05, $FD, $09, $0E, $00, $19
    db $0F, $15, $12, $FC, $13, $14, $12, $05, $0E, $07, $14, $08, $1C, $FE, $00, $33
    db $0F, $0E, $09, $01, $1B, $FC, $21, $0C, $15, $03, $01, $12, $04, $1C, $FD, $29
    db $3D, $0D, $00, $13, $0F, $FC, $13, $0F, $12, $12, $19, $1C, $FE, $01, $21, $0C
    db $15, $03, $01, $12, $04, $1B, $FC, $24, $0F, $00, $0E, $0F, $14, $FC, $14, $12
    db $0F, $15, $02, $0C, $05, $FD, $19, $0F, $15, $12, $13, $05, $0C, $06, $FC, $01
    db $02, $0F, $15, $14, $00, $09, $14, $3B, $FC, $33, $0F, $0E, $09, $01, $1C, $FD
    db $2E, $0F, $17, $3B, $00, $29, $FC, $0D, $15, $13, $14, $00, $13, $0C, $05, $05
    db $10, $1C, $FD, $29, $00, $06, $05, $01, $12, $00, $17, $05, $FC, $13, $08, $01
    db $0C, $0C, $00, $0E, $0F, $14, $FC, $0D, $05, $05, $14, $00, $01, $07, $01, $09
    db $0E, $1C, $FD, $26, $01, $12, $05, $17, $05, $0C, $0C, $3B, $FC, $0D, $19, $00
    db $02, $05, $0C, $0F, $16, $05, $04, $3B, $FD, $0D, $19, $FC, $02, $05, $01, $15
    db $14, $09, $06, $15, $0C, $FC, $16, $01, $0D, $10, $09, $12, $05, $FD, $08, $15
    db $0E, $14, $05, $12, $1C, $FE, $00, $33, $0F, $0E, $09, $01, $1B, $FC, $21, $0C
    db $15, $03, $01, $12, $04, $1D, $FD, $21, $0C, $15, $03, $01, $12, $04, $3B, $FC
    db $29, $00, $17, $09, $0C, $0C, $FC, $0E, $05, $16, $05, $12, $FD, $06, $0F, $12
    db $07, $05, $14, $00, $19, $0F, $15, $1C, $FD, $26, $01, $12, $05, $17, $05, $0C
    db $0C, $3B, $FC, $04, $05, $01, $12, $FC, $21, $0C, $15, $03, $01, $12, $04, $1C
    db $FF, $00, $24, $12, $01, $03, $15, $0C, $01, $1B, $FC, $39, $0F, $15, $00, $08
    db $01, $16, $05, $FC, $04, $0F, $0E, $05, $00, $17, $05, $0C, $0C, $3B, $FD, $0D
    db $19, $00, $07, $09, $12, $0C, $1C, $FD, $29, $0E, $00, $06, $01, $03, $14, $3B
    db $FC, $19, $0F, $15, $00, $01, $12, $05, $FC, $14, $08, $05, $00, $06, $09, $12
    db $13, $14, $FD, $08, $15, $0D, $01, $0E, $00, $17, $08, $0F, $FC, $08, $01, $13
    db $00, $03, $0F, $0D, $05, $FC, $14, $08, $09, $13, $00, $06, $01, $12, $1C, $FD
    db $39, $0F, $15, $00, $08, $01, $16, $05, $FC, $0D, $19, $00, $10, $12, $01, $09
    db $13, $05, $1C, $FE, $01, $33, $0F, $0E, $09, $01, $1B, $FC, $39, $0F, $15, $00
    db $01, $12, $05, $FC, $14, $08, $05, $00, $30, $12, $09, $0E, $03, $05, $FD, $0F
    db $06, $FC, $24, $01, $12, $0B, $0E, $05, $13, $13, $1C, $FD, $22, $05, $03, $01
    db $15, $13, $05, $FC, $0F, $06, $00, $19, $0F, $15, $FC, $0D, $01, $0E, $19, $00
    db $10, $05, $0F, $10, $0C, $05, $FD, $08, $01, $16, $05, $00, $04, $09, $05, $04
    db $3B, $FC, $0D, $01, $0E, $19, $00, $10, $05, $0F, $10, $0C, $05, $FC, $08, $01
    db $16, $05, $FD, $13, $15, $06, $06, $05, $12, $05, $04, $1C, $FE, $00, $24, $12
    db $01, $03, $15, $0C, $01, $1B, $FC, $2F, $08, $00, $0E, $0F, $3B, $FC, $0D, $19
    db $00, $04, $05, $01, $12, $1C, $FD, $29, $00, $08, $01, $16, $05, $FC, $0D, $05
    db $12, $05, $0C, $19, $00, $04, $0F, $0E, $05, $FC, $17, $08, $01, $14, $00, $19
    db $0F, $15, $FD, $08, $15, $0D, $01, $0E, $13, $FC, $17, $09, $13, $08, $05, $04
    db $00, $06, $0F, $12, $3B, $FC, $06, $15, $0C, $06, $09, $0C, $0C, $09, $0E, $07
    db $FD, $19, $0F, $15, $12, $FC, $09, $0E, $13, $01, $14, $09, $01, $02, $0C, $05
    db $FC, $04, $05, $13, $09, $12, $05, $13, $1C, $FE, $01, $33, $0F, $0E, $09, $01
    db $1B, $FC, $30, $05, $0F, $10, $0C, $05, $00, $0D, $15, $13, $14, $FC, $06, $15
    db $0C, $06, $09, $0C, $0C, $FD, $14, $08, $05, $09, $12, $FC, $04, $12, $05, $01
    db $0D, $13, $FC, $17, $09, $14, $08, $00, $14, $08, $05, $09, $12, $FD, $0F, $17
    db $0E, $00, $10, $0F, $17, $05, $12, $1C, $FD, $39, $0F, $15, $00, $17, $08, $0F
    db $FC, $08, $01, $16, $05, $00, $02, $05, $05, $0E, $FC, $03, $0F, $0E, $13, $15
    db $0D, $05, $04, $00, $02, $19, $FD, $14, $08, $05, $00, $10, $0F, $17, $05, $12
    db $FC, $0F, $06, $00, $05, $16, $09, $0C, $00, $0E, $0F, $FC, $0C, $0F, $0E, $07
    db $05, $12, $00, $08, $01, $16, $05, $FD, $14, $08, $05, $FC, $13, $14, $12, $05
    db $0E, $07, $14, $08, $00, $14, $0F, $FC, $04, $05, $14, $05, $12, $0D, $09, $0E
    db $05, $FD, $19, $0F, $15, $12, $00, $0F, $17, $0E, $FC, $06, $01, $14, $05, $1D
    db $FE, $00, $24, $12, $01, $03, $15, $0C, $01, $1B, $FC, $33, $09, $0C, $05, $0E
    db $03, $05, $1D, $FD, $2F, $0E, $00, $14, $08, $05, $FC, $03, $0F, $0E, $14, $12
    db $01, $12, $19, $3B, $FC, $29, $00, $01, $0D, $00, $0A, $15, $13, $14, $FD, $14
    db $08, $05, $00, $0F, $0E, $05, $00, $14, $0F, $FC, $15, $13, $05, $00, $14, $08
    db $09, $13, $FC, $10, $0F, $17, $05, $12, $3B, $FD, $01, $0E, $04, $00, $29, $00
    db $17, $09, $0C, $0C, $FC, $02, $05, $00, $14, $08, $05, $00, $0B, $09, $0E, $07
    db $FC, $17, $08, $0F, $00, $12, $15, $0C, $05, $13, $FD, $0F, $16, $05, $12, $00
    db $14, $08, $05, $FC, $05, $0E, $14, $09, $12, $05, $FC, $17, $0F, $12, $0C, $04
    db $1C, $FD, $27, $09, $16, $05, $FC, $19, $0F, $15, $12, $13, $05, $0C, $06, $FC
    db $14, $0F, $00, $0D, $05, $3B, $FD, $19, $0F, $15, $0E, $07, $00, $0C, $01, $04
    db $19, $1C, $FD, $34, $08, $05, $12, $05, $00, $0D, $01, $19, $FC, $02, $05, $00
    db $0D, $05, $12, $09, $14, $FC, $09, $0E, $00, $08, $01, $16, $09, $0E, $07, $FD
    db $19, $0F, $15, $12, $00, $10, $0F, $17, $05, $12, $3B, $FC, $09, $0E, $00, $08
    db $01, $16, $09, $0E, $07, $FC, $19, $0F, $15, $12, $FD, $10, $12, $05, $13, $05
    db $0E, $03, $05, $1C, $FE, $01, $33, $0F, $0E, $09, $01, $1B, $FC, $2D, $19, $00
    db $13, $14, $12, $05, $0E, $07, $14, $08, $FC, $17, $09, $0C, $0C, $00, $0F, $0E
    db $0C, $19, $FD, $02, $05, $00, $15, $13, $05, $04, $FC, $14, $0F, $00, $10, $12
    db $0F, $14, $05, $03, $14, $FC, $14, $08, $05, $00, $17, $0F, $12, $0C, $04, $1D
    db $FD, $2C, $0F, $12, $04, $00, $0F, $06, $FC, $24, $01, $12, $0B, $0E, $05, $13
    db $13, $3B, $FC, $10, $12, $05, $10, $01, $12, $05, $00, $14, $0F, $FD, $13, $15
    db $06, $06, $05, $12, $00, $06, $0F, $12, $FC, $14, $12, $09, $06, $0C, $09, $0E
    db $07, $FC, $17, $09, $14, $08, $00, $13, $0F, $FD, $0D, $01, $0E, $19, $00, $0C
    db $09, $16, $05, $13, $1D, $FE, $00, $24, $12, $01, $03, $15, $0C, $01, $1B, $FC
    db $21, $13, $00, $19, $0F, $15, $FC, $17, $09, $13, $08, $3B, $00, $07, $09, $12
    db $0C, $1C, $FD, $34, $08, $05, $0E, $00, $09, $14, $00, $09, $13, $FC, $19, $0F
    db $15, $12, $00, $06, $01, $14, $05, $FC, $14, $0F, $00, $0B, $0E, $05, $05, $0C
    db $FD, $02, $05, $06, $0F, $12, $05, $FC, $0D, $19, $00, $10, $0F, $17, $05, $12
    db $1D, $FF

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
    jr nc, @+$14

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

    db $00, $24, $12, $01, $03, $15, $0C, $01, $1B, $FC, $37, $05, $0C, $0C, $3B, $00
    db $17, $05, $0C, $0C, $1C, $FD, $39, $0F, $15, $00, $01, $12, $05, $FC, $01, $00
    db $17, $0F, $12, $14, $08, $19, $FC, $06, $0F, $05, $1C, $FD, $39, $0F, $15, $00
    db $08, $01, $16, $05, $FC, $0C, $01, $13, $14, $05, $04, $00, $0D, $15, $03, $08
    db $FC, $0C, $0F, $0E, $07, $05, $12, $00, $14, $08, $01, $0E, $FD, $0D, $0F, $13
    db $14, $1C, $FE, $01, $33, $0F, $0E, $09, $01, $1B, $FC, $30, $12, $05, $10, $01
    db $12, $05, $FC, $19, $0F, $15, $12, $13, $05, $0C, $06, $1D, $FE, $00, $24, $12
    db $01, $03, $15, $0C, $01, $1B, $FC, $2F, $08, $3B, $FC, $29, $3D, $16, $05, $00
    db $0A, $15, $13, $14, $FD, $02, $05, $05, $0E, $00, $14, $0F, $19, $09, $0E, $07
    db $FC, $17, $09, $14, $08, $00, $19, $0F, $15, $FC, $13, $0F, $00, $06, $01, $12
    db $1C, $FD, $22, $15, $14, $00, $0E, $0F, $17, $FC, $09, $14, $3D, $13, $00, $14
    db $09, $0D, $05, $FC, $14, $0F, $00, $07, $05, $14, $FD, $13, $05, $12, $09, $0F
    db $15, $13, $1D, $FF

    INCBIN "gfx/image_009_5d11.2bpp"

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

    db $1B, $1A, $1B, $1A, $1B, $1A, $1B, $1A, $1B, $1A, $1B, $1A, $1B, $1A, $1B, $1A
    db $1B, $1A, $1B, $1A, $61, $60, $00, $5F, $5E, $5D, $5C, $00, $00, $5B, $5A, $00
    db $00, $59, $58, $5F, $5E, $00, $61, $60, $57, $56, $55, $54, $54, $54, $54, $54
    db $54, $54, $54, $54, $54, $54, $54, $54, $53, $53, $53, $52, $51, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $50
    db $4F, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $50, $4E, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $50, $4E, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $50, $4E, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $50
    db $4E, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $4D, $4E, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $4C, $4B, $4A, $4A, $4A, $4A, $4A, $4A, $4A
    db $4A, $4A, $4A, $4A, $4A, $4A, $4A, $4A, $49, $48, $47, $46, $61, $60, $00, $5F
    db $5E, $00, $00, $00, $00, $44, $43, $00, $00, $00, $00, $5F, $5E, $00, $61, $60
    db $61, $60, $00, $5F, $5E, $00, $00, $42, $41, $40, $3F, $3E, $42, $00, $00, $5F
    db $5E, $00, $61, $60, $61, $60, $00, $5F, $3D, $3C, $3B, $3A, $39, $38, $37, $36
    db $35, $34, $33, $5F, $5E, $00, $61, $60, $61, $60, $00, $5F, $32, $31, $30, $2F
    db $2E, $2E, $2E, $2E, $2D, $2C, $2B, $5F, $5E, $00, $61, $60, $61, $60, $00, $5F
    db $2A, $29, $28, $27, $2E, $2E, $2E, $2E, $2E, $26, $25, $5F, $5E, $00, $61, $60
    db $61, $60, $00, $24, $23, $22, $21, $20, $2E, $2E, $2E, $2E, $2E, $1F, $1E, $1D
    db $1C, $00, $61, $60, $1B, $1A, $1B, $1A, $1B, $1A, $1B, $1A, $1B, $1A, $1B, $1A
    db $1B, $1A, $1B, $1A, $1B, $1A, $1B, $1A, $1B, $1A, $1B, $1A, $1B, $1A, $1B, $1A
    db $1B, $1A, $1B, $1A, $1B, $1A, $1B, $1A, $1B, $1A, $1B, $1A, $5A, $59, $00, $58
    db $57, $56, $55, $00, $00, $54, $53, $00, $00, $52, $51, $58, $57, $00, $5A, $59
    db $50, $4F, $4E, $4D, $4D, $4D, $4D, $4D, $4D, $4D, $4D, $4D, $4D, $4D, $4D, $4D
    db $4C, $4C, $4C, $4B, $4A, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $49, $48, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $49, $47, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $49
    db $47, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $49, $47, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $49, $47, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $46, $47, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $45
    db $44, $43, $43, $43, $43, $43, $43, $43, $43, $43, $43, $43, $43, $43, $43, $43
    db $42, $41, $40, $3F, $5A, $59, $00, $58, $57, $00, $00, $00, $00, $3D, $3C, $00
    db $00, $00, $00, $58, $57, $00, $5A, $59, $5A, $59, $00, $58, $57, $00, $00, $3B
    db $3A, $39, $38, $37, $3B, $00, $00, $58, $57, $00, $5A, $59, $5A, $59, $00, $58
    db $57, $00, $00, $36, $35, $34, $33, $32, $36, $31, $30, $58, $57, $00, $5A, $59
    db $5A, $59, $00, $58, $57, $2F, $2E, $2D, $2C, $2C, $2C, $2C, $2B, $2A, $29, $58
    db $57, $00, $5A, $59, $5A, $59, $00, $58, $57, $28, $27, $26, $2C, $2C, $2C, $2C
    db $2C, $25, $24, $58, $57, $00, $5A, $59, $5A, $59, $00, $23, $22, $21, $20, $1F
    db $2C, $2C, $2C, $2C, $2C, $1E, $1D, $1C, $22, $00, $5A, $59, $1B, $1A, $1B, $1A
    db $1B, $1A, $1B, $1A, $1B, $1A, $1B, $1A, $1B, $1A, $1B, $1A, $1B, $1A, $1B, $1A

    INCBIN "gfx/image_009_6cf1.2bpp"

    INCBIN "gfx/image_009_74f1.2bpp"

    jr nc, @-$36

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
    call nc, $747C
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
    jr nz, @+$02

    db $40, $3F, $40, $3F, $40, $3F, $40, $3F, $40, $3F, $40, $3F, $40, $3F, $40, $3F
    db $40, $3F, $40, $3F, $5A, $59, $58, $5A, $5A, $5A, $5A, $5A, $5A, $00, $00, $00
    db $5A, $5A, $5A, $5A, $5A, $59, $58, $5A, $57, $56, $55, $54, $54, $54, $54, $54
    db $54, $54, $54, $54, $54, $54, $54, $54, $53, $53, $53, $52, $51, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $50
    db $4F, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $50, $4E, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $50, $4E, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $50, $4E, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $50
    db $4E, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $4D, $4E, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $4C, $4B, $4A, $4A, $4A, $4A, $4A, $4A, $4A
    db $4A, $4A, $4A, $4A, $4A, $4A, $4A, $4A, $49, $48, $47, $46, $00, $59, $58, $5A
    db $45, $44, $43, $00, $00, $42, $41, $00, $00, $45, $44, $43, $00, $59, $58, $5A
    db $5A, $59, $58, $5A, $40, $3F, $40, $3F, $00, $3E, $3D, $00, $40, $3F, $3C, $3B
    db $3A, $59, $58, $5A, $5A, $59, $58, $00, $39, $59, $58, $00, $00, $00, $00, $00
    db $38, $37, $36, $35, $34, $59, $58, $00, $40, $3F, $58, $33, $32, $31, $58, $00
    db $00, $00, $00, $00, $30, $2F, $2E, $2D, $2C, $59, $40, $3F, $2B, $2A, $58, $29
    db $28, $27, $58, $00, $00, $00, $00, $00, $00, $26, $25, $24, $23, $59, $2A, $2B
    db $2B, $2A, $22, $21, $20, $1F, $22, $00, $40, $3F, $40, $3F, $00, $1E, $1D, $1C
    db $1B, $1A, $2A, $2B, $2B, $2A, $40, $3F, $40, $3F, $40, $3F, $2A, $2B, $2B, $2A
    db $40, $3F, $40, $3F, $40, $3F, $2A, $2B

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
