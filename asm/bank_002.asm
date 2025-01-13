; Disassembly of "cvlegends.gb"
; This file was created with:
; mgbdis v2.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $002", ROMX

    ld e, $00
    ld a, [de]
    rst $00

    ld b, [hl]
    ld b, b
    ld b, [hl]
    ld b, b
    ld b, [hl]
    ld b, b
    ld b, [hl]
    ld b, b
    ld b, [hl]
    ld b, b
    ld b, [hl]
    ld b, b
    ld b, [hl]
    ld b, b

    db $F5, $40, $08, $42, $66, $42, $E6, $42, $5C, $43, $C9, $43, $F6, $43, $DE, $44
    db $3B, $46, $08, $48, $5B, $49, $95, $4A, $42, $4D, $17, $4E

    ld b, [hl]
    ld b, b

    db $DC, $4E, $CB, $50, $11, $54, $24, $58, $87, $5A, $E1, $5D, $F3, $5F

    sub l
    ld l, c

    db $FD, $63, $A9, $65, $7A, $6C

    ret


Call_002_4047:
    ld a, $00
    call Call_000_0875
    ld a, $1F
    call Call_000_0875
    call Call_000_21BB
    ld hl, $C500
    set 6, [hl]
    ld hl, $C50E
    set 0, [hl]
    ld a, $01
    ld [$C752], a
    ld a, $05
    ld e, $14
    ld [de], a
    ld hl, $F7EF
    jp Jump_002_40CD


Call_002_406E:
Jump_002_406E:
    ld e, $14
    ld a, [de]
    cp $01
    call nz, Call_000_2133
    push de
    ld de, $CE00
    ld hl, $27DF
    call Call_000_2F9F
    ld e, $10
    ld a, [de]
    cp $FF
    jr z, jr_002_408A

    pop de
    scf
    ret


jr_002_408A:
    pop de
    ld e, $14
    ld a, [de]
    push de
    ld hl, $40C1
    call $DDD6
    pop de
    call Call_002_40CD
    call Call_000_21F1
    jr z, jr_002_40AB

    ld e, $14
    ld a, [de]
    cp $01
    jr nz, jr_002_40A9

    xor a
    ld e, $0E
    ld [de], a

jr_002_40A9:
    scf
    ret


jr_002_40AB:
    call Call_000_2168
    ld hl, $C500
    res 6, [hl]
    ld a, $01
    ld [$C737], a
    call Call_000_262C
    call Call_000_2699
    scf
    ccf
    ret


    nop
    nop

    db $00, $00, $10, $F4, $F7, $04, $00, $FC, $10, $08

Call_002_40CD:
Jump_002_40CD:
    ld e, $0C
    ld a, [de]
    ld b, a
    ld e, $07
    ld a, [de]
    ld c, a
    push de
    ld de, $CE00
    push bc
    call Call_000_2183
    pop bc
    ld a, b
    add h
    ld e, $0C
    ld [de], a
    ld a, c
    add l
    ld e, $07
    ld [de], a
    ld a, $11
    ld e, $0E
    ld [de], a
    ld bc, $27DF
    call Call_000_2F92
    pop de
    ret


    ld e, $01
    ld a, [de]
    cp $03
    jr z, jr_002_4106

    call Call_000_220F
    jp nz, Jump_000_2515

    call Call_000_2688
    ret nz

jr_002_4106:
    ld e, $01
    ld a, [de]
    rst $00

    db $12, $41, $34, $41, $61, $41, $76, $41

    ld e, $0C
    ld a, [de]
    cp $A0
    ret nc

    ld hl, $C50C
    cp [hl]
    jr nc, jr_002_4124

    add $20
    cp [hl]
    ret c

    jr jr_002_4128

jr_002_4124:
    sub $20
    cp [hl]
    ret nc

jr_002_4128:
    ld e, $07
    ld a, [de]
    cp $80
    ret nc

    call Call_002_419F
    jp Jump_000_2089


    ld hl, $27EA
    call Call_000_2F9F
    call Call_000_21F1
    ret nz

    call Call_002_41E1
    ld e, $1B
    ld a, [de]
    cp $02
    ret nz

    ld e, $07
    ld a, [de]
    cp $78
    ret nc

    call Call_002_41F8
    ret z

    call Call_000_21BB
    ld a, $33
    ld e, $0D
    ld [de], a
    ld a, $80
    ld e, $14
    ld [de], a
    jp Jump_000_2089


    call Call_002_41F8
    jr z, jr_002_416A

    call Call_000_21F1
    ret nz

jr_002_416A:
    xor a
    ld e, $1B
    ld [de], a
    call Call_002_419F
    ld a, $01
    jp Jump_000_2091


    call Call_000_2133
    call Call_000_21F1
    ret nz

    call Call_002_419F
    ld a, $01
    ld e, $11
    ld [de], a
    ld e, $16
    ld [de], a
    ld h, d
    ld l, $0E
    set 4, [hl]
    set 0, [hl]
    call Call_000_2688
    jr z, jr_002_419A

    call Call_000_21D7
    call Call_000_21E4

jr_002_419A:
    ld a, $01
    jp Jump_000_2091


Call_002_419F:
    ld bc, $27EA
    call Call_000_2F92
    call Call_000_219F
    ld a, $18
    ld e, $14
    ld [de], a
    ld h, d
    ld l, $1B
    ld a, [hl]
    inc a
    cp $03
    jr nc, jr_002_41BF

    inc [hl]
    call Call_000_2576
    ld e, $17
    ld a, [de]
    jr jr_002_41C6

jr_002_41BF:
    ld [hl], $00
    ld a, $07
    call Call_000_0551

jr_002_41C6:
    push af
    ld bc, $0080
    cp $04
    call nc, $DCE3
    call Call_000_20E2
    pop af
    inc a
    and $07
    ld bc, $0080
    cp $04
    call c, $DCE3
    jp Jump_000_20E6


Call_002_41E1:
    ld a, $18
    ld e, $14
    ld [de], a
    ld h, d
    ld l, $1B
    ld a, [hl]
    inc a
    cp $03
    jr nc, jr_002_41BF

    inc [hl]
    call Call_000_2576
    ld e, $17
    ld a, [de]
    jr jr_002_41C6

Call_002_41F8:
    ld bc, $00F6
    call Call_000_210B
    call Call_000_28CD
    bit 0, a
    ret z

    cpl
    bit 5, a
    ret


    call Call_000_220F
    jp nz, Jump_002_4257

    call Call_000_2688
    ret nz

    ld e, $01
    ld a, [de]
    rst $00

    db $1C, $42, $27, $42, $3E, $42

    ld a, $18
    ld e, $14
    ld [de], a
    call Call_000_219F
    jp Jump_000_2089


    ld bc, $FFE0
    call Call_000_20E6
    call Call_000_21F1
    ret nz

    ld h, d
    ld l, $0E
    set 6, [hl]
    ld a, $18
    ld e, $14
    ld [de], a
    jp Jump_000_2089


    ld bc, $0020
    call Call_000_20E6
    call Call_000_21F1
    ret nz

    ld h, d
    ld l, $0E
    res 6, [hl]
    ld a, $18
    ld e, $14
    ld [de], a
    ld a, $01
    jp Jump_000_2091


Jump_002_4257:
    ld a, [$C73B]
    bit 1, a
    jp z, Jump_000_2515

    ld hl, $C73C
    inc [hl]
    jp Jump_000_2515


    call Call_000_26BB
    ret z

    call Call_000_2688
    ret nz

    ld e, $01
    ld a, [de]
    rst $00

    db $78, $42, $95, $42, $C1, $42

    ld hl, $27EF
    call Call_000_2F9F
    ld e, $0C
    ld a, [de]
    ld hl, $C50C
    sub [hl]
    add $20
    cp $40
    ret nc

    ld h, d
    ld l, $0E
    res 6, [hl]
    call Call_000_219F
    jp Jump_000_2089


    ld hl, $27EF
    call Call_000_2F9F
    ld bc, $0020
    call Call_000_20A6
    call Call_002_42D6
    jp nz, Jump_002_42AD

    ld bc, $F700
    jp Jump_000_23D9


Jump_002_42AD:
    call Call_000_20F2
    ld bc, $FFA0
    call Call_000_20E2
    ld e, $0E
    ld a, [de]
    bit 5, a
    call nz, Call_000_214A
    jp Jump_000_2089


    ld hl, $27EF
    call Call_000_2F9F
    ld bc, $F700
    call Call_000_23D9
    call Call_002_42D6
    ret nz

    ld a, $01
    jp Jump_000_2091


Call_002_42D6:
    ld bc, $0402
    call Call_000_23FD
    ret nz

    ld bc, $FC02
    call Call_000_23FD
    ret nz

    xor a
    ret


    ld e, $01
    ld a, [de]
    rst $00

    db $F0, $42, $2D, $43, $4E, $43

    call Call_000_26BB
    ret z

    call Call_000_2688
    ret nz

    ld hl, $27F4
    call Call_000_2F9F
    ld bc, $1808
    ld a, [$C507]
    ld [$C7D0], a
    ld a, [$C50C]
    ld [$C7D2], a
    ld h, d
    ld l, e
    call Call_000_23AB
    call c, Call_000_2565
    ld bc, $040D
    call Call_000_23FD
    jp nz, Jump_000_2444

    ld bc, $FC0D
    call Call_000_23FD
    jp nz, Jump_000_2444

    call Call_000_2444
    jp Jump_000_2089


    call Call_000_26BB
    ret z

    call Call_000_2688
    ret nz

    call Call_000_2458
    jp nz, Jump_002_4344

    ld bc, $0020
    call Call_000_20A6
    jp Jump_000_2444


Jump_002_4344:
    call Call_000_20F2
    call Call_000_2444
    xor a
    jp Jump_000_2091


    call Call_000_2133
    call Call_000_21F1
    ret nz

    call Call_000_219F
    xor a
    jp Jump_000_2091


    call Call_000_26BB
    ret z

    call Call_000_2688
    ret nz

    ld e, $01
    ld a, [de]
    rst $00

    db $70, $43, $80, $43, $9C, $43, $AC, $43

    ld a, $3C
    ld e, $0D
    ld [de], a
    ld a, $10
    ld e, $14
    ld [de], a
    call Call_000_2444
    jp Jump_000_2089


    call Call_000_2458
    jp nz, Jump_002_438F

    ld bc, $0020
    call Call_000_20A6
    jp Jump_000_2444


Jump_002_438F:
    call Call_000_20F2
    call Call_000_2444
    call Call_000_21F1
    ret nz

    jp Jump_000_2089


    ld a, $3D
    ld e, $0D
    ld [de], a
    ld a, $10
    ld e, $14
    ld [de], a
    call Call_000_2444
    jp Jump_000_2089


    call Call_000_2458
    jp nz, Jump_002_43BB

    ld bc, $0020
    call Call_000_20A6
    jp Jump_000_2444


Jump_002_43BB:
    call Call_000_20F2
    call Call_000_2444
    call Call_000_21F1
    ret nz

    xor a
    jp Jump_000_2091


    call Call_000_220F
    jp nz, Jump_000_2515

    call Call_000_2688
    ret nz

    ld hl, $2802
    call Call_000_2F9F
    ld h, d
    ld l, $1B
    inc [hl]
    ld a, [hl]
    cp $30
    ret nz

    ld [hl], $00
    call Call_000_2565
    ld bc, $FF60
    ld e, $07
    ld a, [de]
    ld hl, $C507
    cp [hl]
    call c, $DCE3
    jp Jump_000_20E6


    call Call_000_26BB
    ret z

    call Call_000_2688
    ret nz

    ld bc, $0A0C
    ld a, [$C507]
    ld [$C7D0], a
    ld a, [$C50C]
    ld [$C7D2], a
    ld h, d
    ld l, e
    call Call_000_23AB
    jp c, Jump_000_21BB

    ld e, $08
    ld a, [de]
    bit 0, a
    jr nz, jr_002_442B

    ld e, $03
    ld a, [de]
    bit 0, a
    jr nz, jr_002_442B

    ld bc, $FF60
    call Call_000_20E2
    jr jr_002_443F

jr_002_442B:
    ld hl, $2807
    call Call_000_2F9F
    ld bc, $FFF8
    ld e, $0E
    ld a, [de]
    bit 5, a
    call nz, $DCE3
    call Call_000_20A2

jr_002_443F:
    call Call_000_2565
    ld e, $17
    ld a, [de]
    rst $00

    db $56, $44, $7E, $44, $8F, $44, $9D, $44, $56, $44, $AE, $44, $BF, $44, $CD, $44

    call Call_000_21C7
    ld e, $0E
    ld a, [de]
    bit 5, a
    jr nz, jr_002_446F

    ld e, $0C
    ld a, [de]
    ld hl, $C50C
    sub [hl]
    bit 7, a
    jp z, Jump_000_21CF

    jp Jump_000_21B3


jr_002_446F:
    ld e, $0C
    ld a, [de]
    ld hl, $C50C
    sub [hl]
    bit 7, a
    jp nz, Jump_000_21CF

    jp Jump_000_21B3


    ld a, [$C50E]
    bit 5, a
    jp nz, Jump_000_21BB

    ld bc, $FF00
    call Call_000_20E6
    jp Jump_000_219F


    ld a, [$C50E]
    bit 5, a
    jp nz, Jump_000_21BB

    call Call_000_21AB
    jp Jump_000_21CF


    ld a, [$C50E]
    bit 5, a
    jp nz, Jump_000_21BB

    ld bc, $0100
    call Call_000_20E6
    jp Jump_000_219F


    ld a, [$C50E]
    bit 5, a
    jp z, Jump_000_21BB

    ld bc, $0100
    call Call_000_20E6
    jp Jump_000_219F


    ld a, [$C50E]
    bit 5, a
    jp z, Jump_000_21BB

    call Call_000_21AB
    jp Jump_000_21CF


    ld a, [$C50E]
    bit 5, a
    jp z, Jump_000_21BB

    ld bc, $FF00
    call Call_000_20E6
    jp Jump_000_219F


    call Call_000_26BB
    ret z

    call Call_000_2688
    ret nz

    ld e, $01
    ld a, [de]
    rst $00

    db $F2, $44, $F9, $44, $50, $45, $80, $45

    call Call_002_4621
    ret nz

    jp Jump_000_2089


    call Call_002_462F
    ld a, [$C550]
    and $3F
    ret nz

    call Call_000_21F1
    ret nz

    ld h, d
    ld l, $0E
    set 4, [hl]
    xor a
    ld [$C7E1], a
    call Call_000_25AC
    res 7, a
    cp $04
    jp nc, Jump_002_451E

    ld a, $01
    ld [$C7E1], a

Jump_002_451E:
    ld a, [$C7E1]
    ld e, $1C
    ld [de], a
    ld e, $0C
    ld a, [de]
    ld b, a
    ld e, $07
    ld a, [de]
    ld c, a
    ld h, d
    ld l, $00
    inc h
    ld a, [hl]
    or a
    ret nz

    push de
    ld d, h
    ld e, l
    xor a
    call Call_002_4581
    ld a, $20
    ld e, $14
    ld [de], a
    ld a, $03
    ld e, $01
    ld [de], a
    call Call_000_21AB
    pop de
    ld a, $20
    ld e, $14
    ld [de], a
    jp Jump_000_2089


    call Call_000_21F1
    ret nz

    xor a
    ld [$C7E1], a
    ld e, $1C
    ld a, [de]
    ld [$C7E1], a
    ld e, $0C
    ld a, [de]
    ld b, a
    ld e, $07
    ld a, [de]
    ld c, a
    push de
    inc d
    inc d
    ld a, $01
    call Call_002_45F0
    ld a, $03
    ld e, $01
    ld [de], a
    call Call_000_21AB
    pop de
    ld a, $08
    ld e, $14
    ld [de], a
    xor a
    jp Jump_000_2091


    ret


Call_002_4581:
    ld [$C7E0], a
    ld a, [$C7E1]
    or a
    jp nz, Jump_002_45AF

    ld a, b
    sub $08
    ld e, $0C
    ld [de], a
    ld b, $00
    ld a, [$C7E0]
    or a
    jr nz, jr_002_45A5

    ld b, $0A
    ld a, $02
    call Call_000_0551
    or a
    jr nz, jr_002_45A5

    ld b, $F9

jr_002_45A5:
    ld [$C7E2], a
    ld a, b
    add c
    ld e, $07
    ld [de], a
    jr jr_002_45C7

