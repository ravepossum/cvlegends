; Disassembly of "cvlegends.gb"
; This file was created with:
; mgbdis v2.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $007", ROMX[$4000], BANK[$7]

    rst $38
    rst $38
    rst $18
    rst $08
    cp [hl]
    sbc [hl]
    ld a, a
    ccf
    ld a, e
    dec sp
    ld a, e
    dec sp
    ld a, l
    dec a
    ld a, l
    dec a
    ld a, d
    ld a, [hl-]
    ld [hl], b

jr_007_4013:
    jr nc, @+$72

    ld [hl-], a
    ld [hl], b
    inc sp
    ld a, b
    add hl, sp
    cp h
    sbc h
    rst $18
    rst $08
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, e
    ld [hl], e
    db $DD
    reti


    ld a, [hl]
    ld a, h
    ld a, $3C
    sub [hl]
    sub h
    ld e, $1C
    ld e, $1C
    ld e, $5C
    ld c, $8C
    ld c, $CC
    ld c, $CC
    ld e, $9C
    dec a
    add hl, sp
    ei
    di
    rst $38
    rst $38
    rst $38
    rst $38
    rst $18
    rst $08
    cp a
    sbc h
    ld a, b
    jr c, @+$6C

    jr z, jr_007_40C7

    inc a
    ld a, a
    ccf
    ld l, l
    dec l
    ld a, a
    ccf
    ld a, a
    jr c, jr_007_40C6

    jr nc, jr_007_40C7

    jr nc, jr_007_40CD

    jr nc, jr_007_4013

    sbc b
    rst $18
    rst $08
    rst $38
    rst $38
    rst $38
    rst $38
    ei
    di
    db $DD
    reti


    cp $7C
    or $74
    cp $FC
    adc $CC
    xor [hl]
    add h
    adc [hl]
    add h
    cp $CC
    cp $7C
    cp $7C
    xor $6C
    db $FD
    ld sp, hl
    ei
    di
    rst $38
    rst $38

    INCBIN "gfx/image_007_4080.2bpp"

    rst $38
    rst $38
    rst $18
    rst $08
    cp a
    sbc a

jr_007_40C6:
    ld [hl], a

jr_007_40C7:
    ld [hl], $7E
    ld a, [hl-]
    ld a, l
    dec a
    ld a, d

jr_007_40CD:
    ld a, [hl-]
    ld e, h
    inc b
    ld a, h
    inc a
    ld a, e
    ld a, [hl-]
    ld a, l
    dec a
    ld a, a
    ld a, [hl-]
    halt
    ld [hl], $BF
    sbc [hl]
    sbc $CE
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, e
    ld [hl], e
    db $FD
    ld a, c
    ld a, [hl]
    ld a, h
    or [hl]
    inc [hl]
    cp [hl]
    xor h
    ld e, [hl]
    ld e, h
    ld l, [hl]
    inc l
    ld [$FE20], a
    ld a, h
    sbc [hl]
    sbc h
    ld a, [hl]
    ld l, h
    or $74
    db $FD
    ld sp, hl
    ei
    di
    rst $38
    rst $38
    rst $38
    rst $38
    rst $18
    rst $08
    cp l
    sbc l
    ld [hl], l
    dec [hl]
    halt
    inc [hl]
    ld l, [hl]
    ld h, $66
    ld [hl+], a
    ld h, d
    jr nz, @+$6E

    inc h
    ld l, [hl]
    ld l, $6D
    inc l
    ld [hl], a
    dec [hl]
    ld a, a
    scf
    cp a
    sbc e
    rst $18
    rst $08
    rst $38
    rst $38
    rst $38
    rst $38
    ei
    di
    cp l
    cp c
    xor [hl]
    xor h
    ld l, [hl]
    inc l
    or $64
    and $44
    add $04
    or [hl]
    inc h
    or $74
    or [hl]
    inc [hl]
    xor $AC
    cp $EC
    db $FD
    reti


    ei
    di
    rst $38
    rst $38

    INCBIN "gfx/image_007_4140.2bpp"

    INCBIN "gfx/image_007_5140.2bpp"

    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rst $08
    rst $18
    rst $08
    rst $18
    rst $08
    rst $18
    rst $08
    rst $18
    pop bc
    jp $FFFF


    rst $38
    rst $38
    rst $38
    rst $38
    call z, $CC88
    adc b
    call z, $CC88
    adc b
    xor $88
    rst $38
    call z, $FFFF
    rst $38
    rst $38
    rst $08
    adc a
    rst $08
    adc a
    rst $08
    adc a
    rst $08
    adc a
    rst $28
    adc a
    rst $38
    rst $08
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    jp $C9C7


    db $DB
    jp $C9C7


    db $DB
    jp $FFC7


    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    xor d
    call z, $CCBB
    sbc c
    xor $CC
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    xor a
    rst $08
    cp a
    rst $08
    sbc a
    rst $28
    rst $08
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    sub e
    sub e
    ld bc, $016D
    ld a, l
    add e
    cp e
    rst $00
    rst $10
    rst $28
    rst $28
    rst $38
    rst $38
    rst $38
    rst $38
    rst $18
    rst $08
    cp a
    sbc a
    ld a, a
    ccf
    ld a, a
    ccf
    ld a, a
    ccf
    ld a, a
    ccf
    ld a, a
    ccf
    ld a, a
    ccf
    ld a, a
    ccf
    ld a, a
    ccf
    ld a, a
    ccf
    ld a, a
    ccf
    cp a
    sbc a
    rst $18
    rst $08
    rst $38
    rst $38
    rst $38
    rst $38
    ei
    di
    db $FD
    ld sp, hl
    cp $FC
    cp $FC
    cp $FC
    cp $FC
    cp $FC
    cp $FC
    cp $FC
    cp $FC
    cp $FC
    cp $FC
    db $FD
    ld sp, hl
    ei
    di
    rst $38
    rst $38
    rst $38
    rst $38
    rst $00
    rst $00
    cp e
    sub e
    ld a, l
    ld de, $1D6D
    ld a, l
    ld bc, $83BB
    rst $00
    rst $00
    rst $38
    rst $38
    jp $C9C7


    db $DB
    ret


    db $DB
    jp $CFC7


    rst $18
    rst $08
    rst $18
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    jp $FFC7


    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $00
    rst $08
    sub e
    or a
    add e
    and a
    sub e
    sub a
    sub e
    or a
    rst $00
    rst $08
    rst $38
    rst $38
    rst $38
    rst $38
    rst $20
    rst $28
    rst $00
    rst $08
    rst $20
    rst $28
    rst $20
    rst $28
    rst $20
    rst $28
    rst $20
    rst $28
    rst $38
    rst $38
    rst $38
    rst $38
    rst $00
    rst $08
    sub e
    or a
    di
    rst $30
    rst $00
    rst $08
    sbc a
    cp a
    add e
    add a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $00
    rst $08
    sub e
    or a
    rst $20
    rst $28
    di
    rst $30
    sub e
    or a
    rst $00
    rst $08
    rst $38
    rst $38
    rst $38
    rst $38
    db $E3
    rst $20
    jp $93D7


    or a
    sub e
    or a
    add c
    add e
    di
    rst $30
    rst $38
    rst $38
    rst $38
    rst $38
    add e
    add a
    sbc a
    cp a
    add a
    adc a
    di
    rst $30
    di
    rst $30
    add a
    adc a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $00
    rst $08
    sbc a
    cp a
    add a
    adc a
    sub e
    or a
    sub e
    or a
    rst $00
    rst $08
    rst $38
    rst $38
    rst $38
    rst $38
    add e
    add a
    sub e
    or a
    di
    rst $30
    rst $20
    rst $28
    rst $08
    rst $18
    rst $08
    rst $18
    rst $38
    rst $38
    rst $38
    rst $38
    rst $00
    rst $08
    sub e
    or a
    rst $00
    rst $08
    sub e
    or a
    sub e
    or a
    rst $00
    rst $08
    rst $38
    rst $38
    rst $38
    rst $38
    rst $00
    rst $08
    sub e
    or a
    sub e
    or a
    jp $F3C7


    rst $30
    rst $00
    rst $08
    rst $38
    rst $38
    ccf
    ccf
    ld [hl], c
    ld a, a
    sub a
    ld sp, hl
    or a
    reti


    or a
    reti


    or a
    reti


    or a
    reti


    or a
    reti


    or a
    reti


    or a
    reti


    or a
    reti


    or a
    reti


    or a
    reti


    ld a, a
    ld a, a
    rst $38
    cp l
    cp l
    rst $38
    ld a, a
    ld a, a
    sub c
    rst $38
    or a
    reti


    or a
    reti


    or a
    reti


    or a
    reti


    or a
    reti


    or a
    reti


    rst $38
    rst $38
    ld de, $77FF
    sbc c
    ld [hl], a
    sbc c
    ld [hl], a
    sbc c
    ld [hl], a
    sbc c
    ld [hl], a
    sbc c
    ld [hl], a
    sbc c
    ld [hl], a
    sbc c
    ld [hl], a
    sbc c
    ld [hl], a
    sbc c
    ld [hl], a
    sbc c
    ld [hl], a
    sbc c
    rst $38
    rst $38
    rst $38
    cp l
    cp l
    rst $38
    db $FC
    db $FC
    ld e, $FE
    ld [hl], c
    sbc a
    ld [hl], a
    sbc c
    ld [hl], a
    sbc c
    ld [hl], a
    sbc c
    ld [hl], a
    sbc c
    ld [hl], a
    sbc c
    ld [hl], a
    sbc c
    ld [hl], a
    sbc c
    ld [hl], a
    sbc c
    ld [hl], a
    sbc c
    ld [hl], a
    sbc c
    cp $FE
    rst $38
    cp l
    cp l
    rst $38
    inc l
    inc [hl]
    inc l
    inc [hl]
    inc l
    inc [hl]
    inc l
    inc [hl]
    ld a, [hl]
    inc a
    halt
    ld a, d
    halt
    ld a, d
    halt
    ld a, d
    ld a, [hl]
    ld a, [hl]
    ld l, [hl]
    inc [hl]
    inc l
    inc [hl]
    inc l
    inc [hl]
    inc l
    inc [hl]
    inc l
    inc [hl]
    inc l
    inc [hl]
    inc l
    inc [hl]
    jr jr_007_53E2

    ld [$1818], sp
    ld [$1810], sp
    jr jr_007_53EA

    ld [$1818], sp
    ld [$1810], sp
    ld c, $0B

jr_007_53E2:
    ld b, $07
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld b, $07

jr_007_53EA:
    ld c, $0B
    dec e
    dec de
    ld de, $7015
    ret nc

    ld h, b
    ldh [rLCDC], a
    ret nz

    ld b, b
    ret nz

    ld h, b
    ldh [rSVBK], a
    ret nc

    cp b
    ret c

    adc b
    xor b

Call_007_5400:
    jr jr_007_541A

    inc h
    inc a
    inc l
    inc [hl]
    ld b, d
    halt
    ld d, d
    ld h, [hl]
    ld d, d
    ld h, [hl]
    ld d, d
    ld h, [hl]
    inc a
    inc a
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

jr_007_541A:
    dec [hl]
    adc e
    ld h, c
    sbc a
    rst $38
    ld a, [hl]
    rst $38
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
    cp $FF
    ld a, [hl]
    sub a
    adc l
    cp a
    adc a
    res 7, c
    ei
    ld sp, hl
    cp l
    adc e
    jp hl


    sbc a
    rst $38
    ld a, [hl]
    ld a, a
    ld a, a
    rst $30
    xor [hl]
    rst $30
    xor [hl]
    rst $30
    xor [hl]
    rst $30
    xor [hl]
    rst $30
    xor [hl]
    rst $30
    xor [hl]
    ld a, a
    ld a, a
    rst $38
    rst $38
    cp l
    ld a, [hl]
    cp l
    ld a, [hl]
    cp l
    ld a, [hl]
    cp l
    ld a, [hl]
    cp l
    ld a, [hl]
    cp l
    ld a, [hl]
    rst $38
    rst $38
    cp $FE
    rst $28
    ld [hl], l
    rst $28
    ld [hl], l
    rst $28
    ld [hl], l
    rst $28
    ld [hl], l
    rst $28
    ld [hl], l
    rst $28
    ld [hl], l
    cp $FE
    rst $38
    rst $38
    or h
    ret nz

    rst $38
    rst $38
    add hl, de
    ld e, $19
    ld e, $FF
    rst $38
    or h
    ret nz

    rst $38
    rst $38
    rst $38
    rst $38
    dec l
    inc bc
    rst $38
    rst $38
    jr jr_007_5510

    jr jr_007_5512

jr_007_549A:
    rst $38
    rst $38
    dec l
    inc bc
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    dec b
    ld b, $04
    rlca
    ld [bc], a
    inc bc
    inc bc
    inc bc
    ld [hl-], a
    inc sp
    inc bc
    inc bc
    ld b, $04
    add l
    add [hl]
    ld e, h
    ld e, a
    and b
    ccf
    nop
    rst $38
    ld a, [de]
    ldh [rNR10], a
    rst $08
    nop
    nop
    add b
    add b
    add a
    add a
    ld [$13EC], a
    db $FC
    ld bc, $C3FF
    rra
    ld sp, $00CF
    nop
    nop
    nop
    nop
    nop
    add b
    add b
    add b
    add b
    nop
    nop
    nop
    nop
    jr nc, jr_007_5510

    jr @+$17

    db $10
    ld d, $1C
    dec de
    inc e
    inc e
    dec de
    inc de
    ld [$1818], sp
    ld [$1810], sp
    jr jr_007_549A

    ld [$3868], sp
    ret c

    ld hl, sp+$38
    ret c

    ret nc

    ld [$1818], sp
    ld [$1810], sp
    nop
    ld hl, sp+$78
    add h
    inc c
    add d
    ld b, $81
    ld h, d
    add c
    ld [hl], d
    add c
    ld [hl], d
    add c
    nop
    rst $38

jr_007_5510:
    nop
    rra

jr_007_5512:
    ld e, $21
    jr nc, jr_007_5557

    ld h, b
    add c
    ld b, [hl]
    add c
    ld c, [hl]
    add c
    ld c, [hl]
    add c
    nop
    rst $38
    nop
    rst $38
    ld c, [hl]
    add c
    ld c, [hl]
    add c
    ld b, [hl]
    add c
    ld h, b
    add c
    jr nc, jr_007_556D

    ld e, $21
    nop
    rra
    nop
    rst $38
    ld [hl], d
    add c
    ld [hl], d
    add c
    ld h, d
    add c
    ld b, $81
    inc c
    add d
    ld a, b
    add h
    nop
    ld hl, sp+$00
    rst $38
    rst $38
    nop
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    rst $38
    ld b, d
    and l
    ld b, d
    and l
    ld b, d
    and l
    ld b, d

jr_007_5557:
    and l
    ld b, d
    and l
    ld b, d
    and l
    ld b, d
    and l
    ld b, d
    and l
    nop
    rst $38
    ld a, [hl]
    add c
    ld a, [hl]
    add c
    ld a, [hl]
    add c
    nop
    add c
    ld a, [hl]
    add c
    nop

