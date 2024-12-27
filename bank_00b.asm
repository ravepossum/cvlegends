; Disassembly of "cvlegends.gb"
; This file was created with:
; mgbdis v2.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $00b", ROMX[$4000], BANK[$b]

    ld a, [$C729]
    rst $00

    db $0A, $40, $22, $40, $48, $40

    ld hl, $C50E
    set 0, [hl]
    ldh a, [$87]
    add $04
    ldh [$87], a
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
    xor l
    ld b, b
    db $D3
    ld b, b
    and $40
    cp $40
    ld d, c
    ld b, c
    adc c
    ld b, c
    xor h
    ld b, c
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

    ldh a, [$86]
    sub $04
    ldh [$86], a
    ld a, $06
    ld [$C731], a
    jp Jump_000_0E29


    ld hl, $C731
    dec [hl]
    ret nz

    ld a, $28
    call Call_000_0875
    ldh a, [$86]
    add $04
    ldh [$86], a
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
    call $420C
    pop bc
    inc d
    dec b
    jr nz, jr_00B_4115

    call Call_00B_4233
    jp Jump_000_0E29


    ld b, h
    ld b, c
    ld c, b
    ld b, c
    ld c, h
    ld b, c
    inc bc
    nop
    inc bc
    rlca
    inc bc
    ld [bc], a
    ld b, $09
    inc b
    ld bc, $0504
    ld [$82CD], sp
    ld b, d
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


    nop
    ld bc, $1100
    nop
    ld hl, $3100
    nop
    ld b, c
    nop
    ld d, c
    nop
    ld h, c
    nop
    ld [hl], c
    nop
    add c
    nop
    sub c
    nop
    nop
    nop
    nop
    nop
    nop
    ld sp, $0032
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld sp, $E532
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
    call $F942
    ld b, d
    dec sp
    ld b, e
    ld e, e
    ld b, e
    ld [hl], e
    ld b, e
    call $ED43
    ld b, e
    ld b, $44
    add hl, de
    ld b, h
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
    ldh [$87], a
    ldh [$86], a
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


    ld [bc], a
    dec bc
    ld b, [hl]
    ld b, h
    add b
    ld bc, $0005
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


    nop
    nop
    nop
    ld bc, $0302
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc bc
    ld bc, $0002
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
    ld b, b
    cp a
    ld h, b
    sbc a
    ld [hl], b
    adc a
    ld h, b
    sbc a
    ld d, b
    xor a
    ld h, b
    sbc a
    ld [hl], b
    adc a
    ld d, b
    xor a
    ld [bc], a
    db $FD
    ld b, $F9
    ld [de], a
    db $ED
    ld b, $F9
    ld b, $F9
    ld [bc], a
    db $FD
    ld [bc], a
    db $FD
    ld b, $F9
    nop
    rst $38
    xor $FF
    xor $FF
    xor $FF
    nop
    rst $38
    cp e
    rst $38
    cp e
    rst $38
    cp e
    rst $38
    nop
    rst $38
    ei
    rst $38
    ei
    rst $38
    ei
    rst $38
    nop
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38

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
    xor $44
    ld c, b
    ld b, l
    and d
    ld b, l
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


    ld d, h
    xor e
    push de
    nop
    rst $38
    nop
    daa
    ld e, b
    reti


    ld b, $53

jr_00B_4607:
    xor h
    rst $28
    stop
    rst $38
    xor b
    ld d, a
    ld [$FF00], a
    nop
    and e
    nop
    push de
    ld [hl+], a
    ld c, a
    nop
    or l
    ld b, b
    nop
    rst $38
    ld b, h
    add b
    pop de
    jr nz, jr_00B_4607

    ld [$03B8], sp
    rst $18
    jr nz, @+$75

    adc h
    sub a
    ld l, b
    adc $30
    nop
    ld b, b
    nop
    ld [bc], a
    stop
    add b

jr_00B_4633:
    nop
    ret nz

    ld bc, $40A8
    jr nc, jr_00B_463A