Jump_002_45AF:
    ld a, $08
    add b
    ld e, $0C
    ld [de], a
    ld a, [$C7E0]
    or a
    jr nz, jr_002_45C3

    ld a, c
    add $04
    ld e, $07
    ld [de], a
    jr jr_002_45C7

jr_002_45C3:
    ld a, c
    ld e, $07
    ld [de], a

Jump_002_45C7:
jr_002_45C7:
    ld a, $0E
    ld e, $00
    ld [de], a
    ld a, $1C
    ld e, $0D
    ld [de], a
    ld bc, $00A0
    call Call_000_20E2
    ld a, $01
    call Call_000_2190
    ld bc, $00A0
    call Call_000_20E2
    ld a, [$C7E1]
    or a
    ret nz

    call Call_000_214A
    ld h, d
    ld l, $0E
    set 5, [hl]
    ret


Call_002_45F0:
    ld [$C7E0], a
    ld a, [$C7E1]
    or a
    jp nz, Jump_002_4612

    ld a, b
    sub $08
    ld e, $0C
    ld [de], a
    ld b, $0A
    ld a, [$C7E2]
    or a
    jr nz, jr_002_460A

    ld b, $F9

jr_002_460A:
    ld a, b
    add c
    ld e, $07
    ld [de], a
    jp Jump_002_45C7


Jump_002_4612:
    ld a, $08
    add b
    ld e, $0C
    ld [de], a
    ld a, c
    add $04
    ld e, $07
    ld [de], a
    jp Jump_002_45C7


Call_002_4621:
    ld h, d
    ld b, $02

jr_002_4624:
    inc h
    ld l, $00
    ld a, [hl]
    or a
    ret nz

    dec b
    jr nz, jr_002_4624

    xor a
    ret


Call_002_462F:
    ld e, $14
    ld a, [de]
    cp $02
    ret nc

    ld h, d
    ld l, $0E
    res 4, [hl]
    ret


    call Call_000_26BB
    ret z

    call Call_000_2688
    ret nz

    ld e, $01
    ld a, [de]
    rst $00

    db $4D, $46, $A3, $46, $C7, $46

    ld hl, $280C
    call Call_000_2F9F
    call Call_000_2576
    ld bc, $1808
    ld a, [$C507]
    ld [$C7D0], a
    ld a, [$C50C]
    ld [$C7D2], a
    ld h, d
    ld l, e
    call Call_000_23AB
    jp c, Jump_000_2089

    ld bc, $000D
    call Call_000_23FD
    ld e, $0A
    ld a, [de]
    bit 7, a
    jr nz, jr_002_4689

    ld bc, $070F
    call Call_000_2425
    jr z, jr_002_469A

    call Call_002_4758
    jr nz, jr_002_469A

    jr jr_002_4696

jr_002_4689:
    ld bc, $F70F
    call Call_000_2425
    jr z, jr_002_469A

    call Call_002_473D
    jr nz, jr_002_469A

jr_002_4696:
    call Call_000_21F1
    ret nz

jr_002_469A:
    call Call_000_214A
    ld a, $18
    ld e, $14
    ld [de], a
    ret


    ld a, $48
    ld e, $0D
    ld [de], a
    ld bc, $FFA0
    call Call_000_20E2
    ld e, $0E
    ld a, [de]
    bit 5, a
    call nz, Call_000_214A
    ld bc, $FC80
    call Call_000_20E6
    call Call_000_21AB
    ld h, d
    ld l, $11
    set 4, [hl]
    jp Jump_000_2089


    call Call_000_21AB
    ld e, $0A
    ld a, [de]
    bit 7, a
    jr nz, jr_002_46D9

    call Call_002_4758
    call nz, Call_000_21C7
    jr jr_002_46DF

jr_002_46D9:
    call Call_002_473D
    call nz, Call_000_21C7

jr_002_46DF:
    ld e, $05
    ld a, [de]
    bit 7, a
    jr nz, jr_002_46FB

    ld e, $07
    ld a, [de]
    cp $98
    jr c, jr_002_46F6

    ld e, $07
    ld a, [de]
    cp $F8
    jr nc, jr_002_46F6

    jr jr_002_46FB

jr_002_46F6:
    call Call_002_4775
    jr nz, jr_002_4701

jr_002_46FB:
    ld bc, $0025
    jp Jump_000_20A6


jr_002_4701:
    push bc
    call Call_002_4797
    pop bc
    jr nz, jr_002_46FB

    ld a, c
    cpl
    inc a
    ld c, a
    ld b, $00
    call Call_000_2125
    call Call_000_20F2
    ld bc, $280C
    call Call_000_2F92
    call Call_000_2576
    ld bc, $FF00
    call Call_000_20E2
    ld e, $0E
    ld a, [de]
    bit 5, a
    call z, Call_000_214A
    ld a, $18
    ld e, $14
    ld [de], a
    call Call_000_21AB
    ld h, d
    ld l, $11
    res 4, [hl]
    ld a, $01
    jp Jump_000_2091


Call_002_473D:
    ld bc, $F90C
    call Call_000_23F4
    ret nz

    ld bc, $F904
    call Call_000_23F4
    ret nz

    ld e, $11
    ld a, [de]
    bit 4, a
    jr nz, jr_002_4773

    ld bc, $F9F4
    jp Jump_000_23F4


Call_002_4758:
    ld bc, $080C
    call Call_000_23F4
    ret nz

    ld bc, $0804
    call Call_000_23F4
    ret nz

    ld e, $11
    ld a, [de]
    bit 4, a
    jr nz, jr_002_4773

    ld bc, $08F4
    jp Jump_000_23F4


jr_002_4773:
    xor a
    ret


Call_002_4775:
    ld e, $0E
    ld a, [de]
    bit 5, a
    jr nz, jr_002_4783

    ld bc, $050D
    call Call_000_2425
    ret nz

jr_002_4783:
    ld bc, $000D
    call Call_000_2425
    ret nz

    ld e, $0E
    ld a, [de]
    bit 5, a
    ret z

    ld bc, $FA0D
    call Call_000_2425
    ret


Call_002_4797:
    ld e, $07
    ld a, [de]
    sub c
    sub $06
    ld [$C7D0], a
    ld a, $03
    ld [$C7D1], a

jr_002_47A5:
    ld e, $0E
    ld a, [de]
    bit 5, a
    jr nz, jr_002_47BC

    ld a, [$C7D0]
    ld c, a
    ld e, $0C
    ld a, [de]
    add $05
    ld b, a
    call Call_000_28CD
    bit 0, a
    ret nz

jr_002_47BC:
    ld a, [$C7D0]
    ld c, a
    ld e, $0C
    ld a, [de]
    ld b, a
    call Call_000_28CD
    bit 0, a
    ret nz

    ld e, $0E
    ld a, [de]
    bit 5, a
    jr z, jr_002_47E1

    ld a, [$C7D0]
    ld c, a
    ld e, $0C
    ld a, [de]
    sub $06
    ld b, a
    call Call_000_28CD
    bit 0, a
    ret nz

jr_002_47E1:
    ld a, [$C7D1]
    dec a
    or a
    ret z

    ld [$C7D1], a
    ld a, [$C7D0]
    add $08
    ld [$C7D0], a
    jr jr_002_47A5

    ld h, d
    ld l, $0C
    ld a, [hl]
    sub b
    ld [hl], a
    jp Jump_000_20EE


    ld h, d
    ld l, $0C
    ld a, $08
    sub b
    add [hl]
    ld [hl], a
    jp Jump_000_20EE


    ld e, $01
    ld a, [de]
    rst $00

    db $10, $48, $FB, $48

    call Call_000_26BB
    ret z

    call Call_000_2688
    ret nz

    ld e, $02
    ld a, [de]
    rst $00

    db $26, $48, $2C, $48, $77, $48, $9A, $48, $E4, $48

    call Call_000_219F
    jp Jump_000_207F


    ld bc, $0010
    call Call_000_23FD
    jp z, Jump_002_486C

    ld hl, $2815
    call Call_000_2F9F
    ld bc, $F810
    ld e, $0E
    ld a, [de]
    bit 5, a
    jr z, jr_002_4848

    ld bc, $0810

jr_002_4848:
    call Call_000_23FD
    jp z, Jump_002_4858

    call Call_002_4947
    jp nz, Jump_002_4858

    call Call_000_21F1
    ret nz

Jump_002_4858:
    ld e, $15
    ld a, [de]
    cp $03
    jp z, Jump_002_4871

    inc a
    ld e, $15
    ld [de], a
    ld a, $80
    ld e, $14
    ld [de], a
    jp Jump_000_26AB


Jump_002_486C:
    ld a, $04
    jp Jump_000_2084


Jump_002_4871:
    call Call_000_26AB
    jp Jump_000_207F


    ld a, $50
    ld e, $0D
    ld [de], a
    ld bc, $FE00
    call Call_000_20E2
    ld e, $0E
    ld a, [de]
    bit 5, a
    call nz, Call_000_214A
    ld a, $18
    ld e, $14
    ld [de], a
    push de
    inc d
    ld a, $4C
    ld e, $0D
    ld [de], a
    pop de
    jp Jump_000_207F


    ld bc, $F810
    ld e, $0E
    ld a, [de]
    bit 5, a
    jr z, jr_002_48A7

    ld bc, $0810

jr_002_48A7:
    call Call_000_23FD
    call z, Call_000_20EE
    call Call_002_4947
    call nz, Call_000_20EE
    call Call_000_21F1
    ret nz

    call Call_000_26AB
    ld bc, $2815
    call Call_000_2F92
    ld bc, $FFC0
    call Call_000_20E2
    ld e, $0E
    ld a, [de]
    bit 5, a
    call nz, Call_000_214A
    ld a, $80
    ld e, $14
    ld [de], a
    xor a
    ld e, $15
    ld [de], a
    push de
    inc d
    ld a, $4B
    ld e, $0D
    ld [de], a
    pop de
    ld a, $01
    jp Jump_000_2084


    ld bc, $0010
    call Call_000_23FD
    jp nz, Jump_002_48F3

    ld bc, $0100
    jp Jump_000_20A6


Jump_002_48F3:
    call Call_000_20F2
    ld a, $01
    jp Jump_000_2084


    call Call_000_220F
    ld h, d
    ld l, $11
    res 7, [hl]
    set 0, [hl]
    push de
    dec d
    ld e, $00
    ld a, [de]
    cp $10
    jr nz, jr_002_4932

    ld e, $0C
    ld a, [de]
    ld b, a
    ld e, $07
    ld a, [de]
    ld c, a
    ld e, $0E
    ld a, [de]
    ld [$C7D0], a
    ld e, $11
    ld a, [de]
    ld [$C7D1], a
    pop de
    ld a, b
    ld e, $0C
    ld [de], a
    ld a, c
    ld e, $07
    ld [de], a
    ld a, [$C7D0]
    ld e, $0E
    ld [de], a
    ret


jr_002_4932:
    pop de
    jp Jump_000_2183


Call_002_4936:
Jump_002_4936:
    call Call_000_2116
    call Call_000_28CD
    bit 0, a
    ret z

    ld e, $0C
    ld a, [de]
    add b
    ld [de], a
    xor a
    inc a
    ret


Call_002_4947:
    ld bc, $F7FC
    call Call_002_4936
    ret nz

    ld bc, $F704
    call Call_002_4936
    ret nz

    ld bc, $F70C
    jp Jump_002_4936


    call Call_000_26BB
    jp z, Jump_002_4A80

    call Call_000_2688
    ret nz

    ld e, $01
    ld a, [de]
    rst $00

    db $73, $49, $D1, $49, $DE, $49, $38, $4A, $46, $4A

    call Call_000_2565
    ld e, $0E
    ld a, [de]
    ld e, $1C
    ld [de], a
    ld hl, $281E
    call Call_000_2F9F
    ld e, $07
    ld a, [de]
    ld b, a
    ld a, [$C507]
    sub b
    add $06
    srl a
    cp $06
    jp c, Jump_002_49B3

    ld e, $07
    ld a, [de]
    ld b, a
    ld a, [$C507]
    sub b
    bit 7, a
    jr z, jr_002_49A9

jr_002_499F:
    call Call_002_4A66
    ret nz

    ld bc, $FF60
    jp Jump_000_20E6


jr_002_49A9:
    call Call_002_4A47
    ret nz

    ld bc, $00A0
    jp Jump_000_20E6


Jump_002_49B3:
    ld h, d
    inc h
    ld l, $00
    ld a, [hl]
    or a
    jr nz, jr_002_49C1

    call Call_000_20F2
    jp Jump_000_2089


jr_002_49C1:
    ld e, $05
    ld a, [de]
    ld b, a
    ld e, $04
    ld a, [de]
    or b
    ret z

    ld a, b
    bit 7, a
    jr z, jr_002_49A9

    jr jr_002_499F

    ld a, $59
    ld e, $0D
    ld [de], a
    ld a, $18
    ld e, $14
    ld [de], a
    jp Jump_000_2089


    call Call_000_21F1
    ret nz

    ld e, $0C
    ld a, [de]
    ld b, a
    ld e, $07
    ld a, [de]
    ld c, a
    ld e, $0E
    ld a, [de]
    ld [$C7D0], a
    push de
    inc d
    ld a, [$C7D0]
    bit 5, a
    jr nz, jr_002_49FE

    ld a, b
    sub $12
    jr jr_002_4A01

jr_002_49FE:
    ld a, $12
    add b

jr_002_4A01:
    ld e, $0C
    ld [de], a
    ld a, c
    sub $0B
    ld e, $07
    ld [de], a
    ld a, $11
    ld e, $00
    ld [de], a
    ld a, $5A
    ld e, $0D
    ld [de], a
    ld bc, $FF60
    call Call_000_20E2
    ld a, $04
    ld e, $01
    ld [de], a
    ld a, [$C7D0]
    bit 5, a
    call nz, Call_000_214A
    ld a, $01
    call Call_000_2190
    call Call_000_219F
    pop de
    ld a, $18
    ld e, $14
    ld [de], a
    jp Jump_000_2089


    call Call_000_21F1
    ret nz

    ld bc, $281E
    call Call_000_2F92
    xor a
    jp Jump_000_2091


    ret


Call_002_4A47:
    ld e, $07
    ld a, [de]
    ld c, a
    ld e, $0C
    ld a, [de]
    ld b, a
    ld e, $1B
    ld a, [de]
    or a
    jr nz, jr_002_4A60

    call Call_000_28CD
    bit 3, a
    ret z

    ld a, $01
    ld e, $1B
    ld [de], a

jr_002_4A60:
    call Call_000_20F2
    xor a
    inc a
    ret


Call_002_4A66:
    xor a
    ld e, $1B
    ld [de], a
    ld e, $0C
    ld a, [de]
    ld b, a
    ld e, $07
    ld a, [de]
    sub $12
    ld c, a
    call Call_000_28CD
    bit 0, a
    ret z

    call Call_000_20F2
    xor a
    inc a
    ret


Jump_002_4A80:
    ld e, $1C
    ld a, [de]
    bit 5, a
    jr nz, jr_002_4A8E

    ld e, $0C
    ld a, [de]
    sub $04
    ld [de], a
    ret


jr_002_4A8E:
    ld e, $0C
    ld a, [de]
    add $04
    ld [de], a
    ret


    ld e, $01
    ld a, [de]
    rst $00

    db $A1, $4A, $CE, $4A, $18, $4D, $38, $4D

    call Call_000_26BB
    ret z

    call Call_000_2688
    ret nz

    ld hl, $2827
    call Call_000_2F9F
    push de
    call Call_002_4AB5
    pop de
    ret


