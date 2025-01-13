SECTION "ROM Bank $003", ROMX

    ld a, [$C795]
    or a
    ret nz

    xor a
    call Call_003_4010
    ld a, $01
    call Call_003_4010
    ld a, $02

Call_003_4010:
    ld [$C7D4], a
    ld a, [$C780]
    and $30
    cp $30
    jp z, Jump_003_41D3

    ld a, [$C781]
    bit 0, a
    jp nz, Jump_003_4031

    ld a, $A0
    ld [$C793], a
    ld a, [$C773]
    or a
    jr nz, jr_003_403B

    ret


Jump_003_4031:
    ld a, $80
    ld [$C793], a
    ld a, [$C77A]
    or a
    ret z

jr_003_403B:
    and $80
    rlca
    rst $00

    db $43, $40, $C8, $40

    call Call_003_4174
    call Call_003_4188
    rst $28

Jump_003_404A:
    ld a, [hl]
    cp $FF
    ret z

    ld d, [hl]
    res 7, d
    inc hl
    ld e, [hl]
    dec hl
    ld a, [$C781]
    bit 0, a
    jp nz, Jump_003_408E

    ld a, [$C775]
    and $0F
    ld b, a
    ld a, [$C776]
    ld c, a
    call $DCB4
    ret c

    push bc
    ld a, $05
    call Call_000_24CF
    call $DCB4
    pop bc
    jr nc, jr_003_4088

    push hl
    ld a, $05
    rst $28
    ld a, [hl-]
    ld [$C7D1], a
    call Call_003_4193
    ld [$C7D0], a
    pop hl
    call Call_003_4149

jr_003_4088:
    call Call_003_41FA
    jp Jump_003_404A


Jump_003_408E:
    ld a, [$C77C]
    and $0F
    ld b, a
    ld a, [$C77D]
    ld c, a
    call $DCB4
    ret c

    push bc
    ld a, $05
    call Call_000_24CF
    call $DCB4
    pop bc
    jr nc, jr_003_40C2

    push hl
    ld a, $04
    add l
    ld l, a
    ld a, [hl+]
    ld [$C7D0], a
    ld a, e
    ld c, a
    call Call_003_4193
    ld b, a
    ld a, [$C77A]
    add b
    ld [$C7D1], a
    pop hl
    call Call_003_4149

jr_003_40C2:
    call Call_003_41FA
    jp Jump_003_404A


    call Call_003_417E
    call Call_003_4188
    rst $28

Jump_003_40CF:
    ld a, [hl]
    cp $FF
    ret z

    ld d, [hl]
    res 7, d
    inc hl
    ld e, [hl]
    dec hl
    ld a, [$C781]
    bit 0, a
    jr nz, jr_003_4113

    ld a, [$C775]
    and $0F
    ld b, a
    ld a, [$C776]
    ld c, a
    call $DCB4
    ret nc

    push bc
    ld a, $05
    call Call_000_24B8
    call $DCB4
    pop bc
    jr c, jr_003_410C

    push hl
    ld a, $05
    rst $28
    ld a, [hl-]
    ld [$C7D1], a
    call Call_003_41A2
    ld [$C7D0], a
    pop hl
    call Call_003_4157

jr_003_410C:
    call Call_003_4165
    ret z

    jp Jump_003_40CF


jr_003_4113:
    ld a, [$C77C]
    and $0F
    ld b, a
    ld a, [$C77D]
    ld c, a
    call $DCB4
    ret nc

    push bc
    ld a, $05
    call Call_000_24B8
    call $DCB4
    pop bc
    jr c, jr_003_4142

    push hl
    ld a, $04
    add l
    ld l, a
    ld a, [hl+]
    ld [$C7D0], a
    ld a, e
    ld c, a
    call Call_003_41A2
    ld [$C7D1], a
    pop hl
    call Call_003_4157

jr_003_4142:
    call Call_003_4165
    ret z

    jp Jump_003_40CF


Call_003_4149:
    call Call_000_246D
    ret nz

    call Call_003_41AF
    ret nz

    call Call_003_4243
    jp Jump_003_4216


Call_003_4157:
    call Call_000_246D
    ret nz

    call Call_003_41AF
    ret nz

    call Call_003_4243
    jp Jump_003_4216


Call_003_4165:
    call Call_003_420A
    push hl
    dec l
    ld a, [hl]
    pop hl
    cp $FF
    ret z

    ld bc, $FFFA
    add hl, bc
    ret


Call_003_4174:
    ld hl, $C820
    ld a, [$C7D4]
    add a
    add h
    ld h, a
    ret


Call_003_417E:
    ld hl, $C920
    ld a, [$C7D4]
    add a
    add h
    ld h, a
    ret


Call_003_4188:
    push hl
    ld a, [$C7D4]
    ld hl, $C790
    rst $28
    ld a, [hl]
    pop hl
    ret


Call_003_4193:
    ld a, [$C793]
    ld b, a
    ld a, c
    sub e
    jr nc, jr_003_419E

    ld a, c
    add b
    sub e

jr_003_419E:
    ld b, a
    ld a, [hl]
    sub b
    ret


Call_003_41A2:
    ld a, [$C793]
    ld b, a
    ld a, e
    sub c
    jr nc, jr_003_41AD

    ld a, e
    add b
    sub c

jr_003_41AD:
    add [hl]
    ret


Call_003_41AF:
    push hl
    call Call_003_4243
    inc hl
    inc hl
    ld a, [hl]
    ld e, a
    and $E0
    swap a
    srl a
    add b
    ld b, a
    pop hl
    ld a, [bc]
    or a
    ret z

    ld a, e
    and $1F
    ld e, a
    ld c, $12
    ld a, [bc]
    cp e
    jr z, jr_003_41CF

    scf
    ret


jr_003_41CF:
    ld a, $01
    inc a
    ret


Jump_003_41D3:
    call Call_003_4174
    call Call_003_4188
    rst $28

jr_003_41DA:
    ld a, [hl]
    xor $FF
    ret z

    call Call_003_421E
    jr z, jr_003_41F5

    push hl
    inc hl
    inc hl
    ld a, [hl+]
    ld [$C7D0], a
    ld a, [hl-]
    ld [$C7D1], a
    pop hl
    call Call_003_4243
    call Call_000_2492

jr_003_41F5:
    call Call_003_41FA
    jr jr_003_41DA

Call_003_41FA:
    ld a, [$C7D4]
    ld bc, $C790
    rst $38
    ld a, l
    sub $20
    ld [bc], a
    ld bc, $0006
    add hl, bc
    ret


Call_003_420A:
    ld a, [$C7D4]
    ld bc, $C790
    rst $38
    ld a, l
    sub $20
    ld [bc], a
    ret


Jump_003_4216:
    push hl
    inc hl
    inc hl
    call Call_003_421E
    pop hl
    ret


Call_003_421E:
    ld a, [hl]
    and $E0
    swap a
    srl a
    add b
    ld d, a
    call Call_000_2183
    ld e, $12
    ld a, [hl+]
    and $1F
    ld [de], a
    ld e, $00
    ld a, [hl]
    set 7, a
    ld [de], a
    ld e, $07
    ld a, [$C7D1]
    ld [de], a
    ld e, $0C
    ld a, [$C7D0]
    ld [de], a
    ret


Call_003_4243:
    ld a, [$C7D4]
    ld bc, $C900
    cp $01
    ret c

    ld bc, $CD00
    ret z

    ld bc, $D500
    ret


    res 7, a
    ld [de], a
    rst $00

    db $BE, $42, $2E, $48, $2E, $48, $2E, $48, $2E, $48, $2E, $48, $41, $48, $BF, $42
    db $C9, $42, $E9, $42, $0C, $43, $48, $43, $70, $43, $A9, $43, $DD, $43, $F5, $43
    db $1D, $44, $55, $44, $98, $44, $7A, $44, $B1, $44

    cp [hl]
    ld b, d

    db $EE, $44, $07, $45, $2C, $45, $C3, $45, $0B, $46, $28, $46, $D3, $46

    adc b
    ld b, a

    db $27, $47, $71, $47, $1B, $48, $6B, $48, $7E, $48, $A2, $48, $E9, $48, $2E, $48

    cp [hl]
    ld b, d

    db $03, $49, $BE, $42, $26, $49, $6B, $48, $6B, $48

    ld l, e
    ld c, b
    cp [hl]
    ld b, d

    db $44, $49

    ld l, $48
    ld c, h
    ld c, c

    db $5E, $49, $7A, $49

    ret


    ld a, $33
    ld e, $0D
    ld [de], a
    ld a, $01
    jp Jump_000_2190


    ld a, $36
    ld e, $0D
    ld [de], a
    ld a, $01
    call Call_000_2190
    ld bc, $FFA0
    call Call_000_20E2
    call Call_000_2565
    call Call_000_2688
    jp z, Jump_000_219F

    call Call_000_21D7
    call Call_000_21E4
    ret


    ld bc, $42FF
    call Call_000_2640
    call Call_000_2565
    call Call_000_2688
    jp z, Jump_000_219F

    call Call_000_21D7
    call Call_000_21E4
    ret


    db $00, $00, $00, $51, $01, $00, $00, $00, $00, $01, $02, $EF, $27

    ld e, $1B
    ld a, [de]
    or a
    jr nz, jr_003_4328

    ld bc, $433B
    call Call_000_2640
    call Call_000_2565
    call Call_000_2688
    jp z, Jump_000_219F

    call Call_000_21D7
    call Call_000_21E4
    ret


jr_003_4328:
    ld bc, $433B
    call Call_000_2640
    call Call_000_2565
    ld a, $20
    ld e, $14
    ld [de], a
    ld a, $02
    jp Jump_000_2091


    db $00, $00, $00, $11, $01, $00, $00, $E0, $FF, $01, $02, $F4, $27

    ld bc, $4363
    call Call_000_2640
    ld a, $10
    ld e, $14
    ld [de], a
    call Call_000_2565
    call Call_000_2688
    jp z, Jump_000_219F

    call Call_000_21D7
    call Call_000_21E4
    ret


    db $00, $00, $00, $11, $01, $00, $00, $C0, $FF, $01, $03, $FD, $27

    ld bc, $439C
    call Call_000_2640
    xor a
    ld e, $1B
    ld [de], a
    ld bc, $FF60
    ld e, $07
    ld a, [de]
    ld hl, $C507
    sub [hl]
    bit 7, a
    call nz, $DCE3
    call Call_000_20E6
    call Call_000_2565
    call Call_000_2688
    jp z, Jump_000_219F

    call Call_000_21D7
    call Call_000_21E4
    ret


    db $00, $00, $00, $11, $01, $60, $FF, $60, $FF, $01, $01, $02, $28

    ld bc, $43D0
    call Call_000_2640
    call Call_000_2565
    ld e, $17
    ld a, [de]
    inc a
    and $07
    ld bc, $0100
    cp $04
    call c, $DCE3
    call Call_000_20E6
    call Call_000_2688
    jp z, Jump_000_219F

    call Call_000_21D7
    call Call_000_21E4
    ret


    db $00, $00, $00, $11, $01, $00, $00, $60, $FF, $01, $03, $07, $28

    ld a, $47
    ld e, $0D
    ld [de], a
    ld a, $05
    ld e, $13
    ld [de], a
    ld a, $02
    ld e, $14
    ld [de], a
    xor a
    ld e, $1B
    ld [de], a
    ld a, $01
    jp Jump_000_2190


    ld bc, $4410
    call Call_000_2640
    ld a, $18
    ld e, $14
    ld [de], a
    call Call_000_2565
    call Call_000_2688
    jp z, Jump_000_219F

    call Call_000_21D7
    call Call_000_21E4
    ret


    db $00, $00, $00, $11, $01, $00, $00, $00, $FF, $01, $03, $0C, $28

    ld bc, $4448
    call Call_000_2640
    ld a, $80
    ld e, $14
    ld [de], a
    call Call_000_2565
    push de
    inc d
    ld a, $02
    call Call_000_2190
    ld a, $10
    ld e, $00
    ld [de], a
    ld a, $01
    ld e, $01
    ld [de], a
    ld a, $4B
    ld e, $0D
    ld [de], a
    ld a, $01
    ld e, $18
    ld [de], a
    pop de
    ret


    db $00, $00, $00, $11, $01, $00, $00, $C0, $FF, $01, $0A, $15, $28

    ld bc, $446D
    call Call_000_2640
    ld a, $18
    ld e, $14
    ld [de], a
    call Call_000_2688
    jp z, Jump_000_219F

    call Call_000_21D7
    call Call_000_21E4
    ret


    db $00, $00, $00, $11, $01, $A0, $00, $00, $00, $01, $05, $1E, $28

    ld bc, $448B
    call Call_000_2640
    call Call_000_2565
    call Call_000_2688
    ret z

    call Call_000_21D7
    ret


    db $00, $01, $00, $11, $00, $00, $00, $A0, $FF, $01, $05, $2C, $28

    ld bc, $44A4
    call Call_000_2640
    ld a, $30
    ld e, $14
    ld [de], a
    ret


    db $00, $00, $71, $11, $01, $00, $00, $00, $00, $01, $05, $27, $28

    ld bc, $44E1
    call Call_000_2640
    ld a, $40
    ld e, $14
    ld [de], a
    call Call_000_2565
    ld e, $01
    ld a, [de]
    or a
    jr z, jr_003_44D4

    xor a
    ld e, $11
    ld [de], a
    call Call_000_2688
    ret z

    call Call_000_21D7
    call Call_000_21E4
    ret


jr_003_44D4:
    call Call_000_2688
    jp z, Jump_000_219F

    call Call_000_21D7
    call Call_000_21E4
    ret


    db $00, $00, $00, $11, $01, $00, $00, $40, $FF, $01, $03, $43, $28

    ld bc, $44FC
    call Call_000_2650
    ld a, $01
    ld e, $18
    ld [de], a
    jp Jump_000_2565


    db $00, $00, $95, $10, $00, $00, $FB, $B0, $FF, $01, $02

    ld a, $01
    ld e, $18
    ld [de], a
    ld bc, $451F
    call Call_000_2640
    push de
    ld a, $03
    call Call_000_35C1
    ld a, $07
    ld [$C736], a
    pop de
    ret


    db $00, $00, $00, $10, $01, $40, $00, $00, $00, $02, $14, $48, $28

    ld a, $39
    call Call_000_0875
    ld a, $01
    ld [$C72F], a
    ld a, $02
    call Call_000_2190
    ld bc, $5C40
    call Call_000_2098
    ld a, $54
    ld e, $0D
    ld [de], a
    ld a, $18
    ld e, $13
    ld [de], a
    ld a, $01
    ld e, $18
    ld [de], a
    call Call_000_20EE
    call Call_000_20F2
    push de
    ld hl, $C100
    ld bc, $0400
    xor a
    call $DEC9
    call Call_000_057C
    call Call_000_2538
    ld a, $01
    ld [$C734], a
    call Call_000_2C05
    ld hl, $0778
    call Call_000_05B2
    call Call_000_05D3
    call Call_003_4588
    pop de
    xor a
    ldh [$FF87], a
    ldh [$FF86], a
    call Call_000_1E49
    call Call_000_1E51
    ret


