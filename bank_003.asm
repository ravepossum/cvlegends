; Disassembly of "cvlegends.gb"
; This file was created with:
; mgbdis v2.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $003", ROMX[$4000], BANK[$3]

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

    cp [hl]
    ld b, d

    db $2E, $48, $2E, $48, $2E, $48, $2E, $48

    ld l, $48

    db $41, $48, $BF, $42, $C9, $42, $E9, $42, $0C, $43, $48, $43, $70, $43

    xor c
    ld b, e
    db $DD
    ld b, e
    push af
    ld b, e
    dec e
    ld b, h
    ld d, l
    ld b, h
    sbc b
    ld b, h
    ld a, d
    ld b, h
    or c
    ld b, h
    cp [hl]
    ld b, d
    xor $44

    db $07, $45

    inc l
    ld b, l
    jp Jump_000_0B45


    ld b, [hl]
    jr z, jr_003_42D6

    db $D3
    ld b, [hl]
    adc b
    ld b, a
    daa
    ld b, a
    ld [hl], c
    ld b, a

    db $1B, $48, $6B, $48, $7E, $48

    and d
    ld c, b
    jp hl


    ld c, b
    ld l, $48
    cp [hl]
    ld b, d
    inc bc
    ld c, c
    cp [hl]
    ld b, d
    ld h, $49
    ld l, e
    ld c, b
    ld l, e
    ld c, b
    ld l, e
    ld c, b
    cp [hl]
    ld b, d
    ld b, h
    ld c, c
    ld l, $48
    ld c, h
    ld c, c
    ld e, [hl]
    ld c, c
    ld a, d
    ld c, c
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

jr_003_42D6:
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


    nop
    nop
    nop
    ld de, $0001
    nop
    ld h, b
    rst $38
    ld bc, $0703
    jr z, jr_003_441C

    ld b, a
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


    nop
    nop
    nop
    ld de, $0001
    nop
    nop
    rst $38
    ld bc, $0C03

jr_003_441C:
    jr z, jr_003_441F

    ld c, b

jr_003_441F:
    ld b, h
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


    nop
    nop
    nop
    ld de, $0001
    nop
    ret nz

    rst $38
    ld bc, $150A
    jr z, jr_003_4457

    ld l, l

jr_003_4457:
    ld b, h
    call Call_000_2640
    ld a, $18
    ld e, $14
    ld [de], a
    call Call_000_2688
    jp z, Jump_000_219F

    call Call_000_21D7
    call Call_000_21E4
    ret


    nop
    nop
    nop
    ld de, $A001
    nop
    nop
    nop
    ld bc, $1E05
    jr z, jr_003_447C

    adc e

jr_003_447C:
    ld b, h
    call Call_000_2640
    call Call_000_2565
    call Call_000_2688
    ret z

    call Call_000_21D7
    ret


    nop
    ld bc, $1100
    nop
    nop
    nop
    and b
    rst $38
    ld bc, $2C05
    jr z, jr_003_449A

    and h

jr_003_449A:
    ld b, h
    call Call_000_2640
    ld a, $30
    ld e, $14
    ld [de], a
    ret


    nop
    nop
    ld [hl], c
    ld de, $0001
    nop
    nop
    nop
    ld bc, $2705
    jr z, jr_003_44B3

    pop hl

jr_003_44B3:
    ld b, h
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


    nop
    nop
    nop
    ld de, $0001
    nop
    ld b, b
    rst $38
    ld bc, $4303
    jr z, jr_003_44F0

    db $FC

jr_003_44F0:
    ld b, h
    call Call_000_2650
    ld a, $01
    ld e, $18
    ld [de], a
    jp Jump_000_2565


    nop
    nop
    sub l
    stop
    nop
    ei
    or b
    rst $38
    db $01
    ld [bc], a

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
    ldh [$87], a
    ldh [$86], a
    call Call_000_1E49
    call Call_000_1E51
    ret


Call_003_4588:
    ld hl, $458E
    jp Jump_000_3067


    ld a, [de]
    nop
    add hl, bc
    dec b
    ld [bc], a
    nop
    ld [bc], a
    ld bc, $203A
    ld [bc], a
    nop
    ld [bc], a
    ld bc, $2002
    ld sp, $0100
    nop
    add hl, bc
    jr nz, @+$0D

    nop
    ld bc, $0220
    nop
    ld [bc], a
    jr nz, jr_003_45AF

    nop
    dec b

jr_003_45AF:
    jr nz, jr_003_45B2

    nop

jr_003_45B2:
    rlca
    jr nz, jr_003_45B6

    nop

jr_003_45B6:
    ld [bc], a
    jr nz, jr_003_45BB

    nop
    inc bc

jr_003_45BB:
    jr nz, jr_003_45BF

    nop
    ld [bc], a

jr_003_45BF:
    jr nz, jr_003_45C3

    nop
    rst $38

jr_003_45C3:
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


    nop
    nop
    nop
    ld de, $0001
    nop
    ld b, b
    rst $38
    ld [bc], a
    db $10
    ld e, [hl]
    jr z, jr_003_460D

    dec e

jr_003_460D:
    ld b, [hl]
    call Call_000_2650
    ld bc, $8448
    call Call_000_2098
    ld a, $01
    ld e, $18
    ld [de], a
    ret


    nop
    nop
    ld h, c
    stop
    add b
    db $FD
    ret nz

    cp $02
    inc d
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


    nop
    nop
    nop
    ld de, $0001
    nop
    nop
    rst $38
    ld [bc], a
    db $10
    ld a, d
    jr z, jr_003_46C7

jr_003_46C7:
    nop
    nop
    ld de, $0001
    nop
    nop
    nop
    ld [bc], a
    nop
    add c
    jr z, @+$03

    ld de, $CD47
    ld d, b
    ld h, $3E
    ld bc, $181E
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


    nop
    nop
    add l
    jr nc, jr_003_4717

    nop

jr_003_4717:
    nop
    nop
    nop
    inc bc
    jr nz, jr_003_471D

jr_003_471D:
    nop
    adc h
    nop
    ld bc, $0000
    nop
    nop
    inc b
    nop
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


    nop
    nop
    sbc c
    ld de, $0001
    nop
    sub b
    rst $38
    inc bc
    db $10
    ld bc, $477D
    call Call_000_2650
    ld a, $01
    ld e, $18
    ld [de], a
    ret


    nop
    nop
    sbc h
    stop
    nop
    nop
    nop
    nop
    inc bc
    jr jr_003_478A

    inc bc

jr_003_478A:
    ld c, b
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
    ldh [$87], a
    ldh [$86], a
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
    ldh [$87], a
    ldh [$86], a
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

    db $A1, $4A

    db $E3
    ld c, d
    rrca
    ld c, e
    cpl
    ld c, e
    ld c, a
    ld c, e
    add e
    ld c, e
    or c
    ld c, d

    db $B3, $4A

    or c
    ld c, d

    db $BF, $4A, $C9, $4A

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

    db $D5, $4A

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
    rst $28
    ld c, d
    rst $38
    ld c, d
    rst $28
    ld c, d
    rst $28
    ld c, d
    rst $28
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
    push de
    ld c, d
    push de
    ld c, d
    push de
    ld c, d
    push de
    ld c, d
    dec c
    ld c, e
    push de
    ld c, d
    push de
    ld c, d
    push de
    ld c, d
    nop
    ld l, [hl]
    add hl, de
    ld c, e
    add hl, de
    ld c, e
    add hl, de
    ld c, e
    add hl, de
    ld c, e
    add hl, de
    ld c, e
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
    push de
    ld c, d
    push de
    ld c, d
    push de
    ld c, d
    add hl, sp
    ld c, e
    add hl, sp
    ld c, e
    add hl, sp
    ld c, e
    add hl, sp
    ld c, e
    add hl, sp
    ld c, e
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
    ld h, l
    ld c, e
    ld e, c
    ld c, e
    ld [hl], e
    ld c, e
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
    ld d, h
    nop
    push de
    ld c, d
    push de
    ld c, d
    push de
    ld c, d
    push de
    ld c, d
    ld a, a
    ld c, e
    add c
    ld c, e
    nop
    inc [hl]
    inc [hl]
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


    rst $10
    ld c, a
    db $E3
    ld c, a
    rst $28
    ld c, a
    ei
    ld c, a

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

    db $72, $4E, $9F, $4F

    db $EC
    ld d, b
    ld a, d
    ld d, d
    sub e
    ld d, e
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
    db $03, $74, $79, $5A, $02, $74, $88, $64, $3B, $4F, $47, $4F, $53, $4F, $01, $05
    db $28, $56, $02, $09, $87, $5A, $00, $2B, $BC, $64, $01, $05, $2D, $56, $00, $28
    db $AE, $5A, $00, $2B, $BC, $64, $00, $0A, $31, $56, $02, $1C, $A2, $5A, $04, $13
    db $A4, $64, $61, $4F, $00, $00, $32, $56, $02, $0C, $AF, $5A, $02, $0C, $BD, $64
    db $73, $4F

    ld a, a
    ld c, a

    db $8B, $4F, $00, $18, $63, $56, $04, $18, $E0, $5A, $04, $18, $06, $65

    nop
    jr jr_003_4FE5

    ld d, [hl]
    ld [bc], a
    jr @-$06

    ld e, d
    ld [bc], a
    jr @+$20

    ld h, l

    db $00, $00, $4B, $56, $01, $2B, $05, $5B, $03, $37, $2B, $65, $99, $4F, $80, $01
    db $00, $2B, $5B, $80, $AB, $4F

    inc de
    ld d, b
    ld h, a
    ld d, b
    or d
    ld d, b
    sub $50
    pop hl
    ld d, b

    db $B3, $4F

    cp a
    ld c, a
    bit 1, a
    rlca
    ld d, b

    db $00, $00, $71, $56, $00, $00, $3C, $5B, $03, $12, $99, $65

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
    nop
    inc c
    ld a, l
    ld d, [hl]
    ld bc, $5531
    ld e, e
    ld [bc], a
    ld [hl], l
    ld [c], a
    ld h, l
    nop
    inc c
    ld a, l
    ld d, [hl]
    ld bc, $5A31
    ld e, e
    ld [bc], a
    ld [hl], l
    db $EB
    ld h, l
    nop
    inc c

jr_003_4FE5:
    ld a, l
    ld d, [hl]
    ld bc, $5F31
    ld e, e
    ld [bc], a
    ld [hl], l
    db $F4
    ld h, l
    nop
    inc c
    ld a, l
    ld d, [hl]
    ld bc, $6431
    ld e, e
    ld [bc], a
    ld [hl], l
    db $FD
    ld h, l
    nop
    inc c
    ld a, l
    ld d, [hl]
    ld bc, $6931
    ld e, e
    ld [bc], a
    ld [hl], l
    ld b, $66
    nop
    inc c
    ld a, l
    ld d, [hl]
    nop
    ld [hl], $6E
    ld e, e
    inc bc
    add d
    rrca
    ld h, [hl]
    rra
    ld d, b
    dec hl
    ld d, b
    scf
    ld d, b
    ld b, e
    ld d, b
    ld c, a
    ld d, b
    ld e, e
    ld d, b
    nop
    nop
    ld a, a
    ld d, [hl]
    ld [bc], a
    inc c
    ld [hl], e
    ld e, e
    ld [bc], a