Call_002_4AB5:
    call Call_000_25AC
    cp $7F
    ret z

    res 7, a
    rst $00

    db $50, $4B, $EF, $4B, $1D, $4B, $68, $4C, $82, $4B, $2E, $4C, $EA, $4A, $B5, $4B

    call Call_000_26BB
    ret z

    call Call_000_2688
    ret nz

    ld e, $02
    ld a, [de]
    rst $00

    db $7E, $4B, $27, $4C, $4C, $4B, $9B, $4C, $B1, $4B, $61, $4C, $19, $4B, $E8, $4B

    push de
    call Call_002_4CA2
    ld a, $40
    call Call_002_4CAB
    jp z, Jump_002_4D16

    ld a, b
    sub $08
    ld b, a
    call Call_000_2098
    ld bc, $4B0E
    call Call_002_4CDA
    ld a, $06
    ld e, $02
    ld [de], a
    pop de
    ld a, $02
    jp Jump_000_2091


    db $00, $00, $72, $31, $01, $00, $00, $80, $FF, $01, $01

    call Call_002_4CF2
    ret


    push de
    call Call_002_4CA2
    ld a, $04
    call Call_002_4CAB
    jp z, Jump_002_4D16

    ld a, $08
    add b
    ld b, a
    call Call_000_2098
    ld bc, $4B41
    call Call_002_4CDA
    ld a, $02
    ld e, $02
    ld [de], a
    pop de
    ld a, $02
    jp Jump_000_2091


    db $00, $00, $72, $11, $01, $00, $00, $80, $00, $01, $01

    call Call_002_4CF2
    ret


    push de
    call Call_002_4CA2
    ld a, $01
    call Call_002_4CAB
    jp z, Jump_002_4D16

    ld a, c
    sub $08
    ld c, a
    call Call_000_2098
    ld bc, $4B73
    call Call_002_4CDA
    xor a
    ld e, $02
    ld [de], a
    pop de
    ld a, $02
    jp Jump_000_2091


    db $00, $00, $74, $51, $01, $80, $FF, $00, $00, $01, $01

    call Call_002_4D04
    ret


    push de
    call Call_002_4CA2
    ld a, $10
    call Call_002_4CAB
    jp z, Jump_002_4D16

    ld a, $08
    add c
    ld c, a
    call Call_000_2098
    ld bc, $4BA6
    call Call_002_4CDA
    ld a, $04
    ld e, $02
    ld [de], a
    pop de
    ld a, $02
    jp Jump_000_2091


    db $00, $00, $74, $11, $01, $80, $00, $00, $00, $01, $01

    call Call_002_4D04
    ret


    push de
    call Call_002_4CA2
    ld a, $80
    call Call_002_4CAB
    jp z, Jump_002_4D16

    ld a, b
    sub $08
    ld b, a
    ld a, c
    sub $08
    ld c, a
    call Call_000_2098
    ld bc, $4BDD
    call Call_002_4CDA
    ld a, $07
    ld e, $02
    ld [de], a
    pop de
    ld a, $02
    jp Jump_000_2091


    db $00, $00, $73, $71, $01, $80, $FF, $80, $FF, $01, $01

    call Call_002_4D04
    call Call_002_4CF2
    ret


    push de
    call Call_002_4CA2
    ld a, $02
    call Call_002_4CAB
    jp z, Jump_002_4D16

    ld a, $08
    add b
    ld b, a
    ld a, c
    sub $08
    ld c, a
    call Call_000_2098
    ld bc, $4C1C
    call Call_002_4CDA
    ld a, $01
    ld e, $02
    ld [de], a
    ld a, $73
    ld e, $0D
    ld [de], a
    pop de
    ld a, $02
    jp Jump_000_2091


    db $00, $00, $73, $51, $01, $80, $FF, $80, $00, $01, $01

    call Call_002_4D04
    call Call_002_4CF2
    ret


    push de
    call Call_002_4CA2
    ld a, $20
    call Call_002_4CAB
    jp z, Jump_002_4D16

    ld a, b
    sub $08
    ld b, a
    ld a, $08
    add c
    ld c, a
    call Call_000_2098
    ld bc, $4C56
    call Call_002_4CDA
    ld a, $05
    ld e, $02
    ld [de], a
    pop de
    ld a, $02
    jp Jump_000_2091


    db $00, $00, $73, $31, $01, $80, $00, $80, $FF, $01, $01

    call Call_002_4D04
    call Call_002_4CF2
    ret


    push de
    call Call_002_4CA2
    ld a, $08
    call Call_002_4CAB
    jp z, Jump_002_4D16

    ld a, $08
    add b
    ld b, a
    ld a, $08
    add c
    ld c, a
    call Call_000_2098
    ld bc, $4C90
    call Call_002_4CDA
    ld a, $03
    ld e, $02
    ld [de], a
    pop de
    ld a, $02
    jp Jump_000_2091


    db $00, $00, $73, $11, $01, $80, $00, $80, $00, $01, $01

    call Call_002_4D04
    call Call_002_4CF2
    ret


Call_002_4CA2:
    ld e, $0C
    ld a, [de]
    ld b, a
    ld e, $07
    ld a, [de]
    ld c, a
    ret


Call_002_4CAB:
    ld [$C7D0], a
    inc d
    ld e, $00
    ld a, [de]
    or a
    jr z, jr_002_4CBC

    inc d
    ld a, [de]
    or a
    jr z, jr_002_4CCB

    xor a
    ret


jr_002_4CBC:
    inc d
    ld e, $1B
    ld a, [de]
    ld h, a
    ld a, [$C7D0]
    cp h
    ret z

    dec d
    ld [de], a
    xor a
    inc a
    ret


jr_002_4CCB:
    dec d
    ld e, $1B
    ld a, [de]
    ld h, a
    ld a, [$C7D0]
    cp h
    ret z

    inc d
    ld [de], a
    xor a
    inc a
    ret


Call_002_4CDA:
    call Call_000_2650
    ld a, $12
    ld e, $00
    ld [de], a
    ld a, $01
    ld e, $13
    ld [de], a
    ld a, $03
    ld e, $01
    ld [de], a
    ld a, $30
    ld e, $14
    ld [de], a
    ret


Call_002_4CF2:
    ld h, d
    ld l, $09
    ld a, [hl+]
    ld b, [hl]
    inc hl
    add [hl]
    ld [hl+], a
    ld a, $00
    adc $00
    ld c, a
    ld a, [hl]
    add b
    add c
    ld [hl], a
    ret


Call_002_4D04:
    ld h, d
    ld l, $04
    ld a, [hl+]
    ld b, [hl]
    inc hl
    add [hl]
    ld [hl+], a
    ld a, $00
    adc $00
    ld c, a
    ld a, [hl]
    add b
    add c
    ld [hl], a
    ret


Jump_002_4D16:
    pop de
    ret


    ld a, $71
    ld e, $0D
    ld [de], a
    call Call_000_26BB
    ret z

    call Call_000_2688
    ret nz

    call Call_000_21F1
    ret nz

    ld a, $30
    ld e, $14
    ld [de], a
    ld bc, $2827
    call Call_000_2F92
    xor a
    jp Jump_000_2091


    call Call_000_21F1
    ret nz

    ld a, $01
    ld e, $01
    ld [de], a
    ret


    call Call_000_26BB
    ret z

    call Call_000_2688
    ret nz

    ld e, $01
    ld a, [de]
    rst $00

    db $5A, $4D, $83, $4D, $8C, $4D, $A5, $4D, $BB, $4D, $E6, $4D

    ld hl, $282C
    call Call_000_2F9F
    ld bc, $F70C
    call Call_000_23D9
    call Call_002_4E09
    call z, Call_000_26AB
    ld e, $0C
    ld a, [de]
    ld hl, $C50C
    sub [hl]
    add $14
    cp $28
    ret nc

    call Call_000_21BB
    ld a, $01
    ld e, $11
    ld [de], a
    jp Jump_000_2089


    ld bc, $2831
    call Call_000_2F92
    jp Jump_000_2089


    ld hl, $2831
    call Call_000_2F9F
    ld e, $10
    ld a, [de]
    cp $FF
    ret nz

    ld a, $03
    ld e, $14
    ld [de], a
    ld a, $40
    ld e, $15
    ld [de], a
    jp Jump_000_2089


    call Call_000_21F5
    ret nz

    ld a, $40
    ld e, $15
    ld [de], a
    call Call_000_21F1
    ret nz

    ld bc, $283A
    call Call_000_2F92
    jp Jump_000_2089


    ld hl, $283A
    call Call_000_2F9F
    ld e, $10
    ld a, [de]
    cp $FF
    ret nz

    ld bc, $282C
    call Call_000_2F92
    xor a
    ld e, $11
    ld [de], a
    ld h, d
    ld l, $0E
    set 0, [hl]
    ld a, $40
    ld e, $14
    ld [de], a
    ld a, $03
    ld e, $15
    ld [de], a
    call Call_000_219F
    jp Jump_000_2089


    ld hl, $282C
    call Call_000_2F9F
    ld bc, $F70C
    call Call_000_23D9
    call Call_002_4E09
    call z, Call_000_26AB
    call Call_000_21F1
    ret nz

    ld a, $40
    ld e, $14
    ld [de], a
    call Call_000_21F5
    ret nz

    xor a
    jp Jump_000_2091


Call_002_4E09:
    ld bc, $0910
    call Call_000_23FD
    ret z

    ld bc, $F510
    call Call_000_23FD
    ret


    ld e, $01
    ld a, [de]
    cp $03
    jr z, jr_002_4E26

    call Call_000_26BB
    ret z

    call Call_000_2688
    ret nz

jr_002_4E26:
    ld e, $01
    ld a, [de]
    rst $00

    db $32, $4E, $63, $4E, $76, $4E, $8F, $4E

    ld hl, $2843
    call Call_000_2F9F
    call Call_000_21F1
    jp z, Jump_002_4E4F

    call Call_002_4ECE
    jp nz, Jump_002_4EAD

    call Call_002_4EAD
    call Call_000_21C7
    ld a, $02
    jp Jump_000_2091


Jump_002_4E4F:
    call Call_000_21BB
    call Call_000_26AB
    ld a, $20
    ld e, $14
    ld [de], a
    ld bc, $2843
    call Call_000_2F92
    jp Jump_000_2089


    call Call_000_21F1
    ret nz

    call Call_000_26AB
    call Call_000_219F
    ld a, $40
    ld e, $14
    ld [de], a
    xor a
    jp Jump_000_2091


    call Call_002_4EAD
    call Call_002_4ECE
    jp nz, Jump_002_4E85

    ld bc, $0020
    jp Jump_000_20A6


Jump_002_4E85:
    call Call_000_20F2
    call Call_000_21AB
    xor a
    jp Jump_000_2091


    call Call_000_2133
    call Call_000_21F5
    ret nz

    ld a, $01
    ld e, $11
    ld [de], a
    ld h, d
    ld l, $0E
    set 4, [hl]
    set 0, [hl]
    call Call_000_2688
    call z, Call_000_219F
    ld a, $02
    jp Jump_000_2091


Call_002_4EAD:
Jump_002_4EAD:
    ld e, $0D
    ld a, [de]
    cp $7C
    jr z, jr_002_4EC1

    ld bc, $ECFC
    call Call_000_23D9
    ret nz

    ld bc, $EC04
    jp Jump_000_23D9


jr_002_4EC1:
    ld bc, $F0FC
    call Call_000_23D9
    ret nz

    ld bc, $F004
    jp Jump_000_23D9


Call_002_4ECE:
    ld bc, $0E08
    call Call_000_23FD
    ret nz

    ld bc, $F208
    call Call_000_23FD
    ret


    ld e, $01
    ld a, [de]
    rst $00

    db $E4, $4E, $10, $50

    call Call_000_26BB
    ret z

    call Call_000_2688
    jp nz, Jump_002_50C0

    ld e, $02
    ld a, [de]
    rst $00

    db $02, $4F, $44, $4F, $4A, $4F, $64, $4F, $67, $4F, $8F, $4F, $E7, $4F, $0A, $50

    ld a, $01
    ld e, $1B
    ld [de], a
    ld e, $0E
    ld a, [de]
    bit 5, a
    jr nz, jr_002_4F29

    ld e, $0C
    ld a, [de]
    sub $40
    ld hl, $C50C
    cp [hl]
    ret nc

    ld h, d
    ld l, $0E
    set 0, [hl]
    ld a, $01
    ld e, $11
    ld [de], a
    xor a
    ld e, $18
    ld [de], a
    jp Jump_000_207F


jr_002_4F29:
    ld e, $0C
    ld a, [de]
    add $40
    ld hl, $C50C
    cp [hl]
    ret c

    ld h, d
    ld l, $0E
    set 0, [hl]
    ld a, $01
    ld e, $11
    ld [de], a
    xor a
    ld e, $18
    ld [de], a
    jp Jump_000_207F


    call Call_000_219F
    jp Jump_002_5019


    xor a
    ld e, $1B
    ld [de], a
    ld bc, $FD00
    call Call_000_20E6
    ld a, $95
    ld e, $0D
    ld [de], a
    ld a, $03
    ld e, $14
    ld [de], a
    call Call_000_219F
    jp Jump_000_207F


    jp Jump_002_5019


    call Call_000_21F1
    jr z, jr_002_4F7F

    call Call_000_219F
    ld bc, $FD00
    call Call_000_20E6
    ld a, $95
    ld e, $0D
    ld [de], a
    ld a, $03
    jp Jump_000_2084


jr_002_4F7F:
    ld a, $94
    ld e, $0D
    ld [de], a
    call Call_000_2565
    ld a, $20
    ld e, $14
    ld [de], a
    jp Jump_000_207F


    call Call_000_21F1
    ret nz

    ld e, $0C
    ld a, [de]
    ld b, a
    ld e, $07
    ld a, [de]
    ld c, a
    ld e, $0E
    ld a, [de]
    ld [$C7D0], a
    push de
    ld a, $F0
    ld h, d
    ld l, $0E
    bit 5, [hl]
    call nz, Call_000_0547
    inc d
    add b
    ld b, a
    ld a, c
    sub $0A
    ld c, a
    call Call_000_2098
    ld bc, $4FDC
    call Call_000_2650
    ld a, $16
    ld e, $00
    ld [de], a
    ld a, $01
    ld e, $01
    ld [de], a
    ld a, [$C7D0]
    set 0, a
    ld e, $0E
    ld [de], a
    bit 5, a
    call nz, Call_000_214A
    pop de
    ld a, $20
    ld e, $14
    ld [de], a
    jp Jump_000_207F


    db $00, $01, $97, $11, $01, $00, $00, $80, $FF, $01, $01

    call Call_000_21F1
    ret nz

    ld a, $95
    ld e, $0D
    ld [de], a
    ld bc, $FFB0
    call Call_000_20E2
    ld bc, $FE00
    call Call_000_20E6
    ld e, $0E
    ld a, [de]
    bit 5, a
    call nz, Call_000_214A
    call Call_000_219F
    jp Jump_000_207F


    ld bc, $0025
    jp Jump_000_20A6


    call Call_000_26BB
    ret z

    call Call_000_2688
    ret nz

    ret


Jump_002_5019:
    ld e, $1B
    ld a, [de]
    or a
    jr nz, jr_002_502D

    ld e, $07
    ld a, [de]
    cp $F0
    jr nc, jr_002_5039

    cp $0A
    jr c, jr_002_5039

    call Call_002_5064

jr_002_502D:
    ld e, $05
    ld a, [de]
    bit 7, a
    jr nz, jr_002_5039

    call Call_002_504F
    jr nz, jr_002_503F

jr_002_5039:
    ld bc, $0025
    jp Jump_000_20A6


jr_002_503F:
    call Call_002_5071
    jr nz, jr_002_5039

    ld a, $93
    ld e, $0D
    ld [de], a
    call Call_000_21BB
    jp Jump_000_207F


Call_002_504F:
    ld bc, $0A10
    call Call_000_2425
    ret nz

    ld bc, $0010
    call Call_000_2425
    ret nz

    ld bc, $F610
    call Call_000_2425
    ret


Call_002_5064:
    ld bc, $F402
    call Call_000_23D9
    ret nz

    ld bc, $F40A
    jp Jump_000_23D9


Call_002_5071:
    ld e, $07
    ld a, [de]
    sub c
    sub $06
    ld [$C7D0], a
    ld a, $03
    ld [$C7D1], a

jr_002_507F:
    ld a, [$C7D0]
    ld c, a
    ld e, $0C
    ld a, [de]
    add $05
    ld b, a
    call Call_000_28CD
    bit 0, a
    ret nz

    ld a, [$C7D0]
    ld c, a
    ld e, $0C
    ld a, [de]
    ld b, a
    call Call_000_28CD
    bit 0, a
    ret nz

    ld a, [$C7D0]
    ld c, a
    ld e, $0C
    ld a, [de]
    sub $06
    ld b, a
    call Call_000_28CD
    bit 0, a
    ret nz

    ld a, [$C7D1]
    dec a
    or a
    ret z

    ld [$C7D1], a
    ld a, [$C7D0]
    add $08
    ld [$C7D0], a
    jr jr_002_507F