Call_003_4588:
    ld hl, $458E
    jp Jump_000_3067


    db $1A, $00, $09, $05, $02, $00, $02, $01, $3A, $20, $02, $00, $02, $01, $02, $20
    db $31, $00, $01, $00, $09, $20, $0B, $00, $01, $20, $02, $00, $02, $20, $02, $00
    db $05, $20, $01, $00, $07, $20, $01, $00, $02, $20, $02, $00, $03, $20, $02, $00
    db $02, $20, $02, $00, $FF

    ld bc, $45FE
    call Call_000_2640
    ld a, $01
    ld e, $18
    ld [de], a
    ld a, $20
    ld e, $14
    ld [de], a
    ld a, $04
    ld e, $15
    ld [de], a
    xor a
    ld e, $1D
    ld [de], a
    call Call_000_2565
    call Call_000_219F
    push de
    call Call_000_35FD
    ld a, $09
    ld [$C736], a
    pop de
    ld a, $00
    call Call_000_0875
    xor a
    ld [$D7DC], a
    ld [$C757], a
    ld a, $62
    call Call_000_0875
    ret


    db $00, $00, $00, $11, $01, $00, $00, $40, $FF, $02, $10, $5E, $28

    ld bc, $461D
    call Call_000_2650
    ld bc, $8448
    call Call_000_2098
    ld a, $01
    ld e, $18
    ld [de], a
    ret


    db $00, $00, $61, $10, $00, $80, $FD, $C0, $FE, $02, $14

    ld a, $01
    ld e, $18
    ld [de], a
    ld bc, $46B9
    call Call_000_2640
    call Call_000_2565
    ld e, $0C
    ld a, [de]
    ld b, a
    ld e, $07
    ld a, [de]
    ld c, a
    push de
    inc d
    ld a, b
    ld e, $0C
    ld [de], a
    ld a, c
    add $10
    ld e, $07
    ld [de], a
    ld a, $1B
    ld e, $00
    ld [de], a
    ld a, $01
    ld e, $01
    ld [de], a
    ld a, $01
    ld e, $18
    ld [de], a
    ld bc, $46C6
    call Call_000_2640
    call Call_000_2565
    inc d
    ld a, $1B
    ld e, $00
    ld [de], a
    ld a, $02
    ld e, $01
    ld [de], a
    ld a, $03
    ld e, $16
    ld [de], a
    ld a, $01
    ld e, $18
    ld [de], a
    inc d
    ld a, $1B
    ld e, $00
    ld [de], a
    ld a, $84
    ld e, $0D
    ld [de], a
    ld a, $03
    ld e, $01
    ld [de], a
    ld bc, $0100
    call Call_000_20E2
    ld a, $20
    ld e, $14
    ld [de], a
    ld a, $01
    ld e, $18
    ld [de], a
    pop de
    push de
    call Call_000_35FD
    ld a, $0B
    ld [$C736], a
    pop de
    ld a, $01
    ld [$C78B], a
    ld a, $00
    call Call_000_0875
    xor a
    ld [$D7DC], a
    ld [$C757], a
    ld a, $62
    call Call_000_0875
    ret


    db $00, $00, $00, $11, $01, $00, $00, $00, $FF, $02, $10, $7A, $28, $00, $00, $00
    db $11, $01, $00, $00, $00, $00, $02, $00, $81, $28

    ld bc, $4711
    call Call_000_2650
    ld a, $01
    ld e, $18
    ld [de], a
    push de
    inc d
    ld bc, $471C
    call Call_000_2650
    ld a, $1C
    ld e, $00
    ld [de], a
    ld a, $01
    ld e, $01
    ld [de], a
    ld a, $01
    ld e, $18
    ld [de], a
    ld a, $03
    call Call_000_35C1
    ld a, $0C
    ld [$C736], a
    pop de
    ld a, $00
    call Call_000_0875
    xor a
    ld [$D7DC], a
    ld [$C757], a
    ld a, $08
    jp Jump_000_0E35


    db $00, $00, $85, $30, $01, $00, $00, $00, $00, $03, $20, $00, $00, $8C, $00, $01
    db $00, $00, $00, $00, $04, $00

    xor a
    ld [$C738], a
    ld a, $01
    ld e, $18
    ld [de], a
    ld bc, $4766
    call Call_000_2650
    ld a, $28
    ld e, $14
    ld [de], a
    xor a
    ld e, $1B
    ld [de], a
    ld e, $1C
    ld [de], a
    call Call_000_2565
    push de
    call Call_000_35FD
    pop de
    ld a, $0D
    ld [$C736], a
    ld a, $01
    ld [$C78B], a
    ld a, $00
    call Call_000_0875
    xor a
    ld [$D7DC], a
    ld [$C757], a
    ld a, $62
    call Call_000_0875
    ret


    db $00, $00, $99, $11, $01, $00, $00, $90, $FF, $03, $10

    ld bc, $477D
    call Call_000_2650
    ld a, $01
    ld e, $18
    ld [de], a
    ret


    db $00, $00, $9C, $10, $00, $00, $00, $00, $00, $03, $18

    ld bc, $4803
    call Call_000_2650
    ld bc, $E03C
    call Call_000_2098
    ld a, $3C
    ld e, $1B
    ld [de], a
    ld a, $01
    ld e, $18
    ld [de], a
    push de
    inc d
    ld a, $1D
    ld e, $00
    ld [de], a
    ld a, $01
    ld e, $01
    ld [de], a
    ld bc, $105C
    call Call_000_2098
    ld bc, $480E
    call Call_000_2640
    ld a, $01
    ld e, $18
    ld [de], a
    inc d
    ld a, $1D
    ld e, $00
    ld [de], a
    ld a, $02
    ld e, $01
    ld [de], a
    ld a, $01
    ld e, $11
    ld [de], a
    ld a, $05
    ld e, $16
    ld [de], a
    ld a, $01
    ld e, $18
    ld [de], a
    ld a, $10
    ld e, $08
    ld [de], a
    ld a, $10
    ld e, $03
    ld [de], a
    ld a, $03
    call Call_000_35C1
    ld a, $0F
    ld [$C736], a

jr_003_47E9:
    pop de
    ld a, $01
    ld [$C782], a
    ld a, $00
    call Call_000_0875
    xor a
    ld [$D7DC], a
    ld hl, $C757
    res 0, [hl]
    ld a, $53
    call Call_000_0875
    ret


    db $10
    db $10
    and h
    ld sp, $0001
    nop
    ld h, b
    nop
    ld [bc], a
    ld d, $10
    db $10
    and [hl]
    ld sp, $0001
    nop
    nop
    nop
    ld [bc], a
    nop
    cp d
    db $28

    call Call_000_262C
    ld a, $11
    ld e, $0E
    ld [de], a
    ld a, $01
    ld e, $18
    ld [de], a
    ld bc, $27D6
    jp Jump_000_2F92


    ld bc, $483C
    call Call_000_2670
    ld a, $01
    ld e, $18
    ld [de], a
    jp Jump_000_2576


    db $00, $00, $20, $11, $01

    call Call_000_20EE
    call Call_000_20F2
    ld a, $50
    ld e, $0C
    ld [de], a
    ld a, $20
    ld e, $07
    ld [de], a
    ld a, $11
    ld e, $0E
    ld [de], a
    ld a, $00
    ld e, $11
    ld [de], a
    ld a, $20
    ld e, $14
    ld [de], a
    ld a, $01
    ld e, $18
    ld [de], a
    ld bc, $27CD
    jp Jump_000_2F92


    ld bc, $4879
    call Call_000_2670
    ld a, $01
    ld e, $18
    ld [de], a
    jp Jump_000_2576


    db $00, $00, $20, $01, $01

    ld a, $00
    call Call_000_0875
    ld a, $42
    call Call_000_0875
    ld a, $20
    ld e, $1B
    ld [de], a
    ld a, $01
    ld e, $18
    ld [de], a
    ld a, $50
    ld [$C50C], a
    ld bc, $489D
    jp Jump_000_2670


    db $00, $00, $20, $10, $00

    ld e, $0C
    ld a, [de]
    cp $F0
    jr nc, jr_003_48BF

    ld a, [$C73F]
    or a
    jr nz, jr_003_48BF

    ld a, $51
    ld e, $0D
    ld [de], a
    ld a, $10
    ld e, $0E
    ld [de], a
    ld a, $01
    ld e, $18
    ld [de], a
    ret


Jump_003_48BF:
jr_003_48BF:
    call Call_000_2740
    push de
    ld a, h
    add $29
    ld d, a
    ld a, l
    ld e, a
    ld b, $03

jr_003_48CB:
    ld c, $02

jr_003_48CD:
    di

jr_003_48CE:
    ldh a, [rSTAT]
    bit 1, a
    jr nz, jr_003_48CE

    xor a
    ld [hl+], a
    ld [de], a
    inc de
    ei
    dec c
    jr nz, jr_003_48CD

    ld a, $1E
    rst $28
    ld a, $1E
    rst $30
    dec b
    jr nz, jr_003_48CB

    pop de
    jp Jump_000_2183


    push de
    inc d
    ld a, $10
    set 7, a
    ld e, $00
    ld [de], a
    ld a, $80
    ld e, $0C
    ld [de], a
    ld a, $68
    ld e, $07
    ld [de], a
    pop de
    ld a, $01
    ld e, $18
    ld [de], a
    ret


    ld a, $68
    ld e, $0D
    ld [de], a
    ld bc, $0040
    call Call_000_20E6
    xor a
    call Call_000_2190
    ld a, $11
    ld e, $03
    ld [de], a
    ld a, $01
    ld e, $18
    ld [de], a
    xor a
    ld e, $1B
    ld [de], a
    ld a, $01
    ld e, $18
    ld [de], a
    ret


    ld a, $90
    ld e, $0D
    ld [de], a
    ld bc, $0040
    call Call_000_20E2
    xor a
    call Call_000_2190
    ld a, $11
    ld e, $08
    ld [de], a
    ld a, $01
    ld e, $18
    ld [de], a
    xor a
    ld e, $1B
    ld [de], a
    ret


    ld a, $01
    ld [$C738], a
    jp Jump_000_2183


    xor a
    ld [$C73B], a
    ld a, [$C73C]
    cp $FF
    jp z, Jump_000_2183

    ld a, $01
    ld e, $18
    ld [de], a
    ret


    ld e, $0C
    ld a, [de]
    cp $F0
    jp nc, Jump_003_48BF

    ld a, $51
    ld e, $0D
    ld [de], a
    ld a, $10
    ld e, $0E
    ld [de], a
    ld a, $01
    ld e, $18
    ld [de], a
    xor a
    ld [$C73F], a
    ret


    ld a, $68
    ld e, $14
    ld [de], a
    ld a, $01
    ld e, $18
    ld [de], a
    xor a
    ld [$C73E], a
    ret


    xor a
    ld [$C771], a
    ld [$C774], a
    ld [$C770], a
    ld [$C772], a
    ld [$C778], a
    ld [$C77B], a
    ld [$C777], a
    ld [$C779], a
    ldh [$FF87], a
    ldh [$FF86], a
    call Call_000_301B
    ld [$C780], a
    call Call_000_1E84
    call Call_000_1B50
    ld de, $8000

jr_003_49B5:
    dec de
    ld a, d
    or e
    jr nz, jr_003_49B5

    ld hl, $CF20
    ld bc, $0100
    xor a
    call $DEC9
    call Call_003_4CFF
    call Call_003_4A55
    call Call_000_05E1
    xor a
    ld [$C7D8], a
    ld hl, $C500
    res 6, [hl]
    ld a, $01
    jp Jump_000_0E35


    ld a, [$C729]
    rst $00

    db $E3, $49, $3E, $4A

    xor a
    ld [$C771], a
    ld [$C774], a
    ld [$C778], a
    ld [$C77B], a
    ldh [$FF87], a
    ldh [$FF86], a
    call Call_000_301B
    ld [$C780], a
    call Call_000_1B50
    ld de, $8000

jr_003_4A00:
    dec de
    ld a, d
    or e
    jr nz, jr_003_4A00

    ld hl, $CF20
    ld bc, $0100
    xor a
    call $DEC9
    call Call_003_4CFF
    call Call_003_4BA3
    xor a
    ld [$C500], a
    ld [$C501], a
    ld [$C502], a
    ld a, $00
    ld [$C50D], a
    call Call_000_1FCB
    call Call_000_1FD2
    ld de, $C600
    call Call_000_2183
    ld de, $C700
    call Call_000_2183
    ld a, $08
    call Call_000_0629
    jp Jump_000_0E29


    call Call_000_063F
    ret c

    ld a, $00
    call Call_000_0875
    ld a, $52
    call Call_000_0875
    xor a
    ld [$C73B], a
    ld a, $01
    jp Jump_000_0E35


Call_003_4A55:
    ld a, [$C741]
    or a
    ret nz

    ld a, [$C725]
    cp $03
    jr z, jr_003_4A89

    cp $04
    jr z, jr_003_4A89

jr_003_4A65:
    ld hl, $4A93
    call Call_000_2FCD
    ld a, [$C780]
    and $0F
    call $DDD6
    ld a, [$C507]
    cp $14
    jr c, jr_003_4A81

    ld a, [hl]
    or a
    ret z

    ld [$C50C], a
    ret


jr_003_4A81:
    inc hl
    ld a, [hl]
    or a
    ret z

    ld [$C50C], a
    ret