jr_003_5028:
    inc c
    inc e
    ld h, [hl]
    nop
    inc c
    adc e
    ld d, [hl]
    ld bc, $9724
    ld e, e
    ld [bc], a
    jr nc, jr_003_5082

    ld h, [hl]
    ld bc, $924A
    ld d, [hl]
    ld [bc], a
    dec a
    or b
    ld e, e
    ld [bc], a
    ld c, c
    ld h, l
    ld h, [hl]
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
    inc b
    ld [hl-], a
    sbc c
    ld d, [hl]
    inc b
    ld h, d
    cp l
    ld e, e
    inc bc
    ld l, b
    ld [hl], d
    ld h, [hl]
    nop
    ld c, d
    ret


    ld d, [hl]
    ld bc, $EE7B
    ld e, e
    ld bc, $A387
    ld h, [hl]
    ld [hl], e
    ld d, b
    ld a, a
    ld d, b
    add d
    ld d, b
    adc [hl]
    ld d, b
    sbc d
    ld d, b
    and [hl]
    ld d, b
    nop
    nop
    jp z, $0156

    ld b, $F5
    ld e, e
    inc b
    jr jr_003_5028

    ld h, [hl]
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
    nop
    ld de, $56DB
    ld [bc], a
    ld b, d
    ld h, $5C
    ld [bc], a
    ccf
    pop hl
    ld h, [hl]
    nop
    ld de, $56DB
    ld [bc], a
    ld b, d
    cpl
    ld e, h
    nop
    ccf
    jp hl


    ld h, [hl]
    ld bc, $D711
    ld d, [hl]
    nop
    ld b, d
    scf
    ld e, h
    nop
    ccf
    jp hl


    ld h, [hl]
    cp b
    ld d, b
    pop bc
    ld d, b
    jp z, $8050

    ld bc, $3905
    ld e, h
    inc bc
    dec c
    db $EB
    ld h, [hl]
    add b
    ld bc, $3E0A
    ld e, h
    nop
    dec c
    rst $30
    ld h, [hl]
    ld bc, $DD05
    ld d, [hl]
    ld bc, $420A
    ld e, h
    nop
    dec c
    rst $30
    ld h, [hl]
    ret c

    ld d, b
    add b
    ld [bc], a
    inc c
    ld b, e
    ld e, h
    inc bc
    ld [de], a
    ld hl, sp+$66
    db $E3
    ld d, b
    add b
    inc bc
    ld [de], a
    ld l, [hl]
    ld e, h
    ld bc, $2F06
    ld h, a
    or $50
    jr nz, jr_003_5141

    ld d, a
    ld d, c
    pop af
    ld d, c
    jr jr_003_5148

    db $FC
    ld d, b
    ld [$1451], sp
    ld d, c
    ld bc, $EC00
    ld d, [hl]
    inc bc
    inc a
    db $D3
    ld e, h
    ld [bc], a
    ld c, [hl]

jr_003_5106:
    and [hl]
    ld h, a
    nop
    ld b, $F2
    ld d, [hl]
    inc bc
    ld e, $B5
    ld e, h
    inc b
    ld e, $76
    ld h, a
    nop
    ld b, $F2
    ld d, [hl]
    inc bc
    inc c
    and e
    ld e, h
    ld [bc], a
    ld [de], a
    ld l, d
    ld h, a
    ld a, [hl+]
    ld d, c
    inc sp
    ld d, c
    inc a
    ld d, c
    ld b, l
    ld d, c
    ld c, [hl]
    ld d, c
    add b
    ld [bc], a
    ld a, [hl+]
    ld a, [bc]
    ld e, l

jr_003_512F:
    dec b
    inc h
    rst $10
    ld h, a
    add b
    inc bc
    jr jr_003_512F

    ld e, h
    ld [bc], a
    jr jr_003_5106

    ld h, a
    add b
    ld [bc], a
    inc c
    db $EC
    ld e, h

jr_003_5141:
    ld [bc], a
    inc c
    cp a
    ld h, a
    add b
    ld [bc], a
    nop

jr_003_5148:
    ldh [$5C], a
    ld [bc], a
    nop
    or e
    ld h, a
    add b
    ld bc, $173B
    ld e, l
    nop
    ld b, d
    push af
    ld h, a
    ld l, l
    ld d, c
    ld a, c
    ld d, c
    add l
    ld d, c
    sub c
    ld d, c
    sbc l
    ld d, c
    xor c
    ld d, c
    or l
    ld d, c
    pop bc
    ld d, c
    call $D951
    ld d, c
    push hl
    ld d, c
    nop
    dec h
    add hl, de
    ld d, a
    ld [bc], a
    inc a
    ld e, b
    ld e, l
    inc bc
    inc a
    ld [hl-], a
    ld l, b
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
    nop
    nop
    db $F4
    ld d, [hl]
    ld [bc], a
    ld e, $3A
    ld e, l
    ld [bc], a
    inc h
    ld a, [de]
    ld l, b
    ld bc, $F425
    ld d, [hl]
    ld bc, $3418
    ld e, l
    inc bc
    ld [de], a
    ld [$0168], sp
    dec h
    ei
    ld d, [hl]
    ld [bc], a
    inc c
    jr z, jr_003_5202

    ld bc, $020C
    ld l, b
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
    nop
    inc d
    ld [$0257], sp
    ld l, l
    adc c
    ld e, l
    inc bc
    adc e
    add c
    ld l, b
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
    rst $30
    ld d, c
    inc bc
    ld d, d
    inc c
    ld d, d
    ld bc, $260C
    ld d, a
    ld bc, $D92A
    ld e, l
    ld [bc], a
    ld a, [hl+]
    db $DD

jr_003_5202:
    ld l, b
    add b
    inc bc
    jr jr_003_51CE

    ld e, l
    ld [bc], a
    db $DB
    pop de
    ld l, b
    ld [bc], a
    inc c
    ld a, [de]
    ld d, a
    ld [bc], a
    inc c
    cp e
    ld e, l
    inc bc
    inc c
    cp a
    ld l, b
    ld h, $52
    ld [hl-], a
    ld d, d
    ld a, $52
    ld c, d
    ld d, d
    ld d, [hl]
    ld d, d
    ld h, d
    ld d, d
    ld l, [hl]
    ld d, d
    ld bc, $390C
    ld d, a
    ld [bc], a
    jr nc, @+$12

    ld e, [hl]
    ld bc, $2C42
    ld l, c
    ld [bc], a
    inc de
    ld b, b
    ld d, a
    ld [bc], a
    jr nc, @+$06

    ld e, [hl]
    ld [bc], a
    ld b, d
    jr nz, jr_003_52A7

    ld bc, $5326
    ld d, a
    ld bc, $FE1E
    ld e, l
    ld [bc], a
    ld a, [hl+]
    inc d
    ld l, c
    ld [bc], a
    dec l
    ld e, d
    ld d, a
    ld [bc], a
    ld e, $F2
    ld e, l
    ld [bc], a
    ld a, [hl+]
    ld [$0169], sp
    ld b, b
    ld l, l
    ld d, a
    ld bc, $EC0C
    ld e, l
    inc bc
    inc c
    or $68
    ld bc, $673A
    ld d, a
    ld [bc], a
    inc c
    ldh [$5D], a
    ld [bc], a
    inc c
    ld [$0168], a
    nop
    ld l, $57
    nop
    inc a
    inc e
    ld e, [hl]
    nop
    ld c, b
    ld [hl-], a
    ld l, c
    add h
    ld d, d
    xor [hl]
    ld d, d
    dec d
    ld d, e
    ccf
    ld d, e
    ld [hl], a
    ld d, e
    adc d
    ld d, d
    sub [hl]
    ld d, d
    and d
    ld d, d
    nop
    ld [de], a
    sub b
    ld d, a
    ld bc, $451E
    ld e, [hl]
    ld [bc], a
    ld b, d
    ld a, a
    ld l, c
    ld bc, $7E12
    ld d, a
    ld bc, $2706
    ld e, [hl]
    ld [bc], a
    inc c
    dec a
    ld l, c
    nop
    ld [de], a
    sub b
    ld d, a
    ld [bc], a

jr_003_52A7:
    dec a
    ld h, h
    ld e, [hl]
    inc bc
    ld h, c
    sbc [hl]
    ld l, c
    cp [hl]
    ld d, d
    jp z, $D652

    ld d, d
    ld [c], a
    ld d, d
    xor $52
    ld a, [$0652]
    ld d, e
    add hl, bc
    ld d, e
    ld bc, $A912
    ld d, a
    ld bc, $7D0C
    ld e, [hl]
    ld [bc], a
    ld e, $CF
    ld l, c
    nop
    ld [hl], $CD
    ld d, a
    inc bc
    rra
    sub b
    ld e, [hl]
    inc b
    scf
    add sp, $69
    nop
    ld [hl], $CD
    ld d, a
    ld [bc], a
    rra
    add h
    ld e, [hl]
    ld [bc], a
    scf
    call c, Call_000_0069
    ld [hl], $CD
    ld d, a
    ld [bc], a
    ld a, $AF
    ld e, [hl]
    ld [bc], a
    ld h, d
    inc de
    ld l, d
    nop
    ld [hl], $CD
    ld d, a
    ld [bc], a
    ld a, $A3
    ld e, [hl]
    inc bc
    ld h, d
    ld bc, $046A
    add hl, de
    or b
    ld d, a
    nop
    ld [hl], l
    and $5E
    ld [bc], a
    ld [hl], l
    ld h, $6A
    add b
    add b
    add b
    ld bc, $C936
    ld d, a
    nop
    ld a, e
    db $EC
    ld e, [hl]
    nop
    add c
    ld [hl-], a
    ld l, d
    dec de
    ld d, e
    daa
    ld d, e
    inc sp
    ld d, e
    nop
    ld e, $EC
    ld d, a
    ld [bc], a
    ld e, $0B
    ld e, a
    ld bc, $6F3C
    ld l, d
    ld bc, $CE06
    ld d, a
    ld bc, $ED06
    ld e, [hl]
    ld [bc], a
    inc c
    inc sp
    ld l, d
    nop
    inc h
    ld a, [c]
    ld d, a
    inc bc
    ld sp, $5F1E
    dec b
    ld c, a
    add d
    ld l, d
    ld b, a
    ld d, e
    ld d, e
    ld d, e
    ld e, a
    ld d, e
    ld l, e
    ld d, e
    nop
    dec c
    nop
    ld e, b
    inc b