jr_00B_463A:
    add sp, $10
    ld b, d
    cp l
    ld d, [hl]
    nop
    rst $38
    nop
    add hl, de
    ld [bc], a
    xor [hl]
    db $10
    ld a, d
    dec b
    xor a
    nop
    nop
    rst $38
    and l
    ld e, d
    xor a
    nop
    rst $38
    nop
    dec a
    ret nz

    adc $31
    sbc d
    ld h, b
    ld a, l
    add d
    nop
    rst $38
    ld bc, $F0E0
    ld [$02ED], sp
    cp d
    ld bc, $00FF
    ld a, e
    add h
    sub $29
    rst $18
    jr nz, jr_00B_466D

jr_00B_466D:
    nop
    nop
    jr nz, jr_00B_4671

jr_00B_4671:
    nop
    add hl, bc
    add b
    add b
    ld b, b
    ldh [rDIV], a
    ld h, b
    db $10
    ld h, b
    sub b
    xor b
    ld d, a
    ld [$FF00], a
    nop
    and e
    nop
    push de
    ld [hl+], a
    ld c, a
    nop
    or l
    ld b, b
    nop
    rst $38
    ld d, h
    xor e
    push de
    nop
    rst $38
    nop
    daa
    ld e, b
    reti


    ld b, $53
    xor h
    rst $28
    stop
    rst $38
    ld b, b
    add b
    ret nc

    ld [hl+], a
    and $08
    cp b
    inc bc
    rst $38
    nop
    db $DB
    nop
    dec l
    nop
    rst $10
    ld [$0080], sp
    nop
    ld [bc], a
    ld [bc], a
    jr nz, jr_00B_4633

    nop
    call nz, $A010
    ld b, b
    ldh a, [rP1]
    ld l, b

jr_00B_46BB:
    sub c
    nop
    ld [bc], a
    nop
    ld b, b
    ld [$0100], sp
    nop
    inc bc
    add b
    dec d
    ld [bc], a
    inc c
    nop
    rla
    ld [$0122], sp
    adc e
    inc b
    ld h, a
    db $10
    dec e
    ret nz

    ei
    inc b
    adc $31
    jp hl


    ld d, $73
    inc c
    dec d
    ld [$0057], a
    rst $38
    nop
    push bc
    nop
    xor e
    ld b, h
    ld a, [c]
    nop
    xor l
    ld [bc], a
    nop
    rst $38
    ld a, [hl+]
    push de
    xor e
    nop
    rst $38
    nop
    db $E4
    ld a, [de]
    sbc e
    ld h, b
    jp z, $F735

    ld [$FF00], sp
    nop
    nop
    nop
    nop

jr_00B_4700:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_00B_470C:
    nop

jr_00B_470D:
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    ld d, l
    nop
    rst $18
    nop
    ld [hl], a
    ld [$1D62], sp
    ld b, b
    cp a
    ld [de], a
    db $ED
    ld a, e
    add h
    ldh [$08], a
    ld d, c
    jr z, jr_00B_470D

    jr nz, jr_00B_46BB

    ld [hl], h
    adc h
    ld [hl], b
    jr nz, jr_00B_470C

    inc [hl]
    ret nz

    jr c, jr_00B_4700

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    and [hl]
    ld e, c
    ld l, e
    inc d
    cp $00
    ld e, d
    nop
    ld l, h
    nop
    ld a, [hl]
    add b
    inc sp
    call z, $B649
    and b
    ld c, c
    pop de
    ld [$00BC], sp
    xor h
    db $10
    jp hl


    inc d

jr_00B_4776:
    and h
    ld d, b
    add b
    ld [hl], h
    inc l
    ret nc

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, [c]
    dec c
    ld [hl+], a
    ld e, l
    reti


    ld h, $7E
    ld bc, $007F
    ld c, [hl]
    add b
    ld h, l
    add b
    ld [hl], a
    add b
    jr nz, jr_00B_4776

    sub d
    ld l, b
    db $EC
    db $10
    ld hl, sp+$04
    call c, $E800
    inc b
    inc l
    nop
    ld b, b
    inc b
    rlca
    db $10
    adc d
    inc d
    dec sp
    inc b
    ld de, $312E
    ld c, $04
    dec hl
    inc l
    inc bc
    inc e
    inc hl
    ccf
    nop
    xor d
    nop
    ei
    nop
    xor $10
    ld b, [hl]
    cp b
    ld [bc], a
    db $FD
    ld c, b
    or a
    sbc $21
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    sub b
    ld bc, $0201
    rlca
    jr nz, jr_00B_480F

    ld [$0906], sp
    add b
    rlca
    rrca