jr_007_556D:
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [hl], h
    add e
    ld [hl], h
    add e
    ld [hl], h
    add e
    ld [hl], h
    add e
    ld [hl], h
    add e
    ld [hl], h
    add e
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    nop
    rst $38
    nop
    nop
    rst $38
    nop
    nop
    nop
    nop
    ld [$0824], sp
    inc h
    ld [$0824], sp
    inc h
    ld [$0824], sp
    inc h
    ld [$0824], sp
    inc h
    ld l, h
    ld c, a
    ld e, b
    ld h, a
    ld hl, $1A3E
    inc e
    inc de
    inc e
    ld [hl], e
    ld a, h
    and d
    sbc h
    jp nc, Jump_007_6FBC

    sbc a
    ld d, b
    ccf
    and b
    ld a, a
    inc hl

jr_007_55B7:
    ld hl, sp+$4F
    rst $30
    ld c, b
    add sp, $5B
    db $EB
    ld c, e
    ld [$E7D0], a
    jr z, jr_007_55B7

    ld d, $F9
    ld [de], a
    ld a, h
    adc e
    cp h
    ld l, d
    ld e, h
    ld [$EBDC], a
    ld e, h
    add sp, -$38
    jr @-$16

    db $10
    ldh a, [$60]
    ldh [rNR41], a
    ldh [$38], a
    ld hl, sp+$34
    db $E4
    inc c
    db $F4
    nop
    ld a, a
    ld [$08A6], sp
    and [hl]
    ld [$08A6], sp
    and [hl]
    ld [$08A6], sp
    and [hl]
    nop
    ld a, a
    nop
    rst $38
    ld b, d
    inc a
    ld b, d
    inc a
    ld b, d
    inc a
    ld b, d
    inc a
    ld b, d
    inc a
    ld b, d
    inc a
    nop
    rst $38
    nop
    cp $10
    ld h, l
    db $10
    ld h, l
    db $10
    ld h, l
    db $10
    ld h, l
    db $10
    ld h, l
    db $10
    ld h, l
    nop
    cp $00
    inc a
    inc a
    ld b, d
    ld b, d
    sbc c
    ld b, d
    and l
    ld b, d
    and l
    ld b, d
    sbc c
    inc a
    ld b, d
    nop
    inc a
    rrca
    rlca
    jr c, jr_007_5643

    ld a, a
    jr nc, jr_007_56A0

    ld h, c
    pop af
    ld b, a
    and e
    call z, $C9A6
    cp h
    jp c, $E0F0

    inc e
    ld hl, sp-$02
    inc c
    sbc [hl]
    add [hl]
    adc a
    ld [c], a
    push bc
    inc sp
    ld h, l
    sub e
    dec a
    ld e, e
    ld [$1808], sp

jr_007_5643:
    ld [$1818], sp
    inc e
    add hl, de
    sbc h
    dec d
    cp [hl]
    or l
    and $AF
    ld [hl], d
    rst $08
    nop
    nop
    inc a
    nop
    ld [hl+], a
    nop
    ld [c], a
    nop
    add d
    nop
    rst $08
    nop
    ld a, c
    nop
    ld b, c
    nop
    ld a, [hl]
    ld a, [hl]
    rst $38
    add c
    rst $38
    rst $38
    rst $38
    add c
    add c
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add c
    rst $38
    ld a, a
    sub d
    sub b
    or e
    sub e
    sub $B2
    cp $FE
    cp e
    add a
    and e
    sbc $FF
    ld a, a
    rst $38
    cp $CD
    ld b, l
    rst $18
    rst $08
    ei
    ld c, c
    rst $38
    ld a, c
    db $FD
    set 1, c

jr_007_568D:
    ccf
    rst $38
    cp $F9
    nop
    rrca
    nop
    add hl, bc
    nop
    ld sp, hl
    nop
    ld bc, $0F00
    nop
    add hl, bc

jr_007_569D:
    nop
    rrca

jr_007_569F:
    nop

jr_007_56A0:
    ld [hl], e
    ld a, h
    inc de
    inc e
    ld a, [de]
    inc e
    ld sp, $602E
    ld e, a

jr_007_56AA:
    ld c, h
    ld a, a
    ld [hl-], a
    inc sp
    inc bc
    inc bc
    ld e, e

jr_007_56B1:
    ld [$F74F], a

jr_007_56B4:
    daa
    ld hl, sp+$20
    ld a, a

jr_007_56B8:
    ret nc

    ccf
    ld c, a
    sbc a
    jr nz, jr_007_568D

    ld a, [de]
    ldh [$BA], a
    inc l
    db $DB
    inc e

jr_007_56C4:
    ld a, [$77CC]
    and h
    ld a, [hl-]
    di

jr_007_56CA:
    rst $28
    ret


    halt
    call nc, $42FB
    jr c, jr_007_56CA

    jr nz, jr_007_56B4

    jr nz, @-$1E

    jr nz, jr_007_56B8

    jr nc, jr_007_56AA

    jr jr_007_56C4

    ret z

    ld hl, sp+$70
    ld [hl], b
    nop
    inc bc
    ld [bc], a
    inc b
    inc bc
    inc b
    nop
    inc bc
    ld bc, $2332
    ld c, h
    ld [hl], $40
    inc d
    jr z, jr_007_56F5

    adc c
    ld b, $79
    ccf

jr_007_56F5:
    ld b, b
    ret nz

    nop
    sbc a
    nop
    jr nz, jr_007_571B

    ld e, a
    jr nz, jr_007_56B1

    ld b, b
    nop
    inc e
    db $10
    ld [c], a
    ret c

    ld [hl+], a
    jr nc, jr_007_5714

    sbc b
    dec b
    ld c, l
    add d
    and a
    ld b, b
    jp nc, Jump_000_0021

    nop
    nop
    nop

jr_007_5714:
    nop
    nop
    nop
    nop
    nop
    ret nz

    nop

jr_007_571B:
    jr nz, jr_007_569D

    jr nz, jr_007_569F

    ld b, b
    cp h
    jp c, $C9A6

    and e
    call z, $47F1
    ld a, c
    ld h, c
    ld a, a
    jr nc, jr_007_5765

    rra
    rrca
    rlca
    dec a
    ld e, e
    ld h, l
    sub e
    push bc
    inc sp
    adc a
    ld [c], a
    sbc [hl]
    add [hl]
    cp $0C
    inc e
    ld hl, sp-$10
    ldh [$1F], a
    nop
    jr nz, jr_007_5744

jr_007_5744:
    ld c, a
    nop
    sbc d
    nop
    xor d
    nop
    xor d
    nop
    xor d
    nop
    xor d
    nop
    ldh a, [rP1]
    ld [$E400], sp
    nop
    or d
    nop
    xor d
    nop
    xor d
    nop
    xor d
    nop
    xor d
    nop
    rst $38
    add c
    add c
    rst $38
    rst $38

jr_007_5765:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add c
    rst $38
    rst $38
    add c
    nop
    nop
    inc bc
    nop
    rlca
    nop
    ld e, $00
    ld h, $00
    ld l, $00
    inc sp
    nop
    ld hl, $7F00
    nop
    rst $00
    nop
    ld bc, $0100
    nop
    ld bc, $0300
    nop
    ccf
    nop
    rst $28
    nop
    ret nz

    nop
    jr nz, jr_007_5794

jr_007_5794:
    ret nc

    nop
    ldh a, [rP1]
    sbc b
    nop
    inc c
    nop
    ld b, $00
    ld [bc], a
    nop
    ld [bc], a
    inc bc
    inc b
    rlca
    inc b
    rlca
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
    rst $38
    jr nz, @+$01

    ld e, h
    rst $18
    add h
    add a
    inc b
    rlca
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    dec l
    pop af
    ld d, $F8
    jp hl


    xor $8F
    adc a
    adc a
    adc h
    ld [$0D0F], sp
    ld c, $07
    rlca
    cp [hl]
    ld a, $51
    sub c
    adc e
    ld l, c
    cp a
    ld l, c
    db $ED
    sbc e
    ld sp, hl
    ld [hl], a
    ld bc, $FEFF
    cp $0D
    db $10
    dec c
    ld [hl], b
    dec l
    sub b
    ld l, l
    sub b
    dec c
    ld [hl], b
    dec c
    db $10
    inc d
    jr z, @+$20

    ld b, b
    ld h, b
    adc a
    ld b, b
    sub b
    ld b, b
    sub b
    ld b, b
    sub b
    ld b, b
    sub b
    ld h, b
    adc a
    or [hl]
    ld b, b
    ld e, a
    jr nz, jr_007_586C

    db $10
    dec hl
    sub b
    dec hl
    sub b
    dec hl
    sub b
    dec hl
    sub b
    ld l, e
    db $10
    jp nc, $A721

    ld b, b
    nop
    add b
    nop
    ldh [rLCDC], a
    sub b
    ld h, b
    sub b
    nop
    ldh [rP1], a
    add b
    add b
    ld b, b
    add b
    jr nz, @+$01

    rst $38
    and [hl]
    and d
    rst $38
    and d
    and d
    rst $38
    rst $38
    rst $38
    sbc h
    adc b
    rst $38
    adc b
    adc b
    rst $38
    rst $38
    rst $38
    call $FF45
    ld b, l
    ld b, l
    rst $38
    rst $38
    rst $38
    db $D3
    ld sp, $31DF
    ld de, $AAFF
    nop
    xor d
    nop
    xor d
    nop
    xor d
    nop
    xor d
    nop
    xor d
    nop
    xor d
    nop
    xor d
    nop
    xor d
    nop
    xor d
    nop
    xor d
    nop
    xor d
    nop
    xor d
    nop
    xor d
    nop
    xor d
    nop
    xor d
    nop
    rst $38
    add c
    rst $38
    rst $38
    rst $38
    rst $38
    add c
    rst $38
    rst $38
    add c
    rst $38
    rst $38

jr_007_586C:
    rst $38
    add c
    ld a, [hl]
    ld a, [hl]
    ld h, c
    nop
    ld h, c
    nop
    inc sp
    nop
    ld a, [hl]
    nop
    ld b, [hl]
    nop
    add $00
    add d
    nop
    add d
    nop
    xor e
    nop
    xor d
    nop
    xor d
    nop
    xor d
    nop
    xor d
    nop
    xor d
    nop
    xor d
    nop
    xor d
    nop
    add [hl]
    nop
    rst $00
    nop
    and l
    nop
    cp l
    nop
    ld h, e
    nop
    pop bc
    nop
    pop bc
    nop
    pop bc
    nop
    ld [$40C0], sp
    xor b
    ld c, d
    or h
    ld c, h
    and d
    inc c
    di
    ld [de], a
    adc h
    inc d
    adc b
    ld [hl], a
    adc b
    nop
    nop
    nop
    nop
    add b
    nop
    add c
    ld b, b
    add b
    ld h, e
    ld e, d
    dec h
    ld d, d
    add hl, hl
    rst $28
    stop
    rst $38
    inc b
    and d
    ld b, h
    and d
    ld e, l
    and d
    nop
    rst $38
    db $10
    adc b
    db $10
    adc b
    ld [hl], a
    adc b
    nop
    rst $38
    adc b
    ld b, l
    adc d
    ld b, l
    cp d
    ld b, l
    nop
    rst $38
    ld h, d
    ld de, $1162
    xor $11
    inc sp
    ld c, h
    ld bc, $0032
    inc bc
    ld bc, $0304
    inc b
    nop
    inc bc
    nop
    nop
    nop
    nop
    jr nz, @+$21

    sbc a
    nop
    ret nz

    nop
    cp a
    ld b, b
    ld b, $F9
    ld b, $09
    ld b, $09
    nop
    ld b, $4C
    add e
    sbc b
    dec b
    jr nc, jr_007_5912

    ret c

    ld [hl+], a
    inc c
    ld a, [c]
    nop
    inc c
    nop
    nop
    nop
    nop
    ld hl, sp+$00

jr_007_5912:
    ld [$0800], sp
    nop
    ld a, [$0200]
    nop
    rrca
    nop
    add hl, bc
    nop
    rrca
    nop
    nop
    nop
    ld h, b
    nop
    jr nz, jr_007_5926

jr_007_5926:
    inc a
    nop
    inc h
    nop
    cpl
    nop
    ld a, b
    nop
    ld [$0000], sp
    nop
    jr nz, jr_007_5934

jr_007_5934:
    jr nz, jr_007_5936

jr_007_5936:
    db $FC
    nop
    adc b
    nop
    ret z

    nop
    ld a, b
    nop
    ld b, b
    nop
    rrca
    nop
    ld bc, $0100
    nop
    ld a, c
    nop
    rst $08
    nop
    ld a, c
    nop
    ld de, $1F00
    nop
    rst $38
    nop
    inc bc
    nop
    ld bc, $8100
    nop
    rst $38
    nop
    jr nc, jr_007_595C