Jump_002_50C0:
    ld e, $02
    ld a, [de]
    or a
    ret nz

    ld h, d
    ld l, $0E
    res 0, [hl]
    ret


    ld e, $01
    ld a, [de]
    rst $00

    db $DB, $50, $FD, $50, $14, $51, $5B, $51, $96, $51, $CB, $53

    ld a, [$C50C]
    cp $50
    ret c

    ld a, $00
    call Call_000_0875
    ld hl, $C500
    set 6, [hl]
    ld hl, $C50E
    set 0, [hl]
    ld a, $01
    ld [$C752], a
    ld a, $11
    ld e, $0E
    ld [de], a
    jp Jump_000_2089


    call Call_000_219F
    ld hl, $2848
    call Call_002_53FA
    ld e, $07
    ld a, [de]
    cp $28
    ret nz

    ld a, $08
    ld e, $14
    ld [de], a
    jp Jump_000_2089


    ld hl, $2848
    call Call_002_53FA
    ld e, $07
    ld a, [de]
    cp $18
    jr nz, jr_002_5129

    ld bc, $0080
    call Call_000_20E6
    jr jr_002_5135

jr_002_5129:
    ld e, $07
    ld a, [de]
    cp $28
    ret nz

    ld bc, $FF80
    call Call_000_20E6

jr_002_5135:
    call Call_000_21F1
    ret nz

    ld a, $01
    ld e, $1C
    ld [de], a
    ld a, $53
    call Call_000_0875
    ld bc, $FE80
    call Call_000_20E2
    ld bc, $00A0
    call Call_000_20E6
    ld hl, $C500
    res 6, [hl]
    xor a
    ld [$C752], a
    jp Jump_000_2089


    ld e, $0C
    ld a, [de]
    cp $10
    call c, Call_000_21C7
    ld e, $07
    ld a, [de]
    cp $4C
    call nc, Call_000_21CF
    ld e, $08
    ld a, [de]
    or a
    ret nz

    ld e, $03
    ld a, [de]
    or a
    ret nz

    call Call_000_20EE
    call Call_000_20F2
    ld a, $10
    ld e, $0C
    ld [de], a
    ld a, $4C
    ld e, $07
    ld [de], a
    call Call_000_26AB
    ld bc, $2848
    call Call_000_2F92
    ld a, $02
    ld e, $15
    ld [de], a
    jp Jump_000_2089


    call Call_002_53CE
    ret z

    ld e, $02
    ld a, [de]
    rst $00

    db $B2, $51

    db $E4
    ld d, c

    db $39, $52, $8C, $52, $A0, $52, $FE, $52, $3C, $53, $7D, $53

    sbc c
    ld d, e

    db $B3, $53

    ld hl, $2848
    call Call_002_53FA
    ld a, [$C550]
    and $3F
    ret nz

    call Call_000_21F5
    ret nz

    call Call_000_219F
    call Call_000_21CF
    ld bc, $FF60
    call Call_000_20E6
    ld bc, $FE80
    call Call_000_20E2
    ld e, $0E
    ld a, [de]
    bit 5, a
    jp z, Jump_000_207F

    call Call_000_214A
    ld a, $02
    jp Jump_000_2084


    ld hl, $2848
    call Call_002_53FA
    ld e, $0C
    ld a, [de]
    cp $40
    ret nc

    push af
    call Call_000_21B3
    pop af
    cp $10
    jr c, jr_002_5202

    ld e, $07
    ld a, [de]
    cp $28
    call c, Call_002_5210
    ret


jr_002_5202:
    call Call_000_20EE
    ld e, $07
    ld a, [de]
    cp $28
    ret nc

    call Call_000_20F2
    jr jr_002_521C

Call_002_5210:
    call Call_000_20F2
    ld e, $0C
    ld a, [de]
    cp $10
    ret nc

    call Call_000_20EE

jr_002_521C:
    ld a, $10
    ld e, $0C
    ld [de], a
    ld a, $28
    ld e, $07
    ld [de], a
    call Call_000_26AB
    ld bc, $2853
    call Call_000_2F92
    ld a, $03
    ld e, $15
    ld [de], a
    ld a, $03
    jp Jump_000_2084


    ld hl, $2848
    call Call_002_53FA
    ld e, $0C
    ld a, [de]
    cp $50
    ret c

    push af
    call Call_000_21B3
    pop af
    cp $90
    jr nc, jr_002_5257

    ld e, $07
    ld a, [de]
    cp $28
    call c, Call_002_5265
    ret


jr_002_5257:
    call Call_000_20EE
    ld e, $07
    ld a, [de]
    cp $28
    ret nc

    call Call_000_20F2
    jr jr_002_5271

Call_002_5265:
    call Call_000_20F2
    ld e, $0C
    ld a, [de]
    cp $90
    ret c

    call Call_000_20EE

jr_002_5271:
    ld a, $90
    ld e, $0C
    ld [de], a
    ld a, $28
    ld e, $07
    ld [de], a
    call Call_000_26AB
    ld bc, $2853
    call Call_000_2F92
    ld a, $03
    ld e, $15
    ld [de], a
    jp Jump_000_207F


    call Call_000_20EE
    call Call_000_20F2
    ld bc, $2853
    call Call_000_2F92
    ld a, $90
    ld e, $15
    ld [de], a
    jp Jump_000_207F


    ld hl, $2853
    call Call_002_53FA
    ld e, $07
    ld a, [de]
    cp $28
    call z, Call_000_20F2
    call Call_000_21F5
    ret nz

    ld hl, $52EA
    ld e, $0C
    ld a, [de]
    cp $10
    jr z, jr_002_52BF

    ld hl, $52F4

jr_002_52BF:
    ld a, [$C50C]
    srl a
    srl a
    srl a
    srl a
    srl a
    and $07
    add a
    rst $28
    ld a, [hl+]
    ld c, a
    ld a, [hl]
    ld b, a
    call Call_000_20E2
    ld bc, $FD80
    call Call_000_20E6
    ld a, $43
    ld e, $0D
    ld [de], a
    ld a, $03
    ld e, $16
    ld [de], a
    jp Jump_000_207F


    nop
    nop
    or b
    nop
    ld h, b
    ld bc, $0200
    add b
    ld [bc], a
    ld b, b
    db $FD

    db $00, $FE

    and b
    cp $50
    rst $38
    nop
    nop

    ld bc, $001E
    call Call_000_23FD
    jp nz, Jump_002_5322

    ld bc, $F41E
    call Call_000_23FD
    jp nz, Jump_002_5322

    ld bc, $0025
    call Call_000_20A6
    ld e, $05
    ld a, [de]
    bit 7, a
    ret nz

    ld a, $44
    ld e, $0D
    ld [de], a
    ret


Jump_002_5322:
    ld a, $35
    call Call_000_0875
    call Call_000_20F2
    call Call_000_20EE
    ld bc, $FF00
    call Call_000_20E6
    ld bc, $2848
    call Call_000_2F92
    jp Jump_000_207F


    ld a, $02
    ld e, $16
    ld [de], a
    ld hl, $2848
    call Call_002_53FA
    ld e, $07
    ld a, [de]
    cp $28
    ret nc

    ld bc, $0100
    call Call_000_20E6
    call Call_000_21CF
    ld a, $02
    call Call_000_0551
    or a
    jp nz, Jump_002_536D

    ld bc, $FF00
    call Call_000_20E2
    ld h, d
    ld l, $0E
    set 5, [hl]
    jp Jump_000_207F


Jump_002_536D:
    ld bc, $0100
    call Call_000_20E2
    ld h, d
    ld l, $0E
    res 5, [hl]
    ld a, $08
    jp Jump_000_2084


    ld hl, $2848
    call Call_002_53FA
    ld e, $0C
    ld a, [de]
    cp $10
    ret nc

    ld a, $10
    ld e, $0C
    ld [de], a
    call Call_000_20EE
    call Call_000_21B3
    ld a, $09
    jp Jump_000_2084


    ld hl, $2848
    call Call_002_53FA
    ld e, $0C
    ld a, [de]
    cp $90
    ret c

    ld a, $90
    ld e, $0C
    ld [de], a
    call Call_000_20EE
    call Call_000_21B3
    jp Jump_000_207F


    ld hl, $2848
    call Call_002_53FA
    ld e, $07
    ld a, [de]
    cp $4C
    ret c

    call Call_000_20F2
    ld a, $03
    ld e, $15
    ld [de], a
    xor a
    jp Jump_000_2084


    jp Jump_002_406E


Call_002_53CE:
    ld e, $11
    ld a, [de]
    bit 7, a
    jp nz, Jump_000_26E2

    call Call_000_220F
    jr nz, jr_002_53DE

    xor a
    inc a
    ret


jr_002_53DE:
    ld h, d
    ld l, $11
    res 0, [hl]
    call Call_000_24F0
    jr c, jr_002_53F0

    ld a, $20
    ld e, $19
    ld [de], a
    xor a
    inc a
    ret


jr_002_53F0:
    call Call_002_4047
    ld a, $05
    call Call_000_2091
    xor a
    ret


Call_002_53FA:
    call Call_000_2F9F
    ld e, $0F
    ld a, [de]
    cp $01
    ret nz

    ld e, $10
    ld a, [de]
    dec a
    ret nz

    ld a, $1D
    jp Jump_000_0875


    db $02, $01, $00, $01

    ld e, $01
    ld a, [de]
    rst $00

    db $1D, $54, $A7, $57, $B2, $57, $B0, $55

    call Call_002_561D
    ret z

    call Call_002_5696
    ld e, $02
    ld a, [de]
    rst $00

    db $3C, $54, $4F, $54, $75, $54, $D9, $54, $EE, $54, $00, $55, $24, $55, $4F, $55
    db $70, $55, $99, $55

    push de
    ld hl, $9C00
    call Call_002_55D9
    call Call_002_56C7
    ld a, $08
    call Call_000_0629
    pop de
    jp Jump_000_207F


    push de
    call Call_000_063F
    pop de
    ret c

    ld hl, $C500
    res 6, [hl]
    xor a
    ld [$C752], a
    ld a, $53
    call Call_000_0875
    xor a
    ld e, $1B
    ld [de], a
    ld e, $1C
    ld [de], a
    ld a, $50
    ld e, $14
    ld [de], a
    call Call_000_219F
    jp Jump_000_207F


    call Call_000_21F1
    ret nz

    ld a, $53
    ld e, $0D
    ld [de], a
    ld e, $1B
    ld a, [de]
    call Call_002_5782
    inc a
    and $03
    ld [$C7D0], a
    ld e, $1B
    ld [de], a
    ld a, [$C7D0]
    or a
    jp z, Jump_002_54C6

jr_002_5494:
    ld a, [$C7D0]
    ld hl, $540D
    rst $28
    ld a, [hl]
    ld [$C7D0], a
    ld hl, $54D3
    add a
    rst $28
    ld c, [hl]
    inc hl
    ld b, [hl]
    call Call_000_2098
    ld a, [$C7D0]
    call Call_002_56AE
    ld a, $38
    ld e, $14
    ld [de], a
    ld a, [$C7D0]
    ld b, a
    ld e, $1C
    ld a, [de]
    sub b
    ret z

    ld a, $10
    ld e, $14
    ld [de], a
    jp Jump_000_207F


Jump_002_54C6:
    ld a, $02
    call Call_000_0551
    or a
    jr z, jr_002_5494

    ld a, $06
    jp Jump_000_2084


    db $60, $5C, $50, $5C, $40, $5C

    call Call_002_56F5
    ret z

    call Call_000_21F1
    ret nz

    ld a, $54
    ld e, $0D
    ld [de], a
    ld a, $08
    ld e, $14
    ld [de], a
    jp Jump_000_207F


    call Call_000_21F1
    ret nz

    ld e, $0C
    ld a, [de]
    add $04
    ld [de], a
    ld a, $04
    ld e, $14
    ld [de], a
    jp Jump_000_207F


    call Call_000_21F1
    ret nz

    ld e, $0C
    ld a, [de]
    sub $04
    ld [de], a
    ld e, $1B
    ld a, [de]
    ld hl, $540D
    rst $28
    ld a, [hl]
    call Call_002_5704
    ld a, $25
    call Call_000_0875
    ld a, $38
    ld e, $14
    ld [de], a
    ld a, $02
    jp Jump_000_2084


    ld bc, $FF80
    call Call_000_20E6
    ld bc, $5C40
    call Call_000_2098
    ld a, $53
    ld e, $0D
    ld [de], a
    ld a, $30
    ld e, $14
    ld [de], a
    call Call_002_56C7
    ld bc, $0080
    call Call_000_1E69
    call Call_002_5684
    ld hl, $6CCB
    call Call_002_5666
    jp Jump_000_207F


    ld bc, $0080
    call Call_000_1E69
    call Call_002_5684
    call Call_000_21F1
    ret nz

    ld bc, $0180
    call Call_000_20E6
    ld a, $11
    ld e, $14
    ld [de], a
    ld hl, $6CBF
    call Call_002_5666
    jp Jump_000_207F


    ld bc, $FE80
    call Call_000_1E69
    call Call_002_5684
    call Call_000_21F1
    ret nz

    ld a, $28
    call Call_000_0875
    call Call_000_20F2
    xor a
    ldh [$FF86], a
    call Call_000_1E51
    ldh a, [$FF8B]
    add $04
    ldh [$FF8B], a
    ld a, $06
    ld e, $14
    ld [de], a
    jp Jump_000_207F


    call Call_000_21F1
    ret nz

    ldh a, [$FF8B]
    sub $04
    ldh [$FF8B], a
    call Call_002_5792
    ld a, $50
    ld e, $14
    ld [de], a
    ld a, $02
    jp Jump_000_2084


    call Call_002_406E
    ret c

    push de
    ld hl, $C100
    ld bc, $0400
    xor a
    call $DEC9
    pop de
    xor a
    ldh [$FF86], a
    call Call_000_1E51
    call Call_000_1E61
    call Call_002_55F0
    ld hl, $C2E0
    call Call_002_55D9
    ld hl, $99E0
    call Call_002_55D9
    ret


Call_002_55D9:
    ld b, $0A

jr_002_55DB:
    di

jr_002_55DC:
    ldh a, [rSTAT]
    bit 1, a
    jr nz, jr_002_55DC

    ld a, $25
    ld [hl+], a
    ld a, $26
    ld [hl+], a
    nop
    nop
    nop
    ei
    dec b
    jr nz, jr_002_55DB

    ret


Call_002_55F0:
    push de
    ld de, $9800
    ld b, $10

jr_002_55F6:
    push bc
    ld hl, $5609
    ld bc, $0014
    call $DED7
    pop bc
    ld a, $0C
    rst $30
    dec b
    jr nz, jr_002_55F6

    pop de
    ret


    db $00, $00, $00, $00, $00, $00, $62, $61, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $62, $61

Call_002_561D:
    ld e, $11
    ld a, [de]
    bit 7, a
    jp nz, Jump_000_26E2

    call Call_000_220F
    jr nz, jr_002_562D

    xor a
    inc a
    ret


jr_002_562D:
    ld h, d
    ld l, $11
    res 0, [hl]
    call Call_000_24F0
    jr c, jr_002_563F

    ld a, $20
    ld e, $19
    ld [de], a
    xor a
    inc a
    ret


jr_002_563F:
    call Call_002_4047
    call Call_000_1E61
    ld a, $03
    ld e, $01
    ld [de], a
    push de
    ld de, $CE00
    call Call_000_2183
    ld de, $D100
    call Call_000_2183
    ld de, $D200
    call Call_000_2183
    ld de, $D300
    call Call_000_2183
    pop de
    xor a
    ret


Call_002_5666:
    push de
    ld de, $998E
    ld b, $03

jr_002_566C:
    ld c, $04

jr_002_566E:
    di

jr_002_566F:
    ldh a, [rSTAT]
    bit 1, a
    jr nz, jr_002_566F

    ld a, [hl+]
    ld [de], a
    ei
    inc de
    dec c
    jr nz, jr_002_566E

    ld a, $1C
    rst $30
    dec b
    jr nz, jr_002_566C

    pop de
    ret


Call_002_5684:
    ld hl, $C777
    call Call_000_1E7A
    ld a, [$C77B]
    ld hl, $FF86
    ld [hl], a
    xor a
    ld [$C77A], a
    ret