jr_00B_480F:
    db $10
    or a
    ld b, b
    ld e, l
    add b
    rst $38
    nop
    sbc $21
    ld l, e
    sub h
    ei
    inc b
    and l
    ld e, d
    push af
    nop
    rst $38
    nop
    cp h
    inc bc
    ld [hl], e
    adc h
    ld e, c
    ld b, $BE
    ld b, c
    nop
    rst $38
    ld b, d
    cp l
    ld l, d
    nop
    rst $38
    nop
    sbc b
    ld b, b
    ld [hl], l
    ld [$A05E], sp
    push af
    nop
    nop
    rst $38
    ld bc, $0000
    ld b, b
    ld b, b
    inc b
    ld bc, $2300
    ld [$0205], sp
    rrca
    nop
    ld d, $89
    ld [bc], a
    ld bc, $440B
    ld h, a
    db $10
    dec e
    ret nz

    rst $38
    nop
    db $DB
    nop
    or h
    nop
    db $EB
    db $10
    ld a, [hl+]
    push de
    xor e
    nop
    rst $38
    nop
    db $E4
    ld a, [de]
    sbc e
    ld h, b
    jp z, $F735

    ld [$FF00], sp
    dec d
    ld [$0057], a
    rst $38
    nop
    push bc
    nop
    xor e
    ld b, h
    ld a, [c]
    nop
    xor l
    ld [bc], a
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec b
    sub d
    adc e
    db $10
    dec a
    nop
    dec [hl]
    ld [$2897], sp
    dec h
    ld a, [bc]
    ld bc, $342E
    dec bc
    ld h, l
    sbc d
    sub $28
    ld a, a
    nop
    ld e, d
    nop
    ld [hl], $00
    ld a, [hl]
    ld bc, $33CC
    sub d
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc de
    ld c, c
    ld d, $37
    ld [$201F], sp
    dec sp
    nop
    rla
    jr nz, jr_00B_497D

    nop
    ld [bc], a
    jr nz, jr_00B_499C

    or b
    ld b, h
    cp d
    sbc e
    ld h, h
    ld a, [hl]
    add b
    cp $00
    ld [hl], d
    ld bc, $01A6
    xor $01
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

jr_00B_497D:
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

jr_00B_499C:
    ld de, $C800
    call Call_000_2183
    xor a
    ldh [$87], a
    ldh [$86], a
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


    ld e, $32
    ld h, $32
    ld l, $32
    ld [hl], $32
    ld a, $32
    ld bc, $0402
    ld [$0010], sp

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
    ccf
    ld c, h
    ld b, l
    ld c, h
    ld c, e
    ld c, h
    ld d, c
    ld c, h
    ld d, a
    ld c, h
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
    pop de
    ld c, h
    rst $10
    ld c, h
    db $DD
    ld c, h
    db $E3
    ld c, h
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

    db $5C, $54, $6D, $54

    ld b, l
    ld d, l
    jp $E355


    ld d, l
    ld h, $56
    rlca
    ld e, b
    daa
    ld e, c
    add b
    ld e, d
    or c
    ld e, e
    db $D3
    ld e, e
    ldh a, [$5B]
    inc bc
    ld e, h
    ld e, e
    ld d, h
    ld d, e
    ld e, h
    sbc d
    ld e, h
    ld b, l
    ld d, l
    ld d, d
    ld e, [hl]
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
    ld c, a
    ld d, l
    ld d, b
    ld d, l
    ld h, c
    ld d, l
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
    db $EB
    ld d, l
    ld a, [$CD55]
    inc bc
    ld h, e
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
    inc sp
    ld e, c
    ld d, d
    ld e, c
    ld a, [hl]
    ld e, c
    xor c
    ld e, c
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
    ldh [$8A], a
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
    ldh [$88], a
    ld e, $14
    ld a, [de]
    bit 0, a
    jr z, jr_00B_5D29

    ld a, $00
    ldh [$88], a