jr_007_595C:
    stop
    stop
    ld b, b
    sbc c
    ld b, d
    cp l
    ld h, $99
    ld b, d
    cp l
    ld b, h
    sbc c
    ld b, d
    cp l
    ld [hl+], a
    sbc c
    ld b, b
    cp l
    add $00
    ld l, h
    nop
    ld a, [hl]
    nop
    ld b, [hl]
    nop
    add $00
    add [hl]
    nop
    add $00
    cp $00
    xor d
    nop
    xor d
    nop
    xor d
    nop
    xor d
    nop
    xor d
    nop
    xor d
    nop
    xor d
    nop
    xor d
    nop
    rst $38
    nop
    or d
    nop
    and c
    nop
    and c
    nop
    and c
    nop
    and c
    nop
    xor e
    nop
    cp a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rst $08
    rst $18
    rst $08
    rst $18
    rst $08
    rst $18
    rst $08
    rst $18
    pop bc
    jp $FFFF


    rst $38
    rst $38
    rst $38
    rst $38
    call z, $CC88
    adc b
    call z, $CC88
    adc b
    xor $88
    rst $38
    call z, $FFFF
    rst $38
    rst $38
    rst $08
    adc a
    rst $08
    adc a
    rst $08
    adc a
    rst $08
    adc a
    rst $28
    adc a
    rst $38
    rst $08
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    jp $C9C7


    db $DB
    jp $C9C7


    db $DB
    jp $FFC7


    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    xor d
    call z, $CCBB
    sbc c
    xor $CC
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    xor a
    rst $08
    cp a
    rst $08
    sbc a
    rst $28
    rst $08
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    sub e
    sub e
    ld bc, $016D
    ld a, l
    add e
    cp e
    rst $00
    rst $10
    rst $28
    rst $28
    rst $38
    rst $38
    rst $38
    rst $38
    rst $18
    rst $08
    cp a
    sbc a
    ld a, a
    ccf
    ld a, a
    ccf
    ld a, a
    ccf
    ld a, a
    ccf
    ld a, a
    ccf
    ld a, a
    ccf
    ld a, a
    ccf
    ld a, a
    ccf
    ld a, a
    ccf
    ld a, a
    ccf
    cp a
    sbc a
    rst $18
    rst $08
    rst $38
    rst $38
    rst $38
    rst $38
    ei
    di
    db $FD
    ld sp, hl
    cp $FC
    cp $FC
    cp $FC
    cp $FC
    cp $FC
    cp $FC
    cp $FC
    cp $FC
    cp $FC
    cp $FC
    db $FD
    ld sp, hl
    ei
    di
    rst $38
    rst $38
    rst $38
    rst $38
    rst $00
    rst $00
    cp e
    sub e
    ld a, l
    ld de, $1D6D
    ld a, l
    ld bc, $83BB
    rst $00
    rst $00
    rst $38
    rst $38
    jp $C9C7


    db $DB
    ret


    db $DB
    jp $CFC7


    rst $18
    rst $08
    rst $18
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    jp $FFC7


    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $00
    rst $08
    sub e
    or a
    add e
    and a
    sub e
    sub a
    sub e
    or a
    rst $00
    rst $08
    rst $38
    rst $38
    rst $38
    rst $38
    rst $20
    rst $28
    rst $00
    rst $08
    rst $20
    rst $28
    rst $20
    rst $28
    rst $20
    rst $28
    rst $20
    rst $28
    rst $38
    rst $38
    rst $38
    rst $38
    rst $00
    rst $08
    sub e
    or a
    di
    rst $30
    rst $00
    rst $08
    sbc a
    cp a
    add e
    add a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $00
    rst $08
    sub e
    or a
    rst $20
    rst $28
    di
    rst $30
    sub e
    or a
    rst $00
    rst $08
    rst $38
    rst $38
    rst $38
    rst $38
    db $E3
    rst $20
    jp $93D7


    or a
    sub e
    or a
    add c
    add e
    di
    rst $30
    rst $38
    rst $38
    rst $38
    rst $38
    add e
    add a
    sbc a
    cp a
    add a
    adc a
    di
    rst $30
    di
    rst $30
    add a
    adc a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $00
    rst $08
    sbc a
    cp a
    add a
    adc a
    sub e
    or a
    sub e
    or a
    rst $00
    rst $08
    rst $38
    rst $38
    rst $38
    rst $38
    add e
    add a
    sub e
    or a
    di
    rst $30
    rst $20
    rst $28
    rst $08
    rst $18
    rst $08
    rst $18
    rst $38
    rst $38
    rst $38
    rst $38
    rst $00
    rst $08
    sub e
    or a
    rst $00
    rst $08
    sub e
    or a
    sub e
    or a
    rst $00
    rst $08
    rst $38
    rst $38
    rst $38
    rst $38
    rst $00
    rst $08
    sub e
    or a
    sub e
    or a
    jp $F3C7


    rst $30
    rst $00
    rst $08
    rst $38
    rst $38
    ccf
    ccf
    ld [hl], c
    ld a, a
    sub a
    ld sp, hl
    or a
    reti


    or a
    reti


    or a
    reti


    or a
    reti


    or a
    reti


    or a
    reti


    or a
    reti


    or a
    reti


    or a
    reti


    or a
    reti


    ld a, a
    ld a, a
    rst $38
    cp l
    cp l
    rst $38
    ld a, a
    ld a, a
    sub c
    rst $38
    or a
    reti


    or a
    reti


    or a
    reti


    or a
    reti


    or a
    reti


    or a
    reti


    rst $38
    rst $38
    ld de, $77FF
    sbc c
    ld [hl], a
    sbc c
    ld [hl], a
    sbc c
    ld [hl], a
    sbc c
    ld [hl], a
    sbc c
    ld [hl], a
    sbc c
    ld [hl], a
    sbc c
    ld [hl], a
    sbc c
    ld [hl], a
    sbc c
    ld [hl], a
    sbc c
    ld [hl], a
    sbc c
    rst $38
    rst $38
    rst $38
    cp l
    cp l
    rst $38
    db $FC
    db $FC
    ld e, $FE
    ld [hl], c
    sbc a
    ld [hl], a
    sbc c
    ld [hl], a
    sbc c
    ld [hl], a
    sbc c
    ld [hl], a
    sbc c
    ld [hl], a
    sbc c
    ld [hl], a
    sbc c
    ld [hl], a
    sbc c
    ld [hl], a
    sbc c
    ld [hl], a
    sbc c
    ld [hl], a
    sbc c
    cp $FE
    rst $38
    cp l
    cp l
    rst $38
    inc l
    inc [hl]
    inc l
    inc [hl]
    inc l
    inc [hl]
    inc l
    inc [hl]
    ld a, [hl]
    inc a
    halt
    ld a, d
    halt
    ld a, d
    halt
    ld a, d
    ld a, [hl]
    ld a, [hl]
    ld l, [hl]
    inc [hl]
    inc l
    inc [hl]
    inc l
    inc [hl]
    inc l
    inc [hl]
    inc l
    inc [hl]
    inc l
    inc [hl]
    inc l
    inc [hl]
    jr jr_007_5BE2

    ld [$1818], sp
    ld [$1810], sp
    jr jr_007_5BEA

    ld [$1818], sp
    ld [$1810], sp
    ld c, $0B

jr_007_5BE2:
    ld b, $07
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld b, $07

jr_007_5BEA:
    ld c, $0B
    dec e
    dec de
    ld de, $7015

jr_007_5BF1:
    ret nc

    ld h, b
    ldh [rLCDC], a
    ret nz

    ld b, b
    ret nz

    ld h, b
    ldh [rSVBK], a
    ret nc

    cp b
    ret c

    adc b
    xor b
    jr jr_007_5C1A

    inc h
    inc a
    inc l
    inc [hl]
    ld b, d
    halt
    ld d, d
    ld h, [hl]
    ld d, d
    ld h, [hl]
    ld d, d
    ld h, [hl]
    inc a
    inc a
    rst $38
    ld a, [hl]
    inc bc
    add c
    dec l
    add e

jr_007_5C16:
    dec a
    add e
    ld a, l
    add e

jr_007_5C1A:
    dec [hl]
    adc e
    ld h, c
    sbc a
    rst $38
    ld a, [hl]
    rst $38
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

jr_007_5C34:
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
    cp $57
    nop
    db $ED
    nop
    or a
    ld c, b
    ld [hl-], a
    rst $38
    xor l
    jr jr_007_5C16

    inc a
    cp b
    ld e, a
    rst $30
    rst $38
    push hl
    jr jr_007_5BF1

    ld [$9D6A], sp
    rst $10
    rst $38
    db $F4
    ld bc, $58A6
    ld e, b
    rst $20
    rst $38
    rst $38
    ld [$1808], sp
    ld [$1818], sp
    inc e
    add hl, de
    sbc h
    dec d
    cp [hl]
    or l
    and $AF
    ld [hl], d
    rst $08
    ld [hl], d
    rst $08
    and $AF
    cp [hl]
    or l
    sbc h
    dec d
    inc e
    add hl, de
    jr jr_007_5C94

    jr @+$0A

    ld [$3408], sp
    inc l
    inc [hl]
    ld l, [hl]
    jp $81FF


    rst $38
    add c
    add c
    rst $38
    add c
    ld a, [hl]
    ld a, [hl]
    nop
    nop
    nop
    nop
    nop
    nop

jr_007_5C94:
    nop
    nop
    xor $77
    cp e
    db $DD

jr_007_5C9A:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rrca
    ld bc, $0710
    jr nc, jr_007_5CA9

jr_007_5CA9:
    ld e, a
    jr nc, jr_007_5C34

    ld h, b
    sub b
    jr nz, @-$6E

    nop
    nop
    nop
    ldh a, [rLCDC]
    ld [$0CF0], sp
    nop
    ld a, [$1106]
    ld [bc], a
    add hl, bc
    ld [bc], a
    add hl, bc
    db $FC
    nop
    add h
    nop
    add h
    nop
    rst $38
    nop
    stop
    stop
    rra
    nop
    ld bc, $0000
    nop
    db $FC
    nop
    add h
    nop
    db $FC
    nop
    ld b, b
    nop
    ld b, b
    nop
    ld hl, sp+$00
    ld [$1800], sp
    dec d
    db $10
    ld d, $1C
    dec de
    inc e
    inc e
    dec de
    inc de
    ld [$1818], sp
    ld [$1810], sp
    jr jr_007_5C9A

    ld [$3868], sp
    ret c

    ld hl, sp+$38
    ret c

    ret nc

    ld [$1818], sp
    ld [$1810], sp
    rst $38
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
    call z, $FFBB
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
    ld [$779D], a
    db $DD
    call z, $FFBB
    rst $38
    add c
    add b
    rst $28
    add b
    cp a
    ret nz

    cp a
    ret nz

    rst $38
    ld a, a
    ld [hl], l
    rst $18
    ld [$FF9D], a
    rst $38

jr_007_5D36:
    ld b, c
    inc bc

jr_007_5D38:
    pop af
    inc bc
    db $FD
    inc bc

jr_007_5D3C:
    db $FD
    inc bc

jr_007_5D3E:
    rst $38
    cp $A4
    ld c, c
    and h
    ld c, c
    and h
    ld c, c
    and h
    ld c, c
    and h
    ld c, c
    and h
    ld c, c
    and h
    ld c, c
    and h
    ld c, c
    and h
    ld c, c
    and h
    ld c, c
    or l
    ld c, b
    ld d, [hl]
    adc b
    ld [de], a
    adc b
    add b
    ld [$0088], sp
    nop
    add b
    inc hl
    ret z

    inc hl
    ret z

    inc hl
    ret z

    inc hl
    ret z

    inc hl
    ret z

    inc hl
    ret z

    inc hl
    ret z

    inc hl
    ret z

    call z, $CC11
    ld de, $11CC
    call z, $CC11
    ld de, $11CC
    call z, $CC11
    ld de, $7F80
    ld [hl-], a
    add b
    nop
    rst $38
    nop
    add b
    ld a, e
    add b
    ld e, a
    add b
    ld a, a
    add b
    ld a, a
    add b
    ld bc, $9EFE
    ld bc, $FF00
    nop
    ld bc, $0120
    ld l, b
    ld bc, $01F8
    db $FC
    ld bc, $6090
    nop
    sub b
    jr nz, jr_007_5D36

    jr nz, jr_007_5D38

    ld h, b
    sub b
    jr nz, jr_007_5D3C

    jr nz, jr_007_5D3E

    sub b
    ld h, b
    add hl, bc
    ld b, $00
    add hl, bc
    ld [bc], a
    add hl, bc
    ld b, $09
    ld [bc], a
    add hl, bc
    ld [bc], a
    add hl, bc
    ld b, $09
    ld a, c
    ld b, $F1
    nop
    sub a
    nop
    db $F4
    nop
    rlca
    nop
    nop
    nop
    ccf
    nop
    ld hl, $3F00
    nop
    ld [$F800], sp
    nop
    stop
    ldh a, [rP1]
    rra
    nop
    ld de, $1100
    nop
    rra
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0201
    inc bc
    inc b
    inc bc
    inc b
    ld b, $08
    inc b
    ld [$0C10], sp
    jr nz, @-$25

    pop bc
    ld a, $E3
    inc e
    ld [hl], $08
    inc b
    add hl, sp
    ld de, $766E
    adc b
    ld [$0430], sp
    sbc e
    add e
    ld a, h
    ld b, h
    jr c, jr_007_5E35

jr_007_5E09:
    db $10
    ld [bc], a
    sbc h
    add hl, bc
    halt
    jr z, jr_007_5E21

    nop
    nop
    nop
    nop
    nop
    add b
    add b
    ld b, b
    nop
    jr nz, jr_007_5E1B

jr_007_5E1B:
    jr nz, jr_007_5E1D

jr_007_5E1D:
    db $10
    add b
    db $10
    rst $38

jr_007_5E21:
    nop
    ld a, h
    nop
    add c
    nop
    rst $38
    nop
    jr c, @-$37

    ld b, $F8
    ccf
    ret nz

    ld l, $81
    ret nc

    ld c, $21
    inc e

jr_007_5E34:
    adc c

jr_007_5E35:
    ld [hl], b

jr_007_5E36:
    dec de
    ldh [$D2], a
    ld hl, $41B6

jr_007_5E3C:
    inc a
    jp $8679


    jr c, jr_007_5E09

    ld a, [hl+]
    push bc
    ld a, [de]
    push bc
    ld [hl], $C9
    dec c
    ld a, [c]
    ld a, l
    add d
    ld a, [c]
    inc b
    ld h, h
    ld [$E31C], sp
    ld d, h
    and e
    ld e, b
    and e
    ld l, h
    sub e
    or b
    ld c, a
    cp [hl]
    ld b, c
    ld c, a
    jr nz, @+$28

    db $10
    dec bc
    ld [hl], b
    add h
    jr c, @-$6D

    ld c, $D8
    rlca
    ld c, e
    add h
    ld l, l
    add d
    inc a
    jp Jump_007_619E


    rst $38
    nop
    ld a, $00
    add c
    nop
    rst $38
    nop
    inc e
    db $E3
    ld h, b
    rra
    db $FC
    inc bc
    ld [hl], h
    add c
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
    dec bc
    sub b
    jr nz, jr_007_5E34

    jr z, jr_007_5E36

    ld h, d
    sub b
    dec l
    sub b
    jr z, jr_007_5E3C

    ld h, l
    sub b
    sbc e
    ld h, b
    ld h, b
    add hl, bc
    jp nz, $0609

    add hl, bc
    sub d
    add hl, bc
    ld [hl], $09
    ld [hl-], a
    add hl, bc
    ld [hl], d
    add hl, bc
    jp hl


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
    ld b, $0C
    ld de, $1108

jr_007_5EE4:
    add hl, de
    ld [hl+], a
    ld de, $1122
    ld [hl+], a
    ld de, $1122
    ld [hl+], a
    db $10
    inc hl
    ld b, e
    add h
    adc l
    ld [de], a
    xor [hl]
    ld de, $3885
    ld a, [hl-]
    ld b, h
    dec h

jr_007_5EFB:
    ld b, d
    dec h
    ld b, d
    jr nc, jr_007_5F43

    ld e, b
    ld hl, $4894
    inc d
    adc b
    ld [bc], a
    inc e
    db $10
    ld [hl+], a
    and b
    ld b, d
    and b
    ld b, d
    nop
    jp nz, $8840

    ld b, b
    adc b
    jr nz, jr_007_5F5A

    jr nz, jr_007_5F5C

    and b
    ld b, h
    and b
    ld b, h
    and b
    ld b, h
    jr nz, jr_007_5EE4

    ld a, b
    add a
    add c
    ld a, [hl]
    ld b, $78
    cp c
    ld b, b
    ld c, [hl]
    add c
    jr nc, jr_007_5EFB

    inc b
    ld sp, hl
    inc b
    ld l, c
    ret nc

    rrca
    ld h, $19
    ld c, c
    jr nc, jr_007_5F47

    ldh [rNR41], a
    ret nz

    ret nz

    nop
    nop
    nop
    nop
    nop
    adc b
    db $10
    db $10

jr_007_5F43:
    ldh [$E0], a
    nop
    nop

jr_007_5F47:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld de, $0808
    rlca
    rlca
    nop
    nop
    nop
    nop
    nop

jr_007_5F5A:
    nop
    nop

