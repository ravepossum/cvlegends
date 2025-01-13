SECTION "ROM Bank $00b", ROMX

    ld a, [$C729]
    rst $00

    db $0A, $40, $22, $40, $48, $40

    ld hl, $C50E
    set 0, [hl]
    ldh a, [$FF87]
    add $04
    ldh [$FF87], a
    ld a, $10
    ld [$C731], a
    ld a, $04
    ld [$C732], a
    jp Jump_000_0E29


    ld hl, $C732
    dec [hl]
    ret nz

    ld a, $08
    ld [$C732], a
    ld hl, $C731
    dec [hl]
    jp z, Jump_00B_4040

    ld a, $04
    bit 0, [hl]
    call nz, Call_000_0547
    ld hl, $FF87
    add [hl]
    ld [hl], a
    ret


Jump_00B_4040:
    ld a, $10
    ld [$C731], a
    jp Jump_000_0E29


    ld hl, $C731
    dec [hl]
    ret nz

    ld b, $20
    ld a, [$C776]
    sub $20
    jr c, jr_00B_405B

    and $E0
    cpl
    inc a
    ld b, a

jr_00B_405B:
    ld h, $01
    ld a, [$C774]
    and $E0
    add b
    rrca
    rrca
    rrca
    and $1F
    add $80
    ld l, a
    ld bc, $9800
    add hl, bc
    res 2, h
    ld de, $CF20
    ld a, h
    ld [de], a
    inc de
    ld a, l
    ld [de], a
    inc de
    ld a, $01
    ld [de], a
    inc de
    xor a
    ld b, $30

jr_00B_4081:
    ld [de], a
    inc de
    dec b
    jr nz, jr_00B_4081

    ld a, $FF
    ld [de], a
    inc de
    xor a
    ld [de], a
    ld hl, $C500
    set 4, [hl]
    ld a, $2E
    call Call_000_0875
    ld a, $01
    jp Jump_000_0E35


    ld a, [$C729]
    rst $00

    db $AD, $40, $D3, $40, $E6, $40, $FE, $40, $51, $41, $89, $41, $AC, $41

    ld a, $00
    call Call_000_0875
    xor a
    ld [$D7DC], a
    ld [$C757], a
    call Call_000_2168
    ld a, $0B
    call Call_000_35C1
    ld a, $08
    ld [$C736], a
    ld a, $01
    ld [$C7E0], a
    ld a, $30
    ld [$C731], a
    jp Jump_000_0E29


    ld hl, $C731
    dec [hl]
    ret nz

    ldh a, [$FF86]
    sub $04
    ldh [$FF86], a
    ld a, $06
    ld [$C731], a
    jp Jump_000_0E29


    ld hl, $C731
    dec [hl]
    ret nz

    ld a, $28
    call Call_000_0875
    ldh a, [$FF86]
    add $04
    ldh [$FF86], a
    ld a, $04
    ld [$C731], a
    jp Jump_000_0E29


    ld hl, $C731
    dec [hl]
    ret nz

    ld a, [$C7E0]
    dec a
    ld hl, $413E
    call $DDD6
    ld de, $CD00
    ld a, [hl]
    ld b, a
    ld [$C7E1], a

jr_00B_4115:
    inc hl
    push bc
    push hl
    ld bc, $0180
    call Call_000_20E6
    ld a, $11
    ld e, $0E
    ld [de], a
    ld a, $52
    ld e, $0D
    ld [de], a
    pop hl
    ld a, [hl]
    ld e, $00
    ld [de], a
    call Call_00B_41C7
    call Call_00B_420C
    pop bc
    inc d
    dec b
    jr nz, jr_00B_4115

    call Call_00B_4233
    jp Jump_000_0E29


    db $44, $41, $48, $41, $4C, $41, $03, $00, $03, $07, $03, $02, $06, $09, $04, $01
    db $04, $05, $08

    call Call_00B_4282
    ld de, $CD00
    ld e, $07
    ld a, [de]
    cp $80
    jr nc, jr_00B_4174

    ld a, [$C7E1]
    ld b, a

jr_00B_4162:
    push bc
    ld h, d
    ld l, $04
    ld a, [hl+]
    ld b, [hl]
    inc hl
    add [hl]
    ld [hl+], a
    ld a, [hl]
    adc b
    ld [hl], a
    pop bc
    inc d
    dec b
    jr nz, jr_00B_4162

    ret


jr_00B_4174:
    ld a, [$C7E1]
    ld b, a

jr_00B_4178:
    push bc
    call Call_000_2183
    pop bc
    inc d
    dec b
    jr nz, jr_00B_4178

    ld a, $10
    ld [$C731], a
    jp Jump_000_0E29


    ld hl, $C731
    dec [hl]
    ret nz

    ld a, [$C7E0]
    inc a
    cp $04
    jp z, Jump_00B_41A4

    ld [$C7E0], a
    ld a, $01
    ld [$C731], a
    ld a, $01
    jp Jump_000_0E2D


Jump_00B_41A4:
    ld a, $08
    call Call_000_0629
    jp Jump_000_0E29


    call Call_000_063A
    ret c

    call Call_000_35F4
    ld a, $01
    ld [$C782], a
    ld de, $CD00
    ld a, $18
    set 7, a
    ld e, $00
    ld [de], a
    ld a, $01
    jp Jump_000_0E35


Call_00B_41C7:
    push hl
    ld hl, $41E4
    push af
    add a
    rst $28
    ld c, [hl]
    inc hl
    ld b, [hl]
    call Call_000_2098
    pop af
    ld hl, $41F8
    add a
    rst $28
    ld a, [hl+]
    ld e, $1C
    ld [de], a
    ld a, [hl]
    ld e, $1D
    ld [de], a
    pop hl
    ret


    db $00, $01, $00, $11, $00, $21, $00, $31, $00, $41, $00, $51, $00, $61, $00, $71
    db $00, $81, $00, $91, $00, $00, $00, $00, $00, $00, $31, $32, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $31, $32

Call_00B_420C:
    push hl
    call Call_000_2740
    ld e, $1C
    ld a, [de]
    ld c, a
    ld b, $02

jr_00B_4216:
    di

jr_00B_4217:
    ldh a, [rSTAT]
    bit 1, a
    jr nz, jr_00B_4217

    ld a, c
    ld [hl+], a
    ei
    ld e, $1D
    ld a, [de]
    ld c, a
    ld a, l
    and $1F
    jr nz, jr_00B_422C

    ld a, $20
    rst $10

jr_00B_422C:
    res 2, h
    dec b
    jr nz, jr_00B_4216

    pop hl
    ret


Call_00B_4233:
    ld a, [$C500]
    bit 3, a
    jr z, jr_00B_4242

    ld a, [$C507]
    sub $06
    ld [$C507], a

jr_00B_4242:
    ld a, $00
    ld [$C50D], a
    ld a, [$C500]
    and $40
    ld [$C500], a
    xor a
    ld [$C501], a
    ld [$C502], a
    call Call_000_1FCB
    call Call_000_1FD2
    ld hl, $C600
    res 7, [hl]
    ld hl, $C60E
    res 0, [hl]
    ld hl, $C611
    res 0, [hl]
    ld bc, $FF40
    ld a, c
    ld [$C509], a
    ld a, b
    ld [$C50A], a
    ld bc, $FDE0
    ld a, c
    ld [$C504], a
    ld a, b
    ld [$C505], a
    ret


Call_00B_4282:
    ld a, [$C50C]
    cp $10
    call c, Call_000_1FCB
    ld a, [$C505]
    bit 7, a
    jr nz, jr_00B_4296

    call Call_000_1F3D
    jr nz, jr_00B_42A5

jr_00B_4296:
    ld a, $20
    call Call_000_1FB9
    call Call_000_1FD9
    ld hl, $C500
    call Call_000_20C4
    ret


jr_00B_42A5:
    ld a, [$C507]
    sub c
    ld [$C507], a
    call Call_000_1FCB
    call Call_000_1FD2
    xor a
    ld e, $1C
    ld [de], a
    ret


    ld a, [$C729]
    rst $00

    db $CD, $42, $F9, $42, $3B, $43, $5B, $43, $73, $43, $CD, $43, $ED, $43, $06, $44
    db $19, $44

    ld a, $00
    call Call_000_0875
    xor a
    ld [$D7DC], a
    ld [$C757], a
    call Call_000_2168
    ld a, $40
    ld [$C731], a
    ld a, $04
    ld [$C732], a
    ld a, $04
    ld [$C733], a
    ld hl, $99E8
    ld a, l
    ld [$C7E0], a
    ld a, h
    ld [$C7E1], a
    jp Jump_000_0E29


    ld hl, $C731
    dec [hl]
    ret nz

    ld a, [$C7E0]
    ld l, a
    ld a, [$C7E1]
    ld h, a
    ld a, [$C733]
    ld c, a
    ld b, $00
    push hl
    xor a
    call $DEE8
    pop hl
    dec hl
    dec hl
    ld a, l
    ld [$C7E0], a
    ld a, h
    ld [$C7E1], a
    ld a, $2E
    call Call_000_0875
    ld a, [$C733]
    add $04
    ld [$C733], a
    ld a, $20
    ld [$C731], a
    ld hl, $C732
    dec [hl]
    ret nz

    ld a, $10
    ld [$C731], a
    jp Jump_000_0E29


    ld hl, $C731
    dec [hl]
    ret nz

    ld a, $15
    ld [$C50D], a
    xor a
    ld [$C504], a
    ld [$C505], a
    ld de, $C600
    call Call_000_2183
    ld de, $C700
    call Call_000_2183
    jp Jump_000_0E29


    ld a, $25
    call Call_000_1FB9
    ld hl, $C500
    ld a, [$C507]
    cp $90
    jp c, Jump_000_20D3

    ld a, $08
    call Call_000_0629
    jp Jump_000_0E29


    call Call_000_063A
    ret c

    xor a
    ldh [$FF87], a
    ldh [$FF86], a
    ld bc, $0790
    call Call_000_05B2
    ld hl, $43C5
    call Call_000_2E53
    ld a, $20
    ld de, $9800