jr_003_4A89:
    ld a, [$C7D8]
    or a
    jr z, jr_003_4A65

    ld [$C50C], a
    ret


    and c
    ld c, d

    db $A1, $4A, $E3, $4A, $0F, $4B, $2F, $4B, $4F, $4B

    add e
    ld c, e
    or c
    ld c, d

    db $B3, $4A

    or c
    ld c, d

    db $BF, $4A

    ret


    ld c, d
    or c
    ld c, d

    db $CF, $4A

    or c
    ld c, d
    push de
    ld c, d
    push de
    ld c, d
    push de
    ld c, d

    db $D5, $4A

    push de
    ld c, d

    db $D7, $4A, $D5, $4A

    reti


    ld c, d

    db $D5, $4A

    db $DB
    ld c, d

    db $DD, $4A, $D5, $4A

    push de
    ld c, d
    push de
    ld c, d
    push de
    ld c, d
    push de
    ld c, d
    rst $18
    ld c, d

    db $E1, $4A, $00, $00

    nop

    db $4E

    ld d, b
    ld l, e
    nop
    ld l, [hl]

    db $8E

    nop
    nop
    ld l, [hl]

    db $2E

    nop
    rst $28
    ld c, d

    db $EF, $4A, $FF, $4A, $EF, $4A

    rst $28
    ld c, d
    rst $28
    ld c, d
    push de
    ld c, d

    db $D5, $4A, $D5, $4A

    push de
    ld c, d
    push de
    ld c, d
    push de
    ld c, d
    push de
    ld c, d
    push de
    ld c, d
    push de
    ld c, d
    push de
    ld c, d
    push de
    ld c, d

    db $0D, $4B, $D5, $4A, $D5, $4A

    push de
    ld c, d
    nop

    db $6E, $19, $4B, $19, $4B, $19, $4B, $19, $4B, $19, $4B

    push de
    ld c, d
    push de
    ld c, d

    db $D5, $4A

    push de
    ld c, d

    db $D5, $4A

    push de
    ld c, d

    db $D5, $4A

    push de
    ld c, d
    push de
    ld c, d
    push de
    ld c, d
    push de
    ld c, d

    db $39, $4B, $39, $4B, $39, $4B, $39, $4B

    add hl, sp
    ld c, e

    db $D5, $4A

    push de
    ld c, d

    db $D5, $4A, $D5, $4A, $D5, $4A, $D5, $4A

    push de
    ld c, d
    push de
    ld c, d
    push de
    ld c, d
    push de
    ld c, d
    push de
    ld c, d
    ld e, c
    ld c, e
    ld e, c
    ld c, e

    db $65, $4B

    ld e, c
    ld c, e

    db $73, $4B

    push de
    ld c, d
    push de
    ld c, d
    push de
    ld c, d
    push de
    ld c, d
    push de
    ld c, d
    push de
    ld c, d
    ld [hl], c
    ld c, e

    db $D5, $4A

    push de
    ld c, d
    push de
    ld c, d
    push de
    ld c, d
    push de
    ld c, d
    ld d, h
    nop
    push de
    ld c, d
    push de
    ld c, d
    push de
    ld c, d

    db $D5, $4A, $7F, $4B, $81, $4B

    nop

    db $34, $34

    nop
    adc c
    ld c, e
    sub a
    ld c, e
    sub a
    ld c, e
    push de
    ld c, d
    sub e
    ld c, e
    push de
    ld c, d
    push de
    ld c, d
    sub l
    ld c, e
    ld [hl], h
    nop
    nop
    inc [hl]
    push de
    ld c, d
    push de
    ld c, d
    push de
    ld c, d
    push de
    ld c, d
    push de
    ld c, d
    push de
    ld c, d

Call_003_4BA3:
    ld a, [$C726]
    cp $04
    jr z, jr_003_4BB5

    ld a, $50
    ld [$C50C], a
    ld a, $6B
    ld [$C507], a
    ret


jr_003_4BB5:
    ld a, $50
    ld [$C50C], a
    ld a, $63
    ld [$C507], a
    ret


    xor a
    ld c, $E0
    ld hl, $C820
    call $DED2
    xor a
    ld c, $E0
    ld hl, $C920
    call $DED2
    xor a
    ld c, $E0
    ld hl, $CA20
    call $DED2
    xor a
    ld c, $E0
    ld hl, $CB20
    call $DED2
    xor a
    ld c, $E0
    ld hl, $CC20
    call $DED2
    xor a
    ld c, $E0
    ld hl, $CD20
    call $DED2
    ld [$C795], a
    ld hl, $C7A0
    ld b, $20

jr_003_4BFE:
    ld [hl+], a
    dec b
    jr nz, jr_003_4BFE

    ld de, $C820
    ld hl, $557C
    call Call_003_4C1A
    ld de, $CA20
    ld hl, $5927
    call Call_003_4C1A
    ld de, $CC20
    ld hl, $62A2

Call_003_4C1A:
    xor a
    ld [$C794], a
    call Call_000_2FCD

Jump_003_4C21:
    ld a, [hl+]
    cp $FD
    jp z, Jump_003_4C5E

    cp $FE
    jp z, Jump_003_4C64

    cp $FF
    jp z, Jump_003_4C98

    ld [de], a
    inc de
    ld b, $05

jr_003_4C35:
    ld a, [hl+]
    ld [de], a
    inc de
    dec b
    jr nz, jr_003_4C35

    push hl
    push de
    ld bc, $FFFA
    add hl, bc
    ld a, $06
    rst $18
    inc d
    call Call_003_4CA6
    pop de
    pop hl

Jump_003_4C4A:
    ld a, [hl]
    cp $FD
    jp z, Jump_003_4C5E

    cp $FF
    jp nz, Jump_003_4C21

    ld [de], a
    inc d
    ld [de], a
    dec d
    inc e
    inc hl
    jp Jump_003_4C4A


Jump_003_4C5E:
jr_003_4C5E:
    ld a, $FF
    ld [de], a
    inc d
    ld [de], a
    ret


Jump_003_4C64:
    ld a, $FF
    ld [de], a
    inc d
    ld [de], a
    dec d
    inc e

Jump_003_4C6B:
    call Call_003_4CA0
    ld a, [$C794]
    inc a
    ld [$C794], a
    inc hl
    inc e
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl]
    cp $FD
    jr z, jr_003_4C5E

    cp $FE
    jp z, Jump_003_4C21

    cp $FF
    jp nz, Jump_003_4C6B

    ld [de], a
    inc d
    ld [de], a
    dec d
    inc e
    inc hl
    jp Jump_003_4C21


Jump_003_4C98:
    ld [de], a
    inc d
    ld [de], a
    dec d
    inc e
    jp Jump_003_4C21


Call_003_4CA0:
    ld a, [$C794]
    or [hl]
    ld [de], a
    ret


Call_003_4CA6:
    ld b, [hl]
    inc hl
    ld c, [hl]
    inc hl
    inc de
    inc de
    call Call_003_4CA0
    dec d
    call Call_003_4CA0
    ld a, [$C794]
    inc a
    ld [$C794], a
    inc d
    inc e
    inc hl
    ld a, [hl+]
    ld [de], a
    inc e
    bit 7, b
    jr nz, jr_003_4CEC

    ld a, $A0
    ld [$C793], a
    ld a, [hl+]
    ld [$C7D0], a
    sub $A0
    cpl
    inc a
    ld [de], a
    inc e
    ld a, [hl+]
    ld [de], a

jr_003_4CD5:
    dec e
    dec e
    dec e
    dec e
    ld a, [$C7D0]
    call Call_000_24B8
    ld a, [$C7D0]
    call Call_000_24B8
    ld a, c
    ld [de], a
    dec e
    dec b
    ld a, b
    ld [de], a
    ret


jr_003_4CEC:
    ld a, $80
    ld [$C793], a
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl+]
    ld [$C7D0], a
    sub $80
    cpl
    inc a
    ld [de], a
    jr jr_003_4CD5

Call_003_4CFF:
    call Call_000_2168
    xor a
    ld [$C790], a
    ld [$C791], a
    ld [$C792], a
    ld hl, $557C
    call Call_003_4D60
    ld bc, $C820
    xor a
    ld [$C7D4], a
    ld a, $C9
    ld [$C7D5], a
    ld a, $00
    ld [$C7D6], a
    call Call_003_4D6E
    push hl
    ld hl, $5927
    call Call_003_4D60
    pop hl
    ld bc, $CA20
    ld a, $01
    ld [$C7D4], a
    ld a, $CD
    ld [$C7D5], a
    ld a, $00
    ld [$C7D6], a
    call Call_003_4D8F
    push hl
    ld hl, $62A2
    call Call_003_4D60
    pop hl
    ld bc, $CC20
    ld a, $02
    ld [$C7D4], a
    ld a, $D5
    ld [$C7D5], a
    ld a, $00
    ld [$C7D6], a
    jp Jump_003_4D8F


Call_003_4D60:
    call Call_000_2FCD
    ld d, h
    ld e, l
    ret


    db $D7, $4F, $E3, $4F, $EF, $4F, $FB, $4F

Call_003_4D6E:
    push de
    ld a, [$C72E]
    or a
    jr z, jr_003_4D80

    cp $01
    jr z, jr_003_4D80

    sub $02
    ld hl, $4D66
    jr jr_003_4D8B

jr_003_4D80:
    ld hl, $4E64
    call Call_000_2FCD
    ld a, [$C780]
    and $0F

jr_003_4D8B:
    call $DDD6
    pop de

Call_003_4D8F:
Jump_003_4D8F:
    ld a, [hl+]
    bit 7, a
    ret nz

    ld [$C7D2], a
    ld a, [hl+]
    push bc
    push hl
    ld b, a
    ld a, [$C7D4]
    ld hl, $C790
    rst $28
    ld [hl], b
    pop hl
    pop bc
    push hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, l
    sub e
    ld l, a
    ld a, h
    sbc d
    ld h, a
    add hl, bc

jr_003_4DAF:
    ld a, [$C7D2]
    or a
    jr z, jr_003_4DC9

    ld a, [$C7D5]
    ld b, a
    ld a, [$C7D6]
    ld c, a
    call Call_003_4DCD
    ld a, [$C7D2]
    dec a
    ld [$C7D2], a
    jr jr_003_4DAF

jr_003_4DC9:
    pop hl
    inc hl
    inc hl
    ret


Call_003_4DCD:
    ld a, [$C780]
    and $30
    cp $30
    jr nz, jr_003_4DEE

    call Call_000_247E
    jr nz, jr_003_4DEA

    push hl
    inc hl
    inc hl
    ld a, [hl+]
    ld [$C7D0], a
    ld a, [hl-]
    ld [$C7D1], a
    pop hl
    call Call_000_2492

jr_003_4DEA:
    ld a, $04
    rst $28
    ret


jr_003_4DEE:
    call Call_000_246D
    jr nz, jr_003_4E2D

    ld a, [$C781]
    bit 0, a
    jp nz, Jump_003_4E31

    inc hl
    ld a, $A0
    sub [hl]
    ld e, a
    inc hl
    inc hl
    inc hl
    ld a, [hl-]
    sub e
    ld [$C7D0], a
    dec hl
    ld a, [hl]
    and $E0
    swap a
    srl a
    add b
    ld b, a
    ld d, b
    ld e, $12
    ld a, [hl+]
    and $1F
    ld [de], a
    ld d, b
    ld e, c
    ld a, [hl+]
    set 7, a
    ld [de], a
    ld a, $07
    rst $30
    inc hl
    ld a, [hl+]
    ld [de], a
    ld a, $05
    rst $30
    ld a, [$C7D0]
    ld [de], a
    ret


jr_003_4E2D:
    ld a, $06
    rst $28
    ret


Jump_003_4E31:
    inc hl
    ld a, $80
    sub [hl]
    ld e, a
    inc hl
    inc hl
    inc hl
    inc hl
    ld a, [hl-]
    sub e
    ld [$C7D0], a
    dec hl
    dec hl
    ld a, [hl]
    and $E0
    swap a
    srl a
    add b
    ld b, a
    ld d, b
    ld e, $12
    ld a, [hl+]
    and $1F
    ld [de], a
    ld d, b
    ld e, c
    ld a, [hl+]
    set 7, a
    ld [de], a
    ld e, $07
    ld a, [$C7D0]
    ld [de], a
    ld a, $05
    rst $30
    ld a, [hl+]
    inc hl
    ld [de], a
    ret


    ld [hl], d
    ld c, [hl]

    db $72, $4E, $9F, $4F, $EC, $50, $7A, $52, $93, $53

    pop de
    ld d, h

    db $82, $4E, $90, $4E, $E4, $4E, $EF, $4E, $35, $4F, $5F, $4F, $6D, $4F, $97, $4F
    db $84, $4E, $00, $00, $9A, $55, $00, $00, $45, $59, $01, $06, $C0, $62, $9C, $4E

    xor b
    ld c, [hl]

    db $B4, $4E

    ret nz

    ld c, [hl]

    db $CC, $4E, $D8, $4E, $00, $2A, $DD, $55, $00, $00, $7C, $59, $04, $18, $27, $63

    nop
    ld a, [hl+]
    db $DD
    ld d, l
    ld bc, $9418
    ld e, c
    ld bc, $633C
    ld h, e

    db $00, $24, $D7, $55, $01, $4F, $CB, $59, $02, $8B, $B2, $63

    nop
    inc c
    cp a
    ld d, l
    inc bc
    dec a
    and a
    ld e, c
    ld bc, $8261
    ld h, e

    db $00, $2A, $DD, $55, $02, $5E, $D2, $59, $02, $A0, $BF, $63, $00, $2A, $DD, $55
    db $01, $63, $DB, $59, $01, $A5, $C8, $63, $E6, $4E, $80, $02, $0C, $E0, $59, $02
    db $0C, $CD, $63, $F9, $4E, $05, $4F

    db $11
    ld c, a

    db $1D, $4F, $29, $4F, $01, $06, $DF, $55, $01, $06, $11, $5A, $00, $00, $1C, $64
    db $01, $47, $22, $56, $00, $74, $85, $5A, $00, $74, $90, $64

    ld [bc], a
    inc h
    inc bc
    ld d, [hl]
    nop
    jr @+$2B

    ld e, d
    nop
    inc h
    ld b, b
    ld h, h

    db $00, $47, $26, $56, $03, $67, $6C, $5A, $01, $6B, $83, $64, $00, $47, $26, $56
    db $03, $74, $79, $5A, $02, $74, $88, $64, $3B, $4F

    ld b, a
    ld c, a

    db $53, $4F, $01, $05, $28, $56, $02, $09, $87, $5A, $00, $2B, $BC, $64

    ld bc, $2D05
    ld d, [hl]
    nop
    jr z, @-$50

    ld e, d
    nop
    dec hl
    cp h
    ld h, h

    db $00, $0A, $31, $56, $02, $1C, $A2, $5A, $04, $13, $A4, $64, $61, $4F, $00, $00
    db $32, $56, $02, $0C, $AF, $5A, $02, $0C, $BD, $64, $73, $4F

    ld a, a
    ld c, a

    db $8B, $4F, $00, $18, $63, $56, $04, $18, $E0, $5A, $04, $18, $06, $65

    nop
    jr @+$65

    ld d, [hl]
    ld [bc], a
    jr @-$06

    ld e, d
    ld [bc], a
    jr @+$20

    ld h, l

    db $00, $00, $4B, $56, $01, $2B, $05, $5B, $03, $37, $2B, $65, $99, $4F, $80, $01
    db $00, $2B, $5B, $80, $AB, $4F, $13, $50, $67, $50, $B2, $50, $D6, $50, $E1, $50
    db $B3, $4F

    cp a
    ld c, a

    db $CB, $4F, $07, $50, $00, $00, $71, $56, $00, $00, $3C, $5B, $03, $12, $99, $65

    nop
    ld b, $77
    ld d, [hl]
    nop
    ld [de], a
    ld c, [hl]
    ld e, e
    ld [bc], a
    inc a
    push de
    ld h, l

    db $00, $0C, $7D, $56, $01, $31, $55, $5B, $02, $75, $E2, $65, $00, $0C, $7D, $56
    db $01, $31, $5A, $5B, $02, $75, $EB, $65, $00, $0C, $7D, $56, $01, $31, $5F, $5B
    db $02, $75, $F4, $65, $00, $0C, $7D, $56, $01, $31, $64, $5B, $02, $75, $FD, $65
    db $00, $0C, $7D, $56, $01, $31, $69, $5B, $02, $75, $06, $66, $00, $0C, $7D, $56
    db $00, $36, $6E, $5B, $03, $82, $0F, $66, $1F, $50

    dec hl
    ld d, b

    db $37, $50

    ld b, e
    ld d, b

    db $4F, $50

    ld e, e
    ld d, b

    db $00, $00, $7F, $56, $02, $0C, $73, $5B, $02, $0C, $1C, $66

    nop
    inc c
    adc e
    ld d, [hl]
    ld bc, $9724
    ld e, e
    ld [bc], a
    jr nc, jr_003_5082

    ld h, [hl]

    db $01, $4A, $92, $56, $02, $3D, $B0, $5B, $02, $49, $65, $66

    nop
    inc de
    sub d
    ld d, [hl]
    inc bc
    dec a
    sbc [hl]
    ld e, e
    ld [bc], a
    ld c, c
    ld e, c
    ld h, [hl]

    db $04, $32, $99, $56, $04, $62, $BD, $5B, $03, $68, $72, $66

    nop
    ld c, d
    ret


    ld d, [hl]
    ld bc, $EE7B
    ld e, e
    ld bc, $A387
    ld h, [hl]

    db $73, $50

    ld a, a
    ld d, b
    add d
    ld d, b

    db $8E, $50, $9A, $50, $A6, $50, $00, $00, $CA, $56, $01, $06, $F5, $5B, $04, $18
    db $AA, $66

    add b
    add b
    add b