Call_002_5696:
    xor a
    ld [$C75C], a
    ld b, $73
    ld a, [$C507]
    sub b
    add $08
    cp $10
    ret nc

    ld [$C75D], a
    ld hl, $C75C
    set 0, [hl]
    ret


Call_002_56AE:
    rst $00

    db $B5, $56, $BE, $56, $C7, $56

    push de
    ld hl, $6C89
    call Call_002_56D0
    pop de
    ret


    push de
    ld hl, $6C9B
    call Call_002_56D0
    pop de
    ret


Call_002_56C7:
    push de
    ld hl, $6CAD
    call Call_002_56D0
    pop de
    ret


Call_002_56D0:
    ld de, $98EE
    ld b, $06

jr_002_56D5:
    ld c, $03

jr_002_56D7:
    di

jr_002_56D8:
    ldh a, [rSTAT]
    bit 1, a
    jr nz, jr_002_56D8

    ld a, [hl]
    ld [de], a
    ei
    push de
    ld a, $29
    add d
    ld d, a
    ld a, [hl]
    ld [de], a
    pop de
    inc hl
    inc de
    dec c
    jr nz, jr_002_56D7

    ld a, $1D
    rst $30
    dec b
    jr nz, jr_002_56D5

    ret


Call_002_56F5:
    ld e, $1B
    ld a, [de]
    ld hl, $540D
    rst $28
    ld a, [hl]
    ld b, a
    ld e, $1C
    ld a, [de]
    sub b
    ret z

    ret


Call_002_5704:
    rst $00

    db $0B, $57, $1E, $57, $31, $57

    ld e, $0C
    ld a, [de]
    ld b, a
    ld e, $07
    ld a, [de]
    ld c, a
    push de
    ld de, $CE00
    ld a, [de]
    or a
    call z, Call_002_5744
    pop de
    ret


    ld e, $0C
    ld a, [de]
    ld b, a
    ld e, $07
    ld a, [de]
    ld c, a
    push de
    ld de, $CF00
    ld a, [de]
    or a
    call z, Call_002_5744
    pop de
    ret


    ld e, $0C
    ld a, [de]
    ld b, a
    ld e, $07
    ld a, [de]
    ld c, a
    push de
    ld de, $D000
    ld a, [de]
    or a
    call z, Call_002_5744
    pop de
    ret


Call_002_5744:
    ld a, b
    sub $18
    ld b, a
    ld a, $06
    add c
    ld c, a
    call Call_000_2098
    ld e, $00
    ld a, $18
    ld [de], a
    ld a, $01
    ld e, $01
    ld [de], a
    ld e, $11
    ld [de], a
    ld bc, $FEC0
    call Call_000_20E2
    call Call_000_20F2
    ld a, $11
    ld e, $0E
    ld [de], a
    ld a, $55
    ld e, $0D
    ld [de], a
    ld a, $03
    ld e, $16
    ld [de], a
    ld a, $01
    ld e, $18
    ld [de], a
    jp Jump_000_219F


    nop
    cp $80
    cp $00
    rst $38

Call_002_5782:
    or a
    ret z

    cp $02
    ret z

    push af
    ld a, $03
    call Call_000_0551
    ld e, $1C
    ld [de], a
    pop af
    ret


Call_002_5792:
    push de
    ld de, $D100
    ld a, $18
    ld [de], a
    ld a, $02
    ld e, $01
    ld [de], a
    xor a
    ld e, $02
    ld [de], a
    call Call_002_57F1
    pop de
    ret


    call Call_000_220F
    ld h, d
    ld l, $11
    res 7, [hl]
    set 0, [hl]
    ret


    ld e, $02
    ld a, [de]
    rst $00

    db $BA, $57, $D8, $57

    call Call_000_21F1
    ret nz

    push de
    ld de, $D200
    ld a, $18
    ld [de], a
    ld a, $02
    ld e, $01
    ld [de], a
    ld a, $01
    ld e, $02
    ld [de], a
    call Call_002_57F1
    pop de
    ld a, $01
    jp Jump_000_2091


    call Call_000_21F1
    ret nz

    push de
    ld de, $D300
    ld a, $18
    ld [de], a
    ld a, $01
    ld e, $01
    ld [de], a
    call Call_002_57F1
    pop de
    ld a, $01
    jp Jump_000_2091


Call_002_57F1:
    call Call_000_20EE
    ld bc, $0180
    call Call_000_20E6
    ld a, [$C50C]
    sub $08
    ld b, a
    ld c, $00
    call Call_000_2098
    ld a, $11
    ld e, $0E
    ld [de], a
    ld a, $52
    ld e, $0D
    ld [de], a
    ld a, $01
    ld e, $11
    ld [de], a
    ld e, $16
    ld [de], a
    ld a, $01
    ld e, $18
    ld [de], a
    ld a, $20
    ld e, $14
    ld [de], a
    jp Jump_000_219F


    ld e, $01
    ld a, [de]
    rst $00

    db $32, $58, $87, $59, $AC, $59, $BC, $59, $E5, $59

    call Call_000_26BB
    jp z, Jump_002_59EC

    ld e, $02
    ld a, [de]
    rst $00

    db $48, $58, $8D, $58, $A4, $58, $F7, $58, $27, $59, $51, $59

    ld hl, $285E
    call Call_000_2F9F
    call Call_000_21F1
    ret nz

    ld a, $20
    ld e, $14
    ld [de], a
    call Call_000_214A
    call Call_000_21F5
    ret nz

    ld a, [$C507]
    cp $40
    jr c, jr_002_587C

jr_002_5865:
    call Call_000_20EE
    ld bc, $2867
    call Call_000_2F92
    ld bc, $FF00
    call Call_000_20E6
    ld a, $01
    ld e, $1D
    ld [de], a
    jp Jump_000_207F


jr_002_587C:
    ld e, $1D
    ld a, [de]
    or a
    jr nz, jr_002_5865

    ld a, $20
    ld e, $14
    ld [de], a
    ld a, $04
    ld e, $15
    ld [de], a
    ret


    ld hl, $2867
    call Call_002_5A74
    ld e, $07
    ld a, [de]
    cp $20
    ret nc

    call Call_000_20F2
    ld a, $5F
    ld e, $0D
    ld [de], a
    jp Jump_000_207F


    ld e, $0C
    ld a, [de]
    ld [$C7D1], a
    ld e, $07
    ld a, [de]
    ld [$C7D2], a
    ld e, $0E
    ld a, [de]
    ld [$C7D0], a
    push de
    ld de, $CE00
    ld bc, $58D6
    call Call_002_5A39
    ld de, $CF00
    ld bc, $58E1
    call Call_002_5A39
    ld de, $D000
    ld bc, $58EC
    call Call_002_5A39
    pop de
    jp Jump_000_207F


    db $01, $01, $60, $11, $01, $00, $01, $F0, $FF, $01, $01, $01, $01, $60, $11, $01
    db $00, $01, $A0, $FF, $01, $01, $01, $01, $60, $11, $01, $00, $01, $50, $FF, $01
    db $01

    push de
    ld hl, $2867
    call Call_002_5A74
    ld de, $CE00
    ld a, [de]
    or a
    jr nz, jr_002_5925

    ld de, $CF00
    ld a, [de]
    or a
    jr nz, jr_002_5925

    ld de, $D000
    ld a, [de]
    or a
    jr nz, jr_002_5925

    pop de
    ld bc, $FF40
    call Call_000_20E2
    ld e, $0E
    ld a, [de]
    bit 5, a
    call nz, Call_000_214A
    jp Jump_000_207F


jr_002_5925:
    pop de
    ret


    ld hl, $2867
    call Call_002_5A74
    ld e, $0A
    ld a, [de]
    bit 7, a
    jr nz, jr_002_593C

    ld e, $0C
    ld a, [de]
    cp $70
    ret c

    jr jr_002_5942

jr_002_593C:
    ld e, $0C
    ld a, [de]
    cp $18
    ret nc

jr_002_5942:
    call Call_000_26AB
    call Call_000_20EE
    ld bc, $0100
    call Call_000_20E6
    jp Jump_000_207F


    ld hl, $2867
    call Call_002_5A74
    ld e, $07
    ld a, [de]
    cp $5E
    ret c

    ld a, $5E
    ld e, $07
    ld [de], a
    call Call_000_20F2
    ld bc, $FF40
    call Call_000_20E2
    ld e, $0E
    ld a, [de]
    bit 5, a
    call nz, Call_000_214A
    ld a, $20
    ld e, $14
    ld [de], a
    ld a, $04
    ld e, $15
    ld [de], a
    ld bc, $285E
    call Call_000_2F92
    xor a
    jp Jump_000_2084


    call Call_000_20EE
    ld bc, $0080
    call Call_000_20E6
    ld bc, $4800
    call Call_000_2098
    ld a, $67
    ld e, $0D
    ld [de], a
    ld hl, $9809
    call Call_002_5A24
    ld a, h
    ld e, $1B
    ld [de], a
    ld a, l
    ld e, $1C
    ld [de], a
    jp Jump_000_2089


    ld a, $11
    ld e, $0E
    ld [de], a
    call Call_000_219F
    push de
    call Call_000_3618
    pop de
    jp Jump_000_2089


    ld e, $07
    ld a, [de]
    and $0F
    jr nz, jr_002_59D9

    ld e, $1B
    ld a, [de]
    ld h, a
    ld e, $1C
    ld a, [de]
    ld l, a
    ld a, $20
    rst $28
    call Call_002_5A24
    ld a, h
    ld e, $1B
    ld [de], a
    ld a, l
    ld e, $1C
    ld [de], a

jr_002_59D9:
    ld e, $07
    ld a, [de]
    cp $58
    ret c

    ld hl, $9989
    jp Jump_000_2732


    call Call_000_220F
    jp nz, Jump_000_2515

    ret


Jump_002_59EC:
    ld a, $10
    ld e, $0E
    ld [de], a
    push de
    inc d
    call Call_000_2183
    inc d
    call Call_000_2183
    inc d
    call Call_000_2183
    inc d
    ld a, $19
    ld e, $00
    ld [de], a
    ld a, $01
    ld e, $01
    ld [de], a
    ld a, $01
    ld e, $18
    ld [de], a
    call Call_000_21BB
    pop de
    ld a, [$C757]
    bit 0, a
    jr nz, jr_002_5A1E

    ld a, $00
    call Call_000_0875

jr_002_5A1E:
    ld a, $58
    call Call_000_0875
    ret


Call_002_5A24:
    push de
    di

jr_002_5A26:
    ldh a, [rSTAT]
    bit 1, a
    jr nz, jr_002_5A26

    ld [hl], $23
    ld a, h
    add $29
    ld d, a
    ld e, l
    ld a, $23
    ld [de], a
    ei
    pop de
    ret


Call_002_5A39:
    call Call_000_2650
    ld a, [$C7D2]
    add $04
    ld e, $07
    ld [de], a
    ld a, $19
    ld e, $00
    ld [de], a
    ld a, $04
    ld e, $01
    ld [de], a
    ld a, $01
    ld e, $18
    ld [de], a
    ld a, [$C7D0]
    bit 5, a
    call nz, Call_000_26AB
    ld a, [$C7D0]
    bit 5, a
    jr nz, jr_002_5A6B

    ld a, [$C7D1]
    sub $18
    ld e, $0C
    ld [de], a
    ret


jr_002_5A6B:
    ld a, [$C7D1]
    add $18
    ld e, $0C
    ld [de], a
    ret


Call_002_5A74:
    call Call_000_2F9F
    ld e, $0F
    ld a, [de]
    cp $01
    ret nz

    ld e, $10
    ld a, [de]
    dec a
    ret nz

    ld a, $1D
    jp Jump_000_0875


    ld e, $01
    ld a, [de]
    rst $00

    db $99, $5A, $A6, $5A, $CC, $5A, $6E, $40, $73, $5C, $8D, $5C, $A7, $5C

    ld a, $11
    ld e, $0E
    ld [de], a
    ld a, $08
    call Call_000_0629
    jp Jump_000_2089


    push de
    call Call_000_26F9
    pop de
    ret c

    ld a, $00
    call Call_000_0875
    xor a
    ld [$D7DC], a
    ld [$C757], a
    ld a, $53
    call Call_000_0875
    ld a, $01
    ld e, $11
    ld [de], a
    xor a
    ld [$C752], a
    call Call_000_219F
    jp Jump_000_2089


    call Call_002_5D48
    ret z

    ld e, $02
    ld a, [de]
    rst $00

    db $E0, $5A, $23, $5B, $78, $5B, $E9, $5B, $0E, $5C, $31, $5C

    ld e, $07
    ld a, [de]
    sub $48
    jr nc, jr_002_5AFD

    ld e, $0C
    ld a, [de]
    cp $50
    call c, Call_002_5B17
    ld e, $0C
    ld a, [de]
    cp $50
    call nc, Call_002_5B1D
    ld bc, $0010
    jp Jump_000_20A6


jr_002_5AFD:
    ld c, a
    ld e, $07
    ld a, [de]
    sub c
    ld [de], a
    ld a, $20
    ld e, $14
    ld [de], a
    ld bc, $FD80
    call Call_000_20E6
    call Call_000_214A
    call Call_000_21BB
    jp Jump_000_207F


Call_002_5B17:
    ld h, d
    ld l, $0E
    set 5, [hl]
    ret


Call_002_5B1D:
    ld h, d
    ld l, $0E
    res 5, [hl]
    ret


    call Call_000_21F1
    ret nz

    ld a, $04
    call Call_000_0551
    or a
    jr z, jr_002_5B3E

    cp $01
    jr z, jr_002_5B3E

    cp $02
    jr z, jr_002_5B50

jr_002_5B37:
    call Call_000_219F
    xor a
    jp Jump_000_2084


jr_002_5B3E:
    push de
    ld de, $CE00
    ld a, [de]
    pop de
    or a
    jr nz, jr_002_5B37

    ld bc, $286C
    call Call_000_2F92
    jp Jump_000_207F


jr_002_5B50:
    push de
    ld de, $CF00
    ld a, [de]
    pop de
    or a
    jr nz, jr_002_5B64

    ld bc, $286C
    call Call_000_2F92
    ld a, $03
    jp Jump_000_2084


jr_002_5B64:
    push de
    ld de, $D000
    ld a, [de]
    pop de
    or a
    jr nz, jr_002_5B37

    ld bc, $286C
    call Call_000_2F92
    ld a, $04
    jp Jump_000_2084


    ld hl, $286C
    call Call_000_2F9F
    ld e, $10
    ld a, [de]
    cp $FF
    ret nz

    ld e, $0C
    ld a, [de]
    ld [$C7D1], a
    ld e, $07
    ld a, [de]
    ld c, a
    ld e, $0E
    ld a, [de]
    ld [$C7D0], a
    push de
    ld de, $CE00
    ld a, $08
    add c
    ld e, $07
    ld [de], a
    ld a, $1A
    ld e, $00
    ld [de], a
    ld a, $01
    ld e, $18
    ld [de], a
    ld bc, $5BDC
    call Call_000_2640
    ld a, [$C7D0]
    bit 5, a
    jr nz, jr_002_5BC4

    ld a, [$C7D1]
    sub $16
    ld e, $0C
    ld [de], a
    ld a, $04
    ld e, $01
    ld [de], a
    jr jr_002_5BD4

jr_002_5BC4:
    ld a, [$C7D1]
    add $16
    ld e, $0C
    ld [de], a
    call Call_000_26AB
    ld a, $05
    ld e, $01
    ld [de], a

jr_002_5BD4:
    pop de
    call Call_000_219F
    xor a
    jp Jump_000_2084


    db $01, $01, $00, $11, $01, $28, $00, $60, $FD, $03, $01, $73, $28

    ld e, $0C
    ld a, [de]
    ld b, a
    ld e, $07
    ld a, [de]
    ld c, a
    ld e, $0E
    ld a, [de]
    ld [$C7D0], a
    push de
    ld de, $CF00
    call Call_002_5D88
    pop de
    ld a, $10
    ld e, $14
    ld [de], a
    ld a, $01
    ld e, $1B
    ld [de], a
    ld a, $05
    jp Jump_000_2084


    ld e, $0C
    ld a, [de]
    ld b, a
    ld e, $07
    ld a, [de]
    ld c, a
    ld e, $0E
    ld a, [de]
    ld [$C7D0], a
    push de
    ld de, $D000
    call Call_002_5D88
    pop de
    ld a, $10
    ld e, $14
    ld [de], a
    ld a, $02
    ld e, $1B
    ld [de], a
    jp Jump_000_207F


    ld hl, $286C
    call Call_000_2F9F
    ld e, $0F
    ld a, [de]
    cp $01
    call z, Call_002_5C50
    ld e, $10
    ld a, [de]
    cp $FF
    ret nz

    call Call_000_21F1
    ret nz

    call Call_000_219F
    xor a
    jp Jump_000_2084