jr_00B_438D:
    push af
    ld bc, $0014
    ld hl, $4432
    call $DED7
    ld a, $0C
    rst $30
    pop af
    dec a
    jr nz, jr_00B_438D

    ld a, $08
    call Call_000_0629
    ld a, [$C73D]
    or a
    jp z, Jump_000_0E29

    ld hl, $38DB
    call Call_000_373C
    ld bc, $0004
    call Call_000_38FB
    ld hl, $38CB
    call Call_000_373C
    ld bc, $0004
    call Call_000_38FB
    jp Jump_000_0E29


    db $02, $0B, $46, $44, $80, $01, $05, $00

    call Call_000_063F
    ret c

    ld a, $15
    ld [$C50D], a
    ld a, $50
    ld [$C50C], a
    xor a
    ld [$C507], a
    xor a
    ld [$C504], a
    ld [$C505], a
    xor a
    call Call_000_01F4
    jp Jump_000_0E29


    ld hl, $FF86
    inc [hl]
    ld a, $25
    call Call_000_1FB9
    ld a, [$C507]
    cp $48
    jp c, Jump_000_1FD9

    ld a, $60
    ld [$C731], a
    jp Jump_000_0E29


    ld hl, $FF86
    inc [hl]
    ld hl, $C731
    dec [hl]
    ret nz

    xor a
    ld [$C504], a
    ld [$C505], a
    jp Jump_000_0E29


    ld hl, $FF86
    inc [hl]
    ld a, $25
    call Call_000_1FB9
    ld hl, $C500
    ld a, [$C507]
    cp $A0
    jp c, Jump_000_20D3

    ld a, $0A
    jp Jump_000_0BCC


    db $00, $00, $00, $01, $02, $03, $04, $04, $04, $04, $04, $04, $04, $04, $03, $01
    db $02, $00, $00, $00

    INCBIN "gfx/image_00b_4446.2bpp"

    ld a, [$C738]
    or a
    ret z

    call Call_00B_44CD
    ld a, [$C507]
    add $0A
    ld hl, $C500
    bit 3, [hl]
    jr z, jr_00B_44AC

    sub $05

jr_00B_44AC:
    ld c, a
    ld a, [$C50C]
    ld b, a
    call Call_000_28CD
    bit 7, a
    jr nz, jr_00B_44C4

    bit 6, a
    ret z

    ld de, $C500
    ld bc, $0060
    jp Jump_000_20A2


jr_00B_44C4:
    ld de, $C500
    ld bc, $0060
    jp Jump_000_20B3


Call_00B_44CD:
    ld a, [$C73A]
    inc a
    ld [$C73A], a
    cp $20
    ret nz

    xor a
    ld [$C73A], a
    ld a, [$C739]
    inc a
    cp $03
    jr nz, jr_00B_44E4

    xor a

jr_00B_44E4:
    ld [$C739], a
    rst $00

    db $EE, $44, $48, $45, $A2, $45

    ld hl, $45FC
    ld de, $9460
    ld bc, $0010
    call $DED7
    ld bc, $0010
    call $DED7
    ld bc, $0010
    call $DED7
    ld bc, $0010
    call $DED7
    ld hl, $46BC
    ld bc, $0010
    call $DED7
    ld bc, $0010
    call $DED7
    ld bc, $0010
    call $DED7
    ld bc, $0010
    call $DED7
    ld hl, $471C
    ld de, $9580
    ld bc, $0010
    call $DED7
    ld bc, $0010
    call $DED7
    ld hl, $47BC
    ld bc, $0010
    call $DED7
    ld bc, $0010
    jp $DED7


    ld hl, $463C
    ld de, $9460
    ld bc, $0010
    call $DED7
    ld bc, $0010
    call $DED7
    ld bc, $0010
    call $DED7
    ld bc, $0010
    call $DED7
    ld hl, $47FC
    ld bc, $0010
    call $DED7
    ld bc, $0010
    call $DED7
    ld bc, $0010
    call $DED7
    ld bc, $0010
    call $DED7
    ld hl, $475C
    ld de, $9580
    ld bc, $0010
    call $DED7
    ld bc, $0010
    call $DED7
    ld hl, $48FC
    ld bc, $0010
    call $DED7
    ld bc, $0010
    jp $DED7


    ld hl, $467C
    ld de, $9460
    ld bc, $0010
    call $DED7
    ld bc, $0010
    call $DED7
    ld bc, $0010
    call $DED7
    ld bc, $0010
    call $DED7
    ld hl, $483C
    ld bc, $0010
    call $DED7
    ld bc, $0010
    call $DED7
    ld bc, $0010
    call $DED7
    ld bc, $0010
    call $DED7
    ld hl, $479C
    ld de, $9580
    ld bc, $0010
    call $DED7
    ld bc, $0010
    call $DED7
    ld hl, $493C
    ld bc, $0010
    call $DED7
    ld bc, $0010
    jp $DED7


    INCBIN "gfx/image_00b_45fc.2bpp"

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

    INCBIN "gfx/image_00b_471c.2bpp"

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

    INCBIN "gfx/image_00b_475c.2bpp"

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

    INCBIN "gfx/image_00b_479c.2bpp"

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

    INCBIN "gfx/image_00b_47fc.2bpp"

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

    INCBIN "gfx/image_00b_48fc.2bpp"

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

    INCBIN "gfx/image_00b_493c.2bpp"

    ld a, [$C729]
    rst $00
    ld l, h
    ld c, c
    ld a, c
    ld c, c
    ldh a, [rOBP1]
    db $10
    ld c, d
    add hl, hl
    ld c, d
    inc a
    ld c, d
    ld hl, $C50E
    set 0, [hl]
    ld a, $08
    call Call_000_0629
    jp Jump_000_0E29


    call Call_000_063A
    ret c

    xor a
    ld [$D7DC], a
    ld [$C757], a
    ld a, $00
    call Call_000_0875
    xor a
    ld [$C504], a
    ld [$C505], a
    ld de, $C600
    call Call_000_2183
    ld de, $C700
    call Call_000_2183
    ld de, $C800
    call Call_000_2183
    xor a
    ldh [$FF87], a
    ldh [$FF86], a
    ld bc, $0790
    call Call_000_05B2
    ld hl, $43C5
    call Call_000_2E53
    ld a, $20
    ld de, $9800

jr_00B_49B8:
    push af
    ld bc, $0014
    ld hl, $4432
    call $DED7
    ld a, $0C
    rst $30
    pop af
    dec a
    jr nz, jr_00B_49B8

    ld a, $08
    call Call_000_0629
    ld a, [$C73D]
    or a
    jp z, Jump_000_0E29

    ld hl, $38DB
    call Call_000_373C
    ld bc, $0004
    call Call_000_38FB
    ld hl, $38CB
    call Call_000_373C
    ld bc, $0004
    call Call_000_38FB
    jp Jump_000_0E29


    call Call_000_063F
    ret c

    ld a, $15
    ld [$C50D], a
    ld a, $50
    ld [$C50C], a
    xor a
    ld [$C507], a
    xor a
    ld [$C504], a
    ld [$C505], a
    xor a
    call Call_000_01F4
    jp Jump_000_0E29


    ld hl, $FF86
    inc [hl]
    ld a, $25
    call Call_000_1FB9
    ld a, [$C507]
    cp $48
    jp c, Jump_000_1FD9

    ld a, $60
    ld [$C731], a
    jp Jump_000_0E29


    ld hl, $FF86
    inc [hl]
    ld hl, $C731
    dec [hl]
    ret nz

    xor a
    ld [$C504], a
    ld [$C505], a
    jp Jump_000_0E29


    ld hl, $FF86
    inc [hl]
    ld a, $25
    call Call_000_1FB9
    ld hl, $C500
    ld a, [$C507]
    cp $A0
    jp c, Jump_000_20D3

    ld a, $0A
    jp Jump_000_0BCC


    ld a, [$C729]
    rst $00

    db $65, $4A, $78, $4A, $CB, $4A, $D4, $4A, $5D, $4B, $A7, $4B

    call Call_000_0604
    xor a
    ld [$C724], a
    ld hl, $0700
    call Call_000_05B2
    call Call_000_061B
    jp Jump_000_0E29


    ld a, [$C73D]
    or a
    jp z, Jump_00B_4A97

    ld hl, $38DB
    call Call_000_373C
    ld bc, $0004
    call Call_000_38FB
    ld hl, $387B
    call Call_000_373C
    ld bc, $0004
    call Call_000_38FB

Jump_00B_4A97:
    ld hl, $4AC3
    call Call_000_2E53
    ld hl, $4D49
    ld a, $14
    ld de, $9C00

jr_00B_4AA5:
    push af
    ld bc, $0014
    call $DED7
    ld a, $0C
    rst $30
    pop af
    dec a
    jr nz, jr_00B_4AA5

    call Call_00B_4BB5
    call Call_00B_4BF2
    ld a, [$C755]
    or a
    call nz, Call_00B_4C31
    jp Jump_000_0E29


    db $02, $0B, $B1, $4E, $00, $01, $58, $00

    call Call_000_060B
    call Call_000_05D3
    jp Jump_000_0E29


    ld a, [$C555]
    and $43
    ret z

    ld a, [$C555]
    and $40
    jr nz, jr_00B_4B2F

    ld a, [$C755]
    or a
    ret z

    cp $01
    ret z

    call Call_00B_4CC3
    ld a, $22
    call Call_000_0875
    ld a, [$C555]
    and $01
    jr nz, jr_00B_4B16

    ld a, [$C756]
    or a
    jr z, jr_00B_4B02

    dec a
    ld c, a
    jr jr_00B_4B27

jr_00B_4B02:
    ld bc, $0004

jr_00B_4B05:
    ld hl, $4B57
    add hl, bc
    ld a, [$C755]
    and [hl]
    jr nz, jr_00B_4B27

    dec c
    jr nz, jr_00B_4B05

    ld c, $00
    jr jr_00B_4B27

jr_00B_4B16:
    ld a, [$C756]
    inc a
    ld c, a
    ld hl, $4B57
    rst $28
    ld a, [$C755]
    and [hl]
    jr nz, jr_00B_4B27

    ld c, $00