jr_003_5082:
    nop
    ld b, $D0
    ld d, [hl]
    ld bc, $131E
    ld e, h
    ld [bc], a
    ld a, [hl+]
    ret z

    ld h, [hl]

    db $00, $11, $DB, $56, $02, $42, $26, $5C, $02, $3F, $E1, $66, $00, $11, $DB, $56
    db $02, $42, $2F, $5C, $00, $3F, $E9, $66, $01, $11, $D7, $56, $00, $42, $37, $5C
    db $00, $3F, $E9, $66, $B8, $50, $C1, $50, $CA, $50, $80, $01, $05, $39, $5C, $03
    db $0D, $EB, $66, $80, $01, $0A, $3E, $5C, $00, $0D, $F7, $66, $01, $05, $DD, $56
    db $01, $0A, $42, $5C, $00, $0D, $F7, $66, $D8, $50, $80, $02, $0C, $43, $5C, $03
    db $12, $F8, $66, $E3, $50, $80, $03, $12, $6E, $5C, $01, $06, $2F, $67, $F6, $50
    db $20, $51, $57, $51, $F1, $51, $18, $52, $FC, $50

    db $08
    ld d, c

    db $14, $51, $01, $00, $EC, $56, $03, $3C, $D3, $5C, $02, $4E, $A6, $67

    nop
    ld b, $F2
    ld d, [hl]
    inc bc
    ld e, $B5
    ld e, h
    inc b
    ld e, $76
    ld h, a

    db $00, $06, $F2, $56, $03, $0C, $A3, $5C, $02, $12, $6A, $67, $2A, $51

    inc sp
    ld d, c

    db $3C, $51

    ld b, l
    ld d, c

    db $4E, $51, $80, $02, $2A, $0A, $5D, $05, $24, $D7, $67

    add b
    inc bc
    jr @-$06

    ld e, h
    ld [bc], a
    jr @-$33

    ld h, a

    db $80, $02, $0C, $EC, $5C, $02, $0C, $BF, $67

    add b
    ld [bc], a
    nop
    ldh [$FF5C], a
    ld [bc], a
    nop
    or e
    ld h, a

    db $80, $01, $3B, $17, $5D, $00, $42, $F5, $67, $6D, $51

    ld a, c
    ld d, c

    db $85, $51, $91, $51, $9D, $51

    xor c
    ld d, c

    db $B5, $51

    pop bc
    ld d, c
    call $D951
    ld d, c
    push hl
    ld d, c

    db $00, $25, $19, $57, $02, $3C, $58, $5D, $03, $3C, $32, $68

    nop
    dec h
    add hl, de
    ld d, a
    inc bc
    ld a, [hl+]
    ld b, [hl]
    ld e, l
    ld [bc], a
    jr nc, jr_003_51AA

    ld l, b

    db $00, $00, $F4, $56, $02, $1E, $3A, $5D, $02, $24, $1A, $68, $01, $25, $F4, $56
    db $01, $18, $34, $5D, $03, $12, $08, $68, $01, $25, $FB, $56, $02, $0C, $28, $5D
    db $01, $0C, $02, $68

    nop

jr_003_51AA:
    dec h
    add hl, de
    ld d, a
    nop
    sub d
    xor [hl]
    ld e, l
    nop
    cp h
    or d
    ld l, b

    db $00, $14, $08, $57, $02, $6D, $89, $5D, $03, $8B, $81, $68

    nop
    inc d
    ld [$0257], sp
    ld h, c
    ld a, l
    ld e, l
    ld [bc], a
    ld l, l
    ld h, e
    ld l, b
    nop

jr_003_51CE:
    dec h
    add hl, de
    ld d, a
    ld [bc], a
    add [hl]
    and d
    ld e, l
    inc bc
    xor d
    and b
    ld l, b
    ld bc, $020E
    ld d, a
    ld bc, $654F
    ld e, l
    ld [bc], a
    ld e, e
    ld b, l
    ld l, b
    ld bc, $1525
    ld d, a
    nop
    sub d
    xor [hl]
    ld e, l
    nop
    cp h
    or d
    ld l, b

    db $F7, $51

    inc bc
    ld d, d

    db $0C, $52, $01, $0C, $26, $57, $01, $2A, $D9, $5D, $02, $2A, $DD, $68

    add b
    inc bc
    jr jr_003_51CE

    ld e, l
    ld [bc], a
    db $DB
    pop de
    ld l, b

    db $02, $0C, $1A, $57, $02, $0C, $BB, $5D, $03, $0C, $BF, $68, $26, $52

    ld [hl-], a
    ld d, d

    db $3E, $52

    ld c, d
    ld d, d

    db $56, $52

    ld h, d
    ld d, d

    db $6E, $52, $01, $0C, $39, $57, $02, $30, $10, $5E, $01, $42, $2C, $69

    ld [bc], a
    inc de
    ld b, b
    ld d, a
    ld [bc], a
    jr nc, @+$06

    ld e, [hl]
    ld [bc], a
    ld b, d
    jr nz, @+$6B

    db $01, $26, $53, $57, $01, $1E, $FE, $5D, $02, $2A, $14, $69

    ld [bc], a
    dec l
    ld e, d
    ld d, a
    ld [bc], a
    ld e, $F2
    ld e, l
    ld [bc], a
    ld a, [hl+]
    db $08
    ld l, c

    db $01, $40, $6D, $57, $01, $0C, $EC, $5D, $03, $0C, $F6, $68

    ld bc, $673A
    ld d, a
    ld [bc], a
    inc c
    ldh [$FF5D], a
    ld [bc], a
    inc c
    db $EA
    ld l, b

    db $01, $00, $2E, $57, $00, $3C, $1C, $5E, $00, $48, $32, $69, $84, $52, $AE, $52
    db $15, $53, $3F, $53, $77, $53, $8A, $52

    sub [hl]
    ld d, d

    db $A2, $52, $00, $12, $90, $57, $01, $1E, $45, $5E, $02, $42, $7F, $69

    ld bc, $7E12
    ld d, a
    ld bc, $2706
    ld e, [hl]
    ld [bc], a
    inc c
    dec a
    ld l, c

    db $00, $12, $90, $57, $02, $3D, $64, $5E, $03, $61, $9E, $69, $BE, $52, $CA, $52

    sub $52

    db $E2, $52, $EE, $52, $FA, $52

    ld b, $53

    db $09, $53, $01, $12, $A9, $57, $01, $0C, $7D, $5E, $02, $1E, $CF, $69, $00, $36
    db $CD, $57, $03, $1F, $90, $5E, $04, $37, $E8, $69

    nop
    ld [hl], $CD
    ld d, a
    ld [bc], a
    rra
    add h
    ld e, [hl]
    ld [bc], a
    scf
    db $DC
    ld l, c

    db $00, $36, $CD, $57, $02, $3E, $AF, $5E, $02, $62, $13, $6A, $00, $36, $CD, $57
    db $02, $3E, $A3, $5E, $03, $62, $01, $6A, $04, $19, $B0, $57, $00, $75, $E6, $5E
    db $02, $75, $26, $6A

    add b
    add b
    add b

    db $01, $36, $C9, $57, $00, $7B, $EC, $5E, $00, $81, $32, $6A, $1B, $53

    daa
    ld d, e

    db $33, $53, $00, $1E, $EC, $57, $02, $1E, $0B, $5F, $01, $3C, $6F, $6A

    ld bc, $CE06
    ld d, a
    ld bc, $ED06
    ld e, [hl]
    ld [bc], a
    inc c
    inc sp
    ld l, d

    db $00, $24, $F2, $57, $03, $31, $1E, $5F, $05, $4F, $82, $6A, $47, $53

    ld d, e
    ld d, e

    db $5F, $53, $6B, $53, $00, $0D, $00, $58, $04, $5C, $8D, $5F, $05, $37, $D8, $6A

    nop
    dec c
    nop
    ld e, b
    inc b
    ld e, h
    ld [hl], l
    ld e, a
    ld [bc], a
    scf
    db $CC
    ld l, d

    db $03, $0D, $F4, $57, $06, $43, $5C, $5F, $00, $2A, $CB, $6A, $00, $0D, $00, $58
    db $04, $12, $43, $5F, $04, $12, $B3, $6A, $7B, $53, $87, $53, $01, $12, $13, $58
    db $01, $12, $B8, $5F, $00, $3C, $33, $6B, $01, $1D, $1A, $58, $00, $18, $BE, $5F
    db $00, $42, $39, $6B, $9D, $53, $AB, $53, $FF, $53, $37, $54, $7D, $54, $9F, $53
    db $00, $00, $29, $58, $01, $06, $C9, $5F, $02, $0C, $44, $6B, $B7, $53, $C3, $53

    rst $08
    ld d, e
    db $DB
    ld d, e
    rst $20
    ld d, e

    db $F3, $53, $00, $37, $6D, $58, $02, $0C, $FA, $5F, $02, $0C, $A5, $6B, $00, $00
    db $36, $58, $02, $25, $13, $60, $01, $19, $B8, $6B

    nop
    ld [de], a
    ld c, b
    ld e, b
    ld bc, $3137
    ld h, b
    ld bc, $126D
    ld l, h
    nop
    scf
    ld l, l
    ld e, b
    inc bc
    ld c, d
    jr c, @+$62

    ld [bc], a
    ld a, h
    add hl, de
    ld l, h
    nop
    scf
    ld l, l
    ld e, b
    ld [bc], a
    inc c
    ld b, $60
    ld bc, $B10C
    ld l, e

    db $01, $1F, $4F, $58, $01, $51, $45, $60, $02, $89, $22, $6C, $07, $54, $13, $54

    rra
    ld d, h

    db $2B, $54, $00, $11, $7F, $58, $02, $09, $5F, $60, $01, $05, $54, $6C, $01, $06
    db $6E, $58, $01, $10, $68, $60, $02, $12, $59, $6C

    nop
    ld de, $587F
    ld [bc], a
    ld l, $8C
    ld h, b
    nop
    inc a
    adc a
    ld l, h

    db $01, $11, $7B, $58, $00, $3A, $98, $60, $00, $42, $95, $6C, $41, $54, $4D, $54

    ld e, c
    ld d, h

    db $65, $54

    ld [hl], c
    ld d, h

    db $01, $0C, $8C, $58, $00, $24, $BD, $60, $02, $48, $DE, $6C, $00, $2C, $AC, $58
    db $00, $5B, $F4, $60, $00, $8C, $22, $6D

    nop
    ld b, $86
    ld e, b
    ld bc, $9906
    ld h, b
    ld [bc], a
    ld [de], a
    xor b
    ld l, h

    db $00, $13, $93, $58, $02, $37, $C4, $60, $03, $67, $EB, $6C

    nop
    jr nz, @-$5E

    ld e, b
    nop
    ld e, e
    db $F4
    ld h, b
    nop
    add [hl]
    inc e
    ld l, l

    db $89, $54

    sub l
    ld d, h

    db $A1, $54, $AD, $54, $B9, $54, $C5, $54, $01, $0C, $B9, $58, $02, $12, $07, $61
    db $03, $3C, $5F, $6D

    ld bc, $AD06
    ld e, b
    ld bc, $F506
    ld h, b
    inc bc
    ld [de], a
    inc hl
    ld l, l

    db $01, $19, $C0, $58, $01, $25, $14, $61, $01, $55, $72, $6D, $00, $1F, $CC, $58
    db $02, $3D, $32, $61, $03, $6D, $90, $6D, $00, $2C, $D9, $58, $01, $4E, $3F, $61
    db $02, $88, $A3, $6D, $00, $26, $D3, $58, $00, $4E, $43, $61, $02, $95, $AC, $6D

    rst $10
    ld d, h
    dec e
    ld d, l
    ld [hl], c
    ld d, l
    pop hl
    ld d, h
    db $ED
    ld d, h
    ld sp, hl
    ld d, h
    dec b
    ld d, l
    ld de, $0055
    nop
    ldh [$FF58], a
    ld bc, $4A06
    ld h, c
    ld [bc], a
    inc c
    cp a
    ld l, l
    nop
    ld b, $E6
    ld e, b
    ld [bc], a
    inc h
    ld l, [hl]
    ld h, c
    ld bc, $E324
    ld l, l
    nop
    dec c
    db $ED
    ld e, b
    inc bc
    ld b, e
    ld a, e
    ld h, c
    ld bc, $EA31
    ld l, l
    nop
    inc de
    di
    ld e, b
    inc bc
    ld c, a
    sbc c
    ld h, c
    ld [bc], a
    ld b, e
    ld [bc], a
    ld l, [hl]
    nop
    add hl, de
    ld sp, hl
    ld e, b
    ld bc, $AC68
    ld h, c
    nop
    ld d, b
    rrca
    ld l, [hl]
    add hl, hl
    ld d, l
    dec [hl]
    ld d, l
    ld b, c
    ld d, l
    ld c, l
    ld d, l
    ld e, c
    ld d, l
    ld h, l
    ld d, l
    ld bc, $0705
    ld e, c
    nop
    and l
    add d
    ld h, d
    nop
    ld [hl], l
    xor a
    ld l, [hl]
    nop
    add hl, de
    rra
    ld e, c
    inc b
    ld [de], a
    rst $28
    ld h, c
    ld [bc], a
    inc c
    ld b, [hl]
    ld l, [hl]
    nop
    add hl, de
    rra
    ld e, c
    inc bc
    ld [de], a
    db $DD
    ld h, c
    ld [bc], a
    inc c
    ld a, [hl-]
    ld l, [hl]
    nop
    add hl, de
    rra
    ld e, c
    inc bc
    ld b, e
    jr nz, @+$64

    ld bc, $6B31
    ld l, [hl]
    ld bc, $0C0C
    ld e, c
    ld [bc], a
    ld h, d
    inc sp
    ld h, d
    nop
    jr c, @+$74

    ld l, [hl]
    nop
    add hl, de
    rra
    ld e, c
    ld [bc], a
    sub e
    ld h, h
    ld h, d
    ld [bc], a
    ld l, c
    sub a
    ld l, [hl]
    ld [hl], e
    ld d, l
    add b
    ld bc, $8306
    ld h, d
    ld [bc], a
    inc c
    or b
    ld l, [hl]
    adc d
    ld d, l

    db $8A, $55, $65, $56, $E2, $56, $74, $57, $1F, $58

    db $DA
    ld e, b

    db $9A, $55, $B3, $55, $DE, $55, $DF, $55, $27, $56, $32, $56, $4B, $56, $64, $56
    db $01, $98, $00, $07, $A8, $26, $02, $10, $20, $07, $A8, $26, $02, $38, $40, $07
    db $A8, $26, $03, $70, $60, $07, $A8, $26, $FD, $00, $48, $00, $09, $A8, $1C, $00
    db $80, $20, $09, $A8, $1C, $03, $20, $40, $09, $A8, $14, $04, $30, $00, $0A, $A8
    db $6B, $04, $70, $20, $09, $A8, $1C, $04, $80, $40, $0A, $A8, $6B, $04, $88, $60
    db $09, $A8, $1C, $FD, $FD, $00, $28, $00, $21, $A4, $68, $01, $28, $20, $0A, $A8
    db $6B, $01, $70, $40, $0A, $A8, $6B, $02, $00, $60, $0A, $A8, $6B, $04, $18, $00
    db $0B, $A8, $3B, $04, $30, $20, $0B, $A8, $6B, $05, $10, $40, $0B, $A8, $3B, $05
    db $80, $60, $0B, $A8, $6B, $09, $40, $00, $0A, $A8, $6B, $09, $60, $20, $0A, $A8
    db $6B, $0A, $10, $40, $09, $A8, $54, $FE, $00, $22, $48, $50, $FD, $FE, $00, $21
    db $68, $58, $FE, $00, $22, $48, $50, $FD, $01, $10, $00, $08, $A8, $78, $01, $40
    db $20, $08, $A8, $68, $02, $40, $40, $07, $A8, $20, $02, $58, $60, $07, $A8, $20
    db $FD, $02, $30, $00, $08, $A8, $48, $02, $50, $20, $08, $A8, $50, $03, $08, $40
    db $08, $A8, $48, $03, $60, $60, $08, $A8, $40, $FD, $FD, $71, $56, $7F, $56, $CA
    db $56, $DC, $56, $7E, $56, $7E, $56, $01, $28, $C0, $0D, $AC, $20, $04, $68, $00
    db $0E, $A8, $68, $FD, $FD, $02, $60, $00, $0D, $AC, $18, $02, $98, $20, $0A, $A8
    db $53, $03, $30, $40, $0A, $A8, $53, $FF, $83, $00, $00, $0E, $78, $90, $FF, $05
    db $20, $00, $31, $A4, $48, $05, $30, $20, $23, $A4, $48, $05, $40, $40, $23, $A4
    db $48, $05, $50, $60, $23, $A4, $48, $06, $40, $00, $23, $A4, $48, $06, $50, $20
    db $23, $A4, $48, $06, $60, $40, $23, $A4, $48, $06, $70, $60, $23, $A4, $48, $FD
    db $01, $38, $00, $0E, $A8, $68, $02, $78, $60, $0F, $A8, $53, $FE, $00, $24, $00
    db $00, $FD, $FE, $00, $24, $00, $00, $FD, $EC, $56, $F3, $56, $F4, $56, $1A, $57
    db $2D, $57, $84, $58, $00, $0E, $78, $90, $FD, $FD, $82, $40, $00, $0E, $78, $90
    db $FF, $81, $20, $00, $27, $4C, $88, $FF, $01, $40, $00, $0E, $A8, $58, $04, $40
    db $60, $07, $A8, $40, $04, $78, $00, $0C, $A8, $18, $FE, $00, $26, $00, $00, $FD
    db $81, $08, $00, $27, $2C, $88, $81, $20, $20, $27, $74, $88, $83, $58, $00, $0E
    db $58, $90, $FD, $FE, $00, $28, $00, $00, $FF, $85, $60, $00, $27, $8C, $88, $86
    db $0C, $20, $27, $74, $88, $FF, $85, $60, $00, $27, $8C, $88, $85, $68, $20, $27
    db $74, $88, $FF, $83, $60, $00, $27, $2C, $88, $84, $10, $20, $27, $74, $88, $FF
    db $83, $60, $00, $27, $2C, $88, $83, $68, $20, $27, $74, $88, $FF, $81, $60, $00
    db $27, $8C, $88, $82, $20, $20, $27, $54, $88, $FD, $7E, $57, $97, $57, $CE, $57
    db $F3, $57, $01, $58, $03, $90, $00, $29, $A4, $0C, $04, $28, $20, $10, $A8, $30
    db $04, $58, $60, $29, $A4, $0C, $06, $20, $20, $14, $B0, $70, $FD, $03, $30, $00
    db $07, $A8, $50, $04, $08, $20, $14, $B0, $30, $04, $68, $40, $07, $A8, $10, $05
    db $60, $60, $14, $B0, $70, $FF, $82, $20, $00, $2A, $34, $88, $82, $20, $20, $2A
    db $4C, $88, $82, $20, $40, $2B, $64, $88, $82, $20, $60, $2A, $7C, $88, $FE, $00
    db $1B, $20, $60, $FD, $02, $78, $40, $10, $A8, $68, $03, $10, $00, $29, $A4, $24
    db $03, $68, $20, $29, $A4, $24, $04, $90, $00, $29, $A4, $0C, $05, $50, $20, $29
    db $A4, $0C, $06, $28, $40, $10, $A8, $30, $FD, $FE, $00, $2A, $2C, $68, $20, $2B
    db $4C, $68, $40, $2A, $6C, $68, $FD, $01, $18, $00, $13, $A8, $68, $04, $08, $20
    db $13, $A8, $68, $04, $88, $40, $07, $A8, $10, $05, $08, $60, $13, $A8, $68, $FE
    db $00, $1C, $30, $68, $FD, $29, $58, $36, $58, $6E, $58, $80, $58, $AD, $58, $03
    db $68, $00, $16, $AC, $78, $04, $20, $40, $16, $AC, $78, $FD, $02, $88, $00, $07
    db $A8, $10, $03, $80, $20, $07, $A8, $50, $04, $88, $40, $07, $A8, $60, $05, $68
    db $60, $07, $A8, $10, $FF, $02, $50, $00, $2E, $A0, $00, $02, $08, $00, $07, $A8
    db $20, $02, $68, $20, $07, $A8, $10, $03, $10, $40, $07, $A8, $50, $03, $30, $80
    db $07, $A8, $10, $FD, $00, $50, $00, $2E, $A0, $00, $01, $28, $00, $16, $AC, $78
    db $FE, $00, $1E, $50, $40, $FD, $83, $20, $00, $12, $54, $88, $85, $40, $00, $10
    db $50, $90, $87, $28, $60, $07, $50, $88, $FF, $03, $10, $00, $10, $A8, $48, $03
    db $70, $40, $10, $A8, $48, $FF, $86, $48, $00, $2C, $4C, $88, $87, $70, $00, $2D
    db $4C, $88, $FD, $81, $68, $00, $07, $18, $88, $82, $58, $20, $10, $18, $90, $84
    db $48, $60, $07, $38, $88, $FF, $01, $90, $00, $10, $A8, $68, $02, $50, $40, $10
    db $A8, $68, $03, $70, $00, $10, $A8, $68, $FF, $05, $70, $00, $1F, $A8, $60, $FD

    ldh [$FF58], a
    ld b, $59
    jr nz, @+$5B

    ld bc, $0080
    ld d, $AC
    ld a, b
    ld [bc], a
    add b
    ld b, b
    ld d, $AC
    ld a, b
    rst $38
    inc b
    jr jr_003_58F0