Call_002_5C50:
    ld e, $1B
    ld a, [de]
    or a
    ret z

    cp $02
    jr z, jr_002_5C66

    push de
    ld de, $CF00
    call Call_000_219F
    pop de
    xor a
    ld e, $1B
    ld [de], a
    ret


jr_002_5C66:
    push de
    ld de, $D000
    call Call_000_219F
    pop de
    xor a
    ld e, $1B
    ld [de], a
    ret


    call Call_000_220F
    jp nz, Jump_000_2515

    ld hl, $2873
    call Call_000_2F9F
    ld e, $0A
    ld a, [de]
    bit 7, a
    call z, Call_002_5B17
    ld bc, $0008
    jp Jump_000_20A2


    call Call_000_220F
    jp nz, Jump_000_2515

    ld hl, $2873
    call Call_000_2F9F
    ld e, $0A
    ld a, [de]
    bit 7, a
    call nz, Call_002_5B1D
    ld bc, $0008
    jp Jump_000_20B3


    call Call_000_220F
    jp nz, Jump_000_2515

    ld hl, $2873
    call Call_000_2F9F
    ld e, $1B
    ld a, [de]
    or a
    ret z

    ld e, $0C
    ld a, [de]
    ld b, a
    ld e, $07
    ld a, [de]
    ld c, a
    xor a
    ld [$C7D0], a
    push bc
    ld a, b
    sub $09
    ld b, a
    call Call_000_28CD
    bit 0, a
    jr z, jr_002_5CD5

    call Call_002_5D12
    jr jr_002_5D07

jr_002_5CD5:
    pop bc
    push bc
    ld a, $09
    add b
    ld b, a
    call Call_000_28CD
    bit 0, a
    jr z, jr_002_5CE7

    call Call_002_5D12
    jr jr_002_5D07

jr_002_5CE7:
    pop bc
    push bc
    ld a, $09
    add c
    ld c, a
    call Call_000_28CD
    bit 0, a
    jr z, jr_002_5CF9

    call Call_002_5D2D
    jr jr_002_5D07

jr_002_5CF9:
    pop bc
    push bc
    ld a, c
    sub $09
    ld c, a
    call Call_000_28CD
    bit 0, a
    call nz, Call_002_5D2D

jr_002_5D07:
    pop bc
    ld a, [$C7D0]
    or a
    ret z

    ld h, d
    ld l, $1B
    dec [hl]
    ret


Call_002_5D12:
    ld a, $01
    ld [$C7D0], a
    call Call_000_26AB
    ld h, d
    ld l, $0A
    bit 7, [hl]
    jr nz, jr_002_5D27

    ld bc, $0025
    jp Jump_000_20A2


jr_002_5D27:
    ld bc, $0025
    jp Jump_000_20B3


Call_002_5D2D:
    ld a, $01
    ld [$C7D0], a
    call Call_000_2159
    ld h, d
    ld l, $05
    bit 7, [hl]
    jr nz, jr_002_5D42

    ld bc, $0025
    jp Jump_000_20A6


jr_002_5D42:
    ld bc, $0025
    jp Jump_000_20B7


Call_002_5D48:
    ld e, $11
    ld a, [de]
    bit 7, a
    jp nz, Jump_000_26E2

    call Call_000_220F
    jr nz, jr_002_5D58

    xor a
    inc a
    ret


jr_002_5D58:
    ld h, d
    ld l, $11
    res 0, [hl]
    call Call_000_24F0
    jr c, jr_002_5D6A

    ld a, $20
    ld e, $19
    ld [de], a
    xor a
    inc a
    ret


jr_002_5D6A:
    push de
    ld de, $CE00
    call Call_000_2183
    ld de, $CF00
    call Call_000_2183
    ld de, $D000
    call Call_000_2183
    pop de
    call Call_002_4047
    ld a, $03
    ld e, $01
    ld [de], a
    xor a
    ret


Call_002_5D88:
    ld a, b
    ld e, $0C
    ld [de], a
    ld a, c
    sub $30
    ld e, $07
    ld [de], a
    ld a, $1A
    ld e, $00
    ld [de], a
    ld a, $06
    ld e, $01
    ld [de], a
    ld bc, $5DCE
    call Call_000_2640
    ld a, $03
    call Call_000_0551
    add a
    ld hl, $5DDB
    rst $28
    ld a, [hl+]
    ld c, a
    ld a, [hl]
    ld b, a
    call Call_000_20E2
    ld a, [$C7D0]
    set 0, a
    ld e, $0E
    ld [de], a
    ld a, [$C7D0]
    bit 5, a
    call nz, Call_000_214A
    ld a, $08
    ld e, $1B
    ld [de], a
    ld a, $01
    ld e, $18
    ld [de], a
    ret


    db $00, $00, $00, $11, $01, $00, $01, $00, $FF, $03, $01, $73, $28

    and b
    rst $38

    db $30, $FF, $C0, $FE

    ld e, $01
    ld a, [de]
    rst $00

    db $EF, $5D, $AA, $5E, $E1, $5E, $34, $5F, $56, $5F

    call Call_002_5F6C
    ret z

    ld e, $02
    ld a, [de]
    rst $00

    db $01, $5E, $35, $5E, $44, $5E, $64, $5E, $7D, $5E

    ld a, [$C507]
    cp $40
    ret c

    cp $80
    ret nc

    call Call_000_219F
    ld e, $0C
    ld a, [de]
    cp $20
    jp c, Jump_002_5E1B

    cp $60
    jp nc, Jump_000_26AB

    ret


Jump_002_5E1B:
    ld a, $20
    ld e, $14
    ld [de], a
    ld bc, $287A
    call Call_000_2F92
    ld bc, $FFA0
    call Call_000_20E2
    call Call_000_21BB
    call Call_000_26AB
    jp Jump_000_207F


    call Call_000_21F1
    ret nz

    call Call_000_219F
    ld a, $02
    ld e, $1B
    ld [de], a
    jp Jump_000_207F


    ld hl, $287A
    call Call_000_2F9F
    ld e, $10
    ld a, [de]
    cp $FF
    ret nz

    ld bc, $287A
    call Call_000_2F92
    ld h, d
    ld l, $1B
    dec [hl]
    ret nz

    ld bc, $FF00
    call Call_000_20E6
    jp Jump_000_207F


    ld hl, $287A
    call Call_000_2F9F
    ld bc, $0010
    call Call_000_20A6
    ld bc, $0018
    call Call_000_23FD
    ret z

    call Call_000_20F2
    jp Jump_000_207F


    ld e, $0C
    ld a, [de]
    cp $20
    jp c, Jump_002_5E98

    cp $60
    ret c

    ld bc, $287A
    call Call_000_2F92
    call Call_000_26AB
    ld bc, $FE00
    call Call_000_20E2
    ret


Jump_002_5E98:
    ld bc, $FF00
    call Call_000_20E2
    call Call_000_26AB
    ld a, $20
    ld e, $0C
    ld [de], a
    xor a
    jp Jump_000_2084


    call Call_002_5F6C
    ret z

    ld hl, $2881
    call Call_000_2F9F
    push de
    dec d
    ld e, $0C
    ld a, [de]
    ld b, a
    ld e, $07
    ld a, [de]
    ld c, a
    ld e, $11
    ld a, [de]
    ld [$C7D0], a
    ld e, $0E
    ld a, [de]
    pop de
    ld e, $0E
    ld [de], a
    ld a, b
    ld e, $0C
    ld [de], a
    ld a, c
    add $10
    ld e, $07
    ld [de], a
    ld a, [$C7D0]
    and $01
    ld b, a
    ld e, $11
    ld a, [de]
    or b
    ld [de], a
    ret


    call Call_000_220F
    xor a
    ld e, $0E
    ld [de], a
    ld e, $11
    ld [de], a
    push de
    dec d
    dec d
    ld e, $0C
    ld a, [de]
    ld b, a
    ld e, $07
    ld a, [de]
    ld c, a
    ld e, $0E
    ld a, [de]
    ld [$C7D0], a
    ld e, $0D
    ld a, [de]
    pop de
    cp $7D
    ret nz

    ld a, $83
    ld e, $0D
    ld [de], a
    ld a, $01
    ld e, $11
    ld [de], a
    ld a, [$C7D0]
    bit 5, a
    jr nz, jr_002_5F24

    ld a, b
    sub $18
    ld e, $0C
    ld [de], a
    ld a, c
    ld e, $07
    ld [de], a
    ld a, $11
    ld e, $0E
    ld [de], a
    ret


jr_002_5F24:
    ld a, b
    add $18
    ld e, $0C
    ld [de], a
    ld a, c
    ld e, $07
    ld [de], a
    ld a, $31
    ld e, $0E
    ld [de], a
    ret


    ld e, $02
    ld a, [de]
    rst $00

    db $3E, $5F, $3F, $5F, $49, $5F

    ret


    call Call_000_21F1
    ret nz

    call Call_000_219F
    jp Jump_000_207F


    ld bc, $0020
    call Call_000_20B7
    ld e, $07
    ld a, [de]
    cp $40
    ret c

    ret


    push de
    ld de, $CC00
    ld e, $00
    ld a, [de]
    pop de
    or a
    ret nz

    xor a
    ld [$C78B], a
    push de
    call Call_000_3626
    pop de
    jp Jump_000_2183


Call_002_5F6C:
    ld e, $11
    ld a, [de]
    bit 7, a
    jp nz, Jump_000_26E2

    call Call_000_220F
    jr nz, jr_002_5F7C

    xor a
    inc a
    ret


jr_002_5F7C:
    push de
    ld de, $C900
    call Call_000_24F0
    jp c, Jump_002_5F9E

    ld h, d
    ld l, $11
    set 7, [hl]
    res 0, [hl]
    ld l, $19
    ld [hl], $20
    ld hl, $CA00
    ld l, $11
    res 7, [hl]
    res 0, [hl]
    pop de
    xor a
    inc a
    ret


Jump_002_5F9E:
    ld a, $04
    ld e, $01
    ld [de], a
    xor a
    ld e, $0E
    ld [de], a
    ld e, $11
    ld [de], a
    call Call_000_21BB
    ld e, $0C
    ld a, [de]
    ld b, a
    ld e, $07
    ld a, [de]
    ld c, a
    push bc
    ld de, $CA00
    call Call_000_2183
    ld de, $CB00
    call Call_000_2183
    pop bc
    ld de, $CC00
    ld a, b
    ld e, $0C
    ld [de], a
    ld a, c
    ld e, $07
    ld [de], a
    ld a, $01
    ld e, $02
    ld [de], a
    ld a, $31
    ld e, $0E
    ld [de], a
    xor a
    ld e, $11
    ld [de], a
    pop de
    call Call_000_262C
    ld a, [$C757]
    bit 0, a
    jr nz, jr_002_5FEC

    ld a, $00
    call Call_000_0875

jr_002_5FEC:
    ld a, $59
    call Call_000_0875
    xor a
    ret


    ld e, $01
    ld a, [de]
    rst $00

    db $FF, $5F, $D5, $62

    ld [hl], d
    ld h, e

    db $77, $63

    call Call_002_639F
    ret z

    ld e, $02
    ld a, [de]
    rst $00

    db $23, $60, $24, $60, $4C, $60, $66, $60, $AF, $60, $C0, $60, $F2, $60

    add h
    ld h, c
    inc h
    ld h, d
    scf
    ld h, d
    ld e, d
    ld h, d
    ld a, l
    ld h, d
    or b
    ld h, d
    db $CC
    ld h, d

    ret


    push de
    inc d
    xor a
    ld e, $1C
    ld [de], a
    pop de
    ld a, $89
    ld e, $0D
    ld [de], a
    ld bc, $FEA0
    call Call_000_20E2
    ld e, $0E
    ld a, [de]
    bit 5, a
    call nz, Call_000_214A
    ld a, [$C50C]
    ld e, $1B
    ld [de], a
    ld a, $20
    ld e, $14
    ld [de], a
    jp Jump_000_207F


    call Call_000_21F1
    ret nz

    ld a, $64
    ld e, $07
    ld [de], a
    ld bc, $2888
    call Call_000_2F92
    ld a, $86
    ld e, $0D
    ld [de], a
    call Call_000_219F
    jp Jump_000_207F


    ld e, $0E
    ld a, [de]
    bit 5, a
    jr nz, jr_002_6086

    ld hl, $C50C
    ld e, $0C
    ld a, [de]
    cp [hl]
    jr c, jr_002_60A4

    ld h, d
    ld l, $1B
    ld e, $0C
    ld a, [de]
    sub $16
    cp [hl]
    ret nc

    call Call_000_21BB
    jp Jump_000_207F


jr_002_6086:
    ld hl, $C50C
    ld e, $0C
    ld a, [de]
    cp [hl]
    jr nc, jr_002_60A4

    ld h, d
    ld l, $1B
    ld e, $0C
    ld a, [de]
    add $16
    cp [hl]
    ret c

    call Call_000_21BB
    ld a, $36
    call Call_000_0875
    jp Jump_000_207F


jr_002_60A4:
    call Call_000_21BB
    call Call_002_6380
    ld a, $05
    jp Jump_000_2084


    ld hl, $2888
    call Call_000_2F9F
    ld e, $10
    cp $FF
    ret nz

    call Call_002_6380
    jp Jump_000_207F


    ld bc, $0020
    call Call_000_20A6
    ld bc, $1000
    call Call_000_23F4
    call nz, Call_000_20EE
    ld bc, $F000
    call Call_000_23F4
    call nz, Call_000_20EE
    ld bc, $0010
    call Call_000_23FD
    ret z

    call Call_000_20F2
    call Call_000_21BB
    ld a, $85
    ld e, $0D
    ld [de], a
    ld a, $40
    ld e, $14
    ld [de], a
    jp Jump_000_207F


    call Call_000_21F1
    ret nz

    ld a, [$C50C]
    cp $30
    jp c, Jump_002_613C

    cp $70
    jp nc, Jump_002_613C

    ld e, $0E
    ld a, [de]
    bit 5, a
    jr nz, jr_002_6123

    ld hl, $C50C
    ld e, $0C
    ld a, [de]
    sub $16
    cp [hl]
    jp c, Jump_002_616F

    ld a, [$C50C]
    cp $50
    jp c, Jump_002_614B

    ld a, $01
    jp Jump_000_2084


jr_002_6123:
    ld hl, $C50C
    ld e, $0C
    ld a, [de]
    add $16
    cp [hl]
    jp nc, Jump_002_616F

    ld a, [$C50C]
    cp $50
    jp nc, Jump_002_614B

    ld a, $01
    jp Jump_000_2084


Jump_002_613C:
    ld a, $89
    ld e, $0D
    ld [de], a
    ld a, $20
    ld e, $14
    ld [de], a
    ld a, $09
    jp Jump_000_2084


Jump_002_614B:
    push de
    inc d
    inc d
    ld e, $00
    ld a, [de]
    pop de
    or a
    ret nz

    push de
    inc d
    inc d
    inc d
    ld e, $00
    ld a, [de]
    pop de
    or a
    ret nz

    push de
    inc d
    ld a, $01
    ld e, $1C
    ld [de], a
    pop de
    ld bc, $288F
    call Call_000_2F92
    jp Jump_000_207F