jr_00B_4B27:
    ld a, c
    ld [$C756], a
    call Call_00B_4C31
    ret


jr_00B_4B2F:
    call Call_000_061B
    ld a, [$C755]
    or a
    jp z, Jump_000_0E29

    ld a, $27
    call Call_000_0875
    ld a, [$C756]
    ld hl, $4B4D
    call $DDD6
    call Call_000_2E53
    jp Jump_000_0E29


    db $1E, $32, $26, $32, $2E, $32, $36, $32, $3E, $32

    db $01

    db $02, $04, $08, $10

    nop

    xor a
    ld bc, $0240
    ld hl, $9C00
    call $DEE8
    call Call_000_3673
    ld a, [$C734]
    or a
    jr nz, jr_00B_4B7F

    ld hl, $0780
    call Call_000_05B2
    call Call_000_2BE6
    call Call_000_3925
    jp Jump_000_0E29


jr_00B_4B7F:
    ld hl, $0778
    call Call_000_05B2
    call Call_000_2C05
    ld hl, $9C00
    ld b, $0A

jr_00B_4B8D:
    di

jr_00B_4B8E:
    ldh a, [rSTAT]
    bit 1, a
    jr nz, jr_00B_4B8E

    ld a, $25
    ld [hl+], a
    ld a, $26
    ld [hl+], a
    nop
    nop
    nop
    ei
    dec b
    jr nz, jr_00B_4B8D

    call Call_000_3925
    jp Jump_000_0E29


    call Call_000_060B
    call Call_000_05D3
    call Call_000_05FD
    ld a, $01
    jp Jump_000_0E35


Call_00B_4BB5:
    ld a, [$C755]
    bit 4, a
    ret nz

    ld hl, $8B00
    call Call_00B_4C2A
    ld a, [$C755]
    bit 3, a
    ret nz

    ld hl, $8AC0
    call Call_00B_4C2A
    ld a, [$C755]
    bit 2, a
    ret nz

    ld hl, $8A00
    call Call_00B_4C2A
    ld a, [$C755]
    bit 1, a
    ret nz

    ld hl, $8A40
    call Call_00B_4C2A
    ld a, [$C755]
    bit 0, a
    ret nz

    ld hl, $8A80
    call Call_00B_4C2A
    ret


Call_00B_4BF2:
    ld hl, $8C00
    ld a, [$C758]
    bit 0, a
    call z, Call_00B_4C2A
    ld hl, $8C40
    ld a, [$C758]
    bit 1, a
    call z, Call_00B_4C2A
    ld hl, $8C80
    ld a, [$C758]
    bit 2, a
    call z, Call_00B_4C2A
    ld hl, $8CC0
    ld a, [$C758]
    bit 3, a
    call z, Call_00B_4C2A
    ld hl, $8D00
    ld a, [$C758]
    bit 4, a
    call z, Call_00B_4C2A
    ret


Call_00B_4C2A:
    xor a
    ld bc, $0040
    jp $DEE8


Call_00B_4C31:
    ld a, [$C756]
    rst $00

    db $3F, $4C, $45, $4C, $4B, $4C, $51, $4C, $57, $4C

    ld de, $9C82
    jp Jump_00B_4C5D


    ld de, $9C85
    jp Jump_00B_4C5D


    ld de, $9C88
    jp Jump_00B_4C5D


    ld de, $9C8B
    jp Jump_00B_4C5D


    ld de, $9C8E
    jp Jump_00B_4C5D


Jump_00B_4C5D:
    di
    call Call_000_0089
    ld a, $B5
    ld [de], a
    inc de
    call Call_000_0089
    ld a, $B6
    ld [de], a
    inc de
    call Call_000_0089
    ld a, $B6
    ld [de], a
    inc de
    call Call_000_0089
    ld a, $B8
    ld [de], a
    inc de
    call Call_000_0089
    ld a, $1C
    add e
    ld e, a
    ld a, $B9
    ld [de], a
    call Call_000_0089
    ld a, $03
    add e
    ld e, a
    ld a, $BA
    ld [de], a
    call Call_000_0089
    ld a, $1D
    add e
    ld e, a
    ld a, $B9
    ld [de], a
    call Call_000_0089
    ld a, $03
    add e
    ld e, a
    ld a, $BA
    ld [de], a
    ld a, $1D
    add e
    ld e, a
    call Call_000_0089
    ld a, $BB
    ld [de], a
    inc de
    call Call_000_0089
    ld a, $BC
    ld [de], a
    inc de
    call Call_000_0089
    ld a, $BC
    ld [de], a
    inc de
    call Call_000_0089
    ld a, $BE
    ld [de], a
    ei
    ret


Call_00B_4CC3:
    ld a, [$C756]
    rst $00

    db $D1, $4C, $D7, $4C, $DD, $4C, $E3, $4C

    jp hl


    ld c, h

    ld de, $9C82
    jp Jump_00B_4CEF


    ld de, $9C85
    jp Jump_00B_4CEF


    ld de, $9C88
    jp Jump_00B_4CEF


    ld de, $9C8B
    jp Jump_00B_4CEF


    ld de, $9C8E
    jp Jump_00B_4CEF


Jump_00B_4CEF:
    di
    call Call_000_0089
    xor a
    ld [de], a
    inc de
    call Call_000_0089
    xor a
    ld [de], a
    inc de
    call Call_000_0089
    xor a
    ld [de], a
    inc de
    call Call_000_0089
    xor a
    ld [de], a
    inc de
    call Call_000_0089
    ld a, $1C
    add e
    ld e, a
    xor a
    ld [de], a
    call Call_000_0089
    ld a, $03
    add e
    ld e, a
    xor a
    ld [de], a
    call Call_000_0089
    ld a, $1D
    add e
    ld e, a
    xor a
    ld [de], a
    call Call_000_0089
    ld a, $03
    add e
    ld e, a
    xor a
    ld [de], a
    ld a, $1D
    add e
    ld e, a
    call Call_000_0089
    xor a
    ld [de], a
    inc de
    call Call_000_0089
    xor a
    ld [de], a
    inc de
    call Call_000_0089
    xor a
    ld [de], a
    inc de
    call Call_000_0089
    xor a
    ld [de], a
    ei
    ret


    db $81, $82, $83, $84, $84, $84, $84, $84, $84, $84, $84, $84, $84, $84, $84, $84
    db $84, $84, $84, $85, $86, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $87, $88, $00, $91, $92, $93, $94, $00, $95
    db $96, $97, $98, $92, $99, $00, $00, $00, $00, $00, $00, $87, $8A, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $87
    db $8A, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $87, $8A, $00, $00, $A8, $A9, $00, $A4, $A5, $00, $A0, $A1, $00
    db $AC, $AD, $00, $B0, $B1, $00, $00, $87, $8A, $00, $00, $AA, $AB, $00, $A6, $A7
    db $00, $A2, $A3, $00, $AE, $AF, $00, $B2, $B3, $00, $00, $87, $8A, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $87
    db $8C, $8D, $8D, $8D, $8D, $8D, $8D, $8D, $8D, $8D, $8D, $8D, $8D, $8D, $8D, $8D
    db $8D, $8D, $8D, $90, $81, $82, $83, $84, $84, $84, $84, $84, $84, $84, $84, $84
    db $84, $84, $84, $84, $84, $84, $84, $85, $86, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $87, $88, $00, $9A, $92
    db $94, $94, $96, $9A, $9B, $9C, $92, $99, $00, $9C, $9B, $96, $9D, $00, $00, $87
    db $8A, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $87, $8A, $00, $B5, $B6, $B6, $B7, $B6, $B6, $B7, $B6, $B6, $B7
    db $B6, $B6, $B7, $B6, $B6, $B8, $00, $87, $8A, $00, $B9, $C0, $C1, $BF, $C4, $C5
    db $BF, $C8, $C9, $BF, $CC, $CD, $BF, $D0, $D1, $BA, $00, $87, $8A, $00, $B9, $C2
    db $C3, $BF, $C6, $C7, $BF, $CA, $CB, $BF, $CE, $CF, $BF, $D2, $D3, $BA, $00, $87
    db $8A, $00, $BB, $BC, $BC, $BD, $BC, $BC, $BD, $BC, $BC, $BD, $BC, $BC, $BD, $BC
    db $BC, $BE, $00, $87, $8C, $8D, $8D, $8D, $8D, $8D, $8D, $8D, $8D, $8D, $8D, $8D
    db $8D, $8D, $8D, $8D, $8D, $8D, $8D, $90, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $3F, $3F, $6B, $40, $AF, $9F, $DE, $B1
    db $E7, $AF, $FF, $AB, $FC, $AC, $EC, $BC, $78, $78, $B4, $CF, $AF, $B7, $FF, $9C

    INCBIN "gfx/image_00b_4ed9.2bpp"

    INCBIN "gfx/image_00b_53d9.2bpp"

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

    ld e, $00
    ld a, [de]
    sub $21
    rst $00

    db $5C, $54, $6D, $54, $45, $55, $C3, $55, $E3, $55

    ld h, $56

    db $07, $58, $27, $59, $80, $5A, $B1, $5B, $D3, $5B

    ldh a, [$FF5B]
    inc bc
    ld e, h
    ld e, e
    ld d, h
    ld d, e
    ld e, h
    sbc d
    ld e, h

    db $45, $55, $52, $5E

    ret


    call Call_00B_6303
    ret z

    ld a, $0A
    ld [$C728], a
    ld a, $01
    ld [$C782], a
    jp Jump_000_2183


    ld e, $01
    ld a, [de]
    rst $00

    db $79, $54, $B2, $54, $16, $55, $30, $55

    ld a, [$C500]
    bit 2, a
    ret nz

    ld e, $1B
    ld a, [de]
    push de
    ld c, $04
    ld de, $CD00
    ld hl, $54A6