jr_003_58F0:
    dec bc
    xor b
    inc hl
    inc b
    ld [hl], b
    jr nz, @+$0D

    xor b
    inc hl
    ld b, $08
    nop
    dec bc
    xor b
    ld l, e
    ld b, $48
    jr nz, @+$0D

    xor b
    inc sp
    db $FD
    cp $00
    jr nc, @+$52

    db $10
    rst $38
    ld bc, $0088
    ld a, [bc]
    xor b
    inc sp
    ld [bc], a
    jr nc, @+$22

    ld a, [bc]
    xor b
    inc sp
    ld [bc], a
    ld l, b
    nop
    ld a, [bc]
    xor b
    inc sp
    rst $38
    db $FD
    ld [bc], a
    adc b
    nop
    cpl
    xor b
    ld d, b
    db $FD
    dec [hl]
    ld e, c

    db $35, $59, $30, $5B, $8D, $5C, $1D, $5E, $BF, $5F

    ld b, h
    ld h, c

    db $45, $59, $7C, $59, $E0, $59, $11, $5A, $86, $5A, $AF, $5A, $E0, $5A, $2A, $5B
    db $01, $08, $00, $08, $A8, $68, $01, $20, $20, $08, $A8, $70, $01, $38, $40, $08
    db $A8, $68, $02, $70, $60, $08, $A8, $68, $02, $90, $80, $08, $A8, $70, $03, $08
    db $A0, $08, $A8, $68, $04, $50, $C0, $09, $A8, $22, $04, $78, $E0, $09, $A8, $22
    db $05, $38, $00, $09, $A8, $22, $FD, $03, $00, $00, $0C, $A8, $20, $03, $58, $20
    db $0C, $A8, $30, $03, $88, $40, $0C, $A8, $20, $04, $70, $60, $0C, $A8, $30, $05
    db $10, $80, $09, $A8, $22, $05, $38, $A0, $09, $A8, $22, $FF, $00, $20, $00, $0C
    db $A8, $28, $01, $10, $20, $07, $A8, $48, $01, $20, $40, $07, $A8, $28, $01, $90
    db $60, $0C, $A8, $28, $02, $90, $80, $08, $A8, $60, $03, $70, $A0, $08, $A8, $40
    db $04, $50, $C0, $08, $A8, $68, $05, $00, $E0, $0C, $A8, $30, $FE, $00, $07, $18
    db $48, $20, $07, $88, $48, $FE, $00, $09, $70, $1C, $FD, $00, $30, $00, $07, $A8
    db $50, $00, $40, $20, $07, $A8, $48, $01, $00, $40, $08, $A8, $68, $01, $88, $60
    db $08, $A8, $70, $02, $90, $80, $0C, $A8, $20, $03, $48, $A0, $08, $A8, $68, $03
    db $90, $C0, $0C, $A8, $48, $04, $70, $E0, $0C, $A8, $10, $FD, $00, $70, $00, $07
    db $A8, $60, $02, $90, $20, $0C, $A8, $28, $03, $28, $40, $0C, $A8, $30, $04, $80
    db $60, $07, $A8, $58, $06, $30, $80, $07, $A8, $48, $06, $50, $A0, $07, $A8, $48
    db $06, $70, $C0, $07, $A8, $48, $07, $08, $E0, $0C, $A8, $20, $07, $80, $00, $0C
    db $A8, $28, $08, $18, $20, $08, $A8, $30, $08, $60, $40, $08, $A8, $28, $08, $78
    db $60, $08, $A8, $30, $09, $08, $80, $08, $A8, $28, $0A, $28, $A0, $07, $A8, $18
    db $0A, $50, $C0, $07, $A8, $18, $FE, $00, $09, $28, $0C, $20, $07, $48, $58, $40
    db $0B, $70, $1B, $FE, $00, $07, $38, $18, $20, $0B, $50, $43, $40, $0B, $78, $33
    db $FD, $FE, $00, $09, $58, $0C, $20, $09, $78, $0C, $FF, $80, $13, $00, $0B, $30
    db $90, $80, $13, $20, $0B, $50, $90, $80, $50, $40, $07, $78, $88, $81, $08, $80
    db $0C, $88, $90, $81, $18, $A0, $07, $58, $88, $FD, $00, $38, $00, $0A, $A8, $6B
    db $00, $58, $20, $0A, $A8, $6B, $01, $88, $40, $0C, $A8, $18, $02, $10, $60, $09
    db $A8, $22, $02, $80, $80, $09, $A8, $22, $03, $30, $A0, $0B, $A8, $53, $03, $50
    db $C0, $0B, $A8, $53, $03, $70, $E0, $0B, $A8, $53, $FD, $00, $38, $00, $07, $A8
    db $20, $00, $68, $20, $08, $A8, $60, $00, $80, $40, $07, $A8, $20, $00, $90, $60
    db $0B, $A8, $6B, $01, $18, $80, $0B, $A8, $6B, $01, $50, $A0, $0C, $A8, $60, $FF
    db $01, $18, $00, $0A, $A8, $13, $03, $80, $20, $0C, $A8, $18, $04, $50, $40, $0B
    db $A8, $6B, $04, $90, $60, $0B, $A8, $6B, $05, $08, $80, $0C, $A8, $18, $05, $08
    db $A0, $08, $A8, $50, $FD, $FE, $00, $17, $78, $00, $FD, $3C, $5B, $73, $5B, $F5
    db $5B, $38, $5C, $43, $5C, $6E, $5C, $01, $88, $00, $0D, $AC, $20, $02, $48, $80
    db $0D, $AC, $20, $03, $28, $20, $0E, $A8, $30, $03, $68, $A0, $0E, $A8, $68, $FE
    db $00, $07, $68, $60, $FE, $00, $0A, $50, $6B, $FE, $00, $0E, $60, $68, $FE, $00
    db $0F, $50, $6B, $FE, $00, $0D, $50, $38, $FE, $00, $0A, $78, $5B, $FD, $00, $68
    db $00, $0F, $A8, $3B, $00, $88, $20, $0F, $A8, $33, $01, $20, $40, $07, $A8, $10
    db $01, $48, $60, $07, $A8, $50, $01, $60, $80, $07, $A8, $10, $03, $68, $A0, $0D
    db $AC, $18, $04, $20, $C0, $0F, $A8, $6B, $FF, $82, $28, $00, $07, $68, $88, $82
    db $20, $20, $0E, $18, $90, $82, $68, $80, $07, $28, $88, $83, $48, $A0, $07, $28
    db $88, $83, $48, $C0, $07, $38, $88, $FF, $05, $60, $00, $23, $A4, $48, $05, $70
    db $20, $23, $A4, $48, $05, $80, $40, $23, $A4, $48, $05, $90, $60, $23, $A4, $48
    db $06, $00, $80, $23, $A4, $48, $06, $10, $A0, $23, $A4, $48, $06, $20, $C0, $23
    db $A4, $48, $06, $30, $E0, $23, $A4, $48, $FF, $81, $08, $00, $0D, $7C, $90, $FD
    db $00, $70, $00, $0A, $A8, $6B, $01, $10, $20, $0D, $AC, $18, $01, $70, $40, $0D
    db $AC, $18, $02, $20, $60, $0F, $A8, $6B, $02, $68, $80, $0F, $A8, $53, $03, $38
    db $A0, $0D, $AC, $18, $04, $40, $C0, $07, $A8, $48, $04, $70, $E0, $07, $A8, $50
    db $FE, $00, $0A, $38, $6B, $20, $0A, $58, $6B, $FE, $00, $07, $40, $28, $20, $07
    db $68, $28, $FD, $FE, $00, $0F, $80, $6B, $FE, $00, $07, $60, $28, $FD, $00, $38
    db $60, $0A, $A8, $6B, $00, $70, $C0, $0A, $A8, $6B, $01, $30, $00, $0E, $A8, $68
    db $01, $50, $E0, $0D, $AC, $18, $02, $10, $C0, $0F, $A8, $6B, $02, $68, $00, $0A
    db $A8, $63, $03, $40, $60, $0E, $A8, $18, $FD, $00, $50, $00, $0A, $A8, $6B, $00
    db $78, $20, $0A, $A8, $6B, $00, $80, $40, $0D, $AC, $20, $01, $48, $60, $0F, $A8
    db $6B, $02, $80, $80, $25, $A4, $68, $FD, $97, $5C, $E0, $5C, $1C, $5D, $AF, $5D
    db $E0, $5D, $80, $10, $00, $0C, $70, $90, $80, $48, $20, $07, $18, $88, $81, $00
    db $40, $11, $4C, $90, $81, $28, $80, $07, $18, $88, $81, $28, $A0, $07, $68, $88
    db $82, $28, $00, $0C, $68, $90, $82, $48, $20, $07, $38, $88, $82, $48, $40, $07
    db $88, $88, $83, $08, $60, $07, $18, $88, $83, $28, $80, $0C, $48, $90, $84, $10
    db $A0, $07, $48, $88, $84, $10, $C0, $07, $58, $88, $FD, $80, $18, $00, $11, $7C
    db $90, $80, $48, $40, $07, $18, $88, $81, $00, $60, $11, $44, $90, $81, $20, $A0
    db $11, $6C, $90, $82, $23, $00, $0F, $58, $90, $82, $60, $20, $07, $78, $88, $82
    db $58, $40, $11, $54, $90, $83, $00, $80, $07, $28, $88, $83, $38, $A0, $0C, $70
    db $90, $FE, $00, $19, $18, $5E, $FD, $80, $18, $00, $11, $2C, $90, $80, $68, $40
    db $07, $58, $88, $81, $50, $60, $07, $30, $88, $81, $40, $80, $11, $64, $90, $82
    db $38, $00, $0C, $30, $90, $83, $10, $20, $0C, $18, $93, $83, $23, $40, $0F, $70
    db $90, $84, $10, $00, $0C, $70, $90, $84, $48, $20, $11, $7C, $90, $84, $68, $60
    db $07, $58, $88, $85, $00, $80, $11, $2C, $90, $85, $28, $C0, $07, $58, $88, $FF
    db $01, $68, $00, $0C, $A8, $18, $02, $00, $20, $0F, $A8, $53, $02, $58, $60, $0F
    db $A8, $6B, $02, $78, $80, $0C, $A8, $20, $03, $30, $A0, $07, $A8, $60, $03, $60
    db $C0, $07, $A8, $60, $05, $40, $E0, $0C, $A8, $18, $05, $40, $80, $0F, $A8, $6B
    db $FF, $80, $18, $00, $11, $5C, $90, $80, $58, $40, $11, $34, $90, $81, $08, $80
    db $0C, $80, $90, $81, $28, $A0, $07, $38, $88, $FD, $80, $10, $00, $0C, $70, $90
    db $80, $40, $20, $07, $18, $88, $81, $08, $40, $0C, $20, $90, $81, $08, $60, $0C
    db $80, $90, $82, $08, $00, $07, $68, $88, $82, $10, $20, $11, $44, $90, $82, $60
    db $60, $0C, $58, $90, $83, $40, $80, $07, $78, $88, $FD, $81, $08, $00, $0C, $60
    db $90, $81, $40, $20, $0C, $88, $90, $82, $03, $40, $0F, $20, $90, $83, $10, $00
    db $0C, $50, $90, $83, $48, $20, $0C, $18, $90, $84, $28, $40, $07, $28, $88, $85
    db $08, $00, $07, $18, $88, $85, $40, $20, $0C, $70, $90, $86, $18, $40, $11, $34
    db $90, $86, $28, $80, $0E, $70, $90, $FD, $27, $5E, $71, $5E, $ED, $5E, $31, $5F
    db $A6, $5F, $03, $40, $00, $07, $A8, $50, $05, $20, $20, $07, $A8, $10, $05, $40
    db $40, $07, $A8, $10, $05, $60, $60, $07, $A8, $10, $06, $60, $80, $14, $B0, $70
    db $07, $10, $A0, $14, $B0, $70, $FF, $02, $28, $00, $07, $A8, $10, $02, $30, $20
    db $13, $A8, $68, $02, $40, $40, $07, $A8, $10, $02, $50, $60, $14, $B0, $70, $03
    db $60, $80, $07, $A8, $10, $03, $88, $A0, $07, $A8, $50, $FD, $03, $40, $00, $12
    db $AC, $20, $04, $20, $60, $12, $AC, $58, $05, $08, $C0, $10, $A8, $68, $FF, $84
    db $38, $00, $10, $50, $90, $84, $60, $40, $07, $38, $88, $85, $10, $60, $07, $68
    db $88, $85, $48, $80, $07, $18, $88, $85, $48, $A0, $07, $88, $88, $FF, $83, $10
    db $00, $12, $64, $90, $83, $40, $60, $07, $48, $88, $84, $08, $80, $07, $68, $88
    db $84, $68, $A0, $14, $38, $88, $FF, $81, $18, $00, $2A, $2C, $88, $81, $18, $20
    db $2A, $44, $88, $81, $18, $40, $2B, $5C, $88, $81, $18, $60, $2A, $70, $88, $81
    db $58, $80, $2B, $2C, $88, $81, $58, $A0, $2B, $44, $88, $81, $58, $C0, $2B, $5C
    db $88, $81, $58, $E0, $2A, $70, $88, $FD, $02, $40, $00, $07, $A8, $10, $04, $50
    db $20, $12, $AC, $48, $05, $10, $80, $13, $A8, $68, $06, $10, $A0, $13, $A8, $68
    db $06, $68, $20, $10, $A8, $30, $07, $08, $C0, $13, $A8, $68, $07, $20, $E0, $14
    db $B0, $70, $FF, $84, $48, $00, $14, $48, $88, $85, $10, $20, $14, $20, $88, $85
    db $40, $40, $07, $58, $88, $85, $40, $60, $07, $78, $88, $FD, $80, $38, $00, $07
    db $48, $88, $80, $48, $20, $07, $28, $88, $80, $48, $40, $07, $68, $88, $81, $08
    db $60, $07, $38, $88, $81, $08, $80, $07, $78, $88, $81, $38, $A0, $07, $48, $88
    db $81, $60, $C0, $13, $78, $88, $FE, $00, $2A, $24, $20, $20, $2A, $44, $10, $40
    db $2B, $64, $10, $60, $2A, $34, $48, $80, $2B, $54, $40, $A0, $2B, $74, $38, $FF
    db $83, $08, $00, $07, $68, $88, $83, $48, $20, $07, $18, $88, $83, $48, $40, $07
    db $88, $88, $83, $68, $60, $07, $78, $88, $84, $00, $80, $07, $28, $88, $84, $20
    db $A0, $07, $18, $88, $84, $28, $C0, $07, $68, $88, $84, $68, $E0, $14, $50, $88
    db $FD, $02, $60, $00, $10, $A8, $68, $03, $30, $40, $12, $AC, $10, $04, $30, $A0
    db $10, $A8, $30, $05, $50, $E0, $07, $A8, $10, $FD, $C9, $5F, $FA, $5F, $5E, $60
    db $99, $60, $F5, $60, $00, $88, $00, $07, $A8, $10, $01, $08, $C0, $16, $AC, $78
    db $01, $38, $20, $07, $A8, $28, $01, $58, $40, $07, $A8, $28, $03, $68, $60, $07
    db $A8, $28, $04, $68, $80, $07, $A8, $50, $05, $10, $C0, $13, $A8, $28, $05, $28
    db $A0, $07, $A8, $50, $FD, $85, $08, $00, $07, $50, $88, $85, $08, $20, $07, $70
    db $88, $86, $08, $40, $07, $50, $88, $86, $60, $80, $13, $60, $88, $FF, $01, $48
    db $00, $07, $A8, $10, $01, $78, $20, $13, $A8, $68, $02, $30, $40, $12, $AC, $38
    db $03, $68, $A0, $16, $AC, $78, $04, $68, $40, $16, $AC, $78, $06, $28, $E0, $07
    db $A8, $48, $FE, $00, $07, $28, $10, $20, $07, $40, $10, $40, $12, $3C, $48, $FF
    db $01, $28, $00, $07, $A8, $20, $02, $28, $20, $16, $AC, $78, $02, $60, $60, $16
    db $AC, $78, $03, $30, $A0, $16, $AC, $78, $FD, $FE, $00, $07, $30, $10, $20, $07
    db $80, $28, $FF, $00, $68, $00, $07, $A8, $10, $01, $08, $20, $07, $A8, $50, $01
    db $48, $40, $07, $A8, $50, $02, $28, $60, $07, $A8, $20, $02, $90, $80, $07, $A8
    db $50, $03, $68, $A0, $07, $A8, $50, $04, $08, $C0, $07, $A8, $10, $04, $48, $E0
    db $07, $A8, $20, $FD, $84, $08, $00, $07, $30, $88, $85, $08, $20, $07, $88, $88
    db $85, $28, $40, $07, $10, $88, $85, $68, $60, $07, $18, $88, $86, $08, $80, $07
    db $70, $88, $86, $28, $A0, $07, $30, $88, $86, $48, $C0, $07, $50, $88, $FF, $01
    db $28, $00, $07, $A8, $10, $01, $68, $20, $07, $A8, $10, $02, $30, $40, $07, $A8
    db $10, $02, $68, $60, $07, $A8, $30, $02, $90, $80, $13, $A8, $68, $03, $90, $A0
    db $13, $A8, $68, $04, $60, $C0, $13, $A8, $68, $04, $68, $E0, $07, $A8, $10, $FD
    db $81, $08, $00, $07, $20, $88, $82, $20, $20, $10, $88, $90, $82, $68, $60, $07
    db $70, $88, $84, $20, $80, $10, $10, $90, $84, $48, $C0, $07, $78, $88, $FF, $01
    db $78, $00, $07, $A8, $10, $02, $40, $20, $07, $A8, $10, $03, $00, $40, $07, $A8
    db $10, $03, $10, $60, $10, $A8, $68, $03, $60, $A0, $07, $A8, $10, $04, $08, $C0
    db $07, $A8, $10, $04, $50, $E0, $07, $A8, $10, $FE, $00, $12, $54, $60, $FD

    ld c, d
    ld h, c
    db $DD
    ld h, c
    add e
    ld h, d
    nop
    adc b
    nop
    rlca
    xor b
    jr z, jr_003_6152

    ld d, b