jr_00B_5D29:
    call Call_000_21F1
    ret nz

    ld a, $E4
    ldh [$88], a
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
    ld e, d
    ld e, [hl]
    ld h, e
    ld e, [hl]
    ld a, [$C50C]
    cp $20
    ret c

    jp Jump_000_2089


    call Call_000_21F1
    ret nz

    ld a, [$C73E]
    rst $00
    adc e
    ld e, [hl]
    xor l
    ld e, [hl]
    rst $08
    ld e, [hl]
    pop af
    ld e, [hl]
    inc de
    ld e, a
    add hl, hl
    ld e, a
    ccf
    ld e, a
    ld d, l
    ld e, a
    ld l, e
    ld e, a
    add c
    ld e, a
    sub a
    ld e, a
    xor l
    ld e, a
    jp $D95F


    ld e, a
    rst $28
    ld e, a
    dec b
    ld h, b
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

    db $2B, $60, $2C, $60, $A0, $60, $F6, $60, $77, $61

    ldh [$61], a

    db $58, $62

    ret


    ld e, $01
    ld a, [de]
    rst $00

    db $38, $60, $56, $60, $6B, $60

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

    db $02, $61, $1E, $61, $33, $61

    ld b, d
    ld h, c

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
    db $EC
    ld h, c
    ld c, $62
    inc hl
    ld h, d
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
    ld bc, $0402
    ld [$1000], sp

    ld e, $01
    ld a, [de]
    rst $00

    db $64, $62, $74, $62

    adc a
    ld h, d

    db $DA, $62

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


    ld h, h
    ld h, l
    ld h, h
    ld h, l
    nop
    nop
    ld h, h
    ld h, l
    ld h, h
    ld h, l
    ld h, h
    ld h, l
    nop
    nop
    ld h, h
    ld h, l
    ld h, h
    ld h, l
    ld h, h
    ld h, l
    ld a, b
    ld a, b
    ld a, b
    nop
    ld a, h
    ld a, e
    nop
    ld a, b
    nop
    ld a, d
    ld a, c
    nop
    nop
    nop
    ld [hl], a
    halt
    nop
    ld [hl], l
    ld [hl], l
    ld [hl], l
    ld a, b
    ld a, b
    nop
    ld [hl], h
    ld [hl], e
    ld [hl], d
    nop
    nop
    ld [hl], c
    ld [hl], b
    ld l, a
    ld l, [hl]
    ld l, l
    nop
    ld l, h
    ld l, e
    ld l, d
    nop
    ld [hl], l
    ld [hl], l
    ld a, b
    nop
    ld [hl], h
    ld [hl], e
    ld l, e
    ld [hl], e
    ld l, c
    ld l, b
    ld h, a
    ld l, e
    ld h, [hl]
    ld h, e
    ld h, d
    ld h, c
    ld [hl], e
    ld [hl], e
    ld [hl], e
    ld l, d
    nop
    ld [hl], l
    nop
    ld h, b
    ld [hl], e
    ld [hl], e
    ld [hl], e
    ld l, e
    ld [hl], e
    ld e, a
    ld e, a
    ld e, [hl]
    ld e, l
    ld [hl], e
    ld e, h
    ld [hl], e
    ld l, e
    ld [hl], e
    ld [hl], e
    ld [hl], e
    ld e, e
    nop
    nop
    ld e, d
    ld [hl], e
    ld [hl], e
    ld l, e
    ld [hl], e
    ld [hl], e
    ld l, e
    ld e, c
    ld e, a
    ld l, e
    ld e, h
    ld [hl], e
    ld l, e
    ld [hl], e
    ld [hl], e
    ld l, e
    ld [hl], e
    ld e, b
    nop
    ld d, a
    ld d, [hl]
    ld d, l
    ld d, h
    ld d, e
    ld d, d
    ld d, c
    ld d, b
    ld l, e
    ld e, c
    ld h, [hl]
    ld h, e
    ld c, a
    ld c, [hl]
    ld c, l
    ld c, h
    ld c, e
    ld c, d
    ld c, c
    ld c, b
    ld b, a
    ld b, [hl]
    nop
    ld b, l
    nop
    ld b, h
    nop
    nop
    ld e, a
    ld e, a
    ld [hl], e
    ld e, h
    nop
    nop
    ld b, e
    nop
    ld b, d
    nop
    ld b, c
    ld b, b
    ccf
    nop
    ld a, b
    nop
    nop
    nop
    nop
    ld a, $5E
    ld e, l
    ld e, h
    ld e, h
    dec a
    nop
    nop
    nop
    nop
    ld a, b
    nop
    inc a
    dec sp
    nop
    nop
    ld a, b
    ld a, b
    nop
    ld a, [hl-]
    ld e, a
    ld l, e
    ld e, [hl]
    ld e, l
    add hl, sp
    jr c, jr_00B_6494