jr_00B_548B:
    ld a, $0A
    set 7, a
    ld e, $00
    ld [de], a
    ld a, [hl+]
    ld e, $07
    ld [de], a
    ld a, [hl+]
    ld e, $0C
    ld [de], a
    ld a, [hl+]
    ld e, $0E
    ld [de], a
    inc d
    dec c
    jr nz, jr_00B_548B

    pop de
    jp Jump_000_2089


    db $4B, $2C, $31, $63, $4C, $11, $63, $5C, $31, $4B, $7C, $11

    ld a, d
    ld [$C7D0], a
    push de
    ld c, $04
    ld de, $CD00
    ld hl, $54A6

jr_00B_54BF:
    ld e, $00
    ld a, [de]
    or a
    jr nz, jr_00B_54F0

    push de
    ld a, [$C7D0]
    ld d, a
    ld e, $1B
    ld a, [de]
    or a
    jr z, jr_00B_54F9

    dec a
    ld e, $1B
    ld [de], a
    pop de
    ld a, $0A
    set 7, a
    ld b, a
    ld e, $00
    ld [de], a
    ld a, [hl+]
    ld e, $07
    ld [de], a
    ld a, [hl+]
    ld e, $0C
    ld [de], a
    ld a, [hl+]
    ld e, $0E
    ld [de], a
    ld a, $01
    ld e, $1B
    ld [de], a
    jr jr_00B_54F3

jr_00B_54F0:
    inc hl
    inc hl
    inc hl

jr_00B_54F3:
    inc d
    dec c
    jr nz, jr_00B_54BF

jr_00B_54F7:
    pop de
    ret


jr_00B_54F9:
    pop de
    ld h, $04
    ld de, $CD00

jr_00B_54FF:
    ld e, $00
    ld a, [de]
    or a
    jr nz, jr_00B_54F7

    inc d
    dec h
    jr nz, jr_00B_54FF

    pop de
    ld h, d
    ld l, $0E
    set 0, [hl]
    ld l, $11
    ld [hl], $01
    jp Jump_000_2089


    call Call_00B_6303
    ret z

    xor a
    ld e, $0E
    ld [de], a
    ld hl, $C500
    set 6, [hl]
    ld a, $02
    ld [$C73B], a
    ld a, $08
    call Call_000_0629
    jp Jump_000_2089


    push de
    call Call_000_063A
    pop de
    ret c

    call Call_000_2183
    xor a
    ld [$C782], a
    ld hl, $C50E
    set 0, [hl]
    jp Jump_000_17C3


    ld e, $01
    ld a, [de]
    rst $00

    db $4F, $55, $50, $55, $61, $55

    ret


    call Call_00B_5592
    ld a, $11
    ld e, $0E
    ld [de], a
    call Call_000_219F
    call Call_00B_556A
    jp Jump_000_2089


    call Call_00B_5592
    ld bc, $0020
    jp Jump_000_20A6


Call_00B_556A:
    call Call_000_2740
    push de
    ld a, h
    add $29
    ld d, a
    ld a, l
    ld e, a
    ld b, $03

jr_00B_5576:
    ld c, $02

jr_00B_5578:
    di

jr_00B_5579:
    ldh a, [rSTAT]
    bit 1, a
    jr nz, jr_00B_5579

    xor a
    ld [hl+], a
    ld [de], a
    inc de
    ei
    dec c
    jr nz, jr_00B_5578

    ld a, $1E
    rst $28
    ld a, $1E
    rst $30
    dec b
    jr nz, jr_00B_5576

    pop de
    ret


Call_00B_5592:
    ld a, [$C75C]
    or a
    ret nz

    ld a, [$C500]
    bit 1, a
    ret nz

    ld hl, $C50C
    ld e, $0C
    ld a, [de]
    add $04
    sub [hl]
    add $08
    cp $10
    ret nc

    ld e, $07
    ld a, [de]
    add $0A
    ld b, a
    ld a, [$C507]
    sub b
    add $08
    cp $10
    ret nc

    ld [$C75D], a
    ld hl, $C75C
    set 0, [hl]
    ret


    push de
    inc d
    ld e, $00
    ld a, [de]
    pop de
    or a
    ret nz

    xor a
    ld [$C78B], a
    push de
    ld bc, $0020
    ld hl, $8EE0
    call $DEE8
    pop de
    xor a
    ld hl, $C0EE
    ld [hl+], a
    ld [hl], a
    jp Jump_000_2183


    ld e, $01
    ld a, [de]
    rst $00

    db $EB, $55, $FA, $55

    call Call_00B_6303
    ret z

    ld a, $22
    ld e, $0D
    ld [de], a
    call Call_00B_63C7
    jp Jump_000_2089


    ld bc, $0010
    call Call_000_20A6
    call Call_00B_6394
    jr z, jr_00B_560F

    ld bc, $0004
    call Call_00B_63B7
    jp nz, Jump_000_21CF

    ret


jr_00B_560F:
    call Call_000_20F2
    ld hl, $C50E
    set 0, [hl]
    ld a, $0B
    ld [$C728], a
    xor a
    ld [$C729], a
    call Call_000_2168
    jp Jump_000_2183


    ld e, $01
    ld a, [de]
    rst $00
    jr c, jr_00B_5682

    sbc c
    ld d, [hl]
    rst $10
    ld d, [hl]
    xor $56
    dec h
    ld d, a
    ld d, b
    ld d, a
    ld a, d
    ld d, a
    ld a, $01
    ld e, $18
    ld [de], a
    ld a, [$C50C]
    cp $80
    ret nc

    xor a
    ld [$D7DC], a
    ld [$C757], a
    ld a, $00
    call Call_000_0875
    ld a, $42
    call Call_000_0875
    ld a, $2E
    call Call_000_0875
    push de
    ld hl, $9952
    ld de, $C252
    ld b, $05

jr_00B_5662:
    di

jr_00B_5663:
    ldh a, [rSTAT]
    bit 1, a
    jr nz, jr_00B_5663

    ld a, $68
    ld [hl+], a
    ld [de], a
    inc de

jr_00B_566E:
    ldh a, [rSTAT]
    bit 1, a
    jr nz, jr_00B_566E

    ld a, $69
    ld [hl], a
    ld [de], a
    ei
    ld a, $1F
    rst $28
    ld a, $1F
    rst $30
    dec b
    jr nz, jr_00B_5662

jr_00B_5682:
    pop de
    ld hl, $C500
    set 6, [hl]
    xor a
    ld [$C731], a
    ld a, $02
    ld [$C73B], a
    ld a, $08
    call Call_000_0629
    jp Jump_000_2089


    push de
    call Call_000_063A
    pop de
    ret c

    ld a, $08
    call Call_000_0629
    ld a, $80
    ld [$C50C], a
    ld a, $6B
    ld [$C507], a
    ld a, $00
    ld [$C50D], a
    ld hl, $C50E
    set 5, [hl]
    xor a
    ld [$C501], a
    ld [$C502], a
    call Call_000_1FCB
    call Call_000_1FD2
    call Call_000_2168
    ld a, $26
    ld e, $00
    ld [de], a
    ld a, $01
    ld e, $18
    ld [de], a
    ld a, $02
    jp Jump_000_2091


    push de
    call Call_000_063F
    pop de
    ret c

    xor a
    ld [$C73B], a
    ld hl, $C500
    res 6, [hl]
    ld a, [$C731]
    add $03
    jp Jump_000_2091


    push de
    ld de, $CD00
    ld a, $03

jr_00B_56F4:
    push af
    ld hl, $5721
    rst $28
    ld a, [hl]
    ld e, $07
    ld [de], a
    ld a, $07
    ld e, $00
    ld [de], a
    ld a, $20
    ld e, $0C
    ld [de], a
    ld a, $01
    call Call_000_2190
    ld a, $01
    ld e, $14
    ld [de], a
    ld a, $03
    ld e, $01
    ld [de], a
    inc d
    pop af
    dec a
    jr nz, jr_00B_56F4

    pop de
    ld a, $06
    jp Jump_000_2091


    nop
    jr jr_00B_575C

    ld e, b
    push de
    ld de, $CD00
    ld a, $02

jr_00B_572B:
    push af
    ld hl, $574D
    rst $28
    ld a, [hl]
    ld e, $0C
    ld [de], a
    ld a, $0F
    set 7, a
    ld e, $00
    ld [de], a
    ld a, $6B
    ld e, $07
    ld [de], a
    pop af
    ld de, $CE00
    dec a
    jr nz, jr_00B_572B

    pop de
    ld a, $06
    jp Jump_000_2091


    nop
    jr nz, jr_00B_5788

    push de
    ld de, $CD00
    ld a, $03

jr_00B_5756:
    push af
    ld hl, $5776
    rst $28
    ld a, [hl]

jr_00B_575C:
    ld e, $0C
    ld [de], a
    ld a, $0C
    set 7, a
    ld e, $00
    ld [de], a
    ld a, $18
    ld e, $07
    ld [de], a
    inc d
    pop af
    dec a
    jr nz, jr_00B_5756

    pop de
    ld a, $06
    jp Jump_000_2091


    nop
    jr z, jr_00B_57C1

    ld l, b
    push de
    ld de, $CD00
    ld b, $03

jr_00B_5780:
    ld e, $00
    ld a, [de]
    or a
    jr nz, jr_00B_57A6

    inc d
    dec b

jr_00B_5788:
    jr nz, jr_00B_5780

    pop de
    ld a, [$C731]
    cp $02
    jp z, Jump_00B_57A8

    inc a
    ld [$C731], a
    ld a, $02
    ld [$C73B], a
    ld a, $08
    call Call_000_0629
    ld a, $01
    jp Jump_000_2091


jr_00B_57A6:
    pop de
    ret


Jump_00B_57A8:
    push de
    ld a, $00
    call Call_000_0875
    ld a, $58
    call Call_000_0875
    ld a, $2E
    call Call_000_0875
    ld hl, $9952
    ld de, $C252
    ld b, $02

jr_00B_57C0:
    di

jr_00B_57C1:
    ldh a, [rSTAT]
    bit 1, a
    jr nz, jr_00B_57C1

    ld a, $27
    ld [hl+], a
    ld [de], a
    inc de
    ei
    dec b
    jr nz, jr_00B_57C0

    ld a, $1E
    rst $28
    ld a, $1E
    rst $30
    ld b, $04