jr_007_5F5C:
    nop
    nop
    nop
    nop
    dec bc
    ldh a, [$64]
    sbc b
    sub d
    inc c
    ld [$0407], sp
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    nop
    ld e, $E1
    add c
    ld a, [hl]
    ld h, b
    ld e, $9D
    ld [bc], a
    ld [hl], d
    add c
    inc c
    di
    and b
    ld e, a
    and h
    ld c, c
    rst $18
    cp a
    ldh [$9F], a
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    cp a
    ret nz

    add b
    rst $38
    rst $38
    ld a, a
    ei
    db $FD
    rlca
    ld sp, hl
    rst $38
    ld bc, $01FF
    rst $38
    ld bc, $03FD
    ld bc, $FFFF
    cp $0F
    sub b
    cpl
    sub b
    cpl
    sub b
    ld l, a
    sub b
    add c
    ld a, [hl]
    ld b, $81
    ld a, [hl-]
    add c
    add c
    ld a, [hl]
    or b
    add hl, bc
    ld a, [c]
    add hl, bc
    or $09
    ld a, [c]
    add hl, bc
    ld bc, $10FE
    ld bc, $016E
    ld bc, $29FE
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
    db $10
    daa
    jr jr_007_6009

    ld [$0815], sp
    inc d
    nop
    inc c
    nop
    inc c
    nop
    ld b, $00
    ld [bc], a
    sbc d
    ld hl, $118E
    add b
    dec c
    ld b, h
    sbc c
    nop
    rst $38
    add hl, de
    ldh [$09], a
    ld [hl], b
    nop
    ccf
    ld c, b

jr_007_6001:
    add h
    ld [hl], c
    adc b
    ld bc, $22B0
    sbc c
    nop

jr_007_6009:
    rst $38
    sbc b

jr_007_600B:
    rlca
    sub b

jr_007_600D:
    ld c, $00

jr_007_600F:
    db $FC
    db $10

jr_007_6011:
    db $E4
    db $10
    and h
    db $10
    xor b
    db $10
    jr z, jr_007_6019

jr_007_6019:
    jr nc, jr_007_601B

jr_007_601B:
    jr nc, jr_007_601D

jr_007_601D:
    ld h, b
    nop
    ld b, b
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
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld bc, $FE03
    ld b, $FE
    inc a
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
    nop
    nop
    ld bc, $0600
    nop
    jr jr_007_6048

jr_007_6048:
    inc hl
    nop
    ld c, h
    inc bc
    sub b
    inc c
    and b
    jr @+$41

    nop
    ret nz

    nop
    ld e, $00
    ld [c], a
    inc e
    ld [bc], a
    ldh [rSC], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    db $FC
    nop
    inc bc
    nop
    ld a, b
    nop
    ld b, a
    jr c, @+$42

    rlca
    ld b, b
    nop
    ld b, b
    nop
    ld b, b
    nop
    nop
    nop
    add b
    nop
    ld h, b
    nop
    jr jr_007_6078

jr_007_6078:
    call nz, Call_000_3200
    ret nz

    add hl, bc
    jr nc, @+$07

    jr jr_007_6001

    nop
    add b
    ld a, $82
    jr nz, jr_007_6009

    jr nz, jr_007_600B

    jr nz, jr_007_600D

    jr nz, jr_007_600F

    jr nz, jr_007_6011

    jr nz, jr_007_6091

jr_007_6091:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, d
    ld a, [hl]
    jr c, @+$3E

    jr @+$12

    jr jr_007_60B8

    ld [$0818], sp
    jr jr_007_60B5

    jr @+$1A

    jr jr_007_60C1

    jr jr_007_60C3

    jr jr_007_60CD

jr_007_60B5:
    ld [$1018], sp

jr_007_60B8:
    jr @+$12

    db $10
    jr jr_007_60CD

    jr jr_007_60BF

jr_007_60BF:
    jr jr_007_60C9

jr_007_60C1:
    jr @+$1A

jr_007_60C3:
    ld [$0818], sp
    jr @+$1A

    db $10

jr_007_60C9:
    jr jr_007_60F3

jr_007_60CB:
    inc [hl]
    ld l, h

jr_007_60CD:
    ld [hl], d
    pop de
    rst $38
    rst $38
    rst $38
    rst $20
    ret nz

    ld [hl], c
    ld h, b
    ld a, a
    ccf
    rlca
    ld bc, $0202
    inc bc
    inc bc
    ld bc, $FF01
    rst $38
    inc bc
    rst $38
    add $3E
    cp $FC
    ld [hl], b
    ret nz

    and b
    ld h, b
    ld h, b
    ld h, b
    ret nz

    ret nz

    inc b

jr_007_60F1:
    jr jr_007_60F7

jr_007_60F3:
    jr jr_007_60F9

    jr jr_007_60FB

jr_007_60F7:
    jr jr_007_60FD

jr_007_60F9:
    jr jr_007_60FF

jr_007_60FB:
    jr jr_007_6101

jr_007_60FD:
    jr @+$06

jr_007_60FF:
    jr jr_007_60F1

jr_007_6101:
    ld [$08F0], sp
    ldh a, [$08]
    ldh a, [$08]
    ldh a, [$08]
    ldh a, [$08]
    ldh a, [$08]

jr_007_610E:
    ldh a, [$08]
    ld h, [hl]
    ld [hl+], a
    ld d, l
    ld de, $5577
    ld [hl], a
    ld d, l
    ld [hl], a
    ld d, l
    ld [hl], a
    ld d, l
    scf
    ccf
    add hl, de
    dec e
    ld h, [hl]
    ld a, [hl+]
    ld d, l
    ld de, $5577
    ld [hl], a
    ld d, l
    ld [hl], a
    ld d, l
    ld [hl], a

jr_007_612B:
    ld d, l
    ld [hl], a
    rst $38
    sbc h
    sbc $66
    ld [hl+], a
    ld d, l
    ld de, $5577
    ld [hl], a
    ld d, l
    ld [hl], a
    ld d, l
    ld [hl], a
    ld d, l
    halt
    cp $CC
    call c, $308C
    add e
    inc l
    add b
    inc hl
    add b
    jr nz, jr_007_60C9

    jr nz, jr_007_60CB

    jr nz, jr_007_60CD

    jr nz, jr_007_610E

    nop
    ld c, $00
    ld [de], a
    inc c
    ld [c], a
    db $10
    ld [hl-], a
    ret nz

    adc [hl]
    ld [hl], b
    add h
    ld c, b
    adc b
    ld b, b
    rst $38
    nop
    ld [hl], b
    nop
    ld c, b
    jr nc, jr_007_61AC

    ld [$034C], sp
    ld [hl], c
    ld c, $21
    ld [de], a
    ld de, $FF02
    nop
    ld sp, $C10A
    ld [hl-], a
    ld bc, $01C2
    ld [bc], a
    ld bc, $0102
    ld [bc], a
    ld bc, $FF02
    nop
    add d
    jr nz, @-$7C

    jr nz, @-$7C

    jr nz, @-$7C

    jr nz, @-$7C

    jr nz, @-$7C

    jr nz, jr_007_612B

    jr nz, @-$7E

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_007_619E:
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $08
    rst $18
    rst $08
    rst $18
    rst $08
    rst $18
    rst $08
    rst $18

jr_007_61AC:
    pop bc
    jp $FFFF


    rst $38
    rst $38
    rst $38
    rst $38
    call z, $CC88
    adc b
    call z, $CC88
    adc b
    xor $88
    rst $38
    call z, $FFFF
    rst $38
    rst $38
    rst $08
    adc a
    rst $08
    adc a
    rst $08
    adc a
    rst $08
    adc a
    rst $28
    adc a
    rst $38
    rst $08
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    jp $C9C7


    db $DB
    jp $C9C7


    db $DB
    jp $FFC7


    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    xor d
    call z, $CCBB
    sbc c
    xor $CC
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    xor a
    rst $08
    cp a
    rst $08
    sbc a
    rst $28
    rst $08
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    sub e
    sub e
    ld bc, $016D
    ld a, l
    add e
    cp e
    rst $00
    rst $10
    rst $28
    rst $28
    rst $38
    rst $38
    rst $38
    rst $38
    rst $18
    rst $08
    cp a
    sbc a
    ld a, a
    ccf
    ld a, a
    ccf
    ld a, a
    ccf
    ld a, a
    ccf
    ld a, a
    ccf
    ld a, a
    ccf
    ld a, a
    ccf
    ld a, a
    ccf
    ld a, a
    ccf
    ld a, a
    ccf
    cp a
    sbc a
    rst $18
    rst $08
    rst $38
    rst $38
    rst $38
    rst $38
    ei
    di
    db $FD
    ld sp, hl
    cp $FC
    cp $FC
    cp $FC
    cp $FC
    cp $FC
    cp $FC
    cp $FC
    cp $FC
    cp $FC
    cp $FC
    db $FD
    ld sp, hl
    ei
    di
    rst $38
    rst $38
    rst $38
    rst $38
    rst $00
    rst $00
    cp e
    sub e
    ld a, l
    ld de, $1D6D
    ld a, l
    ld bc, $83BB
    rst $00
    rst $00
    rst $38
    rst $38
    jp $C9C7


    db $DB
    ret


    db $DB
    jp $CFC7


    rst $18
    rst $08
    rst $18
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    jp $FFC7


    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $00
    rst $08
    sub e
    or a
    add e
    and a
    sub e
    sub a
    sub e
    or a
    rst $00
    rst $08
    rst $38
    rst $38
    rst $38
    rst $38
    rst $20
    rst $28
    rst $00
    rst $08
    rst $20
    rst $28
    rst $20
    rst $28
    rst $20
    rst $28
    rst $20
    rst $28
    rst $38
    rst $38
    rst $38
    rst $38
    rst $00
    rst $08
    sub e
    or a
    di
    rst $30
    rst $00
    rst $08
    sbc a
    cp a
    add e
    add a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $00
    rst $08
    sub e
    or a
    rst $20
    rst $28
    di
    rst $30
    sub e
    or a
    rst $00
    rst $08
    rst $38
    rst $38
    rst $38
    rst $38
    db $E3
    rst $20
    jp $93D7


    or a
    sub e
    or a
    add c
    add e
    di
    rst $30
    rst $38
    rst $38
    rst $38
    rst $38
    add e
    add a
    sbc a
    cp a
    add a
    adc a
    di
    rst $30
    di
    rst $30
    add a
    adc a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $00
    rst $08
    sbc a
    cp a
    add a
    adc a
    sub e
    or a
    sub e
    or a
    rst $00
    rst $08
    rst $38
    rst $38
    rst $38
    rst $38
    add e
    add a
    sub e
    or a
    di
    rst $30
    rst $20
    rst $28
    rst $08
    rst $18
    rst $08
    rst $18
    rst $38
    rst $38
    rst $38
    rst $38
    rst $00
    rst $08
    sub e
    or a
    rst $00
    rst $08
    sub e
    or a
    sub e
    or a
    rst $00
    rst $08
    rst $38
    rst $38
    rst $38
    rst $38
    rst $00
    rst $08
    sub e
    or a
    sub e
    or a
    jp $F3C7


    rst $30
    rst $00
    rst $08
    rst $38
    rst $38
    ccf
    ccf
    ld [hl], c
    ld a, a
    sub a
    ld sp, hl
    or a
    reti


    or a
    reti


    or a
    reti


    or a
    reti


    or a
    reti


    or a
    reti


    or a
    reti


    or a
    reti


    or a
    reti


    or a
    reti


    ld a, a
    ld a, a
    rst $38
    cp l
    cp l
    rst $38
    ld a, a
    ld a, a
    sub c
    rst $38
    or a
    reti


    or a
    reti


    or a
    reti


    or a
    reti


    or a
    reti


    or a
    reti


    rst $38
    rst $38
    ld de, $77FF
    sbc c
    ld [hl], a
    sbc c
    ld [hl], a
    sbc c
    ld [hl], a
    sbc c
    ld [hl], a
    sbc c
    ld [hl], a
    sbc c
    ld [hl], a
    sbc c
    ld [hl], a
    sbc c
    ld [hl], a
    sbc c
    ld [hl], a
    sbc c
    ld [hl], a
    sbc c
    rst $38
    rst $38
    rst $38
    cp l
    cp l
    rst $38
    db $FC
    db $FC
    ld e, $FE
    ld [hl], c
    sbc a
    ld [hl], a
    sbc c
    ld [hl], a
    sbc c
    ld [hl], a
    sbc c
    ld [hl], a
    sbc c
    ld [hl], a
    sbc c
    ld [hl], a
    sbc c
    ld [hl], a
    sbc c
    ld [hl], a
    sbc c
    ld [hl], a
    sbc c
    ld [hl], a
    sbc c
    cp $FE
    rst $38
    cp l
    cp l
    rst $38
    inc l
    inc [hl]
    inc l
    inc [hl]
    inc l
    inc [hl]
    inc l
    inc [hl]
    ld a, [hl]
    inc a
    halt
    ld a, d
    halt
    ld a, d
    halt
    ld a, d
    ld a, [hl]
    ld a, [hl]
    ld l, [hl]
    inc [hl]
    inc l
    inc [hl]
    inc l
    inc [hl]
    inc l
    inc [hl]
    inc l
    inc [hl]
    inc l
    inc [hl]
    inc l
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
    nop
    nop
    nop
    ld b, b
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
    nop
    ld [$0800], sp
    nop
    ld [$1800], sp
    nop
    jr jr_007_63EF

    jr jr_007_63F1

    jr jr_007_63EF

jr_007_63EF:
    inc e
    nop

jr_007_63F1:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0200
    ld bc, $0205
    nop
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
    ld b, b
    add b
    and b
    ld b, b
    ld [$1204], sp
    add hl, bc
    inc h
    ld [de], a
    ld bc, $4924
    inc h
    ld b, e
    inc h
    ld b, c
    inc h
    ld c, c
    inc h
    ld d, b
    jr nz, jr_007_642B

    sub b
    jr nc, @+$4A

    ret z

    inc h
    ret z

    inc h
    ret z

jr_007_642B:
    inc h
    ret z

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
    inc h
    ld b, c
    inc h
    inc bc
    inc h
    dec bc
    inc h
    ld c, e
    inc h
    ret nz

    inc h
    ret z

    inc h
    ret z

    inc h
    ret nz

    inc h
    ret z

    inc h
    ret z

    inc h
    ret nz

    inc h
    ret z

    inc h
    nop
    stop
    stop
    stop
    jr jr_007_6459

jr_007_6459:
    jr @+$22

    jr jr_007_647D

    jr jr_007_645F

jr_007_645F:
    jr c, @+$04

    ld bc, $0300
    ld bc, $0102
    ld b, $01
    ld b, $00
    ld b, $00

jr_007_646D:
    ld c, $00
    ld c, $FC
    nop
    add h
    nop
    add h
    nop
    rst $38
    nop
    stop
    stop
    rra

jr_007_647D:
    nop
    ld bc, $0000
    nop
    db $FC
    nop
    add h
    nop
    db $FC
    nop
    ld b, b
    nop
    ld b, b
    nop
    ld hl, sp+$00
    ld [$8000], sp
    ld a, a
    ld bc, $1AC0
    add b
    dec a
    add b
    ld [hl], a
    add b
    ld a, [hl]
    add c
    jr nc, jr_007_646D

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
    jr nc, jr_007_647D

    nop
    rst $38
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
    nop
    nop
    nop
    nop
    nop
    nop
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
    jr z, @+$52

    jr z, @+$12

    jr z, @+$2A

    inc d
    inc l
    ld [de], a
    inc b
    ld a, [de]
    ld c, $11
    ld c, $11
    ld [$0834], sp
    inc [hl]
    jr jr_007_650A

    jr jr_007_650C

    jr jr_007_650E

    jr jr_007_6512

    jr @+$28

    jr jr_007_6516

    rst $38
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
    call z, $FFBB
    cp $41
    inc bc
    pop af
    inc bc
    db $FD
    inc bc
    db $FD
    inc bc