jr_003_6152:
    ret nz

    ld d, $AC
    ld a, b
    ld bc, $2068
    add hl, bc
    xor b
    inc c
    ld [bc], a
    db $10
    ld b, b
    rlca
    xor b
    db $10
    ld [bc], a
    ld b, b
    ld h, b
    rlca
    xor b
    db $10
    ld [bc], a
    adc b
    add b
    add hl, bc
    xor b

jr_003_616D:
    inc c
    inc bc
    jr z, @-$3E

    ld d, $AC
    ld a, b
    inc bc
    ld c, b
    and b
    rlca

jr_003_6178:
    xor b
    db $10
    rst $38
    inc bc
    jr z, jr_003_617E

jr_003_617E:
    rlca
    xor b
    jr z, jr_003_6185

    adc b
    jr nz, @+$0C

jr_003_6185:
    xor b
    inc hl
    inc bc
    adc b
    ld b, b
    add hl, bc
    xor b
    ld b, h
    inc b
    jr nz, jr_003_61F0

    add hl, bc
    xor b
    ld b, h
    inc b
    ld e, b
    add b

jr_003_6196:
    add hl, bc
    xor b
    ld b, h
    dec b
    jr nc, @-$5E

    rlca
    xor b
    db $10
    dec b
    ld l, b
    ret nz

    ld a, [bc]

jr_003_61A3:
    xor b
    ld l, e
    dec b
    add b
    ldh [rTAC], a
    xor b
    db $10
    rst $38
    dec b
    ld c, b
    nop
    rlca
    xor b
    jr z, @+$08

    ld [$0A20], sp
    xor b
    inc sp
    ld b, $48
    ld b, b
    ld a, [bc]
    xor b
    ld l, e
    ld b, $78
    ld h, b
    ld [$64A8], sp
    rlca
    ld [$0780], sp
    xor b
    db $10
    rlca
    jr z, jr_003_616D

    ld [$34A8], sp
    rlca
    ld c, b
    ret nz

    ld [$44A8], sp
    rlca
    ld l, b
    ldh [$FF08], a
    xor b
    inc a
    db $FD
    add d
    ld [$0700], sp
    ld [hl], b
    adc b
    add d
    ld b, b
    jr nz, @+$09

    ld c, b
    adc b
    add d
    ld h, b
    ld b, b
    ld [$8428], sp
    add e

jr_003_61F0:
    jr nz, jr_003_6252

    ld a, [bc]
    ld [hl], b
    sub e
    add e
    jr nc, jr_003_6178

    ld [$8428], sp
    add e
    ld e, b
    and b
    dec bc
    ld e, b
    sub e
    add e
    ld l, b
    ret nz

    ld [$8430], sp
    rst $38
    add b
    ld [$0700], sp
    jr z, jr_003_6196

    add b
    ld [$0920], sp
    add b
    add h
    add b
    jr nz, jr_003_6257

    dec bc
    ld [hl], b
    sub e
    add b
    ld d, b
    ld h, b
    rlca
    ld e, b
    adc b
    add c
    jr nz, jr_003_61A3

    ld a, [bc]
    ld a, b
    sub e
    add c
    ld e, b
    and b
    ld [$8490], sp
    add c
    ld l, b
    ret nz

    ld [$8480], sp
    rst $38
    ld bc, $0030
    rlca
    xor b
    jr z, jr_003_623B

    adc b