jr_003_534C:
    ld e, h
    adc l
    ld e, a
    dec b
    scf
    ret c

    ld l, d
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
    call z, Call_000_036A
    dec c
    db $F4
    ld d, a
    ld b, $43
    ld e, h
    ld e, a
    nop
    ld a, [hl+]
    bit 5, d
    nop
    dec c
    nop
    ld e, b
    inc b
    ld [de], a
    ld b, e
    ld e, a
    inc b
    ld [de], a
    or e
    ld l, d
    ld a, e
    ld d, e
    add a
    ld d, e
    ld bc, $1312
    ld e, b
    ld bc, $B812
    ld e, a
    nop
    inc a
    inc sp
    ld l, e
    ld bc, $1A1D
    ld e, b
    nop
    jr jr_003_534C

    ld e, a
    nop
    ld b, d
    add hl, sp
    ld l, e
    sbc l
    ld d, e
    xor e
    ld d, e
    rst $38
    ld d, e
    scf
    ld d, h
    ld a, l
    ld d, h
    sbc a
    ld d, e
    nop
    nop
    add hl, hl
    ld e, b
    ld bc, $C906
    ld e, a
    ld [bc], a
    inc c
    ld b, h
    ld l, e
    or a
    ld d, e
    jp $CF53


    ld d, e
    db $DB
    ld d, e
    rst $20
    ld d, e
    di
    ld d, e
    nop
    scf
    ld l, l
    ld e, b
    ld [bc], a
    inc c
    ld a, [$025F]
    inc c
    and l
    ld l, e
    nop
    nop
    ld [hl], $58
    ld [bc], a
    dec h
    inc de
    ld h, b
    ld bc, $B819
    ld l, e
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
    ld bc, $4F1F
    ld e, b
    ld bc, $4551
    ld h, b
    ld [bc], a
    adc c
    ld [hl+], a
    ld l, h
    rlca
    ld d, h
    inc de
    ld d, h
    rra
    ld d, h
    dec hl
    ld d, h
    nop
    ld de, $587F
    ld [bc], a
    add hl, bc
    ld e, a
    ld h, b
    ld bc, $5405
    ld l, h
    ld bc, $6E06
    ld e, b
    ld bc, $6810
    ld h, b
    ld [bc], a
    ld [de], a
    ld e, c
    ld l, h
    nop
    ld de, $587F
    ld [bc], a
    ld l, $8C
    ld h, b
    nop
    inc a
    adc a
    ld l, h
    ld bc, $7B11
    ld e, b
    nop
    ld a, [hl-]
    sbc b
    ld h, b
    nop
    ld b, d
    sub l
    ld l, h
    ld b, c
    ld d, h
    ld c, l
    ld d, h
    ld e, c
    ld d, h
    ld h, l
    ld d, h
    ld [hl], c
    ld d, h
    ld bc, $8C0C
    ld e, b
    nop
    inc h
    cp l
    ld h, b
    ld [bc], a
    ld c, b
    sbc $6C
    nop
    inc l
    xor h
    ld e, b
    nop
    ld e, e
    db $F4
    ld h, b
    nop
    adc h
    ld [hl+], a
    ld l, l
    nop
    ld b, $86
    ld e, b
    ld bc, $9906
    ld h, b
    ld [bc], a
    ld [de], a
    xor b
    ld l, h
    nop
    inc de
    sub e
    ld e, b
    ld [bc], a
    scf
    call nz, Call_000_0360
    ld h, a
    db $EB
    ld l, h
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
    adc c
    ld d, h
    sub l
    ld d, h
    and c
    ld d, h
    xor l
    ld d, h
    cp c
    ld d, h
    push bc
    ld d, h
    ld bc, $B90C
    ld e, b
    ld [bc], a
    ld [de], a
    rlca
    ld h, c
    inc bc
    inc a
    ld e, a
    ld l, l
    ld bc, $AD06
    ld e, b
    ld bc, $F506
    ld h, b
    inc bc
    ld [de], a
    inc hl
    ld l, l
    ld bc, $C019
    ld e, b
    ld bc, $1425
    ld h, c
    ld bc, $7255
    ld l, l
    nop
    rra
    call z, $0258
    dec a
    ld [hl-], a
    ld h, c
    inc bc
    ld l, l
    sub b
    ld l, l
    nop
    inc l
    reti


    ld e, b
    ld bc, $3F4E
    ld h, c
    ld [bc], a
    adc b
    and e
    ld l, l
    nop
    ld h, $D3
    ld e, b
    nop
    ld c, [hl]
    ld b, e
    ld h, c
    ld [bc], a
    sub l
    xor h
    ld l, l
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
    ldh [$58], a
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

    db $8A, $55, $65, $56

    ld [c], a
    ld d, [hl]
    ld [hl], h
    ld d, a
    rra
    ld e, b
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
    db $08, $A8, $48, $03, $60, $60, $08, $A8, $40, $FD, $FD, $71, $56

    ld a, a
    ld d, [hl]
    jp z, $DC56

    ld d, [hl]
    ld a, [hl]
    ld d, [hl]
    ld a, [hl]
    ld d, [hl]

    db $01, $28, $C0, $0D, $AC, $20, $04, $68, $00, $0E, $A8, $68, $FD

    db $FD
    ld [bc], a
    ld h, b
    nop
    dec c
    xor h
    jr @+$04

    sbc b
    jr nz, jr_003_5693

    xor b
    ld d, e
    inc bc
    jr nc, @+$42

    ld a, [bc]
    xor b
    ld d, e
    rst $38
    add e

jr_003_5693:
    nop
    nop
    ld c, $78
    sub b
    rst $38
    dec b
    jr nz, jr_003_569C

jr_003_569C:
    ld sp, $48A4
    dec b
    jr nc, jr_003_56C2

    inc hl
    and h
    ld c, b
    dec b
    ld b, b
    ld b, b
    inc hl
    and h
    ld c, b
    dec b
    ld d, b
    ld h, b
    inc hl
    and h
    ld c, b
    ld b, $40
    nop
    inc hl
    and h
    ld c, b
    ld b, $50
    jr nz, jr_003_56DE

    and h
    ld c, b
    ld b, $60
    ld b, b
    inc hl
    and h

jr_003_56C2:
    ld c, b
    ld b, $70
    ld h, b
    inc hl
    and h
    ld c, b
    db $FD
    ld bc, $0038
    ld c, $A8
    ld l, b
    ld [bc], a
    ld a, b
    ld h, b
    rrca
    xor b
    ld d, e
    cp $00
    inc h
    nop
    nop
    db $FD
    cp $00

jr_003_56DE:
    inc h
    nop
    nop
    db $FD
    db $EC
    ld d, [hl]
    di
    ld d, [hl]
    db $F4
    ld d, [hl]
    ld a, [de]
    ld d, a
    dec l
    ld d, a
    add h
    ld e, b
    nop
    ld c, $78
    sub b
    db $FD
    db $FD
    add d
    ld b, b
    nop
    ld c, $78
    sub b
    rst $38
    add c
    jr nz, jr_003_56FE

jr_003_56FE:
    daa
    ld c, h
    adc b
    rst $38
    ld bc, $0040
    ld c, $A8
    ld e, b
    inc b
    ld b, b
    ld h, b
    rlca
    xor b
    ld b, b
    inc b
    ld a, b
    nop
    inc c
    xor b

jr_003_5713:
    jr jr_003_5713

    nop
    ld h, $00
    nop
    db $FD
    add c
    ld [$2700], sp
    inc l
    adc b
    add c
    jr nz, jr_003_5743

    daa
    ld [hl], h
    adc b
    add e
    ld e, b
    nop
    ld c, $58
    sub b
    db $FD
    cp $00
    jr z, jr_003_5731

jr_003_5731:
    nop
    rst $38
    add l
    ld h, b
    nop
    daa
    adc h
    adc b
    add [hl]
    inc c
    jr nz, jr_003_5764

    ld [hl], h
    adc b
    rst $38
    add l
    ld h, b
    nop

jr_003_5743:
    daa
    adc h
    adc b
    add l
    ld l, b
    jr nz, jr_003_5771

    ld [hl], h
    adc b
    rst $38
    add e
    ld h, b
    nop
    daa
    inc l
    adc b
    add h
    db $10
    jr nz, @+$29

    ld [hl], h
    adc b
    rst $38
    add e
    ld h, b
    nop
    daa
    inc l
    adc b
    add e
    ld l, b
    jr nz, jr_003_578B

jr_003_5764:
    ld [hl], h
    adc b
    rst $38
    add c
    ld h, b
    nop
    daa
    adc h
    adc b
    add d
    jr nz, jr_003_5790

    daa

jr_003_5771:
    ld d, h
    adc b
    db $FD
    ld a, [hl]
    ld d, a
    sub a
    ld d, a
    adc $57
    di
    ld d, a
    ld bc, $0358
    sub b
    nop
    add hl, hl
    and h
    inc c
    inc b
    jr z, jr_003_57A7

    db $10
    xor b
    jr nc, jr_003_578F

jr_003_578B:
    ld e, b
    ld h, b
    add hl, hl
    and h

jr_003_578F:
    inc c

jr_003_5790:
    ld b, $20
    jr nz, jr_003_57A8

    or b
    ld [hl], b
    db $FD
    inc bc
    jr nc, jr_003_579A

jr_003_579A:
    rlca
    xor b
    ld d, b
    inc b
    ld [$1420], sp
    or b
    jr nc, jr_003_57A8

    ld l, b
    ld b, b
    rlca

jr_003_57A7:
    xor b

jr_003_57A8:
    db $10
    dec b
    ld h, b
    ld h, b
    inc d
    or b
    ld [hl], b
    rst $38
    add d
    jr nz, jr_003_57B3

jr_003_57B3:
    ld a, [hl+]
    inc [hl]
    adc b
    add d
    jr nz, jr_003_57D9

    ld a, [hl+]
    ld c, h
    adc b
    add d
    jr nz, jr_003_57FF

    dec hl
    ld h, h
    adc b
    add d
    jr nz, jr_003_5825

    ld a, [hl+]
    ld a, h
    adc b
    cp $00
    dec de
    jr nz, @+$62

    db $FD
    ld [bc], a
    ld a, b
    ld b, b
    db $10
    xor b
    ld l, b
    inc bc
    stop
    add hl, hl
    and h

jr_003_57D9:
    inc h
    inc bc
    ld l, b
    jr nz, jr_003_5807

    and h
    inc h
    inc b
    sub b
    nop
    add hl, hl
    and h
    inc c
    dec b
    ld d, b
    jr nz, jr_003_5813

jr_003_57EA:
    and h
    inc c
    ld b, $28
    ld b, b
    db $10

jr_003_57F0:
    xor b
    jr nc, jr_003_57F0

    cp $00
    ld a, [hl+]
    inc l
    ld l, b
    jr nz, jr_003_5825

    ld c, h
    ld l, b
    ld b, b
    ld a, [hl+]
    ld l, h

jr_003_57FF:
    ld l, b
    db $FD
    ld bc, $0018
    inc de
    xor b
    ld l, b

jr_003_5807:
    inc b
    ld [$1320], sp
    xor b
    ld l, b
    inc b
    adc b
    ld b, b
    rlca
    xor b
    db $10

jr_003_5813:
    dec b
    ld [$1360], sp
    xor b
    ld l, b
    cp $00
    inc e
    jr nc, jr_003_5886

    db $FD
    add hl, hl
    ld e, b
    ld [hl], $58
    ld l, [hl]
    ld e, b

jr_003_5825:
    add b
    ld e, b
    xor l
    ld e, b
    inc bc
    ld l, b
    nop
    ld d, $AC
    ld a, b
    inc b
    jr nz, @+$42

    ld d, $AC
    ld a, b
    db $FD
    ld [bc], a
    adc b
    nop
    rlca
    xor b

jr_003_583B:
    db $10
    inc bc
    add b
    jr nz, jr_003_5847

    xor b
    ld d, b
    inc b
    adc b
    ld b, b
    rlca
    xor b

jr_003_5847:
    ld h, b
    dec b

jr_003_5849:
    ld l, b
    ld h, b
    rlca
    xor b
    db $10
    rst $38
    ld [bc], a
    ld d, b
    nop
    ld l, $A0
    nop
    ld [bc], a
    ld [$0700], sp
    xor b
    jr nz, @+$04

    ld l, b
    jr nz, jr_003_5866

    xor b
    db $10
    inc bc
    db $10
    ld b, b
    rlca
    xor b

jr_003_5866:
    ld d, b
    inc bc
    jr nc, jr_003_57EA

    rlca
    xor b
    db $10
    db $FD
    nop
    ld d, b
    nop
    ld l, $A0
    nop
    ld bc, $0028
    ld d, $AC
    ld a, b
    cp $00
    ld e, $50
    ld b, b
    db $FD
    add e
    jr nz, jr_003_5883

jr_003_5883:
    ld [de], a
    ld d, h
    adc b