jr_007_650A:
    rst $38
    rst $38

jr_007_650C:
    ld [hl], l
    rst $18

jr_007_650E:
    ld [$779D], a
    db $DD

jr_007_6512:
    call z, $FFBB
    rst $38

jr_007_6516:
    add c
    add b
    rst $28
    add b
    cp a
    ret nz

    cp a
    ret nz

    rst $38
    ld a, a
    ld [hl], l
    rst $18
    ld [$FF9D], a
    rst $38
    ld b, c
    inc bc
    pop af
    inc bc
    db $FD
    inc bc
    db $FD
    inc bc
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    db $10
    inc l
    db $10
    inc l
    jr jr_007_657A

    jr jr_007_657C

    jr @+$26

    jr jr_007_65C0

    jr jr_007_65C2

    jr jr_007_65C4

    ld a, [bc]
    inc d
    ld a, [bc]
    inc d
    ld [$1414], sp
    jr z, jr_007_659D

    ld c, b
    jr nz, jr_007_65C4

    ld [hl], b
    adc b
    ld [hl], b
    adc b
    pop af
    nop
    sub a
    nop
    db $F4
    nop
    rlca
    nop
    nop
    nop

jr_007_657A:
    ccf
    nop

jr_007_657C:
    ld hl, $3F00
    nop
    ld [$F800], sp
    nop
    stop
    ldh a, [rP1]
    rra
    nop
    ld de, $1100
    nop
    rra
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_007_659D:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_007_65BD:
    nop
    nop
    nop

jr_007_65C0:
    nop
    nop

jr_007_65C2:
    nop
    nop

jr_007_65C4:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rla
    ld [$0A15], sp
    dec b
    ld a, [bc]
    ld a, [bc]
    dec b
    ld a, [bc]
    dec b
    inc bc
    inc b
    ld bc, $0102
    ld [bc], a
    inc l
    sub d
    inc l
    sub e
    xor h
    ld d, e
    adc h
    ld [hl], e
    add $39
    ld b, [hl]
    cp c
    ld h, [hl]

jr_007_65ED:
    sbc c
    ld [hl-], a
    call RST_00
    nop
    nop
    nop
    nop

jr_007_65F6:
    nop
    nop
    nop
    add b
    nop
    add b
    nop
    add b
    nop

jr_007_65FF:
    ret nz

jr_007_6600:
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
    ld e, e
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
    ret nz

    inc h
    ret z

    inc h
    ret z

    inc h
    jp z, $C024

    daa
    ret nc

    jr z, jr_007_6600

    jr z, jr_007_65F6

    jr z, jr_007_6631

jr_007_6631:
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
    jr nz, jr_007_65BD

    jr nz, jr_007_65FF

    jr nz, jr_007_6641

jr_007_6641:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0100
    nop
    ld bc, $0300
    inc [hl]
    ld c, c
    inc [hl]
    ret


    dec [hl]
    jp z, $CE31

    ld h, e
    sbc h
    ld h, d
    sbc l
    ld h, [hl]
    sbc c
    ld c, h
    or e
    add sp, $10
    xor b
    ld d, b
    and b
    ld d, b
    ld d, b
    and b
    ld d, b
    and b
    ret nz

    jr nz, jr_007_65ED

    ld b, b
    add b
    ld b, b
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld b, $01
    ld [bc], a
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
    nop
    sub c
    ld l, [hl]
    reti


    ld h, $AC
    inc de
    ld b, [hl]
    sbc c
    ld [hl], c
    adc h
    jr z, jr_007_6732

    inc h
    ld b, e
    ld [de], a
    ld hl, $C000

jr_007_66F2:
    nop
    ldh [rP1], a
    ldh [rP1], a
    ldh a, [rP1]
    ld hl, sp-$80
    ld a, h
    ld b, b
    ld a, $30
    adc a
    nop
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
    db $10
    ret nc

    cpl
    nop
    ld hl, sp-$6D
    ld [$08F7], sp
    rst $30
    ld [$08F3], sp
    di
    ld [$08F7], sp
    jr nz, jr_007_66F2

jr_007_6732:
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
    nop
    inc bc
    nop
    rlca
    nop
    rlca
    nop
    rrca
    nop
    rra
    ld bc, $023E
    ld a, h
    inc c
    pop af
    adc c
    halt
    sbc e
    ld h, h
    dec [hl]
    ret z

    ld h, d
    sbc c
    adc [hl]
    ld sp, $6214
    inc h
    jp nz, $8448

    add b
    ld b, b
    nop
    add b
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
    nop
    rst $18
    cp a
    ldh [$9F], a
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    cp a
    ret nz

    add b
    rst $38
    rst $38
    ld a, a
    ei
    db $FD
    rlca
    ld sp, hl
    rst $38
    ld bc, $01FF
    rst $38
    ld bc, $03FD
    ld bc, $FFFF
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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

jr_007_67B9:
    nop
    add hl, hl
    nop
    add hl, hl
    nop
    add hl, hl
    nop
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
    nop
    rlca
    nop
    rra
    ld [$30F6], sp
    call z, Call_000_18E0
    nop
    ld [hl], b
    nop
    ret nz

    nop
    nop
    add hl, bc
    db $10
    dec b
    ld [$0402], sp
    nop
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr c, jr_007_67B9

    sbc [hl]
    ld h, c
    ld h, a
    jr jr_007_6870

    ld b, $1E
    pop bc
    rlca
    jr nc, jr_007_67FD

jr_007_67FD:
    rra
    ld [bc], a
    ld bc, $C000
    nop
    ldh a, [$80]
    ld a, a
    ldh a, [rIF]
    inc bc
    db $FC
    cp $00
    inc a
    inc bc
    nop
    rst $38
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
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld bc, $FE03
    ld b, $FE
    inc a
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
    nop
    inc bc
    nop
    rrca
    ld bc, $0FFE
    ldh a, [$C0]
    ccf
    ld a, a
    nop
    inc a
    ret nz

    nop
    rst $38
    inc e
    db $E3
    ld a, c
    add [hl]
    and $18
    sbc [hl]
    ld h, b
    ld a, b
    add e
    ldh [$0C], a
    nop
    ld hl, sp+$40
    add b
    sub b
    ld [$10A0], sp
    ld b, b
    jr nz, jr_007_6857

jr_007_6857:
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
    ldh [rP1], a
    ld hl, sp+$10
    ld l, a
    inc c
    inc sp
    rlca
    jr jr_007_686B

jr_007_686B:
    ld c, $00
    inc bc
    nop
    nop

jr_007_6870:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, d
    ld a, [hl]
    jr c, @+$3E

    jr @+$12

    jr jr_007_68A8

    ld [$0818], sp
    jr jr_007_68A5

    jr @+$1A

    jr jr_007_68B1

    jr jr_007_68B3

    jr jr_007_68BD

jr_007_68A5:
    ld [$1018], sp

jr_007_68A8:
    jr @+$12

    db $10
    jr jr_007_68BD

    jr jr_007_68AF

jr_007_68AF:
    jr jr_007_68B9

jr_007_68B1:
    jr @+$1A

jr_007_68B3:
    ld [$0818], sp
    jr @+$1A

    db $10

jr_007_68B9:
    jr jr_007_68E3

    inc [hl]
    ld l, h

jr_007_68BD:
    ld [hl], d
    pop de
    rst $38
    rst $38
    rst $38
    rst $20
    ret nz

    ld [hl], c
    ld h, b
    ld a, a
    ccf
    rlca
    ld bc, $0202
    inc bc
    inc bc
    ld bc, $FF01
    rst $38
    inc bc
    rst $38
    add $3E
    cp $FC
    ld [hl], b
    ret nz

    and b
    ld h, b
    ld h, b
    ld h, b
    ret nz

    ret nz

    nop
    nop
    nop

jr_007_68E3:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, [hl]
    ld [hl+], a
    ld d, l
    ld de, $5577
    ld [hl], a
    ld d, l
    ld [hl], a
    ld d, l
    ld [hl], a
    ld d, l
    scf
    ccf
    add hl, de
    dec e
    ld h, [hl]
    ld a, [hl+]
    ld d, l
    ld de, $5577
    ld [hl], a
    ld d, l
    ld [hl], a
    ld d, l
    ld [hl], a
    ld d, l
    ld [hl], a
    rst $38
    sbc h
    sbc $66
    ld [hl+], a
    ld d, l
    ld de, $5577
    ld [hl], a
    ld d, l
    ld [hl], a
    ld d, l
    ld [hl], a
    ld d, l
    halt
    cp $CC
    call c, RST_00
    nop
    nop
    nop
    nop
    nop
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
    rst $08
    rst $18
    rst $08
    rst $18
    rst $08
    rst $18
    rst $08
    rst $18
    pop bc
    jp $FFFF


    rst $38
    rst $38
    rst $38
    rst $38
    call z, $CC88
    adc b
    call z, $CC88
    adc b
    xor $88
    rst $38
    call z, $FFFF
    rst $38
    rst $38
    rst $08
    adc a
    rst $08
    adc a
    rst $08
    adc a
    rst $08
    adc a
    rst $28
    adc a
    rst $38
    rst $08
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    jp $C9C7


    db $DB
    jp $C9C7


    db $DB
    jp $FFC7


    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    xor d
    call z, $CCBB
    sbc c
    xor $CC
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    xor a
    rst $08
    cp a
    rst $08
    sbc a
    rst $28
    rst $08
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    sub e
    sub e
    ld bc, $016D
    ld a, l
    add e
    cp e
    rst $00
    rst $10
    rst $28
    rst $28
    rst $38
    rst $38
    rst $38
    rst $38
    rst $18
    rst $08
    cp a
    sbc a
    ld a, a
    ccf
    ld a, a
    ccf
    ld a, a
    ccf
    ld a, a
    ccf
    ld a, a
    ccf
    ld a, a
    ccf
    ld a, a
    ccf
    ld a, a
    ccf
    ld a, a
    ccf
    ld a, a
    ccf
    cp a
    sbc a
    rst $18
    rst $08
    rst $38
    rst $38
    rst $38
    rst $38
    ei
    di
    db $FD
    ld sp, hl
    cp $FC
    cp $FC
    cp $FC
    cp $FC
    cp $FC
    cp $FC
    cp $FC
    cp $FC
    cp $FC
    cp $FC
    db $FD
    ld sp, hl
    ei
    di
    rst $38
    rst $38
    rst $38
    rst $38
    rst $00
    rst $00
    cp e
    sub e
    ld a, l
    ld de, $1D6D
    ld a, l
    ld bc, $83BB
    rst $00
    rst $00
    rst $38
    rst $38
    jp $C9C7


    db $DB
    ret


    db $DB
    jp $CFC7


    rst $18
    rst $08
    rst $18
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    jp $FFC7


    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $00
    rst $08
    sub e
    or a
    add e
    and a
    sub e
    sub a
    sub e
    or a
    rst $00
    rst $08
    rst $38
    rst $38
    rst $38
    rst $38
    rst $20
    rst $28
    rst $00
    rst $08
    rst $20
    rst $28
    rst $20
    rst $28
    rst $20
    rst $28
    rst $20
    rst $28
    rst $38
    rst $38
    rst $38
    rst $38
    rst $00
    rst $08
    sub e
    or a
    di
    rst $30
    rst $00
    rst $08
    sbc a
    cp a
    add e
    add a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $00
    rst $08
    sub e
    or a
    rst $20
    rst $28
    di
    rst $30
    sub e
    or a
    rst $00
    rst $08
    rst $38
    rst $38
    rst $38
    rst $38
    db $E3
    rst $20
    jp $93D7


    or a
    sub e
    or a
    add c
    add e
    di
    rst $30
    rst $38
    rst $38
    rst $38
    rst $38
    add e
    add a
    sbc a
    cp a
    add a
    adc a
    di
    rst $30
    di
    rst $30
    add a
    adc a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $00
    rst $08
    sbc a
    cp a
    add a
    adc a
    sub e
    or a
    sub e
    or a
    rst $00
    rst $08
    rst $38
    rst $38
    rst $38
    rst $38
    add e
    add a
    sub e
    or a
    di
    rst $30
    rst $20
    rst $28
    rst $08
    rst $18
    rst $08
    rst $18
    rst $38
    rst $38
    rst $38
    rst $38
    rst $00
    rst $08
    sub e
    or a
    rst $00
    rst $08
    sub e
    or a
    sub e
    or a
    rst $00
    rst $08
    rst $38
    rst $38
    rst $38
    rst $38
    rst $00
    rst $08
    sub e
    or a
    sub e
    or a
    jp $F3C7


    rst $30
    rst $00
    rst $08
    rst $38
    rst $38
    ccf
    ccf
    ld [hl], c
    ld a, a
    sub a
    ld sp, hl
    or a
    reti


    or a
    reti


    or a
    reti


    or a
    reti


    or a
    reti


    or a
    reti


    or a
    reti


    or a
    reti


    or a
    reti


    or a
    reti


    ld a, a
    ld a, a
    rst $38
    cp l
    cp l
    rst $38
    ld a, a
    ld a, a
    sub c
    rst $38
    or a
    reti


    or a
    reti


    or a
    reti


    or a
    reti


    or a
    reti


    or a
    reti


    rst $38
    rst $38
    ld de, $77FF
    sbc c
    ld [hl], a
    sbc c
    ld [hl], a
    sbc c
    ld [hl], a
    sbc c
    ld [hl], a
    sbc c
    ld [hl], a
    sbc c
    ld [hl], a
    sbc c
    ld [hl], a
    sbc c
    ld [hl], a
    sbc c
    ld [hl], a
    sbc c
    ld [hl], a
    sbc c
    rst $38
    rst $38
    rst $38
    cp l
    cp l
    rst $38
    db $FC
    db $FC
    ld e, $FE
    ld [hl], c
    sbc a
    ld [hl], a
    sbc c
    ld [hl], a
    sbc c
    ld [hl], a
    sbc c
    ld [hl], a
    sbc c
    ld [hl], a
    sbc c
    ld [hl], a
    sbc c
    ld [hl], a
    sbc c
    ld [hl], a
    sbc c
    ld [hl], a
    sbc c
    ld [hl], a
    sbc c
    cp $FE
    rst $38
    cp l
    cp l
    rst $38
    inc l
    inc [hl]
    inc l
    inc [hl]
    inc l
    inc [hl]
    inc l
    inc [hl]
    ld a, [hl]
    inc a
    halt
    ld a, d
    halt
    ld a, d
    halt
    ld a, d
    ld a, [hl]
    ld a, [hl]
    ld l, [hl]
    inc [hl]
    inc l
    inc [hl]
    inc l
    inc [hl]
    inc l
    inc [hl]
    inc l
    inc [hl]
    inc l
    inc [hl]
    inc l
    inc [hl]
    inc d
    inc e
    inc e
    inc d
    inc d
    inc e
    inc e
    inc d
    inc d
    inc e
    inc e
    inc d
    inc d
    inc e
    inc e
    inc d
    inc d
    inc e
    inc e
    inc d
    inc d
    inc e
    inc e
    inc d
    inc d
    inc e
    jr jr_007_6B98

    inc e
    inc d
    nop
    inc b
    ld l, [hl]
    sbc a
    push af
    cp e
    db $DB
    ld h, [hl]
    or $09
    ld b, b
    cp a
    sbc b
    rst $38
    cp $FF
    rst $38
    rst $38
    db $DB
    rst $20
    ld a, h
    cp a
    ld a, d
    sub a
    sub a
    ld l, b