jr_00B_57D8:
    di

jr_00B_57D9:
    ldh a, [rSTAT]
    bit 1, a
    jr nz, jr_00B_57D9

    xor a
    ld [hl+], a
    ld [de], a
    inc de

jr_00B_57E3:
    ldh a, [rSTAT]
    bit 1, a
    jr nz, jr_00B_57E3

    xor a
    ld [hl], a
    ld [de], a
    ei
    ld a, $1F
    rst $28
    ld a, $1F
    rst $30
    dec b
    jr nz, jr_00B_57D8

    pop de
    ld hl, $C757
    bit 0, [hl]
    jp z, Jump_000_2183

    ld a, $3A
    call Call_000_0875
    jp Jump_000_2183


    ld e, $0C
    ld a, [de]
    ld b, a
    ld e, $05
    ld a, [de]
    bit 7, a
    jr z, jr_00B_5819

    ld e, $07
    ld a, [de]
    sub $01
    jr jr_00B_581C

jr_00B_5819:
    ld e, $07
    ld a, [de]

jr_00B_581C:
    ld c, a
    call Call_000_2905
    cp $7C
    call nz, Call_000_2159
    call Call_00B_582C
    jp c, Jump_00B_58C0

    ret


Call_00B_582C:
    xor a
    ld [$C75D], a
    ld a, [$C75C]
    bit 0, a
    jp nz, Jump_00B_58B0

    ld a, [$C500]
    bit 1, a
    jp nz, Jump_00B_58B0

    ld a, [$C505]
    bit 7, a
    jp nz, Jump_00B_58B0

    ld e, $05
    ld a, [de]
    bit 7, a
    jr nz, jr_00B_5857

    ld a, [$C760]
    bit 0, a
    jp nz, Jump_00B_58B0

jr_00B_5857:
    ld h, d
    ld l, $0C
    ld a, [$C50C]
    sub [hl]
    add $0B
    cp $17
    jr nc, jr_00B_58B0

    ld e, $07
    ld a, [de]
    sub $08
    ld b, a
    ld a, [$C507]
    add $0D
    ld hl, $C500
    bit 3, [hl]
    jr z, jr_00B_5878

    sub $05

jr_00B_5878:
    sub b
    jr c, jr_00B_58B0

    cp $08
    jr nc, jr_00B_58B0

    ld [$C75D], a
    ld hl, $C75C
    set 0, [hl]
    ld e, $1B
    ld a, [de]
    or a
    jr z, jr_00B_588F

    scf
    ret


jr_00B_588F:
    ld a, $01
    ld [de], a
    ld e, $07
    ld a, [de]
    sub $15
    ld [$C507], a
    ld e, $06
    ld a, [de]
    ld [$C506], a
    xor a
    ld [$C75D], a
    call Call_000_1FD2
    call Call_000_1E61
    call Call_000_21BB
    scf
    ccf
    ret


Jump_00B_58B0:
jr_00B_58B0:
    xor a
    ld e, $1B
    ld [de], a
    call Call_00B_58BA
    scf
    ccf
    ret


Call_00B_58BA:
    ld a, $11
    ld e, $03
    ld [de], a
    ret


Jump_00B_58C0:
    ld a, [$C777]
    ld hl, $C779
    or [hl]
    jr nz, jr_00B_58CE

    ld a, $12
    ld e, $03
    ld [de], a

jr_00B_58CE:
    ld e, $05
    ld a, [de]
    bit 7, a
    jr nz, jr_00B_58EA

    ld a, [$C780]
    bit 4, a
    jr z, jr_00B_58E1

jr_00B_58DC:
    call Call_00B_58BA
    jr jr_00B_5905

jr_00B_58E1:
    ld a, [$C507]
    cp $40
    jr c, jr_00B_58DC

    jr jr_00B_5918

jr_00B_58EA:
    ld a, [$C77D]
    or a
    jr nz, jr_00B_58FC

    ld a, [$C780]
    bit 5, a
    jr z, jr_00B_58FC

jr_00B_58F7:
    call Call_00B_58BA
    jr jr_00B_5905

jr_00B_58FC:
    ld a, [$C507]
    cp $41
    jr nc, jr_00B_58F7

    jr jr_00B_5918

jr_00B_5905:
    ld h, d
    ld l, $04
    ld a, [$C506]
    add [hl]
    ld [$C506], a
    inc l
    ld a, [$C507]
    adc [hl]
    ld [$C507], a
    ret


jr_00B_5918:
    ld e, $04
    ld hl, $C777
    ld a, [de]
    ld [hl], a
    ld e, $05
    ld hl, $C779
    ld a, [de]
    ld [hl], a
    ret


    ld e, $01
    ld a, [de]
    rst $00

    db $33, $59, $52, $59, $7E, $59, $A9, $59

    ld a, [$C500]
    bit 1, a
    ret nz

    ld a, [$C500]
    bit 2, a
    ret nz

    ld a, $00
    call Call_000_0875
    ld a, $01
    ld [$C752], a
    call Call_00B_59CF
    call Call_00B_5A05
    jp Jump_000_2089


    ld e, $07
    ld a, [de]
    and $0F
    jr nz, jr_00B_596F

    ld e, $1B
    ld a, [de]
    ld h, a
    ld e, $1C
    ld a, [de]
    ld l, a
    ld a, $20
    rst $10
    call Call_00B_5A41
    ld a, h
    ld e, $1B
    ld [de], a
    ld a, l
    ld e, $1C
    ld [de], a

jr_00B_596F:
    ld e, $07
    ld a, [de]
    cp $18
    ret nc

    xor a
    ld e, $0E
    ld [de], a
    ld a, $03
    jp Jump_000_2091


    ld e, $07
    ld a, [de]
    cp $21
    jp c, Jump_00B_59A3

    ld e, $07
    ld a, [de]
    and $0F
    ret nz

    ld e, $1B
    ld a, [de]
    ld h, a
    ld e, $1C
    ld a, [de]
    ld l, a
    ld a, $20
    rst $10
    call Call_00B_5A41
    ld a, h
    ld e, $1B
    ld [de], a
    ld a, l
    ld e, $1C
    ld [de], a
    ret


Jump_00B_59A3:
    ld hl, $98A5
    jp Jump_000_2732


    ld hl, $9884
    call Call_000_2732
    call Call_00B_5A55
    push de
    ld a, $0B
    call Call_000_35C1
    ld a, $0A
    ld [$C736], a
    pop de
    ld a, $00
    ldh [$FF8A], a
    push de
    ld de, $CD00
    ld a, $1A
    set 7, a
    ld e, $00
    ld [de], a
    pop de
    ret


Call_00B_59CF:
    ld a, $28
    ld e, $00
    ld [de], a
    ld bc, $FF80
    call Call_000_20E6
    ld bc, $2078
    call Call_000_2098
    ld a, $67
    ld e, $0D
    ld [de], a
    ld a, $11
    ld e, $0E
    ld [de], a
    ld a, $60
    ld e, $14
    ld [de], a
    ld hl, $9A04
    call Call_00B_5A41
    ld a, h
    ld e, $1B
    ld [de], a
    ld a, l
    ld e, $1C
    ld [de], a
    ld a, $01
    ld e, $18
    ld [de], a
    jp Jump_000_219F


Call_00B_5A05:
    push de
    ld de, $CF00
    ld a, $28
    ld e, $00
    ld [de], a
    ld a, $02
    ld e, $01
    ld [de], a
    ld bc, $FF80
    call Call_000_20E6
    ld bc, $2880
    call Call_000_2098
    ld a, $67
    ld e, $0D
    ld [de], a
    ld a, $11
    ld e, $0E
    ld [de], a
    ld hl, $9A05
    call Call_00B_5A41
    ld a, h
    ld e, $1B
    ld [de], a
    ld a, l
    ld e, $1C
    ld [de], a
    ld a, $01
    ld e, $18
    ld [de], a
    call Call_000_219F
    pop de
    ret


Call_00B_5A41:
    push de
    di

jr_00B_5A43:
    ldh a, [rSTAT]
    bit 1, a
    jr nz, jr_00B_5A43

    ld [hl], $00
    ld a, h
    add $29
    ld d, a
    ld e, l
    xor a
    ld [de], a
    ei
    pop de
    ret


Call_00B_5A55:
    ld a, $2E
    call Call_000_0875
    push de
    ld hl, $99E4
    ld de, $C2E4
    ld b, $02

jr_00B_5A63:
    di

jr_00B_5A64:
    ldh a, [rSTAT]
    bit 1, a
    jr nz, jr_00B_5A64

    ld a, $28
    ld [hl+], a
    ld [de], a
    inc de

jr_00B_5A6F:
    ldh a, [rSTAT]
    bit 1, a
    jr nz, jr_00B_5A6F

    ld a, $29
    ld [hl+], a
    ld [de], a
    inc de
    ei
    dec b
    jr nz, jr_00B_5A63

    pop de
    ret


    ld e, $0C
    ld a, [de]
    ld e, $07
    ld a, [de]
    ld c, a
    ld e, $0A
    ld a, [de]
    bit 7, a
    jr z, jr_00B_5A94

    ld e, $0C
    ld a, [de]
    dec a
    jr jr_00B_5A98

jr_00B_5A94:
    ld e, $0C
    ld a, [de]
    inc a

jr_00B_5A98:
    ld b, a
    call Call_000_2905
    cp $2F
    jr z, jr_00B_5AA8

    cp $2E
    jp nz, Jump_000_2183

    call Call_000_214A

jr_00B_5AA8:
    call Call_00B_5AAF
    jp c, Jump_00B_5B43

    ret


Call_00B_5AAF:
    ld a, [$C500]
    bit 2, a
    jr z, jr_00B_5ABD

    ld a, [$C501]
    cp $04
    jr z, jr_00B_5B33