jr_003_5886:
    add l
    ld b, b
    nop
    db $10
    ld d, b
    sub b
    add a
    jr z, @+$62

    rlca
    ld d, b
    adc b
    rst $38
    inc bc
    stop
    db $10
    xor b
    ld c, b
    inc bc
    ld [hl], b
    ld b, b
    db $10
    xor b
    ld c, b
    rst $38
    add [hl]
    ld c, b
    nop
    inc l
    ld c, h
    adc b
    add a
    ld [hl], b
    nop
    dec l
    ld c, h
    adc b
    db $FD
    add c
    ld l, b
    nop
    rlca
    jr jr_003_583B

    add d
    ld e, b
    jr nz, jr_003_58C7

    jr jr_003_5849

    add h
    ld c, b
    ld h, b
    rlca
    jr c, jr_003_5847

    rst $38
    ld bc, $0090
    db $10
    xor b
    ld l, b
    ld [bc], a

jr_003_58C7:
    ld d, b
    ld b, b
    db $10
    xor b
    ld l, b
    inc bc
    ld [hl], b
    nop
    db $10
    xor b
    ld l, b
    rst $38
    dec b
    ld [hl], b
    nop
    rra
    xor b
    ld h, b
    db $FD
    ldh [$58], a
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

    db $35, $59, $30, $5B

    adc l
    ld e, h
    dec e
    ld e, [hl]
    cp a
    ld e, a
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
    db $A0, $08, $A8, $50, $FD, $FE, $00, $17, $78, $00, $FD, $3C, $5B

    ld [hl], e
    ld e, e
    push af
    ld e, e
    jr c, jr_003_5B94

jr_003_5B38:
    ld b, e
    ld e, h
    ld l, [hl]
    ld e, h

    db $01, $88, $00, $0D, $AC, $20, $02, $48, $80, $0D, $AC, $20, $03, $28, $20, $0E
    db $A8, $30, $03, $68, $A0, $0E, $A8, $68, $FE, $00, $07, $68, $60, $FE, $00, $0A
    db $50, $6B, $FE, $00, $0E, $60, $68, $FE, $00, $0F, $50, $6B, $FE, $00, $0D, $50
    db $38, $FE, $00, $0A, $78, $5B, $FD

    nop
    ld l, b
    nop
    rrca
    xor b
    dec sp
    nop
    adc b
    jr nz, @+$11

    xor b
    inc sp
    ld bc, $4020
    rlca
    xor b
    db $10
    ld bc, $6048
    rlca
    xor b
    ld d, b
    ld bc, $8060
    rlca
    xor b
    db $10
    inc bc
    ld l, b
    and b

jr_003_5B94:
    dec c
    xor h
    jr jr_003_5B9C

    jr nz, @-$3E

    rrca
    xor b

jr_003_5B9C:
    ld l, e
    rst $38
    add d
    jr z, jr_003_5BA1

jr_003_5BA1:
    rlca
    ld l, b
    adc b
    add d
    jr nz, jr_003_5BC7

    ld c, $18
    sub b
    add d
    ld l, b
    add b
    rlca
    jr z, jr_003_5B38

    add e
    ld c, b
    and b
    rlca
    jr z, @-$76

jr_003_5BB6:
    add e
    ld c, b
    ret nz

    rlca
    jr c, @-$76

    rst $38
    dec b
    ld h, b
    nop
    inc hl
    and h
    ld c, b
    dec b
    ld [hl], b
    jr nz, @+$25

jr_003_5BC7:
    and h
    ld c, b
    dec b
    add b
    ld b, b
    inc hl
    and h
    ld c, b
    dec b
    sub b
    ld h, b
    inc hl
    and h
    ld c, b
    ld b, $00
    add b
    inc hl
    and h
    ld c, b
    ld b, $10
    and b
    inc hl
    and h
    ld c, b
    ld b, $20
    ret nz

    inc hl
    and h
    ld c, b
    ld b, $30
    ldh [rNR44], a
    and h
    ld c, b
    rst $38
    add c
    ld [$0D00], sp
    ld a, h
    sub b
    db $FD
    nop
    ld [hl], b
    nop
    ld a, [bc]
    xor b
    ld l, e
    ld bc, $2010
    dec c
    xor h
    jr jr_003_5C03

    ld [hl], b

jr_003_5C03:
    ld b, b
    dec c
    xor h
    jr jr_003_5C0A

    jr nz, jr_003_5C6A

jr_003_5C0A:
    rrca
    xor b
    ld l, e
    ld [bc], a
    ld l, b
    add b
    rrca
    xor b
    ld d, e
    inc bc
    jr c, jr_003_5BB6

    dec c
    xor h
    jr jr_003_5C1E

    ld b, b
    ret nz

    rlca
    xor b

jr_003_5C1E:
    ld c, b
    inc b
    ld [hl], b
    ldh [rTAC], a
    xor b
    ld d, b
    cp $00
    ld a, [bc]
    jr c, jr_003_5C95

    jr nz, jr_003_5C36

jr_003_5C2C:
    ld e, b
    ld l, e
    cp $00
    rlca
    ld b, b
    jr z, jr_003_5C54

    rlca

jr_003_5C35:
    ld l, b

jr_003_5C36:
    jr z, jr_003_5C35

    cp $00
    rrca
    add b
    ld l, e
    cp $00
    rlca

jr_003_5C40:
    ld h, b
    jr z, jr_003_5C40

    nop
    jr c, jr_003_5CA6

    ld a, [bc]
    xor b
    ld l, e

jr_003_5C49:
    nop
    ld [hl], b
    ret nz

    ld a, [bc]
    xor b
    ld l, e
    ld bc, $0030

jr_003_5C52:
    ld c, $A8

jr_003_5C54:
    ld l, b

jr_003_5C55:
    ld bc, $E050
    dec c
    xor h
    jr jr_003_5C5E

    db $10
    ret nz

jr_003_5C5E:
    rrca
    xor b
    ld l, e
    ld [bc], a
    ld l, b
    nop
    ld a, [bc]
    xor b
    ld h, e
    inc bc
    ld b, b
    ld h, b

jr_003_5C6A:
    ld c, $A8
    jr @-$01

    nop
    ld d, b
    nop
    ld a, [bc]
    xor b
    ld l, e

jr_003_5C74:
    nop
    ld a, b
    jr nz, jr_003_5C82

    xor b
    ld l, e
    nop
    add b
    ld b, b
    dec c
    xor h
    jr nz, jr_003_5C82

    ld c, b

jr_003_5C82:
    ld h, b
    rrca
    xor b
    ld l, e
    ld [bc], a
    add b
    add b
    dec h
    and h
    ld l, b
    db $FD
    sub a
    ld e, h
    ldh [$5C], a
    inc e
    ld e, l
    xor a
    ld e, l

jr_003_5C95:
    ldh [$5D], a
    add b

jr_003_5C98:
    stop
    inc c
    ld [hl], b
    sub b
    add b
    ld c, b
    jr nz, @+$09

    jr @-$76

    add c
    nop
    ld b, b

jr_003_5CA6:
    ld de, $904C
    add c
    jr z, jr_003_5C2C

    rlca
    jr @-$76

    add c
    jr z, jr_003_5C52

    rlca

jr_003_5CB3:
    ld l, b
    adc b
    add d

jr_003_5CB6:
    jr z, jr_003_5CB8

jr_003_5CB8:
    inc c
    ld l, b
    sub b
    add d
    ld c, b
    jr nz, jr_003_5CC6

    jr c, jr_003_5C49

    add d
    ld c, b
    ld b, b
    rlca
    adc b

jr_003_5CC6:
    adc b
    add e
    ld [$0760], sp
    jr jr_003_5C55

    add e
    jr z, @-$7E

    inc c
    ld c, b
    sub b

jr_003_5CD3:
    add h
    db $10
    and b
    rlca
    ld c, b
    adc b
    add h
    db $10
    ret nz

    rlca
    ld e, b
    adc b
    db $FD
    add b
    jr jr_003_5CE3

jr_003_5CE3:
    ld de, $907C
    add b
    ld c, b
    ld b, b
    rlca
    jr jr_003_5C74

    add c
    nop
    ld h, b
    ld de, $9044
    add c
    jr nz, jr_003_5C95

    ld de, $906C
    add d
    inc hl
    nop
    rrca
    ld e, b
    sub b
    add d
    ld h, b
    jr nz, @+$09

    ld a, b
    adc b
    add d
    ld e, b
    ld b, b
    ld de, $9054
    add e
    nop
    add b
    rlca
    jr z, jr_003_5C98

    add e
    jr c, jr_003_5CB3

    inc c
    ld [hl], b
    sub b
    cp $00
    add hl, de
    jr jr_003_5D79

    db $FD
    add b
    jr jr_003_5D1F

jr_003_5D1F:
    ld de, $902C
    add b
    ld l, b
    ld b, b
    rlca
    ld e, b
    adc b
    add c
    ld d, b
    ld h, b
    rlca
    jr nc, jr_003_5CB6

    add c
    ld b, b
    add b
    ld de, $9064
    add d
    jr c, jr_003_5D37

jr_003_5D37:
    inc c
    jr nc, @-$6E

    add e
    db $10
    jr nz, jr_003_5D4A

    jr jr_003_5CD3

    add e
    inc hl
    ld b, b

jr_003_5D43:
    rrca
    ld [hl], b
    sub b
    add h
    stop
    inc c

jr_003_5D4A:
    ld [hl], b

jr_003_5D4B:
    sub b
    add h
    ld c, b
    jr nz, jr_003_5D61

    ld a, h

jr_003_5D51:
    sub b
    add h
    ld l, b
    ld h, b
    rlca
    ld e, b
    adc b
    add l
    nop
    add b
    ld de, $902C
    add l
    jr z, @-$3E

jr_003_5D61:
    rlca
    ld e, b
    adc b
    rst $38
    ld bc, $0068
    inc c
    xor b
    jr @+$04

    nop
    jr nz, jr_003_5D7E

    xor b
    ld d, e
    ld [bc], a
    ld e, b
    ld h, b
    rrca
    xor b
    ld l, e
    ld [bc], a
    ld a, b

jr_003_5D79:
    add b
    inc c
    xor b
    jr nz, jr_003_5D81

jr_003_5D7E:
    jr nc, @-$5E

    rlca

jr_003_5D81:
    xor b

jr_003_5D82:
    ld h, b
    inc bc
    ld h, b
    ret nz

    rlca
    xor b
    ld h, b
    dec b
    ld b, b
    ldh [$0C], a
    xor b

jr_003_5D8E:
    jr jr_003_5D95

    ld b, b
    add b

jr_003_5D92:
    rrca
    xor b
    ld l, e

jr_003_5D95:
    rst $38
    add b
    jr jr_003_5D99

jr_003_5D99:
    ld de, $905C
    add b
    ld e, b
    ld b, b
    ld de, $9034
    add c
    ld [$0C80], sp
    add b
    sub b
    add c
    jr z, jr_003_5D4B

    rlca
    jr c, @-$76

    db $FD
    add b
    stop
    inc c
    ld [hl], b
    sub b
    add b
    ld b, b
    jr nz, @+$09

    jr jr_003_5D43

    add c
    ld [$0C40], sp
    jr nz, jr_003_5D51

    add c
    ld [$0C60], sp
    add b
    sub b
    add d
    ld [$0700], sp
    ld l, b
    adc b
    add d
    db $10
    jr nz, @+$13

    ld b, h
    sub b
    add d
    ld h, b
    ld h, b
    inc c
    ld e, b
    sub b
    add e
    ld b, b
    add b
    rlca
    ld a, b
    adc b
    db $FD
    add c
    ld [$0C00], sp
    ld h, b
    sub b
    add c
    ld b, b
    jr nz, jr_003_5DF6

    adc b
    sub b
    add d
    inc bc
    ld b, b
    rrca
    jr nz, jr_003_5D82

    add e
    stop
    inc c