jr_007_6B98:
    add hl, hl
    cp $1E
    db $FD
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $08
    push af
    ld e, a
    db $E3
    sbc a
    ldh [$D3], a
    db $EC
    add a
    ld hl, sp-$80
    rst $38
    ldh [rIE], a
    db $D3
    rst $38
    di
    xor a
    ld a, [$F9C7]
    rlca
    swap a
    pop hl
    rra
    ld bc, $07FF
    rst $38
    set 7, a
    db $D3
    rst $38
    ldh [rIE], a
    add b
    rst $38
    add a
    ld hl, sp-$2D
    db $EC
    sbc a
    ldh [$5F], a
    db $E3
    rst $08
    push af
    set 7, a
    rlca
    rst $38
    ld bc, $E1FF
    rra
    swap a
    ld sp, hl
    rlca
    ld a, [$F3C7]
    xor a
    adc a
    push af
    adc a
    pop af
    rra
    db $E3
    rrca
    pop af
    ld e, $E2
    cp $0A
    db $FC
    ld [hl], h
    ld hl, sp-$08
    ld hl, sp-$08
    db $FC
    ld [hl], h
    cp $0A
    ld e, $E2
    rrca
    pop af
    rra
    db $E3
    adc a
    pop af
    adc a
    push af
    pop af
    xor a
    pop af
    adc a
    ld hl, sp-$39
    ldh a, [$8F]
    ld a, b
    ld b, a
    ld a, a
    ld d, b
    ccf
    ld l, $1F
    rra
    rra
    rra
    ccf
    ld l, $7F
    ld d, b
    ld a, b
    ld b, a
    ldh a, [$8F]
    ld hl, sp-$39
    pop af
    adc a
    pop af
    xor a
    rst $08
    push af
    ld e, [hl]
    and $9C
    db $EC
    call c, $8EE4
    cp $8F
    ei
    rst $20
    ei
    rst $18
    push af
    ld [$0808], sp
    jr jr_007_6C49

    inc d
    inc d
    inc d
    inc e
    inc d
    ld a, [de]
    ld d, $3A
    ld [hl], $2A
    ld [hl], $85
    db $D3
    rst $08
    sub c
    db $EB
    db $D3
    ld h, d
    ld d, [hl]
    ld b, [hl]

jr_007_6C49:
    ld e, d
    ld h, [hl]
    ld a, d
    ld [hl+], a
    ld a, [hl-]
    ld [hl-], a
    ld l, $98
    nop
    ld a, l
    nop
    ld h, d
    nop
    ld b, a
    nop
    ld b, l
    nop
    push bc
    nop
    add c
    nop
    add c
    nop
    ld [$0100], sp
    nop
    ld [$8900], sp
    nop
    adc b
    nop
    ret


    nop
    ld d, c
    nop
    ld [hl], c
    nop
    rra
    rra
    ccf
    jr nz, jr_007_6CB4

    jr nz, jr_007_6CB5

    ld hl, $4B74
    ldh [$DF], a
    db $D3
    xor a
    rst $00
    cp [hl]
    db $FC
    db $FC
    cp $06
    cp $02
    or a
    ld c, c
    inc hl
    db $DD
    and a
    reti


    sub a
    jp hl


    rst $00
    ld a, [$7F00]
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
    nop
    ld a, [hl]
    ld h, c
    add c

jr_007_6CB4:
    ld d, e

jr_007_6CB5:
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
    rst $38
    nop
    ld de, $1100
    nop
    ld de, $FF00
    nop
    inc h
    nop
    inc h
    nop
    inc h
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
    jr nz, jr_007_6CDC

jr_007_6CDC:
    jr nz, jr_007_6CDE

jr_007_6CDE:
    jr nz, jr_007_6CE0

jr_007_6CE0:
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0200
    nop
    dec b
    nop
    dec b
    nop
    rlca
    nop
    jr jr_007_6D04

jr_007_6D04:
    ld h, a
    nop
    sbc c
    nop
    ld h, e
    nop
    adc l
    nop
    ld d, c
    nop
    ld hl, $E000
    nop
    jr jr_007_6D14

jr_007_6D14:
    and $00
    sbc c
    nop
    add $00
    or c
    nop
    adc d
    nop
    add h
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
    ld b, b
    nop
    and b
    nop
    and b
    nop
    ld [hl+], a
    ld l, $32
    ld a, [hl+]
    ld sp, $352B
    dec hl
    ld [hl], e
    ld l, l
    ld b, e
    ld d, l
    ld l, a
    ld d, c
    ld b, a
    ld l, e
    ld [hl-], a
    ld l, $26
    ld l, $24
    inc a
    inc l
    inc [hl]
    inc e
    inc d
    inc d
    inc d
    jr jr_007_6D66

    db $10
    db $10
    ld [hl], c
    nop
    ld d, c
    nop
    ret


    nop
    adc b
    nop
    adc c
    nop
    ld [$0100], sp
    nop
    ld [$8100], sp
    nop
    add c
    nop
    push bc
    nop

jr_007_6D66:
    ld b, l
    nop
    ld b, a
    nop
    ld h, d
    nop
    ld a, l
    nop
    sbc b
    nop
    di
    ld e, [hl]
    halt
    ld e, a
    ld l, [hl]
    ld e, a
    rst $28
    ld [hl], a
    rst $28
    or l
    or l
    cp $DE
    xor a
    sbc c
    rst $38
    xor [hl]
    ld a, [c]
    rst $28
    ld a, d
    ei
    ld a, [hl]
    ld [hl], a
    db $DD
    ld [hl], a
    db $DD
    db $D3
    db $FD
    sbc e
    db $FD
    or l
    rst $18
    xor b
    ld d, a
    ld [$FF00], a
    nop
    and e
    nop
    push de
    ld [hl+], a
    ld c, a

jr_007_6D9B:
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
    ld b, h
    add b
    pop de
    jr nz, jr_007_6D9B

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
    nop
    ret nz

    ld bc, $40A8
    jr nc, jr_007_6DCE

jr_007_6DCE:
    add sp, $10
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
    ld sp, hl
    rst $30
    ld hl, sp+$37
    db $FD
    dec bc
    cp [hl]
    ld c, e
    db $FD
    dec bc
    ld a, c
    sub a
    ld a, [c]
    ld l, a
    ei
    xor a
    sbc a
    rst $28
    rra
    db $EC
    cp a
    ret nc

    ld a, l
    jp nc, $D0BF

    sbc [hl]
    jp hl


    ld c, a
    or $DF
    push af
    ld [hl], a
    ld c, d
    di
    ld c, [hl]
    ld d, c
    push hl
    xor c
    sub l
    jp hl


    sub a
    or l
    res 6, a
    ret


    sub l
    db $EB
    ccf
    rra
    ld a, a
    ld l, [hl]
    cp $51
    ldh [$DF], a
    push bc
    cp [hl]
    rst $38
    db $DB
    ld sp, hl
    rst $28
    db $F4

jr_007_6E4F:
    ld a, a
    ld l, [hl]
    sbc a
    push af
    ei
    ei
    inc b
    sub b
    ld l, a
    and e
    sbc $FF
    rst $10
    rst $38
    rst $28
    ld sp, $F8FF
    ld hl, sp-$02
    ld [hl], h
    ld a, a
    add d
    rla
    db $EB
    and a
    ld a, l
    rst $18
    cp e
    rst $38
    ld l, a
    ld e, [hl]
    cp $00
    rst $38
    nop
    ld bc, $0190
    ret nz

    rlca
    nop
    jr jr_007_6E7B

jr_007_6E7B:
    ld h, b
    nop
    add b
    nop
    nop
    nop
    rst $38
    nop
    add b
    ld b, $80
    ld bc, $00E0
    jr jr_007_6E8B

jr_007_6E8B:
    ld b, $00
    ld bc, $0000
    rlca
    ld b, b
    dec b
    ld b, b

jr_007_6E94:
    rrca
    jr nz, @+$09

    jr nz, @+$07

    db $10
    ld [bc], a
    stop
    stop
    rra

jr_007_6EA0:
    ldh a, [rSC]
    ldh a, [rSC]
    ldh [rDIV], a
    ldh [rDIV], a
    ldh [$08], a
    ret nz

    ld [$0800], sp
    nop
    ld hl, sp-$04
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
    jr z, @-$22

    jr nz, jr_007_6E4F

    ld [hl], h
    adc h
    ld [hl], b
    jr nz, jr_007_6EA0

    inc [hl]
    ret nz

    jr c, jr_007_6E94

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
    ld a, [bc]
    nop
    ld a, [bc]
    nop
    inc d
    nop
    rla
    nop
    rla
    nop
    inc d
    nop
    jr z, jr_007_6EFE

jr_007_6EFE:
    jr z, jr_007_6F00

jr_007_6F00:
    ld d, e
    nop
    ld c, [hl]
    nop
    adc h
    nop
    ld sp, hl
    nop
    ld sp, hl
    nop
    adc h
    nop
    ld b, [hl]
    nop
    rlc b
    jp z, Jump_007_7200

    nop
    ld sp, $9F00
    nop
    sbc a
    nop
    ld sp, $6200
    nop
    db $D3
    nop
    ld d, b
    nop
    ld d, b
    nop
    jr z, jr_007_6F26

jr_007_6F26:
    add sp, $00
    add sp, $00
    jr z, jr_007_6F2C

jr_007_6F2C:
    inc d
    nop
    inc d
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0F00
    inc bc
    jr c, jr_007_6F47

jr_007_6F3B:
    ld h, e
    ld de, $27CE
    sbc b
    nop
    nop
    nop
    ccf
    dec bc
    ldh [rSVBK], a

jr_007_6F47:
    rrca
    add [hl]
    ld a, c
    ccf
    ret nz

    rst $38
    nop
    rst $38
    nop
    nop
    nop
    nop
    db $FC
    xor b
    rlca
    ld c, $F0
    ld b, c
    cp [hl]
    add sp, $17
    cp $01
    cp $01
    nop
    rst $38
    dec d
    nop
    ld a, a
    nop
    nop
    rst $38
    ld a, [bc]
    nop
    ccf
    nop
    ld a, a
    nop
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
    rst $38
    nop
    nop
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ccf
    nop
    scf
    add b
    nop
    ccf
    add hl, bc
    ld b, b
    nop
    rst $38
    inc b
    add b
    rra
    add b
    jr nz, jr_007_6F3B

    cpl
    sub b
    cpl
    sub b
    nop
    db $FC
    cp h
    ld [bc], a
    nop
    rst $38
    and [hl]
    ld bc, $01FE
    ld [bc], a
    ld sp, hl
    or $09
    ld a, [c]
    add hl, bc
    nop
    jr jr_007_6FB3

jr_007_6FB3:
    inc h
    ld [$1C24], sp
    ld b, d
    inc e
    ld b, d
    inc e
    ld b, d

Jump_007_6FBC:
    inc e
    ld b, d
    ld [$0024], sp
    ld a, [hl]
    inc c
    ld b, d
    jr jr_007_702C

    nop
    jp $812E


    ld l, $81
    ld l, $81
    nop
    rst $38
    ld l, $81
    ld l, $81
    ld l, $81
    ld l, $81
    ld l, $81
    ld l, $81
    ld l, $81
    ld l, $81
    ld l, $81
    ld l, $81
    ld l, $81
    nop
    rst $38
    ld [bc], a
    add c
    ld c, $81
    ld l, $81
    ld l, $81
    dec hl
    nop
    inc l
    nop
    jr z, jr_007_6FF6

jr_007_6FF6:
    jr z, jr_007_6FF8

jr_007_6FF8:
    add hl, hl
    nop
    ld a, [hl+]
    nop
    inc l
    nop
    dec hl
    nop
    ld sp, $3100
    nop
    ld c, l
    nop
    adc e
    nop
    ld de, $1300
    nop
    ld [hl+], a
    nop
    cp $00
    adc h
    nop
    adc h
    nop
    or d
    nop
    pop de
    nop
    adc b
    nop
    ret z

    nop
    ld b, h
    nop
    ld a, a
    nop
    call nc, $3400
    nop
    inc d
    nop
    inc d
    nop
    sub h
    nop
    ld d, h
    nop

jr_007_702C:
    inc [hl]
    nop
    call nc, RST_00
    nop
    nop
    nop
    nop
    add b
    nop
    ldh a, [$A0]
    inc e
    jr nc, @-$38

    ld [$86F3], sp
    ld a, c
    di
    xor a
    ld a, d
    ld h, a
    add hl, sp
    scf
    dec sp
    daa
    ld [hl], c
    ld a, a
    pop af
    rst $18
    rst $20
    rst $18
    ei
    xor a
    rst $38
    rst $38
    ld a, a
    rst $38
    add hl, de
    rst $38
    ld [bc], a
    db $FD
    ld l, a
    sub b
    db $DB
    ld h, [hl]
    xor a
    db $DD
    halt
    ld sp, hl
    rst $38
    rst $38
    cp $FF
    ld a, b
    cp a
    sub h
    ld a, a
    jp hl


    ld d, $5E
    jp hl


    ld a, $FD
    db $DB
    rst $20
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    add a
    nop
    rst $08
    nop
    rst $20
    nop
    or $00
    db $F4
    nop
    ld hl, sp+$01
    dec l
    sub b
    cpl
    sub b
    ld l, $90
    dec l
    sub b
    ld l, $90
    inc l
    sub b
    ld l, $90
    inc l
    sub b
    ld [hl-], a
    add hl, bc
    ld d, d
    add hl, bc
    ld [de], a
    add hl, bc
    ld [de], a
    add hl, bc
    ld [de], a
    add hl, bc
    ld [de], a
    add hl, bc
    ld [de], a
    add hl, bc
    ld [de], a
    add hl, bc
    xor $11
    ld h, [hl]
    ld de, $1162
    ld h, b
    ld de, $1F60
    jr nz, jr_007_70CC

    nop
    stop
    ldh a, [rIE]
    nop
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop

jr_007_70CC:
    nop
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
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
    ld [hl], a
    adc b
    inc sp
    adc b
    inc de
    adc b
    inc de
    adc b
    inc bc
    ld hl, sp+$01
    ld [$0801], sp
    nop
    rrca
    add hl, hl
    nop
    dec hl
    nop
    ld a, [hl+]
    nop
    ld a, [hl+]
    nop
    ld a, [hl+]
    nop
    ld a, [hl+]
    nop
    dec hl
    nop
    add hl, hl
    nop
    ld b, $00
    ld d, [hl]
    nop
    xor d
    nop
    xor e
    nop
    xor d
    nop
    xor d
    nop
    cp $00
    ld b, $00
    ld h, b
    nop
    ld l, d
    nop
    ld d, l
    nop
    push de
    nop
    ld d, l
    nop
    ld d, l
    nop
    ld a, a
    nop
    ld h, b
    nop
    sub h
    nop
    call nc, Call_007_5400
    nop
    ld d, h
    nop
    ld d, h
    nop
    ld d, h
    nop
    call nc, $9400
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rst $08
    rst $18
    rst $08
    rst $18
    rst $08
    rst $18
    rst $08
    rst $18
    pop bc
    jp $FFFF


    rst $38
    rst $38
    rst $38
    rst $38
    call z, $CC88
    adc b
    call z, $CC88
    adc b
    xor $88
    rst $38
    call z, $FFFF
    rst $38
    rst $38
    rst $08
    adc a
    rst $08
    adc a
    rst $08
    adc a
    rst $08
    adc a
    rst $28
    adc a
    rst $38
    rst $08
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    jp $C9C7


    db $DB
    jp $C9C7


    db $DB
    jp $FFC7


    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    xor d
    call z, $CCBB
    sbc c
    xor $CC
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    xor a
    rst $08
    cp a
    rst $08
    sbc a
    rst $28
    rst $08
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    sub e
    sub e
    ld bc, $016D
    ld a, l
    add e
    cp e
    rst $00
    rst $10
    rst $28
    rst $28
    rst $38
    rst $38
    rst $38
    rst $38
    rst $18
    rst $08
    cp a
    sbc a
    ld a, a
    ccf
    ld a, a
    ccf
    ld a, a
    ccf
    ld a, a
    ccf
    ld a, a
    ccf
    ld a, a
    ccf
    ld a, a
    ccf
    ld a, a
    ccf
    ld a, a
    ccf
    ld a, a
    ccf
    cp a
    sbc a
    rst $18
    rst $08
    rst $38
    rst $38
    rst $38
    rst $38
    ei
    di
    db $FD
    ld sp, hl
    cp $FC
    cp $FC
    cp $FC
    cp $FC
    cp $FC
    cp $FC
    cp $FC
    cp $FC
    cp $FC
    cp $FC
    db $FD
    ld sp, hl
    ei
    di
    rst $38
    rst $38

Jump_007_7200:
    rst $38
    rst $38
    rst $00
    rst $00
    cp e
    sub e
    ld a, l
    ld de, $1D6D
    ld a, l
    ld bc, $83BB
    rst $00
    rst $00
    rst $38
    rst $38
    jp $C9C7


    db $DB
    ret


    db $DB
    jp $CFC7


    rst $18
    rst $08
    rst $18
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    jp $FFC7


    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $00
    rst $08
    sub e
    or a
    add e
    and a
    sub e
    sub a
    sub e
    or a
    rst $00
    rst $08
    rst $38
    rst $38
    rst $38
    rst $38
    rst $20
    rst $28
    rst $00
    rst $08
    rst $20
    rst $28
    rst $20
    rst $28
    rst $20
    rst $28
    rst $20
    rst $28
    rst $38
    rst $38
    rst $38
    rst $38
    rst $00
    rst $08
    sub e
    or a
    di
    rst $30
    rst $00
    rst $08
    sbc a
    cp a
    add e
    add a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $00
    rst $08
    sub e
    or a
    rst $20
    rst $28
    di
    rst $30
    sub e
    or a
    rst $00
    rst $08
    rst $38
    rst $38
    rst $38
    rst $38
    db $E3
    rst $20
    jp $93D7


    or a
    sub e
    or a
    add c
    add e
    di
    rst $30
    rst $38
    rst $38
    rst $38
    rst $38
    add e
    add a
    sbc a
    cp a
    add a
    adc a
    di
    rst $30
    di
    rst $30
    add a
    adc a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $00
    rst $08
    sbc a
    cp a
    add a
    adc a
    sub e
    or a
    sub e
    or a
    rst $00
    rst $08
    rst $38
    rst $38
    rst $38
    rst $38
    add e
    add a
    sub e
    or a
    di
    rst $30
    rst $20
    rst $28
    rst $08
    rst $18
    rst $08
    rst $18
    rst $38
    rst $38
    rst $38
    rst $38
    rst $00
    rst $08
    sub e
    or a
    rst $00
    rst $08
    sub e
    or a
    sub e
    or a
    rst $00
    rst $08
    rst $38
    rst $38
    rst $38
    rst $38
    rst $00
    rst $08
    sub e
    or a
    sub e
    or a
    jp $F3C7


    rst $30
    rst $00
    rst $08
    rst $38
    rst $38
    ccf
    ccf
    ld [hl], c
    ld a, a
    sub a
    ld sp, hl
    or a
    reti


    or a
    reti


    or a
    reti


    or a
    reti


    or a
    reti


    or a
    reti


    or a
    reti


    or a
    reti


    or a
    reti


    or a
    reti


    ld a, a
    ld a, a
    rst $38
    cp l
    cp l
    rst $38
    ld a, a
    ld a, a
    sub c
    rst $38
    or a
    reti


    or a
    reti


    or a
    reti


    or a
    reti


    or a
    reti


    or a
    reti


    rst $38
    rst $38
    ld de, $77FF
    sbc c
    ld [hl], a
    sbc c
    ld [hl], a
    sbc c
    ld [hl], a
    sbc c
    ld [hl], a
    sbc c
    ld [hl], a
    sbc c
    ld [hl], a
    sbc c
    ld [hl], a
    sbc c
    ld [hl], a
    sbc c
    ld [hl], a
    sbc c
    ld [hl], a
    sbc c
    rst $38
    rst $38
    rst $38
    cp l
    cp l
    rst $38
    db $FC
    db $FC
    ld e, $FE
    ld [hl], c
    sbc a
    ld [hl], a
    sbc c
    ld [hl], a
    sbc c
    ld [hl], a
    sbc c
    ld [hl], a
    sbc c
    ld [hl], a
    sbc c
    ld [hl], a
    sbc c
    ld [hl], a
    sbc c
    ld [hl], a
    sbc c
    ld [hl], a
    sbc c
    ld [hl], a
    sbc c
    cp $FE
    rst $38
    cp l
    cp l
    rst $38
    inc l
    inc [hl]
    inc l
    inc [hl]
    inc l
    inc [hl]
    inc l
    inc [hl]
    ld a, [hl]
    inc a
    halt
    ld a, d
    halt
    ld a, d
    halt
    ld a, d
    ld a, [hl]
    ld a, [hl]
    ld l, [hl]
    inc [hl]
    inc l
    inc [hl]
    inc l
    inc [hl]
    inc l
    inc [hl]
    inc l
    inc [hl]
    inc l

jr_007_735D:
    inc [hl]
    inc l
    inc [hl]
    inc d
    inc e
    inc e
    inc d
    inc d
    inc e
    inc e
    inc d
    inc d
    inc e
    inc e
    inc d
    inc d
    inc e
    inc e
    inc d
    inc d
    inc e
    inc e
    inc d
    inc d
    inc e
    inc e
    inc d
    inc d
    inc e
    jr jr_007_7398

    inc e
    inc d
    nop
    inc b
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

jr_007_738A:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_007_7398:
    nop
    nop
    nop
    nop
    nop
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
    jr jr_007_73AC

jr_007_73AC:
    inc h
    jr jr_007_738A

    inc h
    nop
    nop
    ld bc, $0000
    ld bc, $0201
    ld bc, $0102
    ld [bc], a
    ld bc, $0102
    ld [bc], a
    add l
    ld b, d
    jr nz, jr_007_735D

    ld b, e
    inc h
    inc e
    ld b, d
    sbc h
    ld b, d
    inc a
    ld b, d
    inc e
    ld b, d
    sbc h
    ld b, d
    nop
    nop
    add b
    nop
    nop
    add b
    cp a
    ld b, b
    cp a
    ld b, b
    add b
    ld b, b
    add b
    ld b, b
    add b
    ld b, b
    nop
    ld [bc], a
    ld bc, $0102
    ld [bc], a
    nop
    ld [bc], a
    ld bc, $0102
    ld [bc], a
    nop
    ld [bc], a
    ld bc, $BC02
    ld b, d
    sbc h
    ld b, d
    inc a
    ld b, d
    sbc h
    ld b, d
    inc e
    ld b, d
    inc a
    ld b, d
    cp h
    ld b, d
    cp h
    ld b, d
    ccf
    ld b, b
    add b
    ld b, b
    add b
    ld b, b
    nop
    ld b, b
    add b
    ld b, b
    add b
    ld b, b
    nop
    ld b, b
    add b
    ld b, b
    nop
    nop
    ld bc, $0200
    ld bc, $02FC
    db $FC
    ld [bc], a
    inc b
    ld [bc], a
    inc b
    ld [bc], a
    inc b
    ld [bc], a
    nop
    nop
    add b
    nop
    nop
    add b
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
    rra
    nop
    ld de, $1100
    nop
    ld de, $1100
    nop
    ld de, $1100
    nop
    ld de, $F800
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
    add e
    nop
    pop bc
    nop
    ld h, c
    nop
    or c
    nop
    ld de, $1100
    nop
    pop de
    nop
    or c
    nop
    pop bc
    nop
    add e
    nop
    add [hl]
    nop
    adc l
    nop
    adc b
    nop
    adc b
    nop
    adc e
    nop
    adc l
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0200
    nop
    inc b
    nop
    inc bc
    nop
    inc c
    nop
    ld [hl-], a
    nop
    ld b, d
    nop
    add c
    nop
    add c
    nop
    ld b, [hl]
    nop
    jr z, jr_007_7490

jr_007_7490:
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
    rst $38
    nop
    ld de, $1100
    nop
    ld de, $FF00
    nop
    inc h
    nop
    inc h
    nop
    inc h
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
    jr nz, jr_007_74DC

jr_007_74DC:
    jr nz, jr_007_74DE

jr_007_74DE:
    jr nz, jr_007_74E0

jr_007_74E0:
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
    ret nz

    nop
    jr nc, jr_007_74F4

jr_007_74F4:
    ld c, h
    nop
    ld b, d
    nop
    add c
    nop
    add c
    nop
    ld h, d
    nop
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
    nop
    nop
    add b
    nop
    ld b, b
    nop
    jr nz, jr_007_7510

jr_007_7510:
    db $FC
    ld [bc], a
    nop
    ld [bc], a
    inc b
    ld [bc], a
    inc b
    ld [bc], a
    inc b
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    inc b
    ld [bc], a
    nop
    ld b, b
    add b
    ld b, b
    add b
    ld b, b
    nop
    ld b, b
    add b
    ld b, b
    add b
    ld b, b
    nop
    ld b, b
    add b
    ld b, b
    ld de, $1100
    nop
    ld de, $1100
    nop
    ld de, $1100
    nop
    ld de, $7100
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
    adc [hl]
    nop
    ld de, $1100
    nop
    ld de, $F100
    nop
    ld de, $1100
    nop
    ld de, $F100
    nop
    adc b
    nop
    adc b
    nop
    adc b
    nop
    adc a
    nop
    adc b
    nop
    adc b
    nop
    adc b
    nop
    adc a
    nop
    inc b
    nop
    inc c
    nop
    ld c, $00
    add hl, de
    nop
    stop
    stop
    stop
    rst $38
    nop
    stop
    jr z, jr_007_7584

jr_007_7584:
    ld b, l
    nop
    add d
    nop
    push hl
    nop
    sbc b
    nop
    adc b
    nop
    rst $38
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
    ld b, $FF
    nop
    stop
    stop
    stop
    stop
    stop
    inc de
    nop
    inc e
    nop
    rst $38
    nop
    adc b
    nop
    add h
    nop
    adc h
    nop
    or e
    nop
    jp $8400


    nop
    adc b
    nop
    rst $38
    nop
    ld de, $2100
    nop
    ld sp, $CD00
    nop
    jp $2100


    nop
    ld de, $FF00
    nop
    ld [$0800], sp
    nop
    ld [$0800], sp
    nop
    ld [$C800], sp
    nop
    jr c, jr_007_75F0

jr_007_75F0:
    ld [$1400], sp
    nop
    and d
    nop
    ld b, c
    nop
    and a
    nop
    add hl, de
    nop
    ld de, $FF00
    nop
    jr nz, jr_007_7602

jr_007_7602:
    jr nc, jr_007_7604

jr_007_7604:
    ld [hl], b
    nop
    sbc b
    nop
    ld [$0800], sp
    nop
    ld [$FF00], sp
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    sub c
    nop
    ld de, $1100
    nop
    ld de, $7100
    nop
    sub c
    nop
    sub c
    nop
    ld d, c
    nop
    adc c
    nop
    adc b
    nop
    adc b
    nop
    adc b
    nop
    adc [hl]
    nop
    adc c
    nop
    adc c
    nop
    adc d
    nop
    ld de, $1100
    nop
    ld de, $1100
    nop
    ld de, $1100
    nop
    ld de, $1100
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
    adc b
    nop
    nop
    rst $38
    nop
    ld bc, $0190
    ret nz

    rlca
    nop
    jr jr_007_767B

jr_007_767B:
    ld h, b
    nop
    add b
    nop
    nop
    nop
    rst $38
    nop
    add b
    ld b, $80
    ld bc, $00E0
    jr jr_007_768B

jr_007_768B:
    ld b, $00
    ld bc, $0000
    rlca
    ld b, b
    dec b
    ld b, b
    rrca
    jr nz, @+$09

    jr nz, @+$07

    db $10
    ld [bc], a
    stop
    stop
    rra
    ldh a, [rSC]
    ldh a, [rSC]
    ldh [rDIV], a
    ldh [rDIV], a
    ldh [$08], a
    ret nz

    ld [$0800], sp
    nop
    ld hl, sp+$10
    nop
    stop
    stop
    stop
    ld de, $1200
    nop
    inc d
    nop
    rra
    nop
    sub c
    nop
    and c
    nop
    jp nz, $FF00

    nop
    inc b
    nop
    ld [$0800], sp
    nop
    rst $38
    nop
    adc c
    nop
    add l
    nop
    ld b, e
    nop
    rst $38
    nop
    jr nz, jr_007_76DA

jr_007_76DA:
    stop
    stop
    rst $38
    nop
    ld [$0800], sp
    nop
    ld [$0800], sp
    nop
    adc b
    nop
    ld c, b
    nop
    jr z, jr_007_76EE

jr_007_76EE:
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [hl], c
    nop
    sub c
    nop
    ld de, $1100
    nop
    ld sp, $E100

jr_007_773B:
    nop
    pop bc
    nop
    add e
    nop
    adc [hl]
    nop
    adc c
    nop
    adc b
    nop
    adc b
    nop
    adc h
    nop
    add a
    nop
    add e
    nop
    pop bc
    nop
    ld de, $1100
    nop
    ld de, $1100
    nop
    ld de, $1100
    nop
    ld de, $1F00
    nop