jr_00B_5ABD:
    ld a, [$C761]
    bit 0, a
    jr nz, jr_00B_5B33

    ld a, [$C762]
    or a
    jr nz, jr_00B_5B33

    ld a, [$C500]
    bit 2, a
    jr z, jr_00B_5B33

    ld a, [$C50C]
    ld b, a
    ld e, $0C
    ld a, [de]
    sub b
    jr c, jr_00B_5B33

    cp $06
    jr nc, jr_00B_5B33

    ld e, $07
    ld a, [de]
    add $08
    ld b, a
    ld a, [$C507]
    sub $0A
    sub b
    add $0A
    cp $14
    jr nc, jr_00B_5B33

    ld hl, $C500
    set 1, [hl]
    ld a, $01
    ld [$C761], a
    ld e, $1B
    ld a, [de]
    or a
    jr z, jr_00B_5B03

    scf
    ret


jr_00B_5B03:
    ld a, $01
    ld [de], a
    call Call_000_1FCB
    call Call_000_1FD2
    call Call_000_1E59
    ld e, $07
    ld a, [de]
    add $10
    ld [$C507], a
    ld e, $0C
    ld a, [de]
    ld [$C50C], a
    ld e, $0B
    ld a, [de]
    ld [$C50B], a
    ld a, $11
    ld [$C50D], a
    ld a, $00
    ld [$C501], a
    xor a
    ld [$C502], a
    scf
    ret


jr_00B_5B33:
    xor a
    ld e, $1B
    ld [de], a
    call Call_00B_5B3D
    scf
    ccf
    ret


Call_00B_5B3D:
    ld a, $11
    ld e, $08
    ld [de], a
    ret


Jump_00B_5B43:
    ld a, [$C770]
    ld hl, $C772
    or [hl]
    jr nz, jr_00B_5B51

    ld a, $12
    ld e, $08
    ld [de], a

jr_00B_5B51:
    ld e, $0A
    ld a, [de]
    bit 7, a
    jr nz, jr_00B_5B58

jr_00B_5B58:
    ld a, [$C780]
    bit 4, a
    jr z, jr_00B_5B6B

jr_00B_5B5F:
    ld a, [$C776]
    or a
    jp nz, Jump_00B_5BA2

    call Call_00B_5B3D
    jr jr_00B_5B8F

jr_00B_5B6B:
    ld a, [$C50C]
    cp $50
    jr c, jr_00B_5B5F

    jr jr_00B_5BA2

    ld a, [$C776]
    or a
    jr nz, jr_00B_5B86

    ld a, [$C780]
    bit 5, a
    jr z, jr_00B_5B86

jr_00B_5B81:
    call Call_00B_5B3D
    jr jr_00B_5B8F

jr_00B_5B86:
    ld a, [$C50C]
    cp $51
    jr nc, jr_00B_5B81

    jr jr_00B_5BA2

jr_00B_5B8F:
    ld h, d
    ld l, $09
    ld a, [$C50B]
    add [hl]
    ld [$C50B], a
    inc l
    ld a, [$C50C]
    adc [hl]
    ld [$C50C], a
    ret


Jump_00B_5BA2:
jr_00B_5BA2:
    ld e, $09
    ld hl, $C770
    ld a, [de]
    ld [hl], a
    ld e, $0A
    ld hl, $C772
    ld a, [de]
    ld [hl], a
    ret


    call Call_00B_6303
    ret z

    ld a, $07
    ld e, $00
    ld [de], a
    ld a, $10
    ld e, $14
    ld [de], a
    ld a, $03
    ld e, $01
    ld [de], a
    ld a, $34
    ld e, $0D
    ld [de], a
    xor a
    ld e, $11
    ld [de], a
    ld e, $18
    ld [de], a
    jp Jump_000_2576


    call Call_00B_6303
    ret z

    ld a, $14
    set 7, a
    ld e, $00
    ld [de], a
    ld a, $03
    ld e, $01
    ld [de], a
    ld a, $10
    ld e, $15
    ld [de], a
    xor a
    ld e, $11
    ld [de], a
    ld e, $18
    ld [de], a
    ret


    ld a, [$C73B]
    or a
    jp nz, Jump_000_2183

    call Call_00B_6303
    ret z

    ld a, $81
    ld [$C73B], a
    jp Jump_000_2183


    ld a, [$C73B]
    bit 7, a
    jp z, Jump_000_2183

    xor a
    ld [$C73B], a
    ld a, [$C774]
    and $E0
    rrca
    rrca
    rrca
    and $1F
    ld b, a
    ld a, [$C77B]
    and $E0
    add $80
    ld h, $00
    sla a
    rl h
    sla a
    rl h
    add b
    ld l, a
    ld bc, $9864
    add hl, bc
    res 2, h
    push de
    ld a, h
    add $29
    ld d, a
    ld e, l
    ld b, $0C

jr_00B_5C3B:
    di

jr_00B_5C3C:
    ldh a, [rSTAT]
    bit 1, a
    jr nz, jr_00B_5C3C

    xor a
    ld [hl+], a
    ld [de], a
    inc de
    ei
    dec b
    jr nz, jr_00B_5C3B

    pop de
    ld hl, $C500
    set 4, [hl]
    jp Jump_000_2183


    ld e, $01
    ld a, [de]
    rst $00
    ld e, e
    ld e, h
    ld l, d
    ld e, h
    call Call_00B_6303
    ret z

    ld a, $22
    ld e, $0D
    ld [de], a
    call Call_00B_63C7
    jp Jump_000_2089


    ld bc, $0010
    call Call_000_20A6
    call Call_00B_6394
    jr z, jr_00B_5C7F

    ld bc, $0004
    call Call_00B_63B7
    jp nz, Jump_000_21CF

    ret


jr_00B_5C7F:
    call Call_000_20F2
    push de
    ld de, $C900
    ld b, $13

jr_00B_5C88:
    push bc
    call Call_000_2183
    pop bc
    inc d
    dec b
    jr nz, jr_00B_5C88

    pop de
    ld a, $1D
    set 7, a
    ld e, $00
    ld [de], a
    ret


    ld e, $01
    ld a, [de]
    rst $00
    xor h
    ld e, h
    adc $5C
    ld bc, $1A5D
    ld e, l
    ld l, d
    ld e, l
    halt
    ld e, l
    rra
    ld e, [hl]
    ld a, [$C50C]
    cp $50
    ret c

    ld hl, $C500
    set 6, [hl]
    call Call_000_1FCB
    call Call_000_1FD2
    ld a, $01
    ld [$C752], a
    ld a, $02
    ld [$C73B], a
    xor a
    ld [$C73C], a
    jp Jump_000_2089


    ld a, [$C500]
    bit 2, a
    jp z, Jump_000_2089

    push de
    ld hl, $C500
    call Call_000_20D3
    call Call_000_1F3D
    jr nz, jr_00B_5CE9

    ld a, $25
    call Call_000_1FB9
    pop de
    ret


jr_00B_5CE9:
    ld a, [$C507]
    sub c
    ld [$C507], a
    call Call_000_1FD2
    pop de
    ld hl, $C500
    res 2, [hl]
    ld a, $00
    ld [$C50D], a
    jp Jump_000_2089


    ld a, $10
    ld e, $14
    ld [de], a
    ld a, $00
    call Call_000_0875
    xor a
    ld [$D7DC], a
    ld [$C757], a
    ld a, $42
    call Call_000_0875
    jp Jump_000_2089


    ld a, $E4
    ldh [$FF88], a
    ld e, $14
    ld a, [de]
    bit 0, a
    jr z, jr_00B_5D29

    ld a, $00
    ldh [$FF88], a

jr_00B_5D29:
    call Call_000_21F1
    ret nz

    ld a, $E4
    ldh [$FF88], a
    push de
    ld a, [$C500]
    bit 3, a
    jr nz, jr_00B_5D47

    xor a
    ld [$C501], a
    ld [$C502], a
    ld a, $00
    ld [$C50D], a
    jr jr_00B_5D51

jr_00B_5D47:
    ld a, $06
    ld [$C50D], a
    ld a, $01
    ld [$C502], a

jr_00B_5D51:
    call Call_000_1FCB
    ld de, $C600
    call Call_000_2183
    ld de, $C700
    call Call_000_2183
    ld de, $C800
    call Call_000_2183
    pop de
    jp Jump_000_2089


    ld hl, $C500
    res 6, [hl]
    xor a
    ld [$C752], a
    jp Jump_000_2089


    ld a, [$C73C]
    cp $0A
    jp nc, Jump_000_2089

    xor a
    ld e, $1B
    ld [de], a
    push de
    ld de, $CD00
    ld b, $05

jr_00B_5D88:
    ld e, $00
    ld a, [de]
    or a
    jr z, jr_00B_5D98

    ld e, $1B
    ld a, [de]
    ld hl, $C900
    ld l, $1B
    or [hl]
    ld [hl], a

jr_00B_5D98:
    inc d
    dec b
    jr nz, jr_00B_5D88

    ld de, $CD00
    ld b, $05

jr_00B_5DA1:
    ld e, $00
    ld a, [de]
    or a
    jr nz, jr_00B_5DF9

    push bc
    ld a, $08
    set 7, a
    ld e, $00
    ld [de], a

jr_00B_5DAF:
    push de
    ld a, $02
    call Call_000_0551
    ld [$C7D0], a
    ld hl, $5DFF
    call $DDD6
    ld a, $04
    call Call_000_0551
    ld [$C7D1], a
    add a
    rst $28
    pop de
    ld a, [hl+]
    ld c, a
    ld a, [hl]
    ld b, a
    call Call_000_2098
    push de
    ld a, [$C7D0]
    ld hl, $5E13
    call $DDD6
    pop de
    ld a, [$C7D1]
    rst $28
    ld a, [hl]
    ld [$C7D0], a
    ld hl, $C900
    ld l, $1B
    and [hl]
    jr nz, jr_00B_5DAF

    ld a, [$C7D0]
    ld e, $1B
    ld [de], a
    ld hl, $C900
    ld l, $1B
    or [hl]
    ld [hl], a
    pop bc