jr_003_5DF6:
    ld d, b
    sub b
    add e
    ld c, b
    jr nz, jr_003_5E08

    jr jr_003_5D8E

    add h
    jr z, jr_003_5E41

    rlca
    jr z, @-$76

    add l
    ld [$0700], sp

jr_003_5E08:
    jr jr_003_5D92

    add l
    ld b, b
    jr nz, @+$0E

    ld [hl], b
    sub b
    add [hl]
    jr jr_003_5E53

    ld de, $9034
    add [hl]
    jr z, jr_003_5D99

    ld c, $70
    sub b
    db $FD
    daa
    ld e, [hl]
    ld [hl], c
    ld e, [hl]
    db $ED
    ld e, [hl]
    ld sp, $A65F
    ld e, a
    inc bc
    ld b, b
    nop
    rlca
    xor b
    ld d, b
    dec b
    jr nz, jr_003_5E50

    rlca
    xor b
    db $10
    dec b
    ld b, b
    ld b, b
    rlca
    xor b
    db $10
    dec b
    ld h, b
    ld h, b
    rlca
    xor b
    db $10
    ld b, $60

jr_003_5E41:
    add b
    inc d

jr_003_5E43:
    or b
    ld [hl], b
    rlca
    db $10
    and b
    inc d
    or b
    ld [hl], b
    rst $38
    ld [bc], a
    jr z, jr_003_5E4F

jr_003_5E4F:
    rlca

jr_003_5E50:
    xor b
    db $10
    ld [bc], a

jr_003_5E53:
    jr nc, jr_003_5E75

    inc de
    xor b
    ld l, b
    ld [bc], a
    ld b, b
    ld b, b
    rlca
    xor b
    db $10
    ld [bc], a
    ld d, b
    ld h, b
    inc d
    or b
    ld [hl], b
    inc bc
    ld h, b
    add b
    rlca
    xor b
    db $10
    inc bc
    adc b
    and b
    rlca
    xor b
    ld d, b
    db $FD
    inc bc
    ld b, b
    nop
    ld [de], a

jr_003_5E75:
    xor h
    jr nz, jr_003_5E7C

    jr nz, jr_003_5EDA

    ld [de], a
    xor h

jr_003_5E7C:
    ld e, b
    dec b
    ld [$10C0], sp
    xor b
    ld l, b
    rst $38
    add h
    jr c, jr_003_5E87

jr_003_5E87:
    db $10
    ld d, b
    sub b
    add h
    ld h, b
    ld b, b
    rlca
    jr c, @-$76

    add l
    db $10
    ld h, b
    rlca
    ld l, b
    adc b
    add l
    ld c, b
    add b
    rlca
    jr @-$76

    add l
    ld c, b
    and b
    rlca
    adc b
    adc b
    rst $38
    add e
    stop
    ld [de], a
    ld h, h
    sub b
    add e
    ld b, b
    ld h, b

jr_003_5EAC:
    rlca
    ld c, b
    adc b
    add h
    ld [$0780], sp
    ld l, b
    adc b
    add h
    ld l, b
    and b
    inc d
    jr c, jr_003_5E43

    rst $38
    add c
    jr jr_003_5EBF

jr_003_5EBF:
    ld a, [hl+]
    inc l
    adc b
    add c
    jr jr_003_5EE5

jr_003_5EC5:
    ld a, [hl+]
    ld b, h
    adc b
    add c
    jr @+$42

    dec hl
    ld e, h
    adc b
    add c
    jr jr_003_5F31

jr_003_5ED1:
    ld a, [hl+]
    ld [hl], b
    adc b
    add c
    ld e, b
    add b
    dec hl
    inc l
    adc b

jr_003_5EDA:
    add c
    ld e, b
    and b
    dec hl
    ld b, h
    adc b
    add c
    ld e, b
    ret nz

    dec hl
    ld e, h

jr_003_5EE5:
    adc b
    add c
    ld e, b
    ldh [$2A], a
    ld [hl], b
    adc b
    db $FD
    ld [bc], a
    ld b, b
    nop
    rlca
    xor b

jr_003_5EF2:
    db $10
    inc b

jr_003_5EF4:
    ld d, b
    jr nz, jr_003_5F09

    xor h
    ld c, b
    dec b
    db $10
    add b
    inc de
    xor b
    ld l, b
    ld b, $10
    and b
    inc de
    xor b
    ld l, b
    ld b, $68
    jr nz, jr_003_5F19

jr_003_5F09:
    xor b
    jr nc, @+$09

    ld [$13C0], sp
    xor b
    ld l, b
    rlca
    jr nz, jr_003_5EF4

    inc d
    or b
    ld [hl], b
    rst $38
    add h

jr_003_5F19:
    ld c, b
    nop

jr_003_5F1B:
    inc d
    ld c, b
    adc b
    add l
    db $10
    jr nz, jr_003_5F36

    jr nz, jr_003_5EAC

    add l
    ld b, b
    ld b, b
    rlca
    ld e, b
    adc b
    add l
    ld b, b
    ld h, b
    rlca
    ld a, b
    adc b
    db $FD

jr_003_5F31:
    add b
    jr c, jr_003_5F34

jr_003_5F34:
    rlca
    ld c, b

jr_003_5F36:
    adc b
    add b
    ld c, b
    jr nz, jr_003_5F42

    jr z, jr_003_5EC5

    add b
    ld c, b
    ld b, b
    rlca
    ld l, b

jr_003_5F42:
    adc b
    add c
    ld [$0760], sp
    jr c, jr_003_5ED1

    add c
    ld [$0780], sp
    ld a, b
    adc b
    add c
    jr c, jr_003_5EF2

    rlca
    ld c, b
    adc b

jr_003_5F55:
    add c
    ld h, b
    ret nz

    inc de
    ld a, b
    adc b
    cp $00
    ld a, [hl+]
    inc h
    jr nz, jr_003_5F81

    ld a, [hl+]
    ld b, h
    db $10
    ld b, b
    dec hl
    ld h, h
    db $10
    ld h, b
    ld a, [hl+]
    inc [hl]
    ld c, b
    add b
    dec hl
    ld d, h
    ld b, b
    and b
    dec hl
    ld [hl], h
    jr c, @+$01

    add e
    ld [$0700], sp
    ld l, b
    adc b
    add e
    ld c, b
    jr nz, jr_003_5F86

    jr jr_003_5F09

jr_003_5F81:
    add e
    ld c, b
    ld b, b
    rlca
    adc b

jr_003_5F86:
    adc b
    add e
    ld l, b
    ld h, b
    rlca
    ld a, b
    adc b
    add h
    nop
    add b
    rlca
    jr z, jr_003_5F1B

    add h
    jr nz, jr_003_5F36

jr_003_5F96:
    rlca
    jr @-$76

    add h
    jr z, @-$3E

    rlca
    ld l, b
    adc b
    add h
    ld l, b
    ldh [rNR14], a
    ld d, b
    adc b
    db $FD
    ld [bc], a
    ld h, b
    nop
    db $10
    xor b
    ld l, b
    inc bc
    jr nc, jr_003_5FEF

    ld [de], a
    xor h
    db $10
    inc b
    jr nc, jr_003_5F55

    db $10
    xor b
    jr nc, jr_003_5FBE

    ld d, b
    ldh [rTAC], a
    xor b
    db $10

jr_003_5FBE:
    db $FD
    ret


    ld e, a
    ld a, [$5E5F]
    ld h, b
    sbc c
    ld h, b
    push af
    ld h, b
    nop
    adc b
    nop
    rlca
    xor b
    db $10
    ld bc, $C008
    ld d, $AC
    ld a, b
    ld bc, $2038
    rlca
    xor b
    jr z, jr_003_5FDD

    ld e, b

jr_003_5FDD:
    ld b, b
    rlca
    xor b
    jr z, jr_003_5FE5

    ld l, b
    ld h, b
    rlca

jr_003_5FE5:
    xor b
    jr z, jr_003_5FEC

    ld l, b
    add b
    rlca
    xor b

jr_003_5FEC:
    ld d, b
    dec b
    db $10

jr_003_5FEF:
    ret nz

    inc de
    xor b
    jr z, jr_003_5FF9

    jr z, jr_003_5F96

    rlca
    xor b
    ld d, b

jr_003_5FF9:
    db $FD

jr_003_5FFA:
    add l
    ld [$0700], sp
    ld d, b
    adc b
    add l
    ld [$0720], sp
    ld [hl], b
    adc b
    add [hl]
    ld [$0740], sp
    ld d, b
    adc b
    add [hl]
    ld h, b
    add b
    inc de
    ld h, b
    adc b
    rst $38
    ld bc, $0048
    rlca
    xor b
    db $10
    ld bc, $2078
    inc de
    xor b
    ld l, b
    ld [bc], a
    jr nc, @+$42

    ld [de], a
    xor h
    jr c, @+$05

    ld l, b

jr_003_6027:
    and b
    ld d, $AC
    ld a, b
    inc b
    ld l, b
    ld b, b
    ld d, $AC
    ld a, b
    ld b, $28
    ldh [rTAC], a
    xor b
    ld c, b
    cp $00

jr_003_6039:
    rlca
    jr z, jr_003_604C

    jr nz, jr_003_6045

    ld b, b
    db $10
    ld b, b
    ld [de], a
    inc a
    ld c, b
    rst $38

jr_003_6045:
    ld bc, $0028
    rlca
    xor b
    jr nz, jr_003_604E

jr_003_604C:
    jr z, jr_003_606E

jr_003_604E:
    ld d, $AC
    ld a, b
    ld [bc], a
    ld h, b
    ld h, b
    ld d, $AC
    ld a, b
    inc bc
    jr nc, jr_003_5FFA

jr_003_605A:
    ld d, $AC
    ld a, b
    db $FD
    cp $00
    rlca
    jr nc, jr_003_6073

    jr nz, jr_003_606C

    add b
    jr z, @+$01

    nop
    ld l, b
    nop
    rlca

jr_003_606C:
    xor b
    db $10

jr_003_606E:
    ld bc, $2008
    rlca
    xor b

jr_003_6073:
    ld d, b
    ld bc, $4048
    rlca
    xor b
    ld d, b
    ld [bc], a
    jr z, jr_003_60DD

    rlca
    xor b
    jr nz, jr_003_6083

    sub b
    add b

jr_003_6083:
    rlca
    xor b
    ld d, b
    inc bc
    ld l, b
    and b
    rlca

jr_003_608A:
    xor b
    ld d, b
    inc b
    ld [$07C0], sp
    xor b
    db $10
    inc b
    ld c, b
    ldh [rTAC], a

jr_003_6096:
    xor b
    jr nz, jr_003_6096

    add h
    ld [$0700], sp
    jr nc, jr_003_6027

    add l
    ld [$0720], sp
    adc b
    adc b
    add l
    jr z, jr_003_60E8

    rlca
    db $10
    adc b
    add l
    ld l, b
    ld h, b
    rlca
    jr jr_003_6039

    add [hl]
    ld [$0780], sp
    ld [hl], b
    adc b
    add [hl]
    jr z, jr_003_605A

    rlca
    jr nc, jr_003_6045

    add [hl]
    ld c, b
    ret nz

    rlca
    ld d, b
    adc b
    rst $38
    ld bc, $0028
    rlca
    xor b
    db $10
    ld bc, $2068
    rlca
    xor b
    db $10
    ld [bc], a
    jr nc, jr_003_6113

    rlca
    xor b
    db $10
    ld [bc], a
    ld l, b
    ld h, b
    rlca
    xor b
    jr nc, jr_003_60DF

jr_003_60DD:
    sub b
    add b