jr_00B_6494:
    nop
    ld a, b
    ld a, b
    nop
    nop
    scf
    nop
    nop
    nop
    nop
    ld [hl], $35
    ld e, a
    ld e, c
    ld e, [hl]
    ld e, l
    ld e, h
    ld l, e
    ld e, h
    inc [hl]
    inc sp
    nop
    ld a, b
    nop
    nop
    nop
    ld h, h
    ld h, l
    ld a, b
    nop
    ld [hl-], a
    ld sp, $2F30
    ld e, a
    ld e, a
    add hl, sp
    ld e, h
    ld l, $2D
    inc l
    nop
    nop
    nop
    nop
    nop
    ld h, h
    ld h, l
    ld a, b
    dec hl
    ld e, a
    ld a, [hl+]
    nop
    nop
    add hl, hl
    jr z, jr_00B_64F4

    ld h, $00
    dec h
    ld e, h
    inc h
    nop
    ld a, b
    ld h, h
    ld h, l
    ld h, h
    ld h, l
    ld h, h
    ld h, l
    inc hl
    ld [hl+], a
    nop
    nop
    nop
    nop
    nop
    ld a, b
    nop
    ld hl, $1F20
    ld h, h
    ld h, l
    ld h, h
    ld h, l
    ld h, h
    ld h, l
    ld h, h
    ld h, l
    ld e, $78
    nop
    nop
    ld h, h
    ld h, l

jr_00B_64F4:
    ld h, h
    ld h, l
    nop
    ld [hl], l
    dec e
    rra
    ld h, h
    ld h, l
    ld h, h
    ld h, l
    ld h, h
    ld h, l
    ld h, h
    ld h, l
    ld h, h
    ld h, l
    nop
    nop
    inc e
    dec de
    ld a, [de]
    inc e
    nop
    nop
    ld h, h
    ld h, l
    ld h, h
    ld h, l
    ld h, h
    ld h, l
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

jr_00B_6524:
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
    inc b
    dec bc
    ld [bc], a
    dec b
    nop
    inc bc
    ld bc, $0002
    inc bc
    nop
    ld bc, $0000
    nop
    nop
    jr nz, jr_00B_6524

    ld b, b
    and b
    nop
    ret nz

    add b
    ld b, b
    nop
    ret nz

    nop
    add b
    nop
    nop
    nop
    nop
    nop
    ld a, a