Jump_002_616F:
    ld a, $64
    ld e, $07
    ld [de], a
    ld bc, $2888
    call Call_000_2F92
    ld a, $10
    ld e, $14
    ld [de], a
    ld a, $0D
    jp Jump_000_2084


    ld hl, $288F
    call Call_000_2F9F
    ld e, $10
    ld a, [de]
    cp $FF
    ret nz

    ld e, $0E
    ld a, [de]
    ld [$C7D0], a
    ld e, $0C
    ld a, [de]
    ld b, a
    ld e, $07
    ld a, [de]
    ld c, a
    push de
    inc d
    inc d
    push bc
    ld a, $E8
    ld hl, $C7D0
    bit 5, [hl]
    call nz, Call_000_0547
    add b
    ld e, $0C
    ld [de], a
    ld a, c
    sub $08
    ld e, $07
    ld [de], a
    ld bc, $6219
    call Call_000_2650
    ld a, $1C
    ld e, $00
    ld [de], a
    ld a, $02
    ld e, $01
    ld [de], a
    ld a, $01
    ld e, $18
    ld [de], a
    ld a, [$C7D0]
    ld e, $0E
    set 0, a
    ld [de], a
    bit 5, a
    call nz, Call_000_214A
    pop bc
    inc d
    ld a, $E8
    ld hl, $C7D0
    bit 5, [hl]
    call nz, Call_000_0547
    add b
    ld e, $0C
    ld [de], a
    ld a, c
    add $08
    ld e, $07
    ld [de], a
    ld bc, $6219
    call Call_000_2650
    ld a, $1C
    ld e, $00
    ld [de], a
    ld a, $02
    ld e, $01
    ld [de], a
    ld a, $01
    ld e, $18
    ld [de], a
    ld a, [$C7D0]
    ld e, $0E
    set 0, a
    ld [de], a
    bit 5, a
    call nz, Call_000_214A
    pop de
    ld a, $10
    ld e, $14
    ld [de], a
    jp Jump_000_207F


    nop
    ld bc, $118C
    ld bc, $0000
    nop
    rst $38
    ld [bc], a
    ld [bc], a
    call Call_000_21F1
    ret nz

    ld a, $85
    ld e, $0D
    ld [de], a
    ld a, $40
    ld e, $14
    ld [de], a
    ld a, $06
    jp Jump_000_2084


    call Call_000_21F1
    ret nz

    ld a, $87
    ld e, $0D
    ld [de], a
    ld bc, $FFE0
    call Call_000_20E2
    ld e, $0E
    ld a, [de]
    bit 5, a
    call nz, Call_000_214A
    ld bc, $FE00
    call Call_000_20E6
    call Call_000_219F
    jp Jump_000_207F


    ld e, $07
    ld a, [de]
    cp $40
    ret nc

    call Call_000_20EE
    call Call_000_20F2
    ld bc, $27EA
    call Call_000_2F92
    ld bc, $FD00
    call Call_000_20E2
    ld e, $0E
    ld a, [de]
    bit 5, a
    call nz, Call_000_214A
    jp Jump_000_207F


    ld hl, $27EA
    call Call_000_2F9F
    ld e, $0E
    ld a, [de]
    bit 5, a
    jr z, jr_002_6293

    ld bc, $1000
    call Call_000_23F4
    jr nz, jr_002_629C

    ret


jr_002_6293:
    ld bc, $F000
    call Call_000_23F4
    jr nz, jr_002_629C

    ret


jr_002_629C:
    ld a, $87
    ld e, $0D
    ld [de], a
    call Call_000_26AB
    call Call_000_20EE
    ld bc, $0200
    call Call_000_20E6
    jp Jump_000_207F


    ld bc, $0010
    call Call_000_23FD
    ret z

    call Call_000_20EE
    call Call_000_20F2
    ld a, $85
    ld e, $0D
    ld [de], a
    ld a, $40
    ld e, $14
    ld [de], a
    ld a, $06
    jp Jump_000_2084


    call Call_000_21F1
    ret nz

    ld a, $04
    jp Jump_000_2084


    ld e, $1C
    ld a, [de]
    or a
    ret nz

    call Call_000_220F
    ld h, d
    ld l, $11
    res 7, [hl]
    set 0, [hl]
    push de
    dec d
    ld e, $0C
    ld a, [de]
    ld b, a
    ld e, $07
    ld a, [de]
    ld c, a
    ld e, $0D
    ld a, [de]
    ld h, a
    ld e, $0E
    ld a, [de]
    ld l, a
    pop de
    ld a, h
    cp $86
    jr z, jr_002_630E

    cp $87
    jr z, jr_002_633B

    cp $88
    jr z, jr_002_6345

    ld h, d
    ld l, $0E
    res 0, [hl]
    ld l, $11
    res 0, [hl]
    ret


jr_002_630E:
    ld a, c
    sub $10
    ld e, $07
    ld [de], a
    ld a, $8D
    ld e, $0D
    ld [de], a
    ld a, $01
    ld e, $11
    ld [de], a
    ld a, l
    bit 5, a
    jr nz, jr_002_632F

    ld a, b
    add $0C
    ld e, $0C
    ld [de], a
    ld a, $11
    ld e, $0E
    ld [de], a
    ret


jr_002_632F:
    ld a, b
    sub $0C
    ld e, $0C
    ld [de], a
    ld a, $31
    ld e, $0E
    ld [de], a
    ret


jr_002_633B:
    ld h, d
    ld l, $0E
    res 0, [hl]
    ld l, $11
    res 0, [hl]
    ret


jr_002_6345:
    ld a, c
    sub $0A
    ld e, $07
    ld [de], a
    ld a, $8E
    ld e, $0D
    ld [de], a
    ld a, $01
    ld e, $11
    ld [de], a
    ld a, l
    bit 5, a
    jr nz, jr_002_6366

    ld a, b
    sub $1A
    ld e, $0C
    ld [de], a
    ld a, $11
    ld e, $0E
    ld [de], a
    ret


jr_002_6366:
    ld a, b
    add $1A
    ld e, $0C
    ld [de], a
    ld a, $31
    ld e, $0E
    ld [de], a
    ret


    call Call_000_26BB
    ret z

    ret


    call Call_000_2168
    call Call_000_262C
    jp Jump_000_2699


Call_002_6380:
    ld a, $8B
    ld e, $0D
    ld [de], a
    call Call_000_2565
    ld bc, $FEC0
    call Call_000_20E2
    ld e, $0E
    ld a, [de]
    bit 5, a
    call z, Call_000_214A
    ld bc, $FD80
    call Call_000_20E6
    jp Jump_000_219F


Call_002_639F:
    ld e, $11
    ld a, [de]
    bit 7, a
    jp nz, Jump_000_26E2

    call Call_000_220F
    jr nz, jr_002_63AF

    xor a
    inc a
    ret


jr_002_63AF:
    ld h, d
    ld l, $11
    res 0, [hl]
    call Call_000_24F0
    jr c, jr_002_63C1

    ld a, $20
    ld e, $19
    ld [de], a
    xor a
    inc a
    ret


jr_002_63C1:
    push de
    ld de, $CA00
    call Call_000_2183
    ld de, $CB00
    call Call_000_2183
    ld de, $CC00
    call Call_000_2183
    ld de, $CD00
    call Call_000_2183
    pop de
    ld a, $09
    ld [$C728], a
    ld a, $01
    ld [$D02A], a
    ld a, $20
    ld e, $14
    ld [de], a
    ld a, $03
    call Call_000_2091
    ld a, $01
    ld [$C752], a
    xor a
    ld [$D7DC], a
    ld [$C757], a
    xor a
    ret


    ld e, $01
    ld a, [de]
    rst $00

    db $05, $64, $ED, $64

    call Call_002_6579
    ret z

    ld e, $02
    ld a, [de]
    rst $00

    db $19, $64, $85, $64, $9C, $64, $A9, $64, $C0, $64

    db $CD
    ld h, h

    call Call_000_21F1
    ret nz

    ld e, $1C
    ld a, [de]
    cp $03
    jr z, jr_002_6470

    call Call_000_2565
    ld e, $1B
    ld a, [de]
    inc a
    ld [de], a
    cp $03
    jr nz, jr_002_6437

    xor a
    ld e, $1B
    ld [de], a
    call Call_000_26AB

jr_002_6437:
    ld e, $0C
    ld a, [de]
    cp $28
    jr c, jr_002_6452

    ld e, $0C
    ld a, [de]
    cp $70
    jr nc, jr_002_6460

    ld e, $07
    ld a, [de]
    cp $48
    jp c, Jump_000_207F

    ld a, $03
    jp Jump_000_2084


jr_002_6452:
    ld h, d
    ld e, $0E
    set 5, [hl]
    ld bc, $0070
    call Call_000_20E2
    jp Jump_000_207F


jr_002_6460:
    ld h, d
    ld e, $0E
    res 5, [hl]
    ld bc, $FF90
    call Call_000_20E2
    ld a, $03
    jp Jump_000_2084


jr_002_6470:
    xor a
    ld e, $1C
    ld [de], a
    ld e, $07
    ld a, [de]
    sub $04
    ld [de], a
    ld bc, $2896
    call Call_000_2F92
    ld a, $05
    jp Jump_000_2084


    ld bc, $FB60
    call Call_000_20E6
    ld a, $98
    ld e, $0D
    ld [de], a
    ld e, $07
    ld a, [de]
    sub $04
    ld [de], a
    call Call_000_219F
    jp Jump_000_207F


    call Call_002_6511
    ret c

    ld a, $28
    ld e, $14
    ld [de], a
    xor a
    jp Jump_000_2084


    ld bc, $FB00
    call Call_000_20E6
    ld a, $98
    ld e, $0D
    ld [de], a
    ld e, $07
    ld a, [de]
    sub $04
    ld [de], a
    call Call_000_219F
    jp Jump_000_207F


    call Call_002_6511
    ret c

    ld a, $28
    ld e, $14
    ld [de], a
    xor a
    jp Jump_000_2084


    ld hl, $2896
    call Call_000_2F9F
    ld e, $10
    ld a, [de]
    cp $FF
    ret nz

    ld a, $9B
    ld e, $0D
    ld [de], a
    ld e, $07
    ld a, [de]
    add $04
    ld [de], a
    ld a, $28
    ld e, $14
    ld [de], a
    xor a
    jp Jump_000_2084


    xor a
    ld [$C78B], a
    push de
    call Call_000_3634
    pop de
    ld a, [$C757]
    bit 0, a
    jr nz, jr_002_6502

    ld a, $00
    call Call_000_0875

jr_002_6502:
    ld a, $54
    call Call_000_0875
    jp Jump_000_2515


Call_002_650A:
    ld bc, $0013
    call Call_000_23FD
    ret


Call_002_6511:
    ld e, $05
    ld a, [de]
    bit 7, a
    jr nz, jr_002_652D

    ld a, $9A
    ld e, $0D
    ld [de], a
    ld e, $07
    ld a, [de]
    cp $30
    jr c, jr_002_652D

    cp $90
    jr nc, jr_002_652D

    call Call_002_650A
    jr nz, jr_002_6535

jr_002_652D:
    ld bc, $0025
    call Call_000_20A6
    scf
    ret


jr_002_6535:
    ld a, $9B
    ld e, $0D
    ld [de], a
    call Call_000_21BB
    ld e, $0C
    ld a, [de]
    cp $40
    jr nc, jr_002_6559

    ld e, $07
    ld a, [de]
    cp $58
    jr nc, jr_002_6552

    ld a, $10
    ld e, $0C
    ld [de], a
    jr jr_002_6571

jr_002_6552:
    ld a, $30
    ld e, $0C
    ld [de], a
    jr jr_002_6571

jr_002_6559:
    ld e, $07
    ld a, [de]
    cp $58
    jr nc, jr_002_656C

    ld a, $50
    ld e, $0C
    ld [de], a
    ld e, $1C
    ld a, [de]
    inc a
    ld [de], a
    jr jr_002_6571

jr_002_656C:
    ld a, $70
    ld e, $0C
    ld [de], a

jr_002_6571:
    ld a, $3D
    call Call_000_0875
    scf
    ccf
    ret


Call_002_6579:
    ld e, $11
    ld a, [de]
    bit 7, a
    jp nz, Jump_000_26E2

    call Call_000_220F
    jr nz, jr_002_6589

    xor a
    inc a
    ret


jr_002_6589:
    call Call_000_24F0
    jp c, Jump_002_659D

    ld h, d
    ld l, $11
    set 7, [hl]
    res 0, [hl]
    ld l, $19
    ld [hl], $20
    xor a
    inc a
    ret


Jump_002_659D:
    ld a, $01
    ld e, $01
    ld [de], a
    ld a, $10
    ld e, $0E
    ld [de], a
    xor a
    ret


    ld e, $01
    ld a, [de]
    rst $00

    db $B5, $65, $17, $66, $85, $67, $96, $67

    ld a, [$C776]
    or a
    ret nz

    push de
    ld hl, $C500
    bit 3, [hl]
    jr z, jr_002_65C9

    res 3, [hl]
    ld a, $63
    ld [$C507], a

jr_002_65C9:
    ld a, $00
    ld [$C50D], a
    ld hl, $C50E
    set 0, [hl]
    call Call_000_1FCB
    call Call_000_1FD2
    ld de, $C600
    call Call_000_2183
    ld de, $C700
    call Call_000_2183
    ld de, $C800
    call Call_000_2183
    ld a, $02
    call Call_000_35C1
    ld a, $0E
    ld [$C736], a
    pop de
    ld a, $01
    ld [$C782], a
    xor a
    ld e, $1B
    ld [de], a
    ld e, $1C
    ld [de], a
    ld a, $00
    call Call_000_0875
    xor a
    ld [$D7DC], a
    ld [$C757], a
    ld a, $E4
    ldh [$FF88], a
    ld a, $0F
    jp Jump_000_0E35


    call Call_002_68EE
    jp z, Jump_002_691A

    ld e, $02
    ld a, [de]
    rst $00

    db $2F, $66, $3C, $66, $6A, $66, $87, $66, $A5, $66, $53, $67, $75, $67

    ld h, d
    ld l, $11
    res 0, [hl]
    ld a, $04
    call Call_000_0629
    jp Jump_000_207F


    ld h, d
    ld l, $11
    res 0, [hl]
    push de
    call Call_000_2708
    pop de
    ret c

    ld hl, $665E
    ld e, $1C
    ld a, [de]
    add a
    rst $28
    ld a, [hl+]
    ld c, a
    ld a, [hl+]
    ld b, a
    call Call_000_2098
    ld a, $04
    call Call_000_0629
    jp Jump_000_207F


    db $30, $30, $58, $50, $20, $88, $60, $20

    jr z, jr_002_66C0

    ld h, b
    ld a, b

    push de
    call Call_000_26F9
    pop de
    ret c

    ld h, d
    ld l, $11
    set 0, [hl]
    ld e, $1C
    ld a, [de]
    inc a
    cp $06
    jr nz, jr_002_667E

    xor a

jr_002_667E:
    ld [de], a
    ld a, $40
    ld e, $14
    ld [de], a
    jp Jump_000_207F


    call Call_000_21F1
    ret nz

    ld h, d
    ld l, $0E
    res 5, [hl]
    ld a, [$C50C]
    ld l, $0C
    cp [hl]
    jr c, jr_002_669C

    ld l, $0E
    set 5, [hl]

jr_002_669C:
    ld bc, $28A3
    call Call_000_2F92
    jp Jump_000_207F


    ld hl, $28A3
    call Call_000_2F9F
    ld e, $10
    ld a, [de]
    cp $FF
    ret nz

    ld e, $0C
    ld a, [de]
    ld [$C7D0], a
    ld e, $07
    ld a, [de]
    ld [$C7D1], a
    ld e, $0E
    ld a, [de]

jr_002_66C0:
    ld [$C7D2], a
    push de
    ld de, $CD00
    ld b, $05

jr_002_66C9:
    push bc
    ld hl, $6708
    ld a, b
    dec a
    add a
    rst $28
    ld c, [hl]
    inc hl
    ld b, [hl]
    call Call_000_2640
    ld a, [$C7D0]
    ld b, a
    ld a, [$C7D1]
    ld c, a
    call Call_000_2098
    ld a, $1F
    ld e, $00
    ld [de], a
    ld a, $02
    ld e, $01
    ld [de], a
    ld a, $01
    ld e, $18
    ld [de], a
    ld a, [$C7D2]
    bit 5, a
    call nz, Call_000_214A
    pop bc
    inc d
    dec b
    jr nz, jr_002_66C9

    pop de
    ld bc, $28AA
    call Call_000_2F92
    jp Jump_000_207F


    db $12, $67, $1F, $67, $2C, $67, $39, $67, $46, $67, $01, $01, $00, $11, $01, $40
    db $FF, $80, $FF, $02, $02, $B1, $28, $01, $01, $00, $11, $01, $80, $FF, $40, $FF
    db $02, $02, $B1, $28, $01, $01, $00, $11, $01, $00, $00, $00, $FF, $02, $02, $B1
    db $28, $01, $01, $00, $11, $01, $80, $00, $40, $FF, $02, $02, $B1, $28, $01, $01
    db $00, $11, $01, $C0, $00, $80, $FF, $02, $02, $B1, $28

    ld hl, $28AA
    call Call_000_2F9F
    push de
    ld de, $CD00
    ld b, $05