jr_003_60DF:
    inc de
    xor b
    ld l, b
    inc bc
    sub b
    and b
    inc de
    xor b
    ld l, b

jr_003_60E8:
    inc b
    ld h, b
    ret nz

    inc de
    xor b
    ld l, b
    inc b
    ld l, b
    ldh [rTAC], a
    xor b
    db $10
    db $FD
    add c
    ld [$0700], sp
    jr nz, jr_003_6083

    add d
    jr nz, jr_003_611E

    db $10
    adc b
    sub b
    add d
    ld l, b
    ld h, b
    rlca
    ld [hl], b
    adc b
    add h
    jr nz, jr_003_608A

    db $10
    db $10
    sub b
    add h
    ld c, b
    ret nz

    rlca
    ld a, b
    adc b

jr_003_6113:
    rst $38
    ld bc, $0078
    rlca
    xor b
    db $10
    ld [bc], a
    ld b, b
    jr nz, jr_003_6125

jr_003_611E:
    xor b
    db $10
    inc bc
    nop
    ld b, b
    rlca
    xor b

jr_003_6125:
    db $10
    inc bc
    db $10
    ld h, b
    db $10
    xor b
    ld l, b
    inc bc
    ld h, b
    and b
    rlca
    xor b

jr_003_6131:
    db $10
    inc b
    ld [$07C0], sp
    xor b
    db $10
    inc b
    ld d, b
    ldh [rTAC], a

jr_003_613C:
    xor b
    db $10
    cp $00
    ld [de], a
    ld d, h
    ld h, b
    db $FD
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
    jr z, jr_003_6131

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
    jr nc, jr_003_613C

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
    ldh [$08], a
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

    db $B0, $62, $8D, $65

    ld c, [hl]
    ld h, a
    inc sp
    ld l, c
    ld a, [hl-]
    ld l, e
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
    db $28, $40, $02, $A8, $48, $05, $48, $60, $02, $A8, $68, $FD, $FD, $99, $65

    inc e
    ld h, [hl]
    xor d
    ld h, [hl]
    ld [$F866], a
    ld h, [hl]
    cpl
    ld h, a

    db $00, $50, $00, $01, $A4, $68, $00, $70, $20, $02, $A4, $68, $00, $90, $40, $02
    db $A4, $68, $01, $60, $60, $02, $A4, $68, $02, $20, $00, $02, $A4, $68, $02, $80
    db $20, $02, $A4, $68, $03, $68, $40, $02, $A4, $30, $04, $10, $60, $02, $A4, $28
    db $04, $18, $00, $02, $A4, $68, $04, $68, $20, $02, $A4, $30, $05, $08, $80, $0E
    db $A8, $30, $05, $60, $40, $02, $A4, $68, $FE, $00, $02, $34, $68, $20, $02, $6C
    db $68, $FE, $00, $02, $34, $68, $20, $02, $6C, $68, $FE, $00, $02, $34, $68, $20
    db $02, $6C, $68, $FE, $00, $02, $34, $68, $20, $02, $6C, $68, $FE, $00, $02, $34
    db $68, $20, $02, $6C, $68, $FE, $00, $02, $20, $68, $20, $02, $30, $40, $40, $02
    db $48, $68, $FD

    nop
    jr nc, jr_003_661F

jr_003_661F:
    ld bc, $50A4
    nop
    ld d, b
    jr nz, jr_003_6628

    and h
    ld c, b

jr_003_6628:
    ld bc, $4000
    inc bc
    and h

jr_003_662D:
    ld l, b
    ld bc, $6038
    ld [bc], a
    and h
    ld l, b
    ld bc, $8068
    ld [bc], a
    and h
    ld l, b
    ld [bc], a
    ld l, b
    add b
    ld [bc], a
    and h
    ld d, b
    inc bc
    jr jr_003_6643

jr_003_6643:
    ld [bc], a
    and h
    ld c, b
    inc bc
    ld a, b
    jr nz, jr_003_664C

    and h
    ld d, b

jr_003_664C:
    inc b
    jr nc, jr_003_668F

    ld [bc], a
    and h
    ld l, b
    inc b
    add b
    ld h, b
    ld [bc], a
    and h
    jr nz, @+$01

    add d
    ld [$0200], sp
    ld h, h
    adc b
    add d
    ld c, b
    jr nz, jr_003_6665

    inc h
    adc b

jr_003_6665:
    add e
    ld [$0240], sp
    add h
    adc b
    add e
    ld d, b
    ld h, b
    ld [bc], a
    inc d
    adc b
    rst $38
    dec b
    ld b, b
    nop
    ld [bc], a
    and h
    ld c, b
    dec b
    sub b
    jr nz, jr_003_667E

    and h
    ld c, b

jr_003_667E:
    dec b
    and b
    ld b, b
    ld [hl-], a
    and b
    nop
    ld b, $40
    ld h, b
    ld [bc], a
    and h
    ld c, b
    rst $38
    add b
    ld [$0500], sp

jr_003_668F:
    ld c, h
    adc b
    add b
    jr z, jr_003_66B4

    ld [bc], a
    inc e
    adc b
    add b
    jr z, @+$42

    ld [bc], a
    add h
    adc b
    add b
    ld h, b
    ld h, b
    inc b
    inc a
    adc b
    add c
    nop
    add b
    inc bc
    inc a
    add b
    db $FD
    nop
    jr z, jr_003_662D

    ld bc, $30A4
    nop
    ld c, b
    nop
    ld [bc], a

jr_003_66B4:
    and h
    ld h, b
    nop
    ld h, b
    jr nz, jr_003_66BC

    and h
    ld l, b

jr_003_66BC:
    nop
    sub b
    ld b, b
    ld [bc], a
    and h
    ld l, b
    ld bc, $6050
    ld [bc], a
    and h
    ld h, b
    inc bc
    stop
    ld [bc], a
    and h
    ld l, b
    inc bc
    ld c, b
    jr nz, jr_003_66D4

    and h
    ld l, b

jr_003_66D4:
    inc b
    ld d, b
    add b
    ld c, $A8
    jr jr_003_66DF

    add b
    ld b, b
    inc bc
    and h

jr_003_66DF:
    jr nc, jr_003_66DF

    nop
    ld [bc], a
    inc l
    ld l, b
    jr nz, jr_003_66E9

    add h
    ld l, b

jr_003_66E9:
    db $FD
    cp $00
    ld bc, $604C
    jr nz, jr_003_66F3

    ld l, h
    ld h, b

jr_003_66F3:
    ld b, b
    ld [bc], a
    add h
    ld h, b
    db $FD
    nop
    jr z, jr_003_66FB

jr_003_66FB:
    ld bc, $50A4
    nop
    ld d, b
    jr nz, jr_003_6704

    and h
    ld l, b

jr_003_6704:
    nop
    sub b
    ld b, b
    ld [bc], a
    and h
    ld l, b
    ld bc, $6070
    ld [bc], a
    and h
    ld l, b
    ld [bc], a
    jr c, @-$7E

    ld [bc], a
    and h
    jr jr_003_6719

    ld c, b
    nop

jr_003_6719:
    ld [bc], a
    and h
    ld c, b
    ld [bc], a
    ld e, b
    jr nz, jr_003_6722

    and h
    ld c, b

jr_003_6722:
    inc bc
    ld c, b
    ld b, b
    ld [bc], a
    and h
    ld c, b
    inc bc
    ld e, b
    ld h, b
    inc bc
    and h
    ld c, b
    db $FD
    nop
    jr c, jr_003_6732

jr_003_6732:
    ld bc, $68A4
    ld bc, $2008
    ld [bc], a
    and h
    ld e, b
    ld bc, $4028
    ld [bc], a
    and h
    jr c, jr_003_6743

    ld [hl], b

jr_003_6743:
    ld h, b
    ld [bc], a
    and h
    jr c, jr_003_6749

    sub b

jr_003_6749:
    add b
    ld [bc], a
    and h
    ld e, b
    db $FD
    ld e, b
    ld h, a
    or e
    ld h, a
    or $67
    or e
    ld l, b
    ld [$8068], a
    jr z, jr_003_675B

jr_003_675B:
    ld [bc], a
    inc d

jr_003_675D:
    adc b
    add b
    ld c, b
    jr nz, jr_003_6764

    ld a, h
    adc b

jr_003_6764:
    add b
    ld l, b
    ld b, b
    ld [bc], a
    inc e
    adc b
    add c
    jr z, @+$62

    ld [bc], a
    adc h
    adc b
    add c
    ld h, b
    add b
    ld [bc], a
    add h
    adc b
    add d
    jr z, jr_003_6779

jr_003_6779:
    ld [bc], a
    inc d
    adc b
    add d
    jr z, jr_003_679F

    ld [bc], a
    adc h
    adc b
    add d
    ld c, b
    ld b, b
    ld [bc], a
    ld d, h
    adc b
    add d
    ld h, b
    ld h, b
    ld [bc], a
    inc d
    adc b
    add e
    db $10
    add b
    ld [bc], a
    inc h
    adc b
    add e
    jr @-$5E

    ld [bc], a
    adc h
    adc b
    add e
    jr z, jr_003_675D

    ld [bc], a
    inc d

jr_003_679F:
    adc b
    add e
    ld b, b
    nop
    ld [bc], a
    adc h
    adc b
    add h
    jr z, jr_003_67C9

    ld [bc], a
    sub b
    adc b
    add h
    ld h, b
    ld b, b
    ld bc, $8844
    db $FD
    add b
    stop
    ld [bc], a
    ld c, h
    adc b
    add b
    jr z, @+$22

    inc bc
    adc h
    adc b
    add c
    ld [$0240], sp
    inc d
    adc b
    add c
    jr z, @+$62

    ld [bc], a

jr_003_67C9:
    adc h
    adc b
    add d
    jr z, jr_003_67CE

jr_003_67CE:
    ld [bc], a
    ld c, h
    adc b
    add d
    ld c, b
    jr nz, jr_003_67D7

    adc h
    adc b

jr_003_67D7:
    add e
    db $10
    ld b, b
    ld bc, $882C
    add e
    jr z, jr_003_6840

    ld [bc], a
    adc h
    adc b
    add e
    ld h, b
    add b
    ld [bc], a
    inc [hl]
    adc b
    add e
    ld h, b
    and b
    ld [bc], a
    ld d, h
    adc b
    add e
    ld h, b
    ret nz

    ld [bc], a
    adc h
    adc b
    db $FD
    add b
    jr jr_003_67F9

jr_003_67F9:
    ld [bc], a

jr_003_67FA:
    ld [hl], h
    adc b
    add b
    ld c, b
    jr nz, jr_003_6802

    ld c, h
    adc b

jr_003_6802:
    add c
    jr nz, jr_003_6845

    ld [bc], a
    inc d
    adc b
    add d
    ld [$0200], sp
    inc d
    adc b
    add d
    ld [$0220], sp
    inc h
    adc b
    add d
    jr z, jr_003_6857

    ld [bc], a
    adc h
    adc b
    add e
    ld b, b
    ld h, b
    ld [bc], a
    inc e
    adc b
    add e
    ld h, b
    add b
    ld [bc], a
    adc h
    adc b
    add h
    jr z, jr_003_6829

jr_003_6829:
    ld [bc], a
    adc h
    adc b
    add h
    ld c, b
    jr nz, jr_003_6832

    ld d, h
    adc b

jr_003_6832:
    add l
    ld [$0240], sp
    inc d
    adc b

jr_003_6838:
    add l
    ld b, b
    ld h, b
    ld [bc], a
    adc h
    adc b
    add l
    ld h, b

jr_003_6840:
    add b
    ld bc, $886C
    rst $38