jr_007_7760:
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ccf
    nop
    scf
    add b
    nop
    ccf
    add hl, bc
    ld b, b
    nop
    rst $38
    inc b
    add b
    rra
    add b
    jr nz, jr_007_773B

    cpl
    sub b
    cpl
    sub b
    nop
    db $FC
    cp h
    ld [bc], a
    nop
    rst $38
    and [hl]
    ld bc, $01FE
    ld [bc], a
    ld sp, hl
    or $09
    ld a, [c]
    add hl, bc
    nop
    ld [bc], a
    ld bc, $0102
    ld [bc], a
    dec b
    ld [bc], a
    nop
    ld a, $20
    ld b, c
    inc e
    ld b, c
    ld a, $41
    cp h
    ld b, d
    cp h
    ld b, d
    sbc h
    ld b, d
    inc a
    ld b, d
    cp h
    ld b, d
    dec e
    ld b, d
    dec a
    ld b, d
    inc e
    ld b, d
    nop
    ld b, b
    add b
    ld b, b
    add b
    ld b, b
    and b
    ld b, b
    nop
    ld a, h
    inc b
    add d
    jr c, jr_007_7760

    ld a, h
    add d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    nop
    ld c, $00
    inc e
    nop
    ld hl, sp+$00
    ld hl, sp+$00
    inc e
    nop
    ld c, $00
    rlca
    nop
    ldh [rP1], a
    ld [hl], b
    nop
    jr c, jr_007_7846

jr_007_7846:
    rra
    nop
    rra
    nop
    jr c, jr_007_784C

jr_007_784C:
    ld [hl], b
    nop
    ldh [rP1], a
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    add a
    nop
    rst $08
    nop
    rst $20
    nop
    or $00
    db $F4
    nop
    ld hl, sp+$01
    dec l
    sub b
    cpl
    sub b
    ld l, $90
    dec l
    sub b
    ld l, $90
    inc l
    sub b
    ld l, $90
    inc l
    sub b
    ld [hl-], a
    add hl, bc
    ld d, d
    add hl, bc
    ld [de], a
    add hl, bc
    ld [de], a
    add hl, bc
    ld [de], a
    add hl, bc
    ld [de], a
    add hl, bc
    ld [de], a
    add hl, bc
    ld [de], a
    add hl, bc
    ld b, b
    ccf
    db $10
    ld hl, $211C
    ld e, $21
    ld e, $21
    inc e
    ld hl, $211C
    ld e, $21
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rst $08
    rst $18
    rst $08
    rst $18
    rst $08
    rst $18
    rst $08
    rst $18
    pop bc
    jp $FFFF


    rst $38
    rst $38
    rst $38
    rst $38
    call z, $CC88
    adc b
    call z, $CC88
    adc b
    xor $88
    rst $38
    call z, $FFFF
    rst $38
    rst $38
    rst $08
    adc a
    rst $08
    adc a
    rst $08
    adc a
    rst $08
    adc a
    rst $28
    adc a
    rst $38
    rst $08
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    jp $C9C7


    db $DB
    jp $C9C7


    db $DB
    jp $FFC7


    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    xor d
    call z, $CCBB
    sbc c
    xor $CC
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    xor a
    rst $08
    cp a
    rst $08
    sbc a
    rst $28
    rst $08
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    sub e
    sub e
    ld bc, $016D
    ld a, l
    add e
    cp e
    rst $00
    rst $10
    rst $28
    rst $28
    rst $38
    rst $38
    rst $38
    rst $38
    rst $18
    rst $08
    cp a
    sbc a
    ld a, a
    ccf
    ld a, a
    ccf
    ld a, a
    ccf
    ld a, a
    ccf
    ld a, a
    ccf
    ld a, a
    ccf
    ld a, a
    ccf
    ld a, a
    ccf
    ld a, a
    ccf
    ld a, a
    ccf
    cp a
    sbc a
    rst $18
    rst $08
    rst $38
    rst $38
    rst $38
    rst $38
    ei
    di
    db $FD
    ld sp, hl
    cp $FC
    cp $FC
    cp $FC
    cp $FC
    cp $FC
    cp $FC
    cp $FC
    cp $FC
    cp $FC
    cp $FC
    db $FD
    ld sp, hl
    ei
    di
    rst $38
    rst $38
    rst $38
    rst $38
    rst $00
    rst $00
    cp e
    sub e
    ld a, l
    ld de, $1D6D
    ld a, l
    ld bc, $83BB
    rst $00
    rst $00
    rst $38
    rst $38
    jp $C9C7


    db $DB
    ret


    db $DB
    jp $CFC7


    rst $18
    rst $08
    rst $18
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    jp $FFC7


    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $00
    rst $08
    sub e
    or a
    add e
    and a
    sub e
    sub a
    sub e
    or a
    rst $00
    rst $08
    rst $38
    rst $38
    rst $38
    rst $38
    rst $20
    rst $28
    rst $00
    rst $08
    rst $20
    rst $28
    rst $20
    rst $28
    rst $20
    rst $28
    rst $20
    rst $28
    rst $38
    rst $38
    rst $38
    rst $38
    rst $00
    rst $08
    sub e
    or a
    di
    rst $30
    rst $00
    rst $08
    sbc a
    cp a
    add e
    add a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $00
    rst $08
    sub e
    or a
    rst $20
    rst $28
    di
    rst $30
    sub e
    or a
    rst $00
    rst $08
    rst $38
    rst $38
    rst $38
    rst $38
    db $E3
    rst $20
    jp $93D7


    or a
    sub e
    or a
    add c
    add e
    di
    rst $30
    rst $38
    rst $38
    rst $38
    rst $38
    add e
    add a
    sbc a
    cp a
    add a
    adc a
    di
    rst $30
    di
    rst $30
    add a
    adc a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $00
    rst $08
    sbc a
    cp a
    add a
    adc a
    sub e
    or a
    sub e
    or a
    rst $00
    rst $08
    rst $38
    rst $38
    rst $38
    rst $38
    add e
    add a
    sub e
    or a
    di
    rst $30
    rst $20
    rst $28
    rst $08
    rst $18
    rst $08
    rst $18
    rst $38
    rst $38
    rst $38
    rst $38
    rst $00
    rst $08
    sub e
    or a
    rst $00
    rst $08
    sub e
    or a
    sub e
    or a
    rst $00
    rst $08
    rst $38
    rst $38
    rst $38
    rst $38
    rst $00
    rst $08
    sub e
    or a
    sub e
    or a
    jp $F3C7


    rst $30
    rst $00
    rst $08
    rst $38
    rst $38
    ccf
    ccf
    ld [hl], c
    ld a, a
    sub a
    ld sp, hl
    or a
    reti


    or a
    reti


    or a
    reti


    or a
    reti


    or a
    reti


    or a
    reti


    or a
    reti


    or a
    reti


    or a
    reti


    or a
    reti


    ld a, a
    ld a, a
    rst $38
    cp l
    cp l
    rst $38
    ld a, a
    ld a, a
    sub c
    rst $38
    or a
    reti


    or a
    reti


    or a
    reti


    or a
    reti


    or a
    reti


    or a
    reti


    rst $38
    rst $38
    ld de, $77FF
    sbc c
    ld [hl], a
    sbc c
    ld [hl], a
    sbc c
    ld [hl], a
    sbc c
    ld [hl], a
    sbc c
    ld [hl], a
    sbc c
    ld [hl], a
    sbc c
    ld [hl], a
    sbc c
    ld [hl], a
    sbc c
    ld [hl], a
    sbc c
    ld [hl], a
    sbc c
    rst $38
    rst $38
    rst $38
    cp l
    cp l
    rst $38
    db $FC
    db $FC
    ld e, $FE
    ld [hl], c
    sbc a
    ld [hl], a
    sbc c
    ld [hl], a
    sbc c
    ld [hl], a
    sbc c
    ld [hl], a
    sbc c
    ld [hl], a
    sbc c
    ld [hl], a
    sbc c
    ld [hl], a
    sbc c
    ld [hl], a
    sbc c
    ld [hl], a
    sbc c
    ld [hl], a
    sbc c
    cp $FE
    rst $38
    cp l
    cp l
    rst $38
    inc l
    inc [hl]
    inc l
    inc [hl]
    inc l
    inc [hl]
    inc l
    inc [hl]
    ld a, [hl]
    inc a
    halt
    ld a, d
    halt
    ld a, d
    halt
    ld a, d
    ld a, [hl]
    ld a, [hl]
    ld l, [hl]
    inc [hl]
    inc l
    inc [hl]
    inc l
    inc [hl]
    inc l
    inc [hl]
    inc l
    inc [hl]
    inc l
    inc [hl]
    inc l
    inc [hl]
    inc d
    inc e
    inc e
    inc d
    inc d
    inc e
    inc e
    inc d
    inc d
    inc e

jr_007_7B1A:
    inc e
    inc d
    inc d
    inc e
    inc e
    inc d
    inc d
    inc e
    inc e
    inc d
    inc d
    inc e
    inc e
    inc d
    inc d
    inc e
    jr jr_007_7B48

    inc e
    inc d
    nop
    inc b
    nop

jr_007_7B31:
    ld a, a
    ld bc, $1580
    add b
    daa
    add b
    halt
    add b
    ld e, l
    and d
    ld b, b
    cp a
    ld a, a
    ld a, a
    nop
    cp $09
    ld bc, $0123
    dec [hl]
    inc bc

jr_007_7B48:
    push de
    inc hl
    sbc l
    ld h, e
    ld bc, $FEFF
    cp $00
    ld a, [hl]

jr_007_7B52:
    ld bc, $1581
    add c
    daa
    add c
    ld [hl], a
    add c
    ld e, l
    and e
    ld b, c
    cp a
    ld a, [hl]
    ld a, [hl]
    rst $28
    rst $38
    ld [hl], b
    db $10
    rst $18
    jr nc, jr_007_7B7F

    rst $38
    xor $FF
    inc bc
    add hl, bc
    ld [hl], l
    dec bc
    rlca
    ld a, a
    rst $28
    rst $38
    sub b
    sub d
    sub $31
    db $10
    rst $30
    xor $FF
    rlca
    daa
    cp a
    ld b, e
    inc bc

jr_007_7B7F:
    rst $38
    ei
    nop
    inc c
    nop
    inc b
    nop
    inc b
    nop
    ei
    nop
    jr nz, jr_007_7B8C

jr_007_7B8C:
    nop
    nop
    jr nz, jr_007_7B90

jr_007_7B90:
    inc h
    add b
    ld hl, $2484
    add b
    ld a, [hl-]
    add l
    jr nz, jr_007_7B1A

    ld [hl+], a
    add b
    dec h
    add b
    ld a, [hl-]
    add l
    nop
    dec h
    ld c, b
    dec h
    ret c

    dec h
    nop
    db $FD
    nop
    add l
    jr c, jr_007_7B31

    cp b
    dec b
    ld c, b
    or l
    ld [$0024], sp
    jr jr_007_7BCD

    inc h
    nop
    inc h
    inc c
    jr nz, jr_007_7BE3

    inc b
    inc c
    jr nz, @+$3E

    nop
    nop
    inc bc
    inc bc
    inc b
    ld [bc], a
    dec b
    ld bc, $7002
    ld bc, $0021
    nop

jr_007_7BCD:
    ld bc, $0021
    jr jr_007_7B52

    adc h
    ld b, b
    add h
    ld b, b
    inc b
    add b
    dec sp
    nop
    jr nz, jr_007_7BDC

jr_007_7BDC:
    nop
    nop
    nop
    nop
    ld [hl], a
    nop
    adc b

jr_007_7BE3:
    nop
    adc b
    nop
    adc b
    nop
    ld [hl], a
    nop
    adc h
    nop
    adc h
    nop
    adc h
    nop
    rst $28
    nop
    stop
    stop
    stop
    rst $38
    nop
    call z, $CC00
    nop
    call z, $EE00
    nop
    ld de, $1100
    nop
    ld de, $EE00
    nop
    pop de
    nop
    pop de
    nop
    pop de
    nop
    rst $38
    nop
    nop
    nop
    nop
    inc a
    nop
    ld b, d
    nop
    add c
    nop
    rst $20
    nop
    rst $20
    nop
    sbc c
    ld [$0800], sp
    ld [$0808], sp
    db $10
    jr jr_007_7C3D

    inc d
    inc e
    inc d
    inc [hl]
    inc d
    inc [hl]
    inc e
    add b
    ld a, a
    ld b, h
    add b
    dec de
    add b
    ccf
    add b
    add b
    ld a, a
    jr jr_007_7C60

    nop

jr_007_7C3D:
    inc h
    nop
    inc h
    add b
    ld a, a
    add hl, hl
    add b
    ld [hl], a
    add b
    ld a, a
    add b
    add b
    ld a, a
    jr jr_007_7C70

    nop
    inc h
    nop
    inc h
    add c
    ld a, [hl]
    ld [hl+], a
    add c
    ld e, b
    add c
    ld a, h
    add c
    add c
    ld a, [hl]
    jr jr_007_7C80

    nop
    inc h
    nop
    inc h

jr_007_7C60:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_007_7C70:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_007_7C80:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh [$09], a
    ld bc, $0006
    inc bc
    ld [bc], a
    inc b
    ldh a, [$03]
    dec h
    ld [bc], a
    inc b
    ld [bc], a
    ld [hl+], a
    inc b
    dec bc
    jr nz, jr_007_7D17

    add b
    inc b
    add b
    add h
    ld b, b
    ld a, [de]
    add b
    nop
    ret nz

    nop
    ld h, b
    nop
    ld h, b
    adc h
    nop
    adc h
    nop
    adc h
    nop
    ld [hl], h
    nop
    adc h
    nop
    adc h
    nop
    adc h
    nop
    adc h
    nop
    call z, $CC00
    nop
    call z, $CC00
    nop
    call z, $CC00
    nop
    call z, $CC00
    nop
    pop de
    nop
    pop de
    nop
    pop de
    nop
    adc $00
    pop de
    nop
    pop de
    nop
    pop de
    nop
    pop de
    nop
    nop
    jp $2480


    nop
    inc a
    nop

jr_007_7D17:
    inc h
    nop
    nop
    stop
    stop
    rst $38
    nop
    inc h
    inc l
    ld l, $24
    ld [hl], $2A
    ld a, [hl+]
    ld [hl], $5A
    halt
    ld c, a
    ld e, d
    xor l
    sbc c
    or e
    adc l
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    inc b
    add hl, bc
    nop
    ld c, $09
    ld b, $09
    ld b, $0C
    inc bc
    ld bc, $0704
    nop
    nop
    jr nc, jr_007_7DD3

jr_007_7DD3:
    or b
    and b
    ld d, b
    add b
    ld [hl], b
    ld h, b
    sub b
    add b
    ld [hl], b
    ret nz

    jr nz, jr_007_7DDF

jr_007_7DDF:
    ldh [rP1], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0304
    nop
    nop
    ld [bc], a
    ld bc, $7302
    inc b
    ld [hl+], a
    dec b
    ld b, $01
    inc h
    ld [bc], a
    adc d
    ld b, b
    inc b
    ret nz

    inc b
    add b
    inc b
    add b
    ld e, e
    add b
    sub b
    ld b, b
    db $10
    ret nz

    add b
    ld b, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_007_7F62:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_007_7F91:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_007_7FB2:
    nop
    nop
    nop
    nop
    nop
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
    ld [bc], a
    ld [bc], a
    inc b
    nop
    inc b
    inc c
    nop
    ld [$4844], sp
    and h
    jr z, jr_007_7F62

    add b
    jr jr_007_7F91

    nop
    add b
    ld b, b
    ld b, b
    add b
    nop
    ret nz

    inc c
    ret nz

    ld [hl], b
    adc h
    jr nz, jr_007_7FB2

    nop
    ld h, h
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