jr_00B_6564:
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
    nop
    rst $38
    nop
    rst $38
    db $10
    rst $28
    ld [$48F7], sp
    or a
    inc l
    ld d, e
    inc e
    inc hl
    inc c
    inc de
    inc b
    dec bc
    ld [bc], a
    dec b
    ld bc, $0002
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_00B_6564

    ld b, b
    and b
    add b
    ld b, b
    nop
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
    rst $38
    nop
    rst $38
    ld [$10F7], sp
    rst $28
    ld [de], a
    db $ED
    inc [hl]
    jp z, $C438

    jr nc, @-$36

    nop
    nop
    nop
    add b
    nop
    add b
    nop
    ret nz

    nop
    ret nz

    add b
    ld h, b
    ld b, b
    and b
    ld b, b
    and b
    ld [bc], a
    dec c
    ld [bc], a
    dec b
    nop
    rlca
    ld [bc], a
    dec b
    ld [bc], a
    dec b
    ld [bc], a
    dec b
    inc b
    dec bc
    inc b
    dec bc
    nop
    rst $38
    nop
    ld hl, sp+$00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $3EFE
    pop bc
    ld hl, sp+$07
    ret nz

    ld a, $00
    ldh [rP1], a
    nop
    nop
    nop

jr_00B_65F0:
    nop
    nop

jr_00B_65F2:
    inc a
    jp $E31C


    adc h
    ld [hl], e
    ld d, a
    xor b
    nop
    ld a, a
    nop

jr_00B_65FD:
    nop
    nop
    nop
    nop
    nop
    inc e
    ld h, e
    inc c
    inc de
    rlca
    ld [$0700], sp
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, b
    or b
    ld b, b
    and b
    nop
    ldh [rLCDC], a
    and b
    ld b, b
    and b
    ld b, b
    and b
    jr nz, jr_00B_65F0

    jr nz, jr_00B_65F2

    nop
    nop
    nop
    ld bc, $0100
    nop
    inc bc
    nop
    inc bc
    ld bc, $0206
    dec b
    ld [bc], a
    dec b
    add b
    ld h, b
    nop
    ret nc

    ld h, b

jr_00B_6637:
    adc b
    sub b
    ld l, b
    ld [$00F4], sp
    cp $04
    ei
    ld b, $F9
    inc bc

jr_00B_6643:
    db $FC
    ld [bc], a

jr_00B_6645:
    db $FC
    push hl
    jr jr_00B_66C1

    add b
    dec e
    ld h, b
    ld [bc], a
    dec a
    inc b
    dec de
    inc b

jr_00B_6651:
    dec bc
    ld b, $F9
    dec e
    ldh [$03], a
    ret nz

    ld e, $C1
    ldh a, [$0C]
    or b
    ld b, b
    nop
    add b
    nop
    nop

jr_00B_6662:
    jr nz, jr_00B_6643

    jr nz, jr_00B_6645

    jr nc, jr_00B_6637

jr_00B_6668:
    jr jr_00B_6651

    ld h, h
    sbc e
    add e
    ld h, h
    nop
    add e
    nop
    nop
    ld h, b
    sbc a
    jr c, jr_00B_65FD

    ret c

    rlca
    inc a
    jp Jump_000_3807


    ld bc, $0006

jr_00B_667F:
    ld bc, $0000
    add b
    ld a, a
    add b
    ld a, a
    jp $663C


    add hl, de
    cp b
    ld b, $40
    cp h
    jr nz, jr_00B_6668

    jr nz, jr_00B_6662

    ld bc, $0006
    dec bc
    ld b, $11
    add hl, bc
    ld d, $10
    cpl
    nop
    ld a, a

jr_00B_669E:
    jr nz, jr_00B_667F

    ld h, b
    sbc a
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    ldh [$A0], a
    ld e, b
    jr jr_00B_669E

    inc c
    ld a, [c]

jr_00B_66BC:
    inc b
    ld a, [$F906]
    ld [bc], a

jr_00B_66C1:
    db $FC
    nop
    nop
    nop
    rlca
    dec b
    ld a, [de]
    jr jr_00B_66F1

    jr nz, jr_00B_672B

    jr nz, jr_00B_672D

    ld h, b
    sbc a
    ld b, b
    ccf
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $1C00
    nop
    inc e
    nop
    inc e
    nop
    inc e
    nop
    jr jr_00B_66ED

jr_00B_66ED:
    jr jr_00B_66EF

jr_00B_66EF:
    jr c, jr_00B_66F1