jr_00B_5DF9:
    inc d
    dec b
    jr nz, jr_00B_5DA1

    pop de
    ret


    inc bc
    ld e, [hl]
    dec bc
    ld e, [hl]
    ld b, b
    ld hl, sp+$50
    ld hl, sp+$60
    ld hl, sp+$70
    ld hl, sp+$48
    xor b
    ld e, b
    xor b
    ld l, b
    xor b
    ld a, b
    xor b
    rla
    ld e, [hl]
    dec de
    ld e, [hl]
    ld bc, $0402
    ld [$2010], sp
    ld b, b
    add b
    push de
    ld de, $CD00
    ld b, $05

jr_00B_5E25:
    push bc
    call Call_000_2183
    pop bc
    inc d
    dec b
    jr nz, jr_00B_5E25

    pop de
    xor a
    ld [$C73B], a
    ld a, $FF
    ld [$C73C], a
    ld a, $00
    call Call_000_0875
    ld a, $5B
    call Call_000_0875
    ld a, [$C757]
    bit 0, a
    jp z, Jump_000_2183

    ld a, $3A
    call Call_000_0875
    jp Jump_000_2183


    ld e, $01
    ld a, [de]
    rst $00

    db $5A, $5E, $63, $5E

    ld a, [$C50C]
    cp $20
    ret c

    jp Jump_000_2089


    call Call_000_21F1
    ret nz

    ld a, [$C73E]
    rst $00

    db $8B, $5E, $AD, $5E, $CF, $5E, $F1, $5E, $13, $5F, $29, $5F, $3F, $5F, $55, $5F
    db $6B, $5F, $81, $5F, $97, $5F, $AD, $5F, $C3, $5F, $D9, $5F, $EF, $5F, $05, $60

    ld hl, $C73E
    inc [hl]
    ld a, $1C
    ld e, $14
    ld [de], a
    ld a, [$C776]
    cp $40
    ret nc

    ld a, [$C775]
    cp $07
    ret z

    ld hl, $C900
    ld l, $00
    ld a, [hl]
    or a
    ret z

    ld l, $01
    ld [hl], $01
    ret


    ld hl, $C73E
    inc [hl]
    ld a, $1C
    ld e, $14
    ld [de], a
    ld a, [$C776]
    cp $50
    ret nc

    ld a, [$C775]
    cp $07
    ret z

    ld hl, $CA00
    ld l, $00
    ld a, [hl]
    or a
    ret z

    ld l, $01
    ld [hl], $01
    ret


    ld hl, $C73E
    inc [hl]
    ld a, $1C
    ld e, $14
    ld [de], a
    ld a, [$C776]
    cp $60
    ret nc

    ld a, [$C775]
    cp $07
    ret z

    ld hl, $CB00
    ld l, $00
    ld a, [hl]
    or a
    ret z

    ld l, $01
    ld [hl], $01
    ret


    ld hl, $C73E
    inc [hl]
    ld a, $1C
    ld e, $14
    ld [de], a
    ld a, [$C776]
    cp $70
    ret nc

    ld a, [$C775]
    cp $07
    ret z

    ld hl, $CC00
    ld l, $00
    ld a, [hl]
    or a
    ret z

    ld l, $01
    ld [hl], $01
    ret


    ld hl, $C73E
    inc [hl]
    ld a, $1C
    ld e, $14
    ld [de], a
    ld hl, $CD00
    ld l, $00
    ld a, [hl]
    or a
    ret z

    ld l, $01
    ld [hl], $01
    ret


    ld hl, $C73E
    inc [hl]
    ld a, $1C
    ld e, $14
    ld [de], a
    ld hl, $CE00
    ld l, $00
    ld a, [hl]
    or a
    ret z

    ld l, $01
    ld [hl], $01
    ret


    ld hl, $C73E
    inc [hl]
    ld a, $1C
    ld e, $14
    ld [de], a
    ld hl, $CF00
    ld l, $00
    ld a, [hl]
    or a
    ret z

    ld l, $01
    ld [hl], $01
    ret


    ld hl, $C73E
    inc [hl]
    ld a, $1C
    ld e, $14
    ld [de], a
    ld hl, $D000
    ld l, $00
    ld a, [hl]
    or a
    ret z

    ld l, $01
    ld [hl], $01
    ret


    ld hl, $C73E
    inc [hl]
    ld a, $1C
    ld e, $14
    ld [de], a
    ld hl, $D100
    ld l, $00
    ld a, [hl]
    or a
    ret z

    ld l, $01
    ld [hl], $01
    ret


    ld hl, $C73E
    inc [hl]
    ld a, $1C
    ld e, $14
    ld [de], a
    ld hl, $D200
    ld l, $00
    ld a, [hl]
    or a
    ret z

    ld l, $01
    ld [hl], $01
    ret


    ld hl, $C73E
    inc [hl]
    ld a, $1C
    ld e, $14
    ld [de], a
    ld hl, $D300
    ld l, $00
    ld a, [hl]
    or a
    ret z

    ld l, $01
    ld [hl], $01
    ret


    ld hl, $C73E
    inc [hl]
    ld a, $1C
    ld e, $14
    ld [de], a
    ld hl, $D400
    ld l, $00
    ld a, [hl]
    or a
    ret z

    ld l, $01
    ld [hl], $01
    ret


    ld hl, $C73E
    inc [hl]
    ld a, $1C
    ld e, $14
    ld [de], a
    ld hl, $C900
    ld l, $00
    ld a, [hl]
    or a
    ret z

    ld l, $01
    ld [hl], $01
    ret


    ld hl, $C73E
    inc [hl]
    ld a, $1C
    ld e, $14
    ld [de], a
    ld hl, $CA00
    ld l, $00
    ld a, [hl]
    or a
    ret z

    ld l, $01
    ld [hl], $01
    ret


    ld hl, $C73E
    inc [hl]
    ld a, $1C
    ld e, $14
    ld [de], a
    ld hl, $CB00
    ld l, $00
    ld a, [hl]
    or a
    ret z

    ld l, $01
    ld [hl], $01
    ret


    ld a, $01
    ld [$C73F], a
    ld hl, $CC00
    ld l, $00
    ld a, [hl]
    or a
    ret z

    ld l, $01
    ld [hl], $01
    jp Jump_000_2183


    ld e, $00
    ld a, [de]
    rst $00

    db $2B, $60, $2C, $60, $A0, $60, $F6, $60, $77, $61, $E0, $61, $58, $62

    ret


    ld e, $01
    ld a, [de]
    rst $00

    db $38, $60, $56, $60

    ld l, e
    ld h, b
    ld a, d
    ld h, b

    call Call_00B_6303
    ret z

    ld a, [$C75E]
    and $03
    cp $02
    jp z, Jump_00B_6339

    ld a, $22
    ld e, $0D
    ld [de], a
    ld a, $11
    ld e, $0E
    ld [de], a
    call Call_00B_63C7
    jp Jump_000_2089


    ld bc, $0010
    call Call_000_20A6
    call Call_00B_6394
    jr z, jr_00B_608A

    ld bc, $0004
    call Call_00B_63B7
    ret z

    jp Jump_000_2089


    call Call_000_21CF
    ld bc, $0004
    call Call_00B_63B7
    call Call_00B_63A4
    ret nz

    jr jr_00B_608A

    ld bc, $0004
    call Call_00B_63B7
    call Call_000_21F1
    jp z, Jump_000_2183

    call Call_00B_63B1
    ret nz

jr_00B_608A:
    ld a, $04
    ld [$C728], a
    xor a
    ld [$C729], a
    ld hl, $C75E
    ld a, [hl]
    cp $02
    jr nc, jr_00B_609C

    inc a

jr_00B_609C:
    ld [hl], a
    jp Jump_000_2183


    ld e, $01
    ld a, [de]
    rst $00

    db $AC, $60, $B3, $60, $C5, $60, $D4, $60

    call Call_00B_6303
    ret z

    jp Jump_00B_6339


    call Call_00B_637B
    call Call_00B_6394
    jr z, jr_00B_60E7

    ld bc, $0004
    call Call_00B_63B7
    ret z

    jp Jump_000_2089


    call Call_000_21BB
    ld bc, $0004
    call Call_00B_63B7
    call Call_00B_63A4
    ret nz

    jr jr_00B_60E7

    call Call_000_21BB
    ld bc, $0004
    call Call_00B_63B7
    call Call_000_21F1
    jp z, Jump_000_2183

    call Call_00B_63B1
    ret nz

jr_00B_60E7:
    ld a, $12
    call Call_000_0875
    push de
    ld a, $01
    call Call_000_2DDC
    pop de
    jp Jump_000_2183


    ld e, $01
    ld a, [de]
    rst $00

    db $02, $61, $1E, $61, $33, $61, $42, $61

    call Call_00B_6303
    ret z

    ld a, [$C513]
    cp $0E
    jp z, Jump_00B_6339

    ld a, $24
    ld e, $0D
    ld [de], a
    ld a, $11
    ld e, $0E
    ld [de], a
    call Call_00B_63C7
    jp Jump_000_2089


    ld bc, $0010
    call Call_000_20A6
    call Call_00B_6394
    jr z, jr_00B_6152

    ld bc, $0008
    call Call_00B_63B7
    ret z

    jp Jump_000_2089


    call Call_000_21CF
    ld bc, $0008
    call Call_00B_63B7
    call Call_00B_63A4
    ret nz

    jr jr_00B_6152

    ld bc, $0008
    call Call_00B_63B7
    call Call_000_21F1
    jp z, Jump_000_2183

    call Call_00B_63B1
    ret nz

jr_00B_6152:
    ld a, $14
    call Call_000_0875
    ld a, $02
    ld e, $14
    ld [de], a
    ld b, $07