jr_003_6845:
    ld bc, $0080
    ld [bc], a
    and h
    ld l, b
    ld bc, $6090
    ld [bc], a
    and h
    ld l, b
    ld [bc], a
    jr nz, @-$7E

    rlca
    xor b
    ld b, b

jr_003_6857:
    ld [bc], a
    jr nc, jr_003_67FA

    inc bc
    and h
    jr z, jr_003_6860

    sbc b
    ret nz

jr_003_6860:
    ld [bc], a
    and h
    ld l, b
    inc bc
    jr z, jr_003_68C6

    ld [bc], a
    and h
    ld l, b
    inc bc
    ld [hl], b
    add b
    ld [bc], a
    and h
    ld l, b
    inc b
    db $10
    and b
    ld [bc], a
    and h
    ld d, b
    inc b
    jr z, jr_003_6838

    ld [bc], a
    and h
    ld e, b
    inc b
    adc b
    nop
    ld c, $A8
    ld l, b
    dec b
    ld [$0260], sp
    and h
    ld c, b
    dec b
    ld d, b
    add b
    ld [bc], a
    and h
    ld l, b
    dec b
    ld l, b
    and b
    ld [bc], a
    and h
    ld l, b
    rst $38
    add b
    jr nz, jr_003_6897

jr_003_6897:
    dec b
    inc l
    adc b
    add b
    jr nz, jr_003_68BD

    inc bc
    ld l, h
    adc b
    add c
    jr z, jr_003_68E3

    ld [bc], a
    inc h
    adc b
    add c
    jr z, jr_003_6909

    ld [bc], a
    ld a, h
    adc b
    add c
    ld h, b
    add b
    ld [bc], a
    add b
    adc b
    db $FD
    add b
    stop
    ld [bc], a
    ld [hl], h
    adc b
    add b
    jr jr_003_68DC

    inc b

jr_003_68BD:
    inc d
    adc b
    add c
    ld h, b
    ld b, b
    ld [bc], a
    inc c
    adc b
    add c

jr_003_68C6:
    ld h, b
    ld h, b
    ld [bc], a
    inc e
    adc b
    add c
    ld h, b
    add b
    ld [bc], a
    sub b
    adc b
    add d
    jr c, jr_003_68D4

jr_003_68D4:
    ld [bc], a
    adc h
    adc b
    add d
    ld d, b
    jr nz, jr_003_68DD

    inc l

jr_003_68DC:
    adc b

jr_003_68DD:
    add e
    jr nz, jr_003_6920

    ld [bc], a
    ld [hl], h
    adc b

jr_003_68E3:
    add e
    jr z, @+$62

    ld bc, $882C
    db $FD
    add c
    jr z, jr_003_68ED

jr_003_68ED:
    ld [bc], a
    ld d, h
    adc b
    add c
    jr z, jr_003_6913

    ld [bc], a
    ld [hl], h
    adc b
    add d
    rlca
    ld b, b
    ld [bc], a
    inc [hl]
    adc b
    add d
    jr c, jr_003_695F

    ld [bc], a
    inc e
    adc b
    add d
    ld h, b
    add b
    ld [bc], a
    add h
    adc b
    add e

jr_003_6909:
    jr z, jr_003_690B

jr_003_690B:
    ld [bc], a
    ld [hl], h
    adc b
    add e
    ld c, b
    jr nz, jr_003_6914

    ld c, h

jr_003_6913:
    adc b

jr_003_6914:
    add h
    ld [$0240], sp
    inc [hl]
    adc b
    add h
    ld [$0260], sp
    ld c, h
    adc b

jr_003_6920:
    add l
    ld c, b
    nop
    ld [bc], a
    inc a
    adc b
    add l
    ld h, b
    jr nz, jr_003_692C

    ld e, h
    adc b

jr_003_692C:
    add [hl]
    jr z, jr_003_696F

    ld bc, $881C
    db $FD
    dec a
    ld l, c
    or c
    ld l, c
    inc sp
    ld l, d
    and c
    ld l, d
    rst $30
    ld l, d
    inc bc
    stop
    ld [bc], a
    and h
    jr z, jr_003_6947

    ld e, b
    jr nz, jr_003_6948

jr_003_6947:
    and h

jr_003_6948:
    jr c, jr_003_694E

    jr jr_003_698C

    ld [bc], a
    and h

jr_003_694E:
    jr nc, jr_003_6954

    ld b, b
    ld h, b
    ld [bc], a
    and h

jr_003_6954:
    jr nc, @+$07

    ld [$0280], sp
    and h
    jr nc, jr_003_6961

    ld c, b
    nop
    ld [bc], a

jr_003_695F:
    and h
    ld c, b

jr_003_6961:
    dec b
    ld l, b
    jr nz, jr_003_6967

    and h
    ld e, b

jr_003_6967:
    ld b, $10
    ld b, b
    ld [bc], a
    and h
    ld h, b
    ld b, $58

jr_003_696F:
    ld h, b
    ld [bc], a
    and h
    ld h, b
    ld b, $70
    add b
    ld [bc], a
    and h
    ld h, b
    ld b, $88
    nop
    ld [bc], a
    and h
    ld h, b
    rlca
    jr jr_003_69A2

    ld bc, $60A4
    rlca
    jr c, jr_003_69C8

    ld [bc], a
    and h
    ld h, b
    rst $38

jr_003_698C:
    ld [bc], a
    jr c, jr_003_698F

jr_003_698F:
    ld [bc], a
    and h
    ld h, b
    ld [bc], a
    ld h, b
    jr nz, jr_003_6998

    and h
    ld h, b

jr_003_6998:
    ld [bc], a
    ld a, b
    ld b, b
    ld [bc], a
    and h
    ld h, b
    inc bc
    nop
    ld h, b
    ld [bc], a

jr_003_69A2:
    and h
    ld h, b
    inc bc
    adc b
    add b
    ld [bc], a
    and h
    jr z, jr_003_69AE

    adc c
    and b
    ld [bc], a

jr_003_69AE:
    and h
    ld l, b
    db $FD
    inc bc
    jr z, jr_003_69B4

jr_003_69B4:
    ld [bc], a
    and h
    ld h, b
    inc bc
    jr nc, jr_003_69DA

    ld [bc], a
    and h
    jr nc, jr_003_69C1

    ld [hl], b
    ld b, b
    ld [bc], a

jr_003_69C1:
    and h
    ld h, b
    inc b
    ld [$0360], sp
    and h

jr_003_69C8:
    jr nz, jr_003_69CE

    ld l, b
    add b
    ld [bc], a
    and h

jr_003_69CE:
    jr nc, jr_003_69D5

    jr nc, jr_003_69D2

jr_003_69D2:
    ld [bc], a
    and h
    ld c, b

jr_003_69D5:
    dec b
    ld [hl], b
    jr nz, jr_003_69DA

    and h

jr_003_69DA:
    ld c, b
    rst $38
    add h
    jr nz, jr_003_69DF

jr_003_69DF:
    ld bc, $882C
    add h
    ld [hl], b
    jr nz, jr_003_69E8

    ld d, h
    adc b

jr_003_69E8:
    add l
    jr z, jr_003_6A2B

    ld [bc], a
    inc d
    adc b
    add l
    add hl, hl
    ld h, b
    ld [bc], a
    adc h
    adc b

jr_003_69F4:
    add l
    ld e, b
    add b
    ld [bc], a
    inc l
    adc b
    add l
    ld e, c
    and b
    ld [bc], a
    ld [hl], h
    adc b
    rst $38
    add e
    jr nz, jr_003_6A04

jr_003_6A04:
    ld [bc], a
    inc [hl]
    adc b
    add e
    jr z, jr_003_6A2A

    ld [bc], a
    ld a, h
    adc b
    add e
    ld l, b
    ld b, b
    ld [bc], a
    ld d, h
    adc b
    add h
    ld h, b
    ld h, b
    ld [bc], a
    ld e, h
    adc b
    add h
    ld b, b
    add b
    ld [bc], a
    adc h
    adc b
    rst $38
    add c
    jr jr_003_6A23

jr_003_6A23:
    inc bc
    inc d
    adc b
    add d
    jr c, jr_003_6A49

    ld [bc], a

jr_003_6A2A:
    adc h

jr_003_6A2B:
    adc b
    add d
    ld e, c
    ld b, b
    db $10
    ld a, b
    sub b
    db $FD
    ld [bc], a
    jr z, jr_003_6A56

    ld [bc], a
    and h
    ld h, b
    ld [bc], a
    sub b
    nop
    rlca
    xor b
    db $10
    inc bc
    jr jr_003_6A82

    ld [bc], a
    and h
    ld h, b
    inc b
    jr nc, jr_003_6AA8

    ld [bc], a

jr_003_6A49:
    and h
    ld d, b
    dec b
    db $10
    add b
    ld bc, $60A4
    dec b
    jr z, jr_003_69F4

    ld [bc], a
    and h

jr_003_6A56:
    ld h, b
    ld b, $08
    jr nz, jr_003_6A5F

    and h
    ld h, b
    ld b, $48

jr_003_6A5F:
    ld b, b
    ld [bc], a
    and h
    ld l, b
    ld b, $60
    ld h, b
    ld [bc], a

jr_003_6A67:
    and h
    ld l, b
    ld b, $78
    add b
    ld [bc], a
    and h
    ld l, b
    rlca
    ld h, b
    and b
    ld bc, $60A4
    rst $38
    add h
    ld b, b
    nop
    ld [bc], a
    ld c, h
    adc b
    add h
    ld b, c
    jr nz, jr_003_6A82

    ld h, h
    adc b

jr_003_6A82:
    add l
    nop
    ld b, b
    ld [bc], a
    inc d
    adc b
    add l
    ld bc, $0260
    inc l
    adc b
    add l
    ld b, b
    add b
    ld [bc], a
    inc [hl]
    adc b
    add l
    ld d, b
    and b
    ld [bc], a
    ld l, h
    adc b
    add l
    ld h, b
    ret nz

    ld [bc], a
    ld c, h
    adc b
    db $FD
    add b
    stop
    dec b
    inc l
    adc b
    add b

jr_003_6AA8:
    ld de, $0220
    ld l, h
    adc b
    add b
    ld d, b
    ld b, b
    ld [bc], a
    ld d, h
    adc b
    add c
    db $10
    ld h, b
    ld [bc], a
    inc l
    adc b
    add c
    ld de, $0280
    ld h, h
    adc b
    add c
    ld e, b
    nop
    ld [bc], a
    ld b, h
    adc b
    add c
    ld e, c
    jr nz, jr_003_6ACB

    ld e, h
    adc b

jr_003_6ACB:
    rst $38
    add e
    ld c, b
    nop
    ld [bc], a

jr_003_6AD0:
    ld l, h
    adc b
    add e
    ld l, b
    jr nz, jr_003_6AD8

    adc h
    adc b

jr_003_6AD8:
    add h
    nop
    ld b, b
    ld [bc], a
    inc d
    adc b
    add h
    ld [$0160], sp
    ld l, h
    adc b
    add h
    jr nz, jr_003_6A67

    ld [bc], a
    inc [hl]
    adc b
    add h
    ld e, b
    and b
    ld [bc], a
    inc l
    adc b
    add h
    ld h, b
    ret nz

    ld [bc], a
    ld [hl], h
    adc b
    db $FD
    ld bc, $0088
    ld [bc], a
    and h
    ld l, b
    ld [bc], a
    ld b, b
    jr nz, jr_003_6B03

    and h
    ld l, b

jr_003_6B03:
    ld [bc], a
    ld c, b

jr_003_6B05:
    ld b, b
    db $10
    xor b
    jr nc, jr_003_6B0C

    ld e, b
    add b