jr_00B_66F1:
    ld [hl], b
    jr nc, jr_00B_66BC

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
    jr c, @-$37

    jr jr_00B_66ED

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
    ld bc, $0100

jr_00B_6716:
    ld bc, $0202
    dec b
    inc b
    dec de
    ld [$1227], sp
    ld c, l
    inc a
    ld b, e
    nop
    jr c, jr_00B_6725

jr_00B_6725:
    jr nc, jr_00B_6727

jr_00B_6727:
    jr nc, jr_00B_6729

jr_00B_6729:
    jr nc, jr_00B_672B

jr_00B_672B:
    jr nc, jr_00B_672D

jr_00B_672D:
    stop
    jr jr_00B_6731

jr_00B_6731:
    ld c, $00
    jr c, jr_00B_6735

jr_00B_6735:
    inc a
    nop
    inc e
    nop
    inc e
    nop
    inc e
    nop
    inc e
    nop
    inc e
    nop
    inc e
    nop
    add b
    nop
    ld b, b
    add b
    ld b, b
    add b
    jr nz, jr_00B_67AB

    sub b
    jr nz, jr_00B_6716

    jr nc, @-$36

    db $10
    add sp, $00
    ld bc, $0201
    ld [bc], a
    dec e
    jr jr_00B_6781

    db $10
    ld c, a
    jr nz, @-$5F

    ld h, b
    sbc a
    ld b, b
    cp a
    nop
    rra
    nop
    ld e, $00
    ld e, $00
    inc e
    nop
    inc e
    nop
    inc a
    nop
    jr c, jr_00B_6771

jr_00B_6771:
    jr c, jr_00B_6773

jr_00B_6773:
    ldh [rP1], a
    ldh [rP1], a
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ld a, b
    nop

jr_00B_6781:
    ld a, b
    nop
    rlca
    nop
    inc bc
    nop
    ld bc, $0100
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr c, jr_00B_6795

jr_00B_6795:
    jr c, jr_00B_6797

jr_00B_6797:
    jr jr_00B_6799

jr_00B_6799:
    jr jr_00B_679B

jr_00B_679B:
    jr jr_00B_679D

jr_00B_679D:
    ld [$0000], sp
    nop
    nop
    nop
    jr nc, jr_00B_67A5

jr_00B_67A5:
    jr nz, jr_00B_67A7

jr_00B_67A7:
    jr nz, jr_00B_67A9

jr_00B_67A9:
    nop
    nop

jr_00B_67AB:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc c
    nop
    inc b
    nop
    inc b
    nop
    nop
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
    nop
    inc e
    nop
    jr jr_00B_67C9

jr_00B_67C9:
    jr jr_00B_67CB

jr_00B_67CB:
    jr jr_00B_67CD

jr_00B_67CD:
    stop
    nop
    nop
    nop
    nop
    ldh a, [rP1]
    ldh [rP1], a
    ldh [rP1], a
    ret nz

    nop
    ret nz

    nop
    ret nz

    nop
    add b
    nop
    nop
    nop
    inc bc
    nop
    rlca
    nop
    rlca
    nop
    rlca
    nop
    rrca
    nop
    rrca
    nop
    rrca
    nop
    rrca
    nop
    add b
    nop
    add b
    nop
    ret nz

    nop
    ret nz

    nop
    ret nz

    nop
    ret nz

    nop
    ret nz

    nop
    ldh [rP1], a
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
    rra
    nop
    rrca
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

jr_00B_683F:
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
    jr c, jr_00B_6851

jr_00B_6851:
    jr nc, jr_00B_6853

jr_00B_6853:
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
    jr nz, jr_00B_683F

    ld b, b
    and d
    nop
    ret nz

    nop
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $E3
    nop
    jp $4100


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
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    cp $00
    db $FC
    nop
    inc a
    nop
    inc e
    nop
    inc c
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ret nz

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
    cp $00
    ld hl, sp+$00
    nop
    nop
    nop
    nop
    ld bc, $0100
    nop
    ld bc, $0300
    nop
    inc bc
    nop
    inc bc
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
    inc e
    db $E3
    jr @-$17

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
    rra
    nop
    ccf
    nop
    ccf
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    rst $38
    nop
    rst $38
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