jr_003_623B:
    jr nz, jr_003_6246

    xor b
    ld d, h
    ld [bc], a
    jr nc, jr_003_6282

    dec bc
    xor b
    ld l, e
    ld [bc], a

jr_003_6246:
    ld e, b
    ld h, b
    add hl, bc
    xor b
    ld d, h
    inc bc
    ld [$0B80], sp
    xor b
    ld b, e
    inc bc

jr_003_6252:
    ld b, b
    and b
    ld [$6CA8], sp

jr_003_6257:
    inc bc
    ld h, b
    ret nz

    ld [$6CA8], sp
    inc bc
    ld a, b
    ldh [rTAC], a
    xor b
    db $10
    rst $38
    ld bc, $0038
    rlca
    xor b
    db $10
    ld bc, $2060
    ld d, $AC
    ld a, b
    ld [bc], a
    nop
    ld b, b
    ld d, $AC
    ld a, b
    ld [bc], a
    nop
    ld h, b
    add hl, bc
    xor b
    inc c
    ld [bc], a
    ld b, b
    add b
    ld d, $AC
    ld a, b

jr_003_6282:
    db $FD
    nop
    ld c, b
    nop
    ld a, [bc]
    xor b
    inc hl
    ld bc, $2018
    ld [$6CA8], sp
    ld bc, $4050
    ld [$64A8], sp
    ld bc, $6068
    ld [$6CA8], sp
    ld bc, $8068
    dec bc
    xor b
    inc hl
    db $FD
    or b
    ld h, d

    db $B0, $62, $8D, $65, $4E, $67, $33, $69, $3A, $6B

    cp c
    ld l, l

    db $C0, $62, $27, $63, $CD, $63, $1C, $64, $91, $64, $BD, $64, $06, $65, $8C, $65
    db $00, $78, $00, $01, $A4, $60, $01, $30, $20, $02, $A4, $68, $01, $48, $40, $02
    db $A4, $68, $01, $60, $60, $02, $A4, $68, $01, $78, $80, $02, $A4, $68, $02, $48
    db $A0, $02, $A4, $68, $02, $60, $C0, $02, $A4, $68, $02, $78, $00, $02, $A4, $68
    db $03, $48, $20, $02, $A4, $68, $03, $60, $40, $02, $A4, $68, $03, $78, $60, $02
    db $A4, $68, $04, $00, $80, $02, $A4, $68, $04, $38, $A0, $02, $A4, $60, $04, $50
    db $C0, $02, $A4, $68, $04, $68, $00, $02, $A4, $60, $04, $80, $20, $02, $A4, $68
    db $05, $08, $40, $01, $A4, $68, $FD, $02, $30, $00, $01, $A4, $48, $02, $68, $20
    db $02, $A4, $68, $02, $80, $40, $02, $A4, $68, $02, $98, $60, $02, $A4, $68, $03
    db $10, $80, $02, $A4, $68, $03, $28, $A0, $02, $A4, $68, $03, $40, $C0, $02, $A4
    db $68, $04, $50, $00, $02, $A4, $68, $04, $68, $20, $02, $A4, $68, $04, $80, $40
    db $02, $A4, $68, $05, $58, $60, $03, $A4, $30, $FF, $00, $10, $00, $04, $A4, $50
    db $00, $38, $20, $02, $A4, $68, $00, $50, $40, $02, $A4, $68, $00, $68, $60, $02
    db $A4, $68, $01, $60, $80, $03, $A4, $30, $02, $18, $A0, $02, $A4, $60, $02, $50
    db $C0, $01, $A4, $50, $02, $70, $00, $02, $A4, $50, $03, $90, $20, $0A, $A8, $3B
    db $04, $40, $40, $02, $A4, $68, $04, $58, $60, $02, $A4, $68, $04, $70, $80, $02
    db $A4, $68, $05, $10, $A0, $02, $A4, $58, $05, $40, $C0, $02, $A4, $50, $FE, $00
    db $02, $24, $50, $20, $02, $7C, $50, $FE, $00, $01, $34, $40, $FD, $00, $30, $00
    db $02, $A4, $30, $00, $58, $20, $01, $A4, $20, $01, $50, $40, $02, $A4, $60, $01
    db $70, $60, $02, $A4, $60, $02, $10, $80, $02, $A4, $60, $02, $28, $A0, $02, $A4
    db $60, $02, $50, $00, $02, $A4, $58, $02, $68, $20, $02, $A4, $58, $03, $18, $40
    db $02, $A4, $60, $03, $30, $60, $02, $A4, $60, $03, $68, $80, $02, $A4, $60, $03
    db $80, $A0, $02, $A4, $60, $04, $40, $00, $02, $A4, $60, $FD, $01, $08, $00, $01
    db $A4, $68, $02, $50, $20, $02, $A4, $48, $02, $70, $40, $02, $A4, $58, $03, $40
    db $60, $02, $A4, $68, $03, $60, $80, $02, $A4, $68, $04, $60, $A0, $02, $A4, $40
    db $06, $10, $00, $02, $A4, $68, $06, $40, $20, $02, $A4, $68, $06, $70, $40, $02
    db $A4, $68, $07, $70, $60, $02, $A4, $40, $08, $28, $20, $02, $A4, $20, $08, $90
    db $60, $02, $A4, $38, $09, $38, $00, $02, $A4, $40, $09, $70, $20, $01, $A4, $38
    db $09, $90, $40, $02, $A4, $48, $0A, $50, $60, $02, $A4, $60, $0A, $78, $80, $05
    db $A4, $38, $FE, $00, $03, $50, $38, $FE, $00, $02, $38, $30, $20, $02, $60, $28
    db $FD, $FF, $80, $08, $00, $03, $24, $88, $80, $40, $20, $02, $34, $88, $80, $50
    db $40, $02, $5C, $88, $81, $00, $60, $02, $64, $80, $81, $10, $80, $02, $3C, $88
    db $81, $38, $A0, $02, $84, $88, $81, $58, $C0, $01, $2C, $88, $FD, $00, $38, $00
    db $02, $A4, $28, $00, $70, $20, $01, $A4, $60, $01, $08, $40, $02, $A4, $68, $01
    db $20, $60, $02, $A4, $68, $01, $38, $80, $02, $A4, $68, $01, $50, $A0, $02, $A4
    db $68, $01, $90, $00, $02, $A4, $68, $02, $10, $20, $02, $A4, $68, $02, $40, $40
    db $02, $A4, $58, $02, $88, $60, $02, $A4, $60, $03, $40, $00, $02, $A4, $50, $03
    db $60, $20, $02, $A4, $50, $FD, $00, $10, $00, $02, $A4, $50, $00, $30, $20, $02
    db $A4, $58, $00, $50, $40, $02, $A4, $60, $00, $80, $60, $02, $A4, $68, $01, $48
    db $A0, $02, $A8, $58, $01, $58, $C0, $02, $A8, $38, $FF, $01, $40, $00, $03, $A8
    db $38, $01, $58, $20, $02, $A8, $68, $01, $90, $40, $02, $A8, $58, $02, $10, $60
    db $01, $A8, $48, $02, $48, $80, $02, $A8, $48, $02, $78, $A0, $02, $A8, $40, $03
    db $10, $00, $02, $A8, $60, $03, $38, $20, $02, $A8, $48, $03, $60, $40, $02, $A8
    db $40, $03, $90, $60, $02, $A8, $40, $04, $10, $80, $02, $A8, $48, $04, $30, $A0
    db $02, $A8, $58, $04, $70, $00, $02, $A8, $68, $04, $88, $20, $02, $A8, $48, $05
    db $28, $40, $02, $A8, $48, $05, $48, $60, $02, $A8, $68, $FD, $FD, $99, $65, $1C
    db $66, $AA, $66, $EA, $66, $F8, $66, $2F, $67, $00, $50, $00, $01, $A4, $68, $00
    db $70, $20, $02, $A4, $68, $00, $90, $40, $02, $A4, $68, $01, $60, $60, $02, $A4
    db $68, $02, $20, $00, $02, $A4, $68, $02, $80, $20, $02, $A4, $68, $03, $68, $40
    db $02, $A4, $30, $04, $10, $60, $02, $A4, $28, $04, $18, $00, $02, $A4, $68, $04
    db $68, $20, $02, $A4, $30, $05, $08, $80, $0E, $A8, $30, $05, $60, $40, $02, $A4
    db $68, $FE, $00, $02, $34, $68, $20, $02, $6C, $68, $FE, $00, $02, $34, $68, $20
    db $02, $6C, $68, $FE, $00, $02, $34, $68, $20, $02, $6C, $68, $FE, $00, $02, $34
    db $68, $20, $02, $6C, $68, $FE, $00, $02, $34, $68, $20, $02, $6C, $68, $FE, $00
    db $02, $20, $68, $20, $02, $30, $40, $40, $02, $48, $68, $FD, $00, $30, $00, $01
    db $A4, $50, $00, $50, $20, $02, $A4, $48, $01, $00, $40, $03, $A4, $68, $01, $38
    db $60, $02, $A4, $68, $01, $68, $80, $02, $A4, $68, $02, $68, $80, $02, $A4, $50
    db $03, $18, $00, $02, $A4, $48, $03, $78, $20, $02, $A4, $50, $04, $30, $40, $02
    db $A4, $68, $04, $80, $60, $02, $A4, $20, $FF, $82, $08, $00, $02, $64, $88, $82
    db $48, $20, $02, $24, $88, $83, $08, $40, $02, $84, $88, $83, $50, $60, $02, $14
    db $88, $FF, $05, $40, $00, $02, $A4, $48, $05, $90, $20, $02, $A4, $48, $05, $A0
    db $40, $32, $A0, $00, $06, $40, $60, $02, $A4, $48, $FF, $80, $08, $00, $05, $4C
    db $88, $80, $28, $20, $02, $1C, $88, $80, $28, $40, $02, $84, $88, $80, $60, $60
    db $04, $3C, $88, $81, $00, $80, $03, $3C, $80, $FD, $00, $28, $80, $01, $A4, $30
    db $00, $48, $00, $02, $A4, $60, $00, $60, $20, $02, $A4, $68, $00, $90, $40, $02
    db $A4, $68, $01, $50, $60, $02, $A4, $60, $03, $10, $00, $02, $A4, $68, $03, $48
    db $20, $02, $A4, $68, $04, $50, $80, $0E, $A8, $18, $04, $80, $40, $03, $A4, $30
    db $FE, $00, $02, $2C, $68, $20, $02, $84, $68, $FD, $FE, $00, $01, $4C, $60, $20
    db $02, $6C, $60, $40, $02, $84, $60, $FD, $00, $28, $00, $01, $A4, $50, $00, $50
    db $20, $02, $A4, $68, $00, $90, $40, $02, $A4, $68, $01, $70, $60, $02, $A4, $68
    db $02, $38, $80, $02, $A4, $18, $02, $48, $00, $02, $A4, $48, $02, $58, $20, $02
    db $A4, $48, $03, $48, $40, $02, $A4, $48, $03, $58, $60, $03, $A4, $48, $FD, $00
    db $38, $00, $01, $A4, $68, $01, $08, $20, $02, $A4, $58, $01, $28, $40, $02, $A4
    db $38, $01, $70, $60, $02, $A4, $38, $01, $90, $80, $02, $A4, $58, $FD, $58, $67
    db $B3, $67, $F6, $67, $B3, $68, $EA, $68, $80, $28, $00, $02, $14, $88, $80, $48
    db $20, $02, $7C, $88, $80, $68, $40, $02, $1C, $88, $81, $28, $60, $02, $8C, $88
    db $81, $60, $80, $02, $84, $88, $82, $28, $00, $02, $14, $88, $82, $28, $20, $02
    db $8C, $88, $82, $48, $40, $02, $54, $88, $82, $60, $60, $02, $14, $88, $83, $10
    db $80, $02, $24, $88, $83, $18, $A0, $02, $8C, $88, $83, $28, $C0, $02, $14, $88
    db $83, $40, $00, $02, $8C, $88, $84, $28, $20, $02, $90, $88, $84, $60, $40, $01
    db $44, $88, $FD, $80, $10, $00, $02, $4C, $88, $80, $28, $20, $03, $8C, $88, $81
    db $08, $40, $02, $14, $88, $81, $28, $60, $02, $8C, $88, $82, $28, $00, $02, $4C
    db $88, $82, $48, $20, $02, $8C, $88, $83, $10, $40, $01, $2C, $88, $83, $28, $60
    db $02, $8C, $88, $83, $60, $80, $02, $34, $88, $83, $60, $A0, $02, $54, $88, $83
    db $60, $C0, $02, $8C, $88, $FD, $80, $18, $00, $02, $74, $88, $80, $48, $20, $02
    db $4C, $88, $81, $20, $40, $02, $14, $88, $82, $08, $00, $02, $14, $88, $82, $08
    db $20, $02, $24, $88, $82, $28, $40, $02, $8C, $88, $83, $40, $60, $02, $1C, $88
    db $83, $60, $80, $02, $8C, $88, $84, $28, $00, $02, $8C, $88, $84, $48, $20, $02
    db $54, $88, $85, $08, $40, $02, $14, $88, $85, $40, $60, $02, $8C, $88, $85, $60
    db $80, $01, $6C, $88, $FF, $01, $80, $00, $02, $A4, $68, $01, $90, $60, $02, $A4
    db $68, $02, $20, $80, $07, $A8, $40, $02, $30, $A0, $03, $A4, $28, $02, $98, $C0
    db $02, $A4, $68, $03, $28, $60, $02, $A4, $68, $03, $70, $80, $02, $A4, $68, $04
    db $10, $A0, $02, $A4, $50, $04, $28, $C0, $02, $A4, $58, $04, $88, $00, $0E, $A8
    db $68, $05, $08, $60, $02, $A4, $48, $05, $50, $80, $02, $A4, $68, $05, $68, $A0
    db $02, $A4, $68, $FF, $80, $20, $00, $05, $2C, $88, $80, $20, $20, $03, $6C, $88
    db $81, $28, $40, $02, $24, $88, $81, $28, $60, $02, $7C, $88, $81, $60, $80, $02
    db $80, $88, $FD, $80, $10, $00, $02, $74, $88, $80, $18, $20, $04, $14, $88, $81
    db $60, $40, $02, $0C, $88, $81, $60, $60, $02, $1C, $88, $81, $60, $80, $02, $90
    db $88, $82, $38, $00, $02, $8C, $88, $82, $50, $20, $02, $2C, $88, $83, $20, $40
    db $02, $74, $88, $83, $28, $60, $01, $2C, $88, $FD, $81, $28, $00, $02, $54, $88
    db $81, $28, $20, $02, $74, $88, $82, $07, $40, $02, $34, $88, $82, $38, $60, $02
    db $1C, $88, $82, $60, $80, $02, $84, $88, $83, $28, $00, $02, $74, $88, $83, $48
    db $20, $02, $4C, $88, $84, $08, $40, $02, $34, $88, $84, $08, $60, $02, $4C, $88
    db $85, $48, $00, $02, $3C, $88, $85, $60, $20, $02, $5C, $88, $86, $28, $40, $01
    db $1C, $88, $FD, $3D, $69, $B1, $69, $33, $6A, $A1, $6A, $F7, $6A, $03, $10, $00
    db $02, $A4, $28, $03, $58, $20, $01, $A4, $38, $04, $18, $40, $02, $A4, $30, $04
    db $40, $60, $02, $A4, $30, $05, $08, $80, $02, $A4, $30, $05, $48, $00, $02, $A4
    db $48, $05, $68, $20, $02, $A4, $58, $06, $10, $40, $02, $A4, $60, $06, $58, $60
    db $02, $A4, $60, $06, $70, $80, $02, $A4, $60, $06, $88, $00, $02, $A4, $60, $07
    db $18, $20, $01, $A4, $60, $07, $38, $40, $02, $A4, $60, $FF, $02, $38, $00, $02
    db $A4, $60, $02, $60, $20, $02, $A4, $60, $02, $78, $40, $02, $A4, $60, $03, $00
    db $60, $02, $A4, $60, $03, $88, $80, $02, $A4, $28, $03, $89, $A0, $02, $A4, $68
    db $FD, $03, $28, $00, $02, $A4, $60, $03, $30, $20, $02, $A4, $30, $03, $70, $40
    db $02, $A4, $60, $04, $08, $60, $03, $A4, $20, $04, $68, $80, $02, $A4, $30, $05
    db $30, $00, $02, $A4, $48, $05, $70, $20, $01, $A4, $48, $FF, $84, $20, $00, $01
    db $2C, $88, $84, $70, $20, $02, $54, $88, $85, $28, $40, $02, $14, $88, $85, $29
    db $60, $02, $8C, $88, $85, $58, $80, $02, $2C, $88, $85, $59, $A0, $02, $74, $88
    db $FF, $83, $20, $00, $02, $34, $88, $83, $28, $20, $02, $7C, $88, $83, $68, $40
    db $02, $54, $88, $84, $60, $60, $02, $5C, $88, $84, $40, $80, $02, $8C, $88, $FF
    db $81, $18, $00, $03, $14, $88, $82, $38, $20, $02, $8C, $88, $82, $59, $40, $10
    db $78, $90, $FD, $02, $28, $20, $02, $A4, $60, $02, $90, $00, $07, $A8, $10, $03
    db $18, $40, $02, $A4, $60, $04, $30, $60, $02, $A4, $50, $05, $10, $80, $01, $A4
    db $60, $05, $28, $A0, $02, $A4, $60, $06, $08, $20, $04, $A4, $60, $06, $48, $40
    db $02, $A4, $68, $06, $60, $60, $02, $A4, $68, $06, $78, $80, $02, $A4, $68, $07
    db $60, $A0, $01, $A4, $60, $FF, $84, $40, $00, $02, $4C, $88, $84, $41, $20, $02
    db $64, $88, $85, $00, $40, $02, $14, $88, $85, $01, $60, $02, $2C, $88, $85, $40
    db $80, $02, $34, $88, $85, $50, $A0, $02, $6C, $88, $85, $60, $C0, $02, $4C, $88
    db $FD, $80, $10, $00, $05, $2C, $88, $80, $11, $20, $02, $6C, $88, $80, $50, $40
    db $02, $54, $88, $81, $10, $60, $02, $2C, $88, $81, $11, $80, $02, $64, $88, $81
    db $58, $00, $02, $44, $88, $81, $59, $20, $02, $5C, $88, $FF, $83, $48, $00, $02
    db $6C, $88, $83, $68, $20, $02, $8C, $88, $84, $00, $40, $02, $14, $88, $84, $08
    db $60, $01, $6C, $88, $84, $20, $80, $02, $34, $88, $84, $58, $A0, $02, $2C, $88
    db $84, $60, $C0, $02, $74, $88, $FD, $01, $88, $00, $02, $A4, $68, $02, $40, $20
    db $02, $A4, $68, $02, $48, $40, $10, $A8, $30, $02, $58, $80, $02, $A4, $68, $02
    db $80, $A0, $02, $A4, $68, $02, $98, $C0, $02, $A4, $68, $03, $80, $40, $02, $A4
    db $68, $03, $98, $60, $02, $A4, $68, $04, $20, $80, $02, $A4, $68, $04, $38, $A0
    db $02, $A4, $68, $04, $98, $C0, $01, $A4, $68, $FD, $44, $6B, $A5, $6B, $53, $6C
    db $96, $6C, $23, $6D, $00, $68, $00, $01, $A4, $60, $00, $98, $20, $02, $A4, $60
    db $01, $38, $40, $02, $A4, $60, $01, $58, $60, $02, $A4, $50, $01, $78, $80, $02
    db $A4, $40, $02, $28, $A0, $02, $A4, $28, $02, $38, $C0, $02, $A4, $68, $02, $50
    db $00, $02, $A4, $68, $02, $58, $20, $02, $A4, $28, $03, $00, $40, $02, $A4, $48
    db $03, $20, $60, $02, $A4, $48, $03, $90, $80, $01, $A4, $68, $04, $78, $A0, $02
    db $A4, $68, $04, $88, $C0, $02, $A4, $28, $05, $18, $00, $02, $A4, $28, $05, $28
    db $20, $02, $A4, $68, $FD, $85, $50, $00, $01, $6C, $88, $85, $50, $20, $02, $84
    db $88, $86, $38, $40, $02, $14, $88, $FF, $01, $58, $00, $02, $A4, $60, $02, $18
    db $20, $02, $A4, $50, $02, $60, $40, $02, $A4, $50, $03, $00, $60, $02, $A4, $30
    db $03, $50, $80, $02, $A4, $28, $03, $58, $A0, $02, $A4, $68, $03, $88, $00, $02
    db $A4, $68, $03, $90, $20, $02, $A4, $18, $04, $18, $40, $02, $A4, $68, $04, $48
    db $60, $02, $A4, $68, $04, $50, $80, $02, $A4, $18, $05, $10, $00, $02, $A4, $28
    db $05, $20, $20, $02, $A4, $68, $05, $38, $40, $01, $A4, $68, $05, $50, $60, $02
    db $A4, $28, $06, $88, $80, $02, $A4, $30, $FE, $00, $03, $14, $60, $20, $02, $8C
    db $48, $FF, $01, $50, $00, $02, $A4, $50, $01, $60, $20, $02, $A4, $30, $02, $78
    db $40, $02, $A4, $60, $03, $10, $60, $02, $A4, $28, $03, $20, $80, $01, $A4, $60
    db $03, $30, $A0, $02, $A4, $28, $03, $50, $C0, $02, $A4, $60, $03, $58, $00, $16
    db $AC, $78, $FD, $FE, $00, $02, $8C, $68, $FF, $00, $20, $00, $02, $A4, $60, $00
    db $98, $20, $02, $A4, $60, $01, $10, $40, $01, $A4, $28, $01, $58, $60, $02, $A4
    db $60, $01, $98, $80, $02, $A4, $50, $02, $28, $00, $02, $A4, $50, $02, $40, $20
    db $13, $A8, $50, $02, $80, $40, $02, $A4, $68, $03, $58, $60, $02, $A4, $68, $03
    db $88, $80, $02, $A4, $28, $FD, $83, $20, $00, $03, $14, $88, $83, $28, $20, $02
    db $3C, $88, $83, $30, $40, $02, $7C, $88, $84, $28, $60, $02, $34, $88, $84, $60
    db $80, $02, $90, $88, $85, $08, $00, $02, $14, $88, $85, $28, $20, $02, $90, $88
    db $85, $48, $40, $02, $44, $88, $85, $48, $60, $02, $5C, $88, $86, $08, $80, $02
    db $34, $88, $86, $08, $A0, $02, $8C, $88, $86, $48, $C0, $02, $8C, $88, $87, $28
    db $00, $02, $30, $88, $87, $48, $20, $01, $54, $88, $FF, $01, $38, $00, $02, $A4
    db $30, $01, $50, $20, $01, $A4, $68, $01, $60, $40, $02, $A4, $30, $02, $70, $60
    db $02, $A4, $60, $03, $30, $80, $02, $A4, $60, $03, $90, $00, $02, $A4, $60, $04
    db $30, $A0, $10, $A8, $48, $04, $50, $20, $02, $A4, $60, $FF, $86, $10, $00, $04
    db $5C, $88, $FD, $81, $20, $00, $02, $14, $88, $81, $38, $20, $02, $54, $88, $81
    db $48, $40, $02, $14, $88, $82, $20, $60, $02, $14, $88, $82, $28, $80, $02, $74
    db $88, $82, $60, $A0, $02, $34, $88, $83, $00, $00, $02, $7C, $88, $83, $20, $20
    db $02, $14, $88, $83, $28, $C0, $07, $70, $88, $83, $40, $40, $02, $6C, $88, $84
    db $10, $60, $02, $74, $88, $84, $28, $80, $02, $2C, $88, $84, $60, $A0, $01, $8C
    db $88, $FF, $01, $50, $00, $02, $A4, $50, $02, $10, $20, $02, $A4, $50, $02, $70
    db $40, $02, $A4, $50, $03, $30, $60, $02, $A4, $50, $03, $90, $80, $02, $A4, $50
    db $04, $58, $00, $02, $A4, $68, $04, $70, $20, $02, $A4, $68, $04, $88, $40, $13
    db $A8, $68, $FE, $00, $01, $70, $68, $20, $03, $88, $68, $FF, $04, $50, $00, $02
    db $A4, $60, $04, $70, $20, $02, $A4, $60, $FD

    cp a
    ld l, l
    ld a, [hl-]
    ld l, [hl]
    or b
    ld l, [hl]
    nop
    ld d, b
    nop
    ld [bc], a
    and h
    ld l, b
    nop
    adc b
    jr nz, jr_003_6DCA

    and h