jr_002_675F:
    ld e, $00
    ld a, [de]
    or a
    jr nz, jr_002_6773

    inc d
    dec b
    jr nz, jr_002_675F

    pop de
    ld a, $9C
    ld e, $0D
    ld [de], a
    xor a
    jp Jump_000_2084


jr_002_6773:
    pop de
    ret


    ld a, [$C513]
    or a
    ret z

    ld a, $11
    ld [$C728], a
    ld a, $04
    ld [$D02A], a
    ret


    ld hl, $28B1
    call Call_000_2F9F
    call Call_000_220F
    ld h, d
    ld l, $11
    res 7, [hl]
    set 0, [hl]
    ret


    call Call_002_68EE
    jp z, Jump_002_694A

    ld e, $02
    ld a, [de]
    rst $00

    db $AC, $67, $B4, $67, $7A, $68, $94, $68, $A1, $68, $CF, $68

    ld a, $40
    ld e, $14
    ld [de], a
    jp Jump_000_207F


    call Call_000_21F1
    ret nz

    ld a, $9F
    ld e, $0D
    ld [de], a
    ld e, $0C
    ld a, [de]
    ld [$C7D0], a
    ld e, $07
    ld a, [de]
    ld [$C7D1], a
    push de
    ld de, $CD00
    ld b, $08

jr_002_67CF:
    push bc
    ld hl, $6802
    ld a, b
    dec a
    add a
    rst $28
    ld c, [hl]
    inc hl
    ld b, [hl]
    call Call_000_2640
    ld a, [$C7D0]
    ld b, a
    ld a, [$C7D1]
    add $0C
    ld c, a
    call Call_000_2098
    ld a, $1F
    ld e, $00
    ld [de], a
    ld a, $02
    ld e, $01
    ld [de], a
    ld a, $01
    ld e, $18
    ld [de], a
    pop bc
    inc d
    dec b
    jr nz, jr_002_67CF

    pop de
    jp Jump_000_207F


    db $12, $68, $1F, $68, $2C, $68, $39, $68, $46, $68, $53, $68, $60, $68, $6D, $68
    db $00, $01, $00, $11, $01, $00, $00, $00, $FF, $02, $02, $B1, $28, $01, $01, $00
    db $11, $01, $C0, $00, $40, $FF, $02, $02, $B1, $28, $01, $00, $00, $11, $01, $00
    db $01, $00, $00, $02, $02, $B1, $28, $01, $01, $00, $11, $01, $C0, $00, $C0, $00
    db $02, $02, $B1, $28, $00, $01, $00, $11, $01, $00, $00, $00, $01, $02, $02, $B1
    db $28, $01, $01, $00, $11, $01, $40, $FF, $C0, $00, $02, $02, $B1, $28, $01, $00
    db $00, $11, $01, $00, $FF, $00, $00, $02, $02, $B1, $28, $01, $01, $00, $11, $01
    db $40, $FF, $40, $FF, $02, $02, $B1, $28

    push de
    ld de, $CD00
    ld b, $08

jr_002_6880:
    ld e, $00
    ld a, [de]
    or a
    jr nz, jr_002_6892

    dec b
    jr nz, jr_002_6880

    pop de
    ld a, $A0
    ld e, $0D
    ld [de], a
    jp Jump_000_207F


jr_002_6892:
    pop de
    ret


    ld h, d
    ld l, $11
    res 0, [hl]
    ld a, $04
    call Call_000_0629
    jp Jump_000_207F


    ld h, d
    ld l, $11
    res 0, [hl]
    push de
    call Call_000_2708
    pop de
    ret c

    ld hl, $68C3
    ld e, $1C
    ld a, [de]
    add a
    rst $28
    ld a, [hl+]
    ld c, a
    ld a, [hl+]
    ld b, a
    call Call_000_2098
    ld a, $04
    call Call_000_0629
    jp Jump_000_207F


    db $58, $68, $28, $80, $30, $10, $48, $48

    ld l, b
    jr z, jr_002_68F6

    ld d, b

    push de
    call Call_000_26F9
    pop de
    ret c

    ld h, d
    ld l, $11
    set 0, [hl]
    ld e, $1C
    ld a, [de]
    inc a
    cp $06
    jr nz, jr_002_68E3

    xor a

jr_002_68E3:
    ld [de], a
    ld a, $40
    ld e, $14
    ld [de], a
    ld a, $01
    jp Jump_000_2084


Call_002_68EE:
    ld e, $11
    ld a, [de]
    bit 7, a
    jp nz, Jump_000_26E2

jr_002_68F6:
    call Call_000_220F
    jr nz, jr_002_68FE

    xor a
    inc a
    ret


jr_002_68FE:
    ld h, d
    ld l, $11
    res 0, [hl]
    call Call_000_24F0
    jr c, jr_002_6910

    ld a, $20
    ld e, $19
    ld [de], a
    xor a
    inc a
    ret


jr_002_6910:
    push de
    ld de, $CA00
    call Call_000_2183
    pop de
    xor a
    ret


Jump_002_691A:
    push de
    ld de, $CD00
    call Call_000_2183
    ld de, $CE00
    call Call_000_2183
    ld de, $CF00
    call Call_000_2183
    ld de, $D000
    call Call_000_2183
    ld de, $D100
    call Call_000_2183
    pop de
    xor a
    ld [$D7DC], a
    ld [$C757], a
    ld a, $E4
    ldh [$FF88], a
    ld a, $06
    jp Jump_000_2084


Jump_002_694A:
    push de
    ld de, $CD00
    call Call_000_2183
    ld de, $CE00
    call Call_000_2183
    ld de, $CF00
    call Call_000_2183
    ld de, $D000
    call Call_000_2183
    ld de, $D100
    call Call_000_2183
    ld de, $D200
    call Call_000_2183
    ld de, $D300
    call Call_000_2183
    ld de, $D400
    call Call_000_2183
    pop de
    call Call_000_262C
    ld a, $10
    ld [$C728], a
    ld a, $03
    ld [$D02A], a
    xor a
    ld [$D7DC], a
    ld [$C757], a
    ld a, $E4
    ldh [$FF88], a
    ret


    ld e, $01
    ld a, [de]
    rst $00
    and e
    ld l, c
    and h
    ld l, d
    ld a, d
    ld l, e
    ld l, [hl]
    ld b, b
    inc e
    ld l, h
    call Call_002_6C26
    ret z

    ld e, $02
    ld a, [de]
    rst $00
    or a
    ld l, c
    ld bc, $4E6A
    ld l, d
    ld l, [hl]
    ld l, d
    ld l, a
    ld l, d
    add d
    ld l, d
    call Call_000_2565
    ld e, $0C
    ld a, [de]
    ld hl, $C50C
    sub [hl]
    add $0E
    cp $1C
    jp c, Jump_002_69EB

    call Call_000_219F
    ld bc, $0026
    call Call_000_23FD
    ret nz

    call Call_000_21BB
    ld a, $A5
    ld e, $0D
    ld [de], a
    ld bc, $FC80
    call Call_000_20E6
    push de
    inc d
    ld a, $01
    ld e, $02
    ld [de], a
    pop de
    jp Jump_000_207F


Jump_002_69EB:
    call Call_000_21BB
    ld bc, $28C3
    call Call_000_2F92
    push de
    inc d
    ld a, $03
    call Call_000_2084
    pop de
    ld a, $04
    jp Jump_000_2084


    call Call_000_219F
    ld e, $05
    ld a, [de]
    bit 7, a
    jr nz, jr_002_6A28

    ld e, $07
    ld a, [de]
    cp $10
    jr c, jr_002_6A28

    cp $80
    jr nc, jr_002_6A28

    ld e, $0C
    ld a, [de]
    cp $90
    jr c, jr_002_6A23

    ld a, $90
    ld [de], a
    call Call_000_21C7

jr_002_6A23:
    call Call_002_6C65
    jr nz, jr_002_6A2E

jr_002_6A28:
    ld bc, $0025
    jp Jump_000_20A6


jr_002_6A2E:
    ld a, $AD
    ld e, $0D
    ld [de], a
    call Call_000_21BB
    call Call_000_20F2
    ld a, $30
    ld e, $14
    ld [de], a
    push de
    inc d
    ld a, $02
    ld e, $02
    ld [de], a
    pop de
    ld a, $36
    call Call_000_0875
    jp Jump_000_207F


    call Call_000_21F1
    ret nz

    ld a, $A4
    ld e, $0D
    ld [de], a
    ld e, $07
    ld a, [de]
    ld e, $1B
    ld [de], a
    push de
    inc d
    xor a
    ld e, $02
    ld [de], a
    ld bc, $28BA
    call Call_000_2F92
    pop de
    xor a
    jp Jump_000_2084


    ret


    ld hl, $28C3
    call Call_000_2F9F
    ld e, $0F
    ld a, [de]
    or a
    ret z

    ld a, $36
    call Call_000_0875
    jp Jump_000_207F


    ld hl, $28C3
    call Call_000_2F9F
    ld e, $10
    ld a, [de]
    cp $FF
    ret nz

    ld a, $A4
    ld e, $0D
    ld [de], a
    push de
    inc d
    xor a
    ld e, $02
    ld [de], a
    ld bc, $28BA
    call Call_000_2F92
    pop de
    xor a
    jp Jump_000_2084


    call Call_002_6C26
    ld e, $02
    ld a, [de]
    rst $00
    or e
    ld l, d
    or $6A
    ld [hl+], a
    ld l, e
    ld c, [hl]
    ld l, e
    ld hl, $28BA
    call Call_000_2F9F
    ld e, $0D
    ld a, [de]
    push de
    dec d
    cp $A7
    jr nz, jr_002_6ACB

    ld e, $1B
    ld a, [de]
    dec a
    ld e, $07
    ld [de], a
    jr jr_002_6AD1

jr_002_6ACB:
    ld e, $1B
    ld a, [de]
    ld e, $07
    ld [de], a

jr_002_6AD1:
    ld e, $07
    ld a, [de]
    ld c, a
    ld e, $0C
    ld a, [de]
    ld b, a
    ld e, $11
    ld a, [de]
    ld [$C7D0], a
    ld e, $0E
    ld a, [de]
    pop de
    ld e, $0E
    ld [de], a
    ld a, c
    add $20
    ld c, a
    call Call_000_2098
    ld a, [$C7D0]
    res 7, a
    ld e, $11
    ld [de], a
    ret


    push de
    dec d
    ld e, $07
    ld a, [de]
    ld c, a
    ld e, $0C
    ld a, [de]
    ld b, a
    ld e, $11
    ld a, [de]
    ld [$C7D0], a
    ld e, $0E
    ld a, [de]
    pop de
    ld e, $0E
    ld [de], a
    ld a, c
    add $20
    ld c, a
    call Call_000_2098
    ld a, [$C7D0]
    res 7, a
    ld e, $11
    ld [de], a
    ld a, $A9
    ld e, $0D
    ld [de], a
    ret


    push de
    dec d
    ld e, $07
    ld a, [de]
    ld c, a
    ld e, $0C
    ld a, [de]
    ld b, a
    ld e, $11
    ld a, [de]
    ld [$C7D0], a
    ld e, $0E
    ld a, [de]
    pop de
    ld e, $0E
    ld [de], a
    ld a, c
    add $20
    ld c, a
    call Call_000_2098
    ld a, [$C7D0]
    res 7, a
    ld e, $11
    ld [de], a
    ld a, $A6
    ld e, $0D
    ld [de], a
    ret


    push de
    dec d
    ld e, $07
    ld a, [de]
    ld c, a
    ld e, $0C
    ld a, [de]
    ld b, a
    ld e, $11
    ld a, [de]
    ld [$C7D0], a
    ld e, $0E
    ld a, [de]
    pop de
    ld e, $0E
    ld [de], a
    ld a, c
    add $20
    ld c, a
    call Call_000_2098
    ld a, [$C7D0]
    res 7, a
    ld e, $11
    ld [de], a
    ld a, $A6
    ld e, $0D
    ld [de], a
    ret


    call Call_000_220F
    ld h, d
    ld l, $11
    res 7, [hl]
    set 0, [hl]
    push de
    dec d
    dec d
    ld e, $0C
    ld a, [de]
    ld b, a
    ld e, $07
    ld a, [de]
    ld c, a
    ld e, $0D
    ld a, [de]
    ld [$C7D0], a
    ld e, $0E
    ld a, [de]
    pop de
    ld e, $0E
    ld [de], a
    bit 5, a
    jr nz, jr_002_6BDE

    ld a, [$C7D0]
    cp $A5
    jr z, jr_002_6BBC

    cp $AD
    jr z, jr_002_6BCD

    ld a, b
    sub $18
    ld b, a
    ld a, c
    add $08
    ld c, a
    call Call_000_2098
    ld a, $AA
    ld e, $0D
    ld [de], a
    ret


jr_002_6BBC:
    ld a, b
    add $18
    ld b, a
    ld a, c
    sub $08
    ld c, a
    call Call_000_2098
    ld a, $AB
    ld e, $0D
    ld [de], a
    ret


jr_002_6BCD:
    ld a, b
    sub $18
    ld b, a
    ld a, c
    add $10
    ld c, a
    call Call_000_2098
    ld a, $AC
    ld e, $0D
    ld [de], a
    ret


jr_002_6BDE:
    ld a, [$C7D0]
    cp $A5
    jr z, jr_002_6BFA

    cp $AD
    jr z, jr_002_6C0B

    ld a, b
    add $18
    ld b, a
    ld a, c
    add $08
    ld c, a
    call Call_000_2098
    ld a, $AA
    ld e, $0D
    ld [de], a
    ret


jr_002_6BFA:
    ld a, b
    sub $18
    ld b, a
    ld a, c
    sub $08
    ld c, a
    call Call_000_2098
    ld a, $AB
    ld e, $0D
    ld [de], a
    ret


jr_002_6C0B:
    ld a, b
    add $18
    ld b, a
    ld a, c
    add $10
    ld c, a
    call Call_000_2098
    ld a, $AC
    ld e, $0D
    ld [de], a
    ret


    push de
    dec d
    ld e, $0E
    ld a, [de]
    pop de
    ld e, $0E
    ld [de], a
    ret


Call_002_6C26:
    ld e, $11
    ld a, [de]
    bit 7, a
    jp nz, Jump_000_26E2

    call Call_000_220F
    jr nz, jr_002_6C36

    xor a
    inc a
    ret


jr_002_6C36:
    push de
    ld de, $C900
    call Call_000_24F0
    jr c, jr_002_6C4E

    ld h, d
    ld l, $11
    set 7, [hl]
    res 0, [hl]
    ld l, $19
    ld [hl], $20
    pop de
    xor a
    inc a
    ret


jr_002_6C4E:
    call Call_000_20EE
    call Call_000_20F2
    call Call_002_4047
    ld a, $03
    call Call_000_2091
    inc d
    ld a, $04
    call Call_000_2091
    pop de
    xor a
    ret


Call_002_6C65:
    ld bc, $0624
    call Call_000_23FD
    ret nz

    ld bc, $0024
    call Call_000_23FD
    ret nz

    ld bc, $FA24
    call Call_000_23FD
    ret


    ld hl, $27D6
    call Call_000_2F9F
    ld e, $10
    ld a, [de]
    cp $FF
    ret nz

    jp Jump_000_2183


    db $00, $00, $00, $00, $00, $00, $98, $9C, $A0, $99, $9D, $A1, $9A, $9E, $A2, $9B
    db $9F, $A3, $00, $00, $00, $00, $00, $00, $A4, $A6, $A8, $A5, $A7, $A9, $00, $00
    db $AA, $00, $00, $AB, $AC, $B0, $B4, $AD, $B1, $B5, $AE, $B2, $B6, $AF, $B3, $B7
    db $00, $00, $B8, $00, $00, $B9, $00, $00, $00, $3B, $00, $00, $00, $38, $35, $34
    db $33, $32, $35, $34, $65, $66, $00, $00, $67, $68, $00, $00, $00, $69

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