jr_00B_615E:
    call Call_000_21F1
    jr nz, jr_00B_615E

    ld a, $02
    ld e, $14
    ld [de], a
    push bc
    push de
    ld a, $01
    call Call_000_2CAA
    pop de
    pop bc
    dec b
    jr nz, jr_00B_615E

    jp Jump_000_2183


    ld e, $01
    ld a, [de]
    rst $00

    db $83, $61, $9F, $61, $B4, $61

    db $C3
    ld h, c

    call Call_00B_6303
    ret z

    ld a, [$C754]
    cp $09
    jp z, Jump_00B_6339

    ld a, $25
    ld e, $0D
    ld [de], a
    ld a, $11
    ld e, $0E
    ld [de], a
    call Call_00B_63C7
    jp Jump_000_2089


    ld bc, $0010
    call Call_000_20A6
    call Call_00B_6394
    jr z, jr_00B_61D3

    ld bc, $0008
    call Call_00B_63B7
    ret z

    jp Jump_000_2089


    call Call_000_21CF
    ld bc, $0008
    call Call_00B_63B7
    call Call_00B_63A4
    ret nz

    jr jr_00B_61D3

    ld bc, $0008
    call Call_00B_63B7
    call Call_000_21F1
    jp z, Jump_000_2183

    call Call_00B_63B1
    ret nz

jr_00B_61D3:
    ld a, $15
    call Call_000_0875
    push de
    call Call_000_2E27
    pop de
    jp Jump_000_2183


    ld e, $01
    ld a, [de]
    rst $00

    db $EC, $61, $0E, $62, $23, $62

    ld [hl-], a
    ld h, d

    call Call_00B_6303
    ret z

    ld a, [$C725]
    ld hl, $6251
    rst $28
    ld a, [$C758]
    and [hl]
    jp nz, Jump_00B_6339

    ld a, $26
    ld e, $0D
    ld [de], a
    ld a, $11
    ld e, $0E
    ld [de], a
    call Call_00B_63C7
    jp Jump_000_2089


    ld bc, $0010
    call Call_000_20A6
    call Call_00B_6394
    jr z, jr_00B_623C

    ld bc, $0007
    call Call_00B_63B7
    ret z

    jp Jump_000_2089


    call Call_000_21CF
    ld bc, $0007
    call Call_00B_63B7
    call Call_00B_6394
    ret nz

    jr jr_00B_623C

    ld bc, $0007
    call Call_00B_63B7
    call Call_00B_6394
    ret nz

jr_00B_623C:
    ld a, $11
    call Call_000_0875
    ld a, [$C725]
    ld hl, $6251
    rst $28
    ld a, [hl]
    ld hl, $C758
    or [hl]
    ld [hl], a
    jp Jump_000_2183


    nop

    db $01

    ld [bc], a
    inc b
    ld [$1000], sp

    ld e, $01
    ld a, [de]
    rst $00

    db $64, $62, $74, $62, $8F, $62, $DA, $62

    ld hl, $27CD
    call Call_000_2F9F
    call Call_000_21F1
    ret nz

    call Call_000_219F
    jp Jump_000_2089


    ld hl, $27CD
    call Call_000_2F9F
    ld bc, $0010
    call Call_000_20A6
    call Call_00B_6394
    jr z, jr_00B_62A2

    ld bc, $0007
    call Call_00B_63B7
    ret z

    jp Jump_000_2089


    ld hl, $27CD
    call Call_000_2F9F
    call Call_000_21CF
    ld bc, $0007
    call Call_00B_63B7
    call Call_00B_6394
    ret nz

jr_00B_62A2:
    call Call_000_21CF
    xor a
    ld [$C757], a
    ld [$D7DC], a
    ld a, $00
    call Call_000_0875
    ld hl, $C50E
    set 0, [hl]
    ld a, [$C725]
    cp $04
    jr z, jr_00B_62C2

    ld a, $2F
    call Call_000_0875

jr_00B_62C2:
    xor a
    ld e, $0E
    ld [de], a
    ld a, $20
    ld e, $14
    ld [de], a
    push de
    call Call_000_3642
    pop de
    ld hl, $C500
    set 6, [hl]
    ld a, $03
    jp Jump_000_2091


    call Call_000_21F1
    ret nz

    call Call_000_2183
    ld a, [$C725]
    dec a
    cp $05
    jr nz, jr_00B_62EA

    dec a

jr_00B_62EA:
    ld [$C756], a
    ld a, [$C725]
    cp $04
    jr z, jr_00B_62F9

    ld a, $0A
    jp Jump_000_0BCC


jr_00B_62F9:
    ld a, $0D
    ld [$C728], a
    xor a
    ld [$C729], a
    ret


Call_00B_6303:
    push de
    call Call_00B_631C
    call Call_000_22EE
    call Call_000_231E
    pop de
    ld e, $11
    ld a, [de]
    bit 7, a
    ret z

    push af
    ld a, $10
    call Call_000_0875
    pop af
    ret


Call_00B_631C:
    ld a, [$C550]
    and $03
    cp $01
    ret nz

    push hl
    ld h, d
    ld l, $0D
    ld a, [$C550]
    srl a
    srl a
    srl a
    and $01
    res 0, [hl]
    or [hl]
    ld [hl], a
    pop hl
    ret


Jump_00B_6339:
    ld bc, $0080
    call Call_000_20E2
    ld bc, $0040
    call Call_000_20E6
    ld a, $02
    ld e, $00
    ld [de], a
    ld a, $23
    ld e, $0D
    ld [de], a
    ld a, $01
    ld e, $01
    ld [de], a
    ld a, $11
    ld e, $0E
    ld [de], a
    call Call_000_219F
    ld a, $C0
    ld e, $14
    ld [de], a
    xor a
    ld e, $15
    ld [de], a
    jp Jump_00B_6368


Jump_00B_6368:
    ld bc, $D500
    call Call_000_2144
    ret c

    push hl
    ld e, $12
    ld a, [de]
    ld hl, $C7A0
    rst $28
    ld [hl], $01
    pop hl
    ret


Call_00B_637B:
    call Call_000_219F
    ld bc, $0008
    ld e, $15
    ld a, [de]
    bit 5, a
    call z, $DCE3
    call Call_000_20A2
    ld e, $15
    ld a, [de]
    inc a
    and $3F
    ld [de], a
    ret


Call_00B_6394:
Jump_00B_6394:
jr_00B_6394:
    push de
    ld hl, $C500
    call Call_000_227F
    pop de
    jr nc, jr_00B_63A0

    xor a
    ret


jr_00B_63A0:
    ld a, $01
    inc a
    ret


Call_00B_63A4:
    call Call_000_21F1
    jr nz, jr_00B_6394

    ld a, $40
    ld e, $14
    ld [de], a
    jp Jump_000_2089


Call_00B_63B1:
    call Call_000_2133
    jp Jump_00B_6394


Call_00B_63B7:
    ld e, $07
    ld a, [de]
    add c
    cp $90
    jp c, Jump_000_23FD

    cp $E8
    jp nc, Jump_000_23FD

    xor a
    ret


Call_00B_63C7:
    call Call_000_21B3
    ld a, $C0
    ld e, $14
    ld [de], a
    jp Jump_00B_6368


    db $64, $65, $64, $65, $00, $00, $64, $65, $64, $65, $64, $65, $00, $00, $64, $65
    db $64, $65, $64, $65, $78, $78, $78, $00, $7C, $7B, $00, $78, $00, $7A, $79, $00
    db $00, $00, $77, $76, $00, $75, $75, $75, $78, $78, $00, $74, $73, $72, $00, $00
    db $71, $70, $6F, $6E, $6D, $00, $6C, $6B, $6A, $00, $75, $75, $78, $00, $74, $73
    db $6B, $73, $69, $68, $67, $6B, $66, $63, $62, $61, $73, $73, $73, $6A, $00, $75
    db $00, $60, $73, $73, $73, $6B, $73, $5F, $5F, $5E, $5D, $73, $5C, $73, $6B, $73
    db $73, $73, $5B, $00, $00, $5A, $73, $73, $6B, $73, $73, $6B, $59, $5F, $6B, $5C
    db $73, $6B, $73, $73, $6B, $73, $58, $00, $57, $56, $55, $54, $53, $52, $51, $50
    db $6B, $59, $66, $63, $4F, $4E, $4D, $4C, $4B, $4A, $49, $48, $47, $46, $00, $45
    db $00, $44, $00, $00, $5F, $5F, $73, $5C, $00, $00, $43, $00, $42, $00, $41, $40
    db $3F, $00, $78, $00, $00, $00, $00, $3E, $5E, $5D, $5C, $5C, $3D, $00, $00, $00
    db $00, $78, $00, $3C, $3B, $00, $00, $78, $78, $00, $3A, $5F, $6B, $5E, $5D, $39
    db $38, $00, $00, $78, $78, $00, $00, $37, $00, $00, $00, $00, $36, $35, $5F, $59
    db $5E, $5D, $5C, $6B, $5C, $34, $33, $00, $78, $00, $00, $00, $64, $65, $78, $00
    db $32, $31, $30, $2F, $5F, $5F, $39, $5C, $2E, $2D, $2C, $00, $00, $00, $00, $00
    db $64, $65, $78, $2B, $5F, $2A, $00, $00, $29, $28, $27, $26, $00, $25, $5C, $24
    db $00, $78, $64, $65, $64, $65, $64, $65, $23, $22, $00, $00, $00, $00, $00, $78
    db $00, $21, $20, $1F, $64, $65, $64, $65, $64, $65, $64, $65, $1E, $78, $00, $00
    db $64, $65, $64, $65, $00, $75, $1D, $1F, $64, $65, $64, $65, $64, $65, $64, $65
    db $64, $65, $00, $00, $1C, $1B, $1A, $1C, $00, $00, $64, $65, $64, $65, $64, $65
    db $00, $FF, $FF, $00, $00, $FF, $00, $44, $99, $44, $00, $FF, $00, $11, $66, $11
    db $00, $FF, $FF, $00, $00, $FF, $00, $44, $99, $44, $00, $FF, $00, $11, $E6, $11
    db $00, $7E, $61, $81, $53, $AD, $33, $8D, $39, $87, $49, $B7, $4F, $B1, $7E, $7E
    db $04, $0B, $02, $05, $00, $03, $01, $02, $00, $03, $00, $01, $00, $00, $00, $00
    db $20, $D0, $40, $A0, $00, $C0, $80, $40, $00, $C0, $00, $80, $00, $00, $00, $00

    INCBIN "gfx/image_00b_6562.2bpp"

    INCBIN "gfx/image_00b_6a62.2bpp"

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