jr_003_6DCA:
    ld l, b
    ld bc, $4058
    ld [bc], a
    and h

jr_003_6DD0:
    ld c, b
    ld bc, $6088
    ld [bc], a
    and h
    ld c, b
    ld [bc], a
    ld l, b
    nop
    ld [bc], a
    and h
    jr c, @+$04

    sub b
    jr nz, @+$04

    and h
    jr c, jr_003_6DE7

    ld d, b
    ld b, b
    ld [bc], a

jr_003_6DE7:
    and h
    ld b, b
    rst $38
    inc bc
    jr jr_003_6DED

jr_003_6DED:
    ld [bc], a
    and h
    ld d, b
    inc b
    jr jr_003_6E13

    ld [bc], a
    and h
    ld l, b

jr_003_6DF6:
    inc b
    ld h, b
    ld b, b
    ld [bc], a
    and h
    ld l, b
    inc b
    sub b
    ld h, b
    ld [bc], a
    and h
    ld l, b
    dec b
    jr nz, @-$7E

    ld [bc], a
    and h
    jr nc, @+$07

    adc b
    and b
    ld [bc], a
    and h

jr_003_6E0D:
    jr nc, @+$01

    ld b, $00
    nop
    ld [bc], a

jr_003_6E13:
    and h
    ld l, b
    ld b, $18
    jr nz, @+$04

    and h
    jr z, @+$08

    ld b, b
    ld b, b
    ld bc, $28A4
    ld b, $41
    ld h, b
    ld [bc], a
    and h
    ld l, b
    ld b, $90
    add b
    ld [bc], a
    and h
    ld c, b
    rlca
    jr z, jr_003_6DD0

    ld [bc], a
    and h
    ld l, b
    rlca
    jr nc, jr_003_6DF6

    ld [bc], a
    and h
    ld c, b
    db $FD
    add d
    jr nz, jr_003_6E3D

jr_003_6E3D:
    ld [bc], a
    inc [hl]
    adc b
    add d
    jr nz, jr_003_6E63

    ld [bc], a
    ld e, h
    adc b
    add e
    ld [$0240], sp
    ld d, h
    adc b
    add e
    ld h, b
    ld h, b
    ld bc, $8814
    rst $38
    add b
    jr z, jr_003_6E56

jr_003_6E56:
    ld [bc], a
    ld c, h
    adc b
    add b
    jr z, jr_003_6E7C

    inc bc
    adc h
    adc b
    add b
    ld h, b
    ld b, b
    ld [bc], a

jr_003_6E63:
    inc [hl]
    adc b
    add b
    ld [hl], b
    ld h, b
    ld [bc], a
    ld [hl], h
    adc b
    add c
    ld h, b
    add b
    ld [bc], a
    ld h, h
    adc b
    rst $38
    ld [bc], a
    stop
    ld [bc], a
    and h
    ld l, b
    ld [bc], a
    jr nz, jr_003_6E9B

    ld [bc], a

jr_003_6E7C:
    and h
    jr nc, jr_003_6E81

    ld h, b
    ld b, b

jr_003_6E81:
    ld [bc], a
    and h
    jr nc, jr_003_6E87

    ld l, b
    ld h, b

jr_003_6E87:
    ld [bc], a
    and h
    ld l, b
    inc bc
    jr nz, jr_003_6E0D

    dec b
    and h
    jr c, jr_003_6E94

    ld l, b
    and b
    inc b

jr_003_6E94:
    and h
    jr nz, @+$01

    ld bc, $0048
    ld [bc], a

jr_003_6E9B:
    and h
    ld d, b
    ld bc, $2088
    ld [bc], a
    and h
    ld d, b
    ld [bc], a
    jr z, jr_003_6EE6

    ld [bc], a
    and h
    ld d, b
    ld [bc], a
    ld l, b
    ld h, b
    ld [bc], a
    and h
    ld d, b
    db $FD
    nop
    jr nc, jr_003_6EB3

jr_003_6EB3:
    ld bc, $50A4
    nop
    ld l, b
    jr nz, @+$04

    and h
    jr nz, jr_003_6EBE

    db $10

jr_003_6EBE:
    ld b, b
    ld [bc], a
    and h
    ld h, b
    ld bc, $6020
    ld [bc], a
    and h
    jr nz, jr_003_6ECA

    ld b, b

jr_003_6ECA:
    add b
    ld [bc], a
    and h
    ld h, b
    ld bc, $A050
    ld [bc], a

jr_003_6ED2:
    and h
    jr nz, jr_003_6ED2

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_003_6EE6:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