jr_00B_6931:
    ld hl, sp+$38
    rst $00
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
    ret nz

    ccf
    and b
    ld e, a
    nop
    cp a
    add b
    ld a, a
    ret nz

    ccf
    ldh [$1F], a
    ld h, b
    sbc a
    ld b, b
    cp a
    ld bc, $03FE
    db $FC
    ld bc, $03FA
    db $FC
    ld b, $F9
    inc bc
    db $FC
    ld [bc], a
    db $FD
    ld [bc], a
    db $FD
    inc e
    db $E3
    ld a, [hl-]
    push bc

jr_00B_6966:
    db $10
    xor e
    jr c, jr_00B_6931

    ld l, h
    sub e
    ld a, $C1

jr_00B_696E:
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
    nop
    nop
    nop

jr_00B_6985:
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
    jr nz, @+$42

    or b
    ld b, b
    sub b
    ld h, b
    sub b
    jr nz, jr_00B_6966

    jr nc, jr_00B_696E

    jr @-$17

    add b
    ld a, a
    ret nz

    ccf
    add b
    ld e, a
    ret nz

    ccf
    ld h, b
    sbc a
    ret nz

    ccf
    ld b, b
    cp a
    ld b, b
    cp a
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
    inc bc
    db $FC
    dec b
    ld a, [$FD00]
    ld bc, $03FE
    db $FC
    rlca
    ld hl, sp+$06
    ld sp, hl
    ld [bc], a
    db $FD
    db $10
    ld l, a
    jr nz, jr_00B_6985

    ld b, b
    cp a
    ld b, b
    cp a
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
    nop
    nop
    add b
    nop
    ret nz

    nop
    ldh [rP1], a
    ldh a, [rP1]
    ld hl, sp+$00
    db $FC
    nop
    cp $00
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
    ccf
    nop
    ccf
    nop
    ccf
    nop
    ccf
    nop

jr_00B_6A3B:
    ccf
    nop
    ld a, a
    nop
    ld a, a
    nop

jr_00B_6A41:
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
    add b
    nop
    ret nz

    add b
    ld b, b
    nop
    add b
    nop
    ld b, b
    add b
    ld b, b
    add b
    jr c, jr_00B_6A3B

    ld b, $7C
    add c
    ld a, [hl-]
    call nz, $FF00
    inc bc
    db $FC
    ld bc, $00FE
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
    inc e
    db $E3
    ld a, [hl-]
    push bc
    db $10
    xor e
    jr c, jr_00B_6A41

    ld c, h
    or e
    ld a, $C1
    ld b, $F9
    inc h
    db $DB
    nop
    nop
    nop
    nop
    nop
    ld bc, $0300
    ld bc, $0202
    dec b
    inc b
    dec de
    ld [$0027], sp
    db $FC
    nop
    db $FC
    nop
    db $FC
    nop
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
    rst $38
    nop
    jr nz, jr_00B_6AC6

jr_00B_6AC6:
    jr nz, jr_00B_6AC8

jr_00B_6AC8:
    jr nz, jr_00B_6ACA

jr_00B_6ACA:
    rst $38
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    nop
    nop
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
    nop
    ldh a, [rP1]
    db $FC
    nop
    nop
    nop
    nop
    nop
    ldh [rP1], a
    ld hl, sp+$00
    ld a, [hl]
    nop
    ccf
    nop
    ccf
    nop
    ccf
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
    jr nz, jr_00B_6AFE

jr_00B_6AFE:
    jr nz, jr_00B_6B00

jr_00B_6B00:
    jr nz, jr_00B_6B02

jr_00B_6B02:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh a, [$E0]
    ld c, $0C
    pop af
    nop
    nop
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
    ld bc, $0C1C
    inc hl
    nop
    nop
    nop
    nop
    nop
    rlca
    nop
    rra
    nop
    ld a, [hl]
    nop
    db $FC
    nop
    db $FC
    nop
    db $FC
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0F00
    nop
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