jr_003_6B0C:
    ld [bc], a
    and h
    ld l, b
    ld [bc], a
    add b
    and b
    ld [bc], a
    and h
    ld l, b
    ld [bc], a
    sbc b
    ret nz

    ld [bc], a
    and h
    ld l, b
    inc bc
    add b
    ld b, b
    ld [bc], a
    and h
    ld l, b
    inc bc
    sbc b
    ld h, b
    ld [bc], a
    and h
    ld l, b
    inc b
    jr nz, @-$7E

    ld [bc], a

jr_003_6B2B:
    and h
    ld l, b
    inc b
    jr c, jr_003_6AD0

    ld [bc], a
    and h
    ld l, b
    inc b
    sbc b
    ret nz

    ld bc, $68A4
    db $FD
    ld b, h
    ld l, e
    and l
    ld l, e
    ld d, e
    ld l, h
    sub [hl]
    ld l, h
    inc hl
    ld l, l
    nop
    ld l, b
    nop
    ld bc, $60A4
    nop
    sbc b
    jr nz, jr_003_6B50

    and h
    ld h, b

jr_003_6B50:
    ld bc, $4038
    ld [bc], a
    and h
    ld h, b
    ld bc, $6058
    ld [bc], a
    and h
    ld d, b
    ld bc, $8078
    ld [bc], a
    and h
    ld b, b
    ld [bc], a
    jr z, jr_003_6B05

    ld [bc], a
    and h
    jr z, jr_003_6B6B

    jr c, jr_003_6B2B

jr_003_6B6B:
    ld [bc], a
    and h
    ld l, b
    ld [bc], a
    ld d, b
    nop
    ld [bc], a
    and h
    ld l, b
    ld [bc], a
    ld e, b
    jr nz, @+$04

    and h
    jr z, jr_003_6B7E

    nop
    ld b, b
    ld [bc], a

jr_003_6B7E:
    and h
    ld c, b
    inc bc
    jr nz, jr_003_6BE3

    ld [bc], a
    and h
    ld c, b
    inc bc
    sub b
    add b
    ld bc, $68A4
    inc b
    ld a, b
    and b
    ld [bc], a
    and h
    ld l, b
    inc b
    adc b
    ret nz

    ld [bc], a
    and h
    jr z, @+$07

    jr jr_003_6B9B

jr_003_6B9B:
    ld [bc], a
    and h
    jr z, jr_003_6BA4

    jr z, jr_003_6BC1

    ld [bc], a
    and h
    ld l, b

jr_003_6BA4:
    db $FD
    add l
    ld d, b
    nop
    ld bc, $886C
    add l
    ld d, b
    jr nz, jr_003_6BB1

    add h
    adc b

jr_003_6BB1:
    add [hl]
    jr c, jr_003_6BF4

    ld [bc], a
    inc d
    adc b
    rst $38
    ld bc, $0058
    ld [bc], a
    and h

jr_003_6BBD:
    ld h, b
    ld [bc], a
    jr jr_003_6BE1

jr_003_6BC1:
    ld [bc], a
    and h
    ld d, b
    ld [bc], a
    ld h, b
    ld b, b
    ld [bc], a
    and h
    ld d, b
    inc bc
    nop
    ld h, b
    ld [bc], a
    and h
    jr nc, jr_003_6BD4

    ld d, b
    add b
    ld [bc], a

jr_003_6BD4:
    and h
    jr z, jr_003_6BDA

    ld e, b
    and b
    ld [bc], a

jr_003_6BDA:
    and h
    ld l, b
    inc bc
    adc b
    nop
    ld [bc], a
    and h

jr_003_6BE1:
    ld l, b
    inc bc

jr_003_6BE3:
    sub b
    jr nz, @+$04

    and h
    jr jr_003_6BED

    jr jr_003_6C2B

    ld [bc], a
    and h

jr_003_6BED:
    ld l, b
    inc b
    ld c, b
    ld h, b
    ld [bc], a
    and h
    ld l, b

jr_003_6BF4:
    inc b
    ld d, b
    add b
    ld [bc], a
    and h
    jr @+$07

    stop
    ld [bc], a
    and h
    jr z, jr_003_6C06

    jr nz, @+$22

    ld [bc], a
    and h
    ld l, b

jr_003_6C06:
    dec b
    jr c, jr_003_6C49

    ld bc, $68A4
    dec b
    ld d, b
    ld h, b
    ld [bc], a
    and h
    jr z, jr_003_6C19

    adc b
    add b
    ld [bc], a
    and h

jr_003_6C17:
    jr nc, jr_003_6C17

jr_003_6C19:
    nop
    inc bc
    inc d
    ld h, b
    jr nz, jr_003_6C21

    adc h
    ld c, b

jr_003_6C21:
    rst $38
    ld bc, $0050
    ld [bc], a
    and h
    ld d, b
    ld bc, $2060

jr_003_6C2B:
    ld [bc], a
    and h
    jr nc, jr_003_6C31

    ld a, b
    ld b, b

jr_003_6C31:
    ld [bc], a
    and h
    ld h, b
    inc bc
    db $10
    ld h, b
    ld [bc], a
    and h
    jr z, @+$05

    jr nz, jr_003_6BBD

    ld bc, $60A4
    inc bc
    jr nc, jr_003_6BE3

    ld [bc], a
    and h
    jr z, jr_003_6C4A

    ld d, b
    ret nz

jr_003_6C49:
    ld [bc], a

jr_003_6C4A:
    and h
    ld h, b
    inc bc
    ld e, b
    nop
    ld d, $AC
    ld a, b
    db $FD
    cp $00
    ld [bc], a
    adc h
    ld l, b
    rst $38
    nop
    jr nz, jr_003_6C5C

jr_003_6C5C:
    ld [bc], a
    and h
    ld h, b
    nop
    sbc b
    jr nz, jr_003_6C65

    and h
    ld h, b

jr_003_6C65:
    ld bc, $4010
    ld bc, $28A4
    ld bc, $6058
    ld [bc], a
    and h
    ld h, b
    ld bc, $8098
    ld [bc], a
    and h
    ld d, b
    ld [bc], a
    jr z, jr_003_6C7A

jr_003_6C7A:
    ld [bc], a
    and h
    ld d, b
    ld [bc], a
    ld b, b
    jr nz, jr_003_6C94

    xor b
    ld d, b
    ld [bc], a
    add b
    ld b, b

jr_003_6C86:
    ld [bc], a
    and h
    ld l, b
    inc bc
    ld e, b
    ld h, b
    ld [bc], a
    and h
    ld l, b
    inc bc
    adc b
    add b
    ld [bc], a

jr_003_6C93:
    and h

jr_003_6C94:
    jr z, jr_003_6C93

    add e
    jr nz, jr_003_6C99

jr_003_6C99:
    inc bc
    inc d
    adc b
    add e
    jr z, jr_003_6CBF

    ld [bc], a
    inc a
    adc b
    add e
    jr nc, jr_003_6CE5

    ld [bc], a
    ld a, h
    adc b
    add h
    jr z, jr_003_6D0B

    ld [bc], a
    inc [hl]
    adc b
    add h
    ld h, b
    add b
    ld [bc], a

jr_003_6CB2:
    sub b
    adc b
    add l
    ld [$0200], sp
    inc d
    adc b
    add l
    jr z, jr_003_6CDD

    ld [bc], a

jr_003_6CBE:
    sub b

jr_003_6CBF:
    adc b
    add l
    ld c, b
    ld b, b
    ld [bc], a
    ld b, h
    adc b
    add l
    ld c, b
    ld h, b
    ld [bc], a
    ld e, h
    adc b
    add [hl]
    ld [$0280], sp
    inc [hl]
    adc b
    add [hl]
    ld [$02A0], sp
    adc h
    adc b
    add [hl]
    ld c, b
    ret nz

    ld [bc], a
    adc h

jr_003_6CDD:
    adc b
    add a
    jr z, jr_003_6CE1

jr_003_6CE1:
    ld [bc], a
    jr nc, @-$76

    add a

jr_003_6CE5:
    ld c, b
    jr nz, jr_003_6CE9

jr_003_6CE8:
    ld d, h

jr_003_6CE9:
    adc b
    rst $38
    ld bc, $0038
    ld [bc], a
    and h
    jr nc, jr_003_6CF3

    ld d, b

jr_003_6CF3:
    jr nz, jr_003_6CF6

    and h

jr_003_6CF6:
    ld l, b
    ld bc, $4060
    ld [bc], a
    and h
    jr nc, jr_003_6D00

    ld [hl], b
    ld h, b

jr_003_6D00:
    ld [bc], a
    and h
    ld h, b
    inc bc
    jr nc, jr_003_6C86

    ld [bc], a
    and h
    ld h, b
    inc bc
    sub b

jr_003_6D0B:
    nop
    ld [bc], a
    and h
    ld h, b
    inc b
    jr nc, jr_003_6CB2

    db $10
    xor b
    ld c, b
    inc b

jr_003_6D16:
    ld d, b
    jr nz, jr_003_6D1B

    and h
    ld h, b

jr_003_6D1B:
    rst $38
    add [hl]
    stop
    inc b
    ld e, h
    adc b
    db $FD
    add c
    jr nz, jr_003_6D26

jr_003_6D26:
    ld [bc], a
    inc d
    adc b
    add c
    jr c, jr_003_6D4C

    ld [bc], a
    ld d, h
    adc b
    add c
    ld c, b
    ld b, b
    ld [bc], a
    inc d
    adc b
    add d
    jr nz, jr_003_6D98

    ld [bc], a
    inc d
    adc b
    add d
    jr z, jr_003_6CBE

    ld [bc], a
    ld [hl], h
    adc b
    add d
    ld h, b
    and b
    ld [bc], a
    inc [hl]
    adc b
    add e
    nop
    nop
    ld [bc], a
    ld a, h

jr_003_6D4C:
    adc b
    add e
    jr nz, @+$22

    ld [bc], a
    inc d
    adc b
    add e
    jr z, jr_003_6D16

    rlca
    ld [hl], b
    adc b
    add e
    ld b, b
    ld b, b
    ld [bc], a
    ld l, h
    adc b
    add h
    db $10
    ld h, b
    ld [bc], a
    ld [hl], h
    adc b
    add h
    jr z, jr_003_6CE8

    ld [bc], a
    inc l
    adc b
    add h
    ld h, b
    and b
    ld bc, $888C
    rst $38
    ld bc, $0050
    ld [bc], a
    and h
    ld d, b
    ld [bc], a
    db $10
    jr nz, jr_003_6D7E

    and h
    ld d, b

jr_003_6D7E:
    ld [bc], a
    ld [hl], b
    ld b, b
    ld [bc], a
    and h
    ld d, b
    inc bc

jr_003_6D85:
    jr nc, jr_003_6DE7

    ld [bc], a
    and h
    ld d, b
    inc bc
    sub b
    add b
    ld [bc], a
    and h
    ld d, b
    inc b
    ld e, b
    nop
    ld [bc], a
    and h
    ld l, b
    inc b
    ld [hl], b

jr_003_6D98:
    jr nz, jr_003_6D9C

    and h
    ld l, b

jr_003_6D9C:
    inc b
    adc b
    ld b, b
    inc de
    xor b
    ld l, b
    cp $00
    ld bc, $6870
    jr nz, jr_003_6DAC

    adc b
    ld l, b
    rst $38

jr_003_6DAC:
    inc b
    ld d, b
    nop
    ld [bc], a
    and h
    ld h, b
    inc b
    ld [hl], b
    jr nz, jr_003_6DB8

    and h
    ld h, b

jr_003_6DB8:
    db $FD
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
    jr nz, jr_003_6D85

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
