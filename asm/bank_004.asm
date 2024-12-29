; Disassembly of "cvlegends.gb"
; This file was created with:
; mgbdis v2.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $004", ROMX[$4000], BANK[$4]

    nop
    nop
    nop
    nop
    nop
    nop
    ld h, d
    ld h, c
    nop
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
    ld h, c
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, d
    ld h, c
    nop
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
    ld h, c
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, d
    ld h, c
    nop
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
    ld h, c
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, d
    ld h, c
    nop
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
    ld h, c
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, d
    ld h, c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, b
    ld e, a
    ld e, [hl]
    ld e, l
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, d
    ld h, c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld e, h
    ld e, e
    ld e, d
    ld e, c
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, d
    ld h, c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld e, b
    ld d, a
    ld d, [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, d
    ld h, c
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, l
    ld d, h
    nop
    nop
    ld d, e
    ld d, d
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, d
    ld h, c
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, c
    ld d, b
    ld c, a
    ld c, [hl]
    ld c, l
    ld c, h
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, d
    ld h, c
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, e
    ld c, d
    ld c, c
    ld c, b
    ld b, a
    ld b, [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, d
    ld h, c
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
    ld b, d
    ld b, c
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, d
    ld h, c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, b
    ccf
    ld a, $3D
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, d
    ld h, c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc a
    dec sp
    ld a, [hl-]
    add hl, sp
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, d
    ld h, c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr c, jr_004_414E

    ld [hl], $00
    nop
    nop
    nop
    nop
    nop
    ld h, d
    ld h, c
    nop
    nop
    nop
    nop
    nop
    nop
    dec [hl]
    inc [hl]
    inc sp
    ld [hl-], a
    ld sp, $0030
    nop
    nop
    nop
    nop
    nop
    ld h, d
    ld h, c
    nop
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
    ld h, c
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, d
    ld h, c
    nop
    nop
    nop
    nop
    nop
    nop

jr_004_414E:
    nop
    nop
    nop
    nop
    ld h, d
    ld h, c
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, d
    ld h, c
    nop
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
    ld h, c
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, d
    ld h, c
    nop
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
    ld h, c
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, d
    ld h, c
    nop
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
    ld h, c

    INCBIN "gfx/image_004_4190.2bpp"

    INCBIN "gfx/image_004_4290.2bpp"

    nop
    nop
    ldh [$E0], a
    ldh a, [$B0]
    ret c

    cp b
    db $EC
    ld e, h
    halt
    ld l, $3B
    rla
    dec e
    dec bc
    ld c, $05
    rlca
    ld [bc], a
    dec de
    rrca
    rra
    ld c, $0C
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    ldh a, [$60]
    jr nc, jr_004_43BE

    ldh [$E0], a
    ret nz

    ret nz

    ldh [$E0], a
    or b
    or b
    ret c

    ret c

    add sp, $6C
    ld a, h
    inc a
    inc l
    inc e
    nop
    nop
    inc bc
    ld bc, $0207
    rlca
    ld b, $1E
    add hl, bc
    rrca
    ld b, $07
    ld [bc], a
    dec bc
    rrca
    rrca
    inc b
    ccf
    jr jr_004_43FE

    jr nz, jr_004_43F9

    dec hl
    ld [hl], h
    dec hl
    ld [hl], h
    dec hl
    ld [hl], h
    dec hl
    ld l, d
    dec [hl]
    ccf
    rra
    nop
    nop
    add b
    add b
    ret nz

    ret nz

    ldh [rNR41], a
    ret nz

    ret nz

    ret nz

    add b
    and b
    ldh [$60], a
    ld b, b
    jr nc, jr_004_43D2

    ld [$0808], sp
    ld hl, sp+$08
    ld hl, sp+$08
    ld hl, sp+$08
    ld hl, sp+$08
    ld hl, sp-$08
    ldh a, [rP1]
    nop
    nop
    nop
    jr nc, jr_004_43EE

    ld c, b
    ld l, h
    inc h
    ld [hl], $16
    dec de
    dec bc
    dec c

jr_004_43BE:
    inc b
    ld b, $06
    inc bc
    ld c, $05
    dec e
    dec bc
    inc sp
    ld d, $66
    inc l
    ld l, h
    ld e, b
    ld a, b
    jr nc, jr_004_43CF

jr_004_43CF:
    nop
    nop
    nop

jr_004_43D2:
    nop
    nop
    inc e
    inc c
    ld a, [hl-]
    ld d, $64
    inc l
    ld l, b
    ret c

    ret nc

    or b
    and b
    ld h, b
    ld b, b
    ldh [$60], a
    or b
    sub b
    ret c

    ret c

    ld l, h
    ld h, h
    ld [hl], $36
    ld a, [de]
    inc e
    inc c

jr_004_43EE:
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    rrca
    inc c
    dec de

jr_004_43F9:
    ld [de], a
    add hl, de
    ld de, $203F

jr_004_43FE:
    ccf
    dec h
    cpl
    inc sp
    ld h, $3E
    ld [de], a
    ld e, $19
    rra
    rrca
    rrca
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_004_4413:
    nop
    ret nz

    ret nz

    or b
    ldh a, [$D8]
    jr c, jr_004_4413

    cp b
    call z, $CCFC
    db $FC
    ld l, h
    ld a, h
    ld l, h
    ld a, h
    ld e, b
    ld a, b
    cp b
    ld hl, sp-$10
    ldh a, [$C0]
    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_004_4433:
    nop
    inc bc
    inc bc
    rrca
    dec c
    dec e
    inc d
    add hl, de
    ld de, $213F
    ccf
    ld hl, $322E
    daa
    ccf
    ld [de], a
    ld e, $19
    rra
    rrca
    rrca
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
    ret nz

    ret nz

    or b
    ld [hl], b
    ret c

    jr c, jr_004_4433

    ld a, b
    call z, Call_004_4CBC
    ld a, h
    db $EC
    db $FC
    ld l, h
    ld a, h
    ld e, b
    ld a, b
    cp b
    ld hl, sp-$10

jr_004_4469:
    ldh a, [$C0]
    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    rrca
    inc c
    add hl, de
    ld de, $1A1B
    ccf
    inc hl
    ccf
    daa
    dec l
    dec [hl]
    ld h, $3E
    ld [de], a
    ld e, $19
    rra
    rrca
    rrca
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
    ret nz

    ret nz

    or b
    ld [hl], b
    ret c

    ld a, b
    ret c

    jr c, jr_004_4469

    ld a, h
    call z, $CC3C
    db $FC
    ld l, h
    ld a, h
    ret c

    ld hl, sp-$48
    ld hl, sp-$10
    ldh a, [$C0]
    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_004_44B3:
    nop
    inc bc
    inc bc
    rrca
    inc c
    add hl, de
    db $10
    add hl, de
    db $10
    ccf
    jr nc, jr_004_44EE

    jr z, jr_004_44F8

    daa
    inc l
    jr nc, @+$19

    jr @+$1A

    rra
    rrca

jr_004_44C9:
    rrca
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
    ret nz

    ret nz

    or b
    ld [hl], b
    ret c

    jr c, jr_004_44B3

    jr c, jr_004_44C9

    inc l
    call c, $AC4C
    sbc h
    call z, $983C
    ld a, b
    jr c, @-$06

    ldh a, [$F0]
    ret nz

    ret nz

    nop
    nop

jr_004_44EE:
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    rrca
    inc c

jr_004_44F8:
    ld de, $1918
    jr jr_004_453A

    inc sp

jr_004_44FE:
    ld a, $26
    dec sp
    jr c, @+$28

    ld hl, $131C
    jr @+$21

    rrca
    rrca
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
    ret nz

    ret nz

    ld [hl], b
    or b
    ret c

    cp b
    ret c

    jr c, @-$22

    cp h
    ld l, h
    ld a, h

jr_004_4520:
    call c, Call_004_6C1C
    adc h
    jr c, jr_004_44FE

    jr c, jr_004_4520

    ldh a, [$F0]
    ret nz

    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    rrca
    inc c
    add hl, de
    ld [de], a

jr_004_453A:
    add hl, de
    db $10
    ld a, $21
    ccf
    jr nc, @+$31

    cpl
    dec [hl]
    jr nz, jr_004_4562

    ld [de], a
    jr @+$21

    rrca
    rrca
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
    ret nz

    ret nz

    ld [hl], b
    or b
    ret c

    cp b
    ret z

    ld a, b
    db $EC
    ld a, h
    cp h
    sbc h

jr_004_4560:
    ld c, h
    inc c

jr_004_4562:
    db $FC
    inc c
    sbc b
    ld a, b
    jr c, jr_004_4560

    ldh a, [$F0]
    ret nz

    ret nz

    nop
    nop
    nop
    nop

    INCBIN "gfx/image_004_4570.2bpp"

    nop
    nop
    nop

jr_004_4633:
    nop
    inc bc
    inc bc
    rrca
    inc c
    add hl, de
    db $10
    add hl, de
    ld de, $213F
    ld a, $22
    cpl
    ld [hl], $21
    ccf
    db $10
    rra
    jr jr_004_4667

    rrca
    rrca
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
    ret nz

    ret nz

    or b
    ld [hl], b
    ret c

    jr c, jr_004_4633

    jr c, @-$32

    cp h
    db $EC
    ld a, h
    ld c, h
    db $FC
    adc h
    db $FC
    sbc b
    ld hl, sp+$38

jr_004_4667:
    ld hl, sp-$10
    ldh a, [$C0]
    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_004_4673:
    nop
    inc bc
    inc bc
    rrca
    inc c
    add hl, de
    ld de, $1118
    ccf
    dec h
    ld a, $22
    dec hl
    ld a, $23
    dec a
    inc d
    rra
    jr jr_004_46A7

    rrca

jr_004_4689:
    rrca
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
    ret nz

    ret nz

    or b
    ld [hl], b
    ret c

    jr c, jr_004_4673

    jr c, jr_004_4689

    cp h
    db $FC
    ld e, h
    ld c, h
    db $FC
    call z, $B8BC
    ld a, b
    cp b

jr_004_46A7:
    ld hl, sp-$10

jr_004_46A9:
    ldh a, [$C0]
    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_004_46B3:
    nop
    inc bc
    inc bc
    rrca
    dec c
    jr jr_004_46CB

    add hl, de
    jr jr_004_46F8

    dec h

jr_004_46BE:
    ld a, $22
    scf
    ld a, [hl-]
    ld hl, $143F
    dec de
    jr jr_004_46E7

    rrca
    rrca
    inc bc

jr_004_46CB:
    inc bc
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

    or b
    ld [hl], b
    ret c

    jr c, jr_004_46B3

    jr c, jr_004_46A9

    cp h
    call c, $4C6C
    db $FC
    adc h
    db $FC
    jr c, jr_004_46BE

    cp b

jr_004_46E7:
    ld a, b
    ldh a, [$F0]
    ret nz

    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    rrca
    inc c

jr_004_46F8:
    dec de
    ld [de], a
    rra
    ld d, $3F
    dec l
    ccf
    cpl
    cpl
    ccf
    dec l
    ccf
    inc d
    rra
    jr @+$21

    rrca
    rrca
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
    ret nz

    ret nz

    or b
    ld [hl], b
    ret c

    ld a, b
    add sp, $78
    db $F4
    cp h

jr_004_471E:
    db $F4
    db $FC

jr_004_4720:
    db $F4
    db $FC
    or h
    db $FC
    jr z, jr_004_471E

    jr c, jr_004_4720

    ldh a, [$F0]
    ret nz

    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    rrca
    inc c
    add hl, de
    ld de, $131B
    ccf
    daa
    ccf
    daa
    cpl
    scf
    daa
    ccf
    ld [de], a
    rra
    jr jr_004_4767

    rrca
    rrca
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
    ret nz

    ret nz

    or b
    ld [hl], b
    ret c

    cp b
    ret z

    ld hl, sp-$1C
    db $FC
    db $E4
    db $FC
    db $E4
    db $FC
    db $E4
    db $FC
    ld c, b
    ld hl, sp+$38

jr_004_4767:
    ld hl, sp-$10
    ldh a, [$C0]
    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    rrca
    inc c
    dec de
    ld [de], a
    rra
    ld d, $3F
    dec l
    ccf
    cpl
    cpl
    ccf
    dec l
    ccf
    inc d
    rra
    jr @+$21

    rrca
    rrca
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
    ret nz

    ret nz

    or b
    ld [hl], b
    ret c

    ld a, b
    add sp, $78
    db $F4
    cp h

jr_004_479E:
    db $F4
    db $FC

jr_004_47A0:
    db $F4
    db $FC
    or h
    db $FC
    jr z, jr_004_479E

    jr c, jr_004_47A0

    ldh a, [$F0]
    ret nz

    ret nz

    nop
    nop
    nop
    nop

    INCBIN "gfx/image_004_47b0.2bpp"

    INCBIN "gfx/image_004_4bb0.2bpp"

    inc a
    call z, $FC08
    ldh a, [$FC]
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
    sbc d
    rlca
    sbc l
    ld [bc], a
    rst $38
    nop
    rst $38
    rst $38
    add hl, hl
    nop
    add hl, hl
    nop
    add hl, hl
    nop
    add hl, hl
    nop
    and [hl]
    ld e, e
    ld a, h
    cp a
    jp hl


    ld a, [hl]
    adc a
    ldh a, [rIE]
    ld bc, $FEFE

Call_004_4CBC:
    nop
    nop
    nop
    nop
    rra
    rra
    ld [hl], d
    ld a, a
    ret


    rst $30
    halt
    pop hl
    rra
    ldh [$CF], a
    ccf
    ldh a, [$F0]
    ret nz

    ret nz

    nop
    nop
    nop
    nop
    ld a, a
    ld a, a
    ret nz

    rst $38
    inc a
    jp Jump_000_00C7


    rst $38
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rra
    rra
    ccf
    inc hl
    ld a, [hl]
    ld e, a
    cp $A3
    rst $38
    rst $38
    ld sp, hl
    ld b, $8D
    ld [bc], a
    rrca
    nop
    rra
    nop
    ccf
    ld [$31FF], sp
    rst $38
    jp Jump_000_06FE


    ld [$19FF], sp
    cp $93
    db $FC
    ld a, [c]
    db $FC
    ld a, [c]
    db $FC
    dec de
    db $FC
    rrca
    rst $38
    and $1F
    inc bc
    inc bc
    rla
    rlca
    dec bc
    ld bc, $0101
    inc bc
    inc bc
    ld c, $0F
    inc c
    rrca
    db $FC
    rst $38
    ld h, l
    ld e, $ED
    ld e, $DB
    inc a
    rla
    ld hl, sp+$67
    ld hl, sp-$39
    ld hl, sp-$79
    ld hl, sp+$03
    db $FC
    set 7, h
    bit 7, h
    ld c, l
    cp $84
    rst $38
    add [hl]
    rst $38
    add a
    rst $38
    rlca
    rst $38
    ld c, $FF
    dec [hl]
    rst $28
    cpl
    rst $28
    set 3, e
    sub e
    sub [hl]
    and a
    or h
    add hl, hl
    dec l
    ld h, c
    add hl, bc
    ld c, e
    inc bc
    ld [bc], a
    inc bc
    ld bc, $0101
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, a
    add b
    or [hl]
    jp $E3DE


    ld l, [hl]
    or e
    or d
    rst $18
    ld a, [c]
    ld a, a
    sub $3F
    dec [hl]
    ld e, $CE
    ccf
    ld c, a
    cp a
    ld c, $FD
    adc l
    ld a, d
    rst $18
    ccf
    db $D3
    inc a
    ld d, $F8
    sub [hl]
    ld hl, sp+$2E
    pop af
    ld e, e
    db $E4
    ld sp, hl
    add $B1
    adc $65

jr_004_4D89:
    sbc [hl]
    call z, $D53F
    ccf
    dec e
    rst $30
    dec bc
    ld [bc], a
    rlca
    inc b
    dec b
    nop
    add hl, bc
    ld bc, $0101
    inc bc
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    cp e
    xor $FE
    cp e
    rst $08
    cp $01
    rst $38
    ld e, [hl]
    pop hl
    sbc l
    ldh [$33], a
    ret nz

    ld h, e
    add b
    adc [hl]
    pop af
    inc b
    ei
    add b
    ld a, a
    ldh [$1F], a
    ldh a, [rIF]
    pop af
    rrca
    pop hl
    rra
    add $3F
    jr c, jr_004_4D89

    adc a
    pop af
    rst $38
    nop
    rst $30
    ld [$10EF], sp
    rst $28
    jr nc, jr_004_4E1C

    ldh a, [$EF]
    ldh a, [$6F]
    rst $18
    or $9B
    cp d
    sub a
    and a
    or a
    dec bc
    cpl
    ld l, a
    add hl, bc
    ld d, l
    add hl, de
    dec bc
    inc bc
    ld a, [hl]
    ld h, c
    ccf
    jr nc, jr_004_4E04

    jr @+$11

    rrca
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    rst $38
    nop
    rst $38
    inc sp
    call z, $1FEC
    rst $10
    ld a, e

jr_004_4DFA:
    ld a, a
    rst $30
    cp $EB
    rst $28
    cp d
    ld a, a
    ld de, $77BF

jr_004_4E04:
    ld a, h
    rst $38
    pop af
    cp $63
    db $FC
    scf
    ld hl, sp+$3F
    ldh a, [$6E]
    pop af
    ld c, [hl]
    ld [hl], e
    sbc b
    ldh [$34], a
    rst $00
    ld h, h
    add e
    ld c, h
    add e
    ld e, e
    add h

jr_004_4E1C:
    ld l, a
    add b
    ld a, [hl]
    add c
    add [hl]
    ld a, [hl]
    add a
    ld a, a
    add e
    ld a, a
    ld [bc], a
    rst $38
    ld l, $F7
    inc [hl]
    rst $38
    ld [hl], h
    rst $38
    ld l, d
    rst $18
    sbc a
    ld h, b
    rst $08
    jr c, jr_004_4DFA

    ld a, $E2
    rra
    ld sp, hl
    rlca
    db $FC
    add e
    rst $38
    add b
    rst $38
    ret nz

    rlca

jr_004_4E41:
    inc b
    rlca
    ld b, $03
    ld [bc], a
    inc bc
    inc bc
    ld bc, $0101
    ld bc, $0000
    nop
    nop
    ld e, [hl]
    or c
    cp l
    db $E3
    ld a, e
    rst $00
    db $E4
    sbc h
    ret c

    jr c, jr_004_4E41

    ld e, $FB
    dec b
    rst $38
    ld a, a
    dec a
    ld d, $3C
    ld h, $6B
    ld e, h
    or d
    db $DD
    ld l, l
    or e
    ld d, e
    cp $8F
    db $E4
    ccf
    adc b
    nop
    nop
    nop
    nop
    nop
    nop
    ld [$0908], sp
    add hl, bc
    rla
    ld e, $13
    rra
    jr z, @+$41

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

    ld h, b
    ldh [$38], a
    ld hl, sp+$0C
    db $FC
    sbc b
    ld a, b

jr_004_4E92:
    call z, $E63C
    ld e, $F3
    rrca
    ld sp, hl
    rlca
    db $FC
    inc bc
    db $FC
    add e
    ld a, [hl]
    pop bc
    rst $18
    jr c, jr_004_4E92

    inc e
    scf
    adc $9B
    and $6D
    ld [hl], e
    ccf
    ld sp, $191E
    rrca
    inc c
    cp a
    ld h, b
    db $DD
    ld [hl], $56
    dec sp
    ld l, a
    jr jr_004_4ED8

    ld [$083F], sp
    sbc a
    ld [$182F], sp
    add hl, hl
    jr nc, jr_004_4EEF

    jr nc, jr_004_4EFC

    jr jr_004_4EFC

    ld e, $3B
    inc e
    daa
    jr c, jr_004_4F08

    inc e
    cpl
    dec c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_004_4ED8:
    add b
    add b
    ret nz

    ret nz

    ld h, b
    ldh [$30], a
    ldh a, [$80]
    add b
    ldh a, [$F0]
    inc a
    db $FC
    rrca
    rst $38
    db $E3
    rra
    ld hl, sp+$07
    ld e, $E1
    rra

jr_004_4EEF:
    ldh a, [$85]
    add [hl]
    ld [bc], a
    inc bc
    push bc
    add $BF
    ld a, a
    ret z

    jr c, jr_004_4F6F

    adc h

jr_004_4EFC:
    cp e
    rst $00
    ld e, h
    db $E3
    ld a, $11
    xor l
    dec de
    sub [hl]
    dec c
    db $DB
    add [hl]

jr_004_4F08:
    ld l, d
    ld b, a
    ld c, a
    ld h, c
    ld [hl], $21
    dec sp
    jr nz, @+$05

    ld [bc], a
    ld bc, $0101
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    call c, $B03C
    ld l, h
    ret nc

    inc a
    ld [hl], b
    xor h
    call c, $F23C
    adc [hl]

jr_004_4F2C:
    ret


    scf
    ld a, d
    db $FD
    ld d, a
    ret c

    ld c, l
    jp z, Jump_004_75B5

    db $EB
    rra
    rst $38
    add b
    rst $38
    add b
    ld a, a
    ret z

    ld a, a
    jr nz, jr_004_4F2C

    inc e
    push af
    ld c, $FB
    add $3D
    inc hl
    ld e, $11
    ld c, $09
    dec b
    inc b
    rlca
    inc b
    ccf
    inc a
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
    db $10
    xor h
    db $10
    xor h
    db $10
    xor h
    ld hl, sp-$04
    ld h, a
    add a
    nop
    cp $FE
    rst $38
    ei

jr_004_4F6F:
    rlca
    add hl, hl
    nop
    add hl, hl
    nop
    add hl, hl
    nop
    rst $38
    rst $38
    nop
    rst $38
    ld a, a
    rst $38
    rst $38
    add b
    xor a
    ld [hl], b
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    daa
    nop
    ld hl, sp+$07
    rlca
    rst $38
    db $DB
    inc a
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    ld c, $0E
    ld sp, $6730
    ld b, b
    ld a, a
    ld b, b
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
    cp $02
    inc bc
    ld bc, $E101
    pop hl
    ld [hl], b
    ldh a, [rNR32]
    db $FC
    rst $00
    ccf
    di
    rrca
    db $D3
    xor $35
    rst $28
    cpl
    rst $28
    set 3, e
    sub e
    sub [hl]
    and a
    or h
    add hl, hl
    dec l
    ld h, c
    add hl, bc
    adc e
    add e
    db $EB
    or $33
    ccf
    jr jr_004_5025

    dec bc
    inc c
    rrca
    inc c
    dec b
    ld b, $02
    inc bc
    ld bc, $4701
    rst $00
    db $E3
    inc hl
    sub [hl]
    rst $30
    ld a, h
    rst $08
    inc a
    ld a, a
    sub b
    ccf
    ret nz

    rla
    ld h, h
    add e
    cp h
    jp Jump_004_7768


    dec a

jr_004_5025:
    ld a, $07
    rlca
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rra
    rra
    ld h, e
    ld h, b
    or a
    cp b
    add b
    cp a
    sub b
    adc a
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
    rlca
    rlca
    add hl, de
    jr jr_004_506B

    inc de
    inc sp
    ccf
    cp $FE
    rra
    rlca
    ei
    rlca
    adc b
    ld a, a
    ld b, $FF
    ccf
    rst $38
    rst $38
    pop hl
    nop
    nop
    nop

jr_004_506B:
    nop
    nop
    nop
    rlca

jr_004_506F:
    rlca
    ld sp, hl
    ld hl, sp+$1F
    nop
    cp $01
    dec b
    cp $FB
    db $FC
    ld h, [hl]
    ld a, b
    rst $08
    ldh a, [$96]
    rst $28
    ld a, e
    add a
    ld de, $03EF
    rst $38
    rst $08
    rst $38
    nop
    nop
    ld bc, $0E01
    ld c, $F3
    ldh a, [$E7]
    ld [hl], e
    and $3E
    ld a, a
    cp a
    rst $38
    ld a, a
    sbc [hl]
    rst $38
    ld l, c
    sbc [hl]
    inc e
    rlca
    rra
    add a
    ld a, h
    add a
    cp a
    rst $00
    ret z

    rst $38
    rst $38
    cp $3F
    ccf
    call z, $70CC
    jr nc, jr_004_506F

    ret nz

    nop
    nop
    ld a, $3E
    db $FC
    db $E4
    cp b
    ret z

    rst $38
    rra
    ldh a, [$1F]
    db $FC
    rst $38
    ld [$F9FF], sp
    ld c, $FC
    add a
    ld a, [hl]
    rst $38
    adc h
    ld a, a
    scf
    jr c, jr_004_50E7

    rra
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_004_50E7:
    nop
    rst $38
    nop
    rra
    ldh [$E3], a
    db $FC
    inc e
    rra
    rlca
    rlca
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld hl, sp+$3F
    pop bc
    ccf
    ld [bc], a
    cp $3C
    db $FC
    ldh [$E0], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_004_5123:
    nop
    nop
    nop
    nop
    nop
    pop hl
    rst $38
    ei
    db $FC
    dec e
    ld e, $06
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    pop af
    ld e, $E0
    cp a
    rst $38
    ld a, a
    ldh [$E0], a
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld bc, $0202
    dec b
    inc b
    dec bc
    ld [$1314], sp
    db $EB
    rst $20
    and h
    sbc h
    ld a, b
    ld a, b
    nop
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
    rst $38
    add c
    rst $38
    ld h, d
    sbc [hl]
    ld l, h
    inc e
    ret z

    jr c, jr_004_5123

    ld [hl], b
    ld h, b
    ldh [$80], a
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc bc
    ld b, $07
    inc c
    rrca
    dec de
    inc e
    scf
    jr c, jr_004_5234

    ld [hl], b
    adc a
    ldh a, [$3F]
    ret nz

    ld a, a
    add c
    rst $38
    inc bc
    cp $0F
    ldh [$1F], a
    inc bc
    db $FC
    rrca
    ldh a, [rIE]
    ld bc, $3FC7
    ld a, $FE
    ldh a, [$F0]
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_004_51E5:
    nop
    nop
    nop
    nop
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
    rlca
    inc e
    rra
    ld [hl], b
    ld a, a
    add c
    rst $38
    dec sp
    rst $00
    db $FC
    rlca
    ld sp, hl
    ld c, $FF
    nop
    rst $38
    nop
    rst $38
    jr nz, jr_004_51E5

    ld h, c
    sbc $E1
    cp [hl]
    pop bc
    ld a, h
    add e
    db $FC
    inc bc
    rst $38
    rrca
    ld hl, sp+$38
    ldh [$E0], a
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
    nop
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
    inc bc
    ld [bc], a
    inc bc
    inc b
    rlca
    db $FC
    rst $38

jr_004_5234:
    inc e
    rst $38
    ld [bc], a
    rst $38
    inc sp
    rst $08
    ld a, c
    add a
    call c, $BF23
    ld h, b
    rrca
    ldh a, [$2F]
    ldh a, [$37]
    ld hl, sp+$6D
    ld a, [$DF69]
    ld l, a
    rst $18
    or $9B
    cp d
    sub a
    and a
    or l
    adc a
    dec hl
    ld l, [hl]
    dec bc
    ld c, d
    inc bc
    ld [bc], a
    inc bc
    ld bc, $0101
    ld bc, $0000
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
    rra
    ldh [$C3], a
    inc a
    sbc l
    ld a, a
    ret nz

    ccf
    nop
    rst $38
    rrca
    ldh a, [$7F]
    add b
    ccf
    ret nz

    add a
    ld hl, sp+$73
    ld a, h
    rrca
    rrca
    ld bc, $0001
    nop
    nop
    nop
    ret nz

    ret nz

    ld a, a
    rst $38
    nop
    rst $38
    rst $38
    nop
    ld a, a
    add b
    or e
    db $FC
    inc c
    rst $38
    jp $F83F


    rlca
    db $FC
    inc bc
    rst $38
    nop
    rst $38
    nop
    cp $01
    ld hl, sp-$01
    rra
    rra
    ld bc, $0001
    nop
    pop af
    pop af
    rra
    rst $38
    ld [bc], a
    rst $38
    db $F4
    rrca
    db $FC
    rlca
    sbc $27
    cp [hl]
    ld h, e
    rrca
    pop af
    cpl
    pop af
    scf
    ld hl, sp+$6D
    ld a, [$DE6B]
    ld l, [hl]
    rst $18
    or $9B
    cp d
    sub a
    and a
    or a
    add e
    ld h, $6F
    ld [$0945], sp
    add hl, bc
    ld bc, $030B
    ld [bc], a
    inc bc
    ld b, $03
    ld [bc], a
    inc bc
    ld bc, $0101
    ld bc, $0000
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

jr_004_52EA:
    ldh a, [$F0]
    inc a
    db $FC
    rrca
    rst $38
    db $E3
    rra
    ld hl, sp+$07
    ld e, $E1
    rra
    ldh a, [$DF]
    jr c, jr_004_52EA

    inc e
    scf
    adc $9B
    and $6D
    ld [hl], e
    ccf
    ld sp, $191E
    rrca
    inc c
    rlca
    inc b
    rlca
    ld b, $03
    ld [bc], a
    inc bc
    inc bc
    ld bc, $0101
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ret nz

    ret nz

    ld h, b
    ldh [$30], a
    ldh a, [$98]
    ld a, b
    call z, $E63C
    ld e, $F3
    rrca
    ld sp, hl
    rlca
    db $FC
    inc bc
    db $FC
    add e
    ld a, [hl]
    pop bc
    sbc a
    ld h, b
    rst $08
    jr c, @-$39

    ld a, $E2
    rra
    ld sp, hl
    rlca
    db $FC
    add e
    rst $38
    add b
    rst $38
    ret nz

    ld a, [hl]
    ld h, c
    ccf
    jr nc, jr_004_537C

    jr jr_004_536E

    rrca
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_004_536E:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_004_537C:
    nop
    nop
    nop
    nop
    ret nz

    ret nz

    ld h, b
    ldh [$38], a
    ld hl, sp+$0C
    db $FC
    add [hl]
    ld a, [hl]
    add a
    ld a, a
    add e
    ld a, a
    ld [bc], a
    rst $38
    ld l, $F7
    inc [hl]
    rst $38
    ld [hl], h
    rst $38
    ld l, d
    rst $18
    ld l, a
    rst $18
    or $9B
    cp d
    sub a
    and a
    or a
    dec bc
    cpl
    ld l, a
    add hl, bc
    ld d, l
    add hl, de
    dec bc
    inc bc
    dec bc
    ld [bc], a
    rlca
    inc b
    dec b
    nop
    add hl, bc
    ld bc, $0101
    inc bc
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld bc, $0101
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
    nop
    nop
    nop
    nop
    nop
    rrca
    nop
    jr c, @+$09

    ld h, d
    rra
    call z, $DA3F
    ccf
    call Call_004_623F
    rra
    ld a, b
    rlca
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
    nop
    ret nz

    nop
    cp a
    ld b, b
    add hl, bc
    or $27
    ld hl, sp-$73
    ld a, [c]
    ld h, e
    db $FC
    rra
    ldh [$FC], a
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh [rP1], a
    or $00
    ret nz

    nop
    ld [hl], b
    add b
    rst $38
    nop
    ret nz

    nop
    jr jr_004_541E

jr_004_541E:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld a, a
    add c
    add b
    rst $28
    add b
    cp a
    ret nz

    rst $38
    rst $38
    ld [hl], a
    db $DD
    call z, $FFBB
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
    rst $38
    cp $41
    inc bc
    pop af
    inc bc
    db $FD
    inc bc
    rst $38
    rst $38
    ld [hl], l
    rst $18
    ld [$FF9D], a
    rst $38
    inc bc
    inc bc
    ld c, $1D
    add hl, sp
    cpl
    ld l, l
    ld e, a
    dec b
    ld b, a
    ld [bc], a
    inc bc
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
    nop
    nop
    nop
    nop
    cp $FE
    ld a, a
    rst $38
    add c
    rst $38
    rra
    ldh [rTAC], a
    ld hl, sp-$7F
    cp $7C
    jp $F0AF


    ld d, a
    ld a, b
    cpl
    inc a
    ld a, [de]
    rla
    dec c
    dec bc
    dec b
    rlca
    ld [bc], a
    inc bc
    ld bc, $0601
    rlca
    nop
    nop
    ldh [$E0], a
    ld hl, sp-$08
    rrca
    rst $38
    ld sp, hl
    rlca
    rst $38
    nop
    ld a, a
    add b
    ccf
    ret nz

    call c, $E020
    db $10
    ldh a, [rP1]
    ld a, b
    add b
    inc a
    ret nz

    adc [hl]
    ldh a, [$86]
    ld hl, sp-$64
    ldh [rP1], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    ret nz

    jr nc, @-$0E

    call z, $FE3C
    ld [bc], a
    rlca
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_004_54E4:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0201
    inc bc
    dec b
    ld b, $01
    rlca
    ld e, $0D
    add hl, sp
    ld e, $2B
    ld l, $32
    ccf
    ld a, a
    ld a, h
    ldh a, [$F8]
    ld h, b
    ld [hl], b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0701
    rlca
    ld a, h
    ld a, e
    ret nz

    cp a
    rrca
    ldh a, [$FE]
    sbc l
    db $E3
    db $E3
    add c
    ld bc, $0000
    nop
    nop
    nop
    nop
    dec e

jr_004_5529:
    dec de
    inc sp
    cpl
    halt
    ld a, a
    ld [hl], l

jr_004_552F:
    ld e, [hl]
    or l
    sbc [hl]
    push bc
    cp [hl]
    adc c
    cp $C8
    rst $38
    jr jr_004_5529

    ld a, l
    rst $20
    db $FC
    rst $00
    db $DD
    add [hl]
    sbc a
    add [hl]
    rst $38
    add l
    ld a, a
    ld c, l
    ccf
    dec sp

jr_004_5548:
    cp b
    ret nz

    ld [hl], b
    add b
    ldh a, [rP1]
    ldh [rP1], a
    ldh [rP1], a
    ret nz

    jr nz, @-$7E

    ld h, b
    jr nz, jr_004_5548

    sub b
    ldh a, [$D0]
    ldh a, [rSVBK]
    ldh a, [$B0]
    ld [hl], b
    sub b
    ldh a, [$D0]
    or b
    ret c

    jr c, jr_004_552F

    cp b
    nop
    nop
    nop
    nop
    nop
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
    ld bc, $0303
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    inc bc
    inc bc
    ld bc, $0001
    nop
    nop
    nop
    rlca
    ld b, $03
    inc bc
    rrca
    inc c
    ld d, $11
    add hl, hl
    daa
    halt
    ld c, a
    call z, $F0FF
    rst $38
    add c
    ld a, a
    add e

jr_004_559B:
    ld a, a
    inc e
    db $FC
    ld [hl], b
    ldh a, [$30]
    ldh a, [$90]
    ld [hl], b
    ret z

    ld hl, sp-$38
    cp b
    db $EC
    db $FC
    inc c
    db $FC
    ld c, $FE
    ld a, [de]
    cp $1A
    cp $3B
    rst $38
    add hl, sp
    rst $38
    ld a, l
    rst $38
    push af
    rst $38
    ld h, l
    ld a, a
    dec h
    ccf
    dec d
    rra
    dec c
    rrca
    dec b
    rlca
    inc b
    rlca
    ld [bc], a
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
    sub b
    sub b
    cp b
    cp b
    ret z

    ld hl, sp-$78
    ld hl, sp-$38
    ld hl, sp-$18
    ld hl, sp-$48
    cp b
    ld bc, $0201
    ld [bc], a
    ld a, $3F
    ld a, h
    ld h, a
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
    nop
    nop
    nop
    nop
    nop
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
    jr c, jr_004_559B

    ld [hl], b
    ld h, b
    ldh [$80], a
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
    nop
    nop
    nop
    nop
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
    inc bc
    ld bc, $0001
    nop
    inc bc
    inc bc
    rlca
    rlca
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_004_5644:
    nop
    nop
    nop
    nop
    ld a, h
    db $FC
    jr z, jr_004_5644

    sbc b
    ld hl, sp-$10
    ldh a, [$E0]
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

jr_004_5665:
    nop
    nop
    nop
    rlca
    ld b, $07
    ld b, $03
    inc bc
    dec b
    inc b
    ld a, [bc]
    add hl, bc
    inc e
    dec de
    add hl, hl
    ccf
    ld a, l
    ld e, e
    sub [hl]
    cp a
    ret nc

    cp a
    sbc c
    rst $38
    call z, Call_004_6EBB
    ld e, l
    ld a, $3F
    rrca
    rrca
    ld [bc], a
    inc bc
    adc b
    ld hl, sp-$54
    db $FC
    ld c, $FE
    ld c, d
    cp $9A
    cp $BB
    rst $18
    ld a, l
    sbc a
    ld d, l
    or a
    and d
    ld h, e
    ld b, d
    jp $C7C6


    ld b, l
    rst $00
    ld l, l
    rst $28
    dec sp
    rst $38
    sbc [hl]
    ld a, [hl]
    call z, $02FC
    inc bc
    dec b
    rlca
    ld a, [bc]
    ld c, $3E
    ccf
    ld a, h
    ld h, a
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ret z

    cp b
    ld c, b
    jr c, jr_004_5665

    ld a, b
    ld a, b
    ld hl, sp-$24
    call c, $8F8F
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld bc, $0203
    ld [bc], a
    inc bc

Jump_004_56FE:
    ld [bc], a
    inc bc
    inc bc
    inc bc
    ld bc, $0001
    nop
    nop
    nop
    rlca
    ld b, $03
    inc bc
    rlca
    ld b, $1E
    dec e
    ld a, h
    ld a, a
    xor a
    sbc [hl]
    rst $08
    cp [hl]
    sub [hl]
    ld a, [hl]
    and e
    rst $38
    add a

jr_004_571B:
    ld a, a
    inc e
    db $FC
    ld [hl], b
    ldh a, [$30]
    ldh a, [$90]
    ld [hl], b
    ret z

    ld hl, sp-$38
    cp b
    db $EC
    db $FC
    ld c, $FE
    dec bc
    rst $38
    dec e
    rst $38
    ld b, [hl]
    rst $38
    inc hl
    rst $38

jr_004_5734:
    ld sp, $99FF
    ld a, a
    ld c, b
    ccf
    ret c

    rst $28
    ccf
    ccf
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
    add b
    add b
    ld b, b
    ret nz

    jr nz, jr_004_5734

    sub b
    ldh a, [$D0]
    ldh a, [$F0]
    ldh a, [rNR10]
    ldh a, [rNR10]
    ldh a, [$88]
    ld a, b
    ret z

    cp b
    add sp, -$08
    ld c, b
    ld a, b
    ld c, b
    ld a, b
    ld bc, $0201
    ld [bc], a
    ld a, $3F
    ld a, h
    ld h, a
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
    nop
    nop
    nop
    nop
    nop
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
    jr c, jr_004_571B

    ld [hl], b
    ld h, b
    ldh [$80], a
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0F01
    rrca
    ld e, $13
    rra
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    sbc b
    ld hl, sp-$64
    db $FC
    ld h, $E6
    ld b, d
    jp nz, $8080

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0201
    inc bc
    dec b
    ld b, $01
    rlca
    ld e, $0D
    add hl, sp
    ld e, $2B
    ld l, $32
    ccf
    ld a, a
    ld a, h
    ldh a, [$F8]
    ld h, b
    ld [hl], b
    nop
    nop
    nop
    nop
    nop
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
    inc bc
    ld a, [hl]
    ld a, a
    call nz, $08BB
    rst $30
    rst $38
    cp b
    add $C7
    add c
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
    rrca
    rrca
    ld [hl], c
    ld a, [hl]
    and d
    sbc a
    ld c, c
    cp a
    ld [hl], c
    rst $38
    ld de, $7BEF
    and $FE
    push bc
    db $DD
    adc a
    sbc l
    adc e
    ld sp, hl
    cp a
    ld a, [hl]
    ld e, l
    ccf
    ccf
    nop
    nop
    nop
    nop
    nop
    nop
    ldh a, [$C0]
    ld a, b
    jr nz, jr_004_5891

    ldh a, [$7F]
    ldh a, [$DF]
    or b
    ccf
    ldh [$7C], a
    jp $FE81


    rlca
    ld hl, sp+$1F
    ldh [$81], a
    rst $38
    ld a, a
    rst $38
    cp $FE
    nop
    nop
    nop
    nop
    nop
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
    ccf
    ret nz

    ld a, a
    add b
    rst $38
    nop
    ld sp, hl
    rlca
    rrca
    rst $38
    ld hl, sp-$08
    ldh [$E0], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_004_5891:
    nop
    nop
    nop
    nop

jr_004_5895:
    nop
    rra
    ld bc, $02FE
    call z, $303C
    ldh a, [$C0]
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0201
    inc bc
    dec b
    ld b, $01
    rlca
    ld e, $0D
    add hl, sp
    ld e, $29
    cpl
    dec a
    ccf
    ld a, c
    ld [hl], e
    di
    pop hl
    ld h, d
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
    ld bc, $0701
    rlca
    ld a, h
    ld a, e
    ret nz

    cp a
    rrca
    ldh a, [$FE]
    sbc l
    db $E3
    db $E3
    pop bc
    ld bc, $0080
    nop
    nop
    nop
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
    ld bc, $0108
    nop
    ld bc, $030C
    inc bc
    inc e
    ld e, $21
    dec b
    ld l, b
    ld [hl+], a
    ld e, l
    ld hl, $1A56
    ld h, l
    inc c
    inc sp
    ld [bc], a
    inc c
    ld [$0000], sp
    ld de, $1200
    nop
    and $44
    sbc b
    add b
    jr nc, jr_004_5895

    ld [hl], b
    add h
    ld h, b
    ld [$88E0], sp
    ld b, b
    db $10
    ret nz

    nop
    ret nz

    nop
    add b
    add b
    nop
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
    inc c
    inc c
    ld d, $12
    ld [hl+], a
    ld a, $3F
    ccf
    ld e, a
    ld h, a
    ld a, e
    ld l, a
    ld [hl], a
    ld c, a
    ld a, l
    ld l, a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nc, jr_004_598A

    ld [hl], b
    ld h, b
    ldh [$C0], a
    ret nz

    add b
    add b
    nop
    add b
    nop
    add b
    nop
    ret nz

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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0301
    inc bc
    rlca
    ld b, $0E
    inc c
    inc e
    inc e
    jr c, jr_004_59BE

    ld a, b
    ld a, b
    nop
    nop

jr_004_598A:
    nop
    nop
    inc bc
    inc bc
    rrca
    rrca
    ld e, $12
    dec e
    ld d, $3D
    ld a, $76
    ld [hl], a
    ldh [$C0], a
    pop bc
    add c
    add e
    inc bc
    ld b, $07
    ld c, $09
    rra
    ld de, $273A
    ld d, h
    ld l, a
    ld [hl], e
    ld a, a
    db $EC
    rst $38
    db $F4
    di
    ld a, e
    rlca
    rst $20
    rra
    sbc c
    ld a, a
    inc sp
    db $FD
    ld h, [hl]
    ld a, [$FFBF]
    ld a, c
    cp a
    db $ED
    ld a, [hl]

jr_004_59BE:
    rst $00
    cp $8A
    rst $30
    dec d
    ei
    jr c, @+$01

    inc h
    rst $38
    ret nz

    ret nz

    ld b, b
    ret nz

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
    nop
    nop
    nop
    nop
    nop
    add b
    add b
    ret nz

    ld b, b
    and b
    ld h, b
    ld [hl], b
    sub b
    ld hl, sp-$78
    ld e, h
    db $E4
    ld e, e
    ld l, h
    ld e, [hl]
    ld a, b
    ld l, a
    ld l, a
    ld b, a
    ld b, a
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0001
    nop
    add b
    add b
    ld b, b
    ld b, b
    and b
    jr nz, @+$52

    sub b
    add sp, -$38
    inc [hl]
    inc [hl]
    rrca
    rrca
    ld a, [hl]
    rst $30
    adc $CF
    db $E3
    db $E3
    ld h, c
    pop hl
    pop hl
    pop hl
    ldh [$E0], a
    ret nz

    ret nz

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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    cp [hl]
    ld h, d
    rst $18
    ld sp, $39BF
    rst $38
    rst $38
    reti


    ld sp, hl
    ret z

    ld hl, sp+$6C
    ld a, h
    inc [hl]
    inc a
    inc a
    inc a
    jr @+$20

    ld c, $0E
    rrca
    rrca
    rlca
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
    nop
    nop
    nop
    ld bc, $0100
    ld [bc], a
    ld [bc], a
    inc b
    ld [bc], a
    inc b
    rlca
    ld [$1609], sp
    inc bc
    inc e
    ld d, $29
    rla
    jr z, jr_004_5A80

    ld h, d
    dec a
    ld b, d
    scf
    ld c, b
    nop
    nop
    inc b
    nop
    ld c, b
    nop
    sub b
    nop
    and e
    nop
    ld b, $00
    inc e
    inc hl
    ldh a, [$0E]
    ld hl, sp+$04
    ld h, b
    adc b
    ld d, b
    xor b
    add b
    ld d, b

jr_004_5A80:
    sbc [hl]
    ld e, [hl]
    dec a
    and a
    inc a
    cp a
    rlca
    add a
    add b
    nop
    nop
    nop
    ld h, b
    nop
    call nz, RST_00
    nop
    ld b, b
    nop
    nop
    nop
    nop
    nop
    inc c
    inc c
    ld d, $12
    ld [hl+], a
    ld a, $3E
    ld a, $5E
    ld h, [hl]
    ei
    rst $28
    scf
    cp a
    dec sp
    jp RST_00


    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ldh [$E0], a
    ccf
    ret nz

    cpl
    ret nc

    ld l, a
    sub b
    ld l, a
    sub b
    ld l, a
    sub b
    dec hl
    ret nc

    dec a
    ret nz

    ld e, d
    and h
    db $10
    ld l, h
    jr jr_004_5B22

    ld a, [bc]
    ld de, $000C
    ld [hl+], a
    nop
    ld bc, $0804
    ld [bc], a
    nop
    ld bc, $0180
    add c
    ld bc, $0101
    inc bc
    inc bc
    rlca
    dec b
    rrca
    add hl, bc
    ld b, $06
    add b
    nop
    nop
    nop
    ld bc, $0301
    inc bc
    ld b, $07
    ld c, $09
    rra
    ld de, $273A
    ld d, h
    ld l, a
    jp $38FC


    rst $38
    and $3F
    cp c
    daa
    ld a, [hl]
    and c
    call c, $99B3
    rst $38
    ld a, a
    ld a, a
    cp a
    rst $38
    ld a, c
    cp a
    db $ED
    ld a, [hl]
    rst $00
    cp $8A
    rst $30

jr_004_5B22:
    dec d
    ei
    jr c, @+$01

    inc h
    rst $38
    jr nc, jr_004_5B5A

    or b
    ld [hl], b
    ld [hl], b
    ldh a, [$F0]
    or b
    ldh [$E0], a
    ret nz

    ret nz

    add b
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    add b
    ret nz

    ld b, b
    and b
    ld h, b
    ld [hl], b
    sub b
    ld hl, sp-$78
    ld e, h
    db $E4
    ld e, e
    ld l, h
    ld e, [hl]
    ld a, b
    ld l, a
    ld l, a
    ld b, a
    ld b, a
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0001
    nop

jr_004_5B5A:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_004_5B65:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ccf
    ccf
    ei
    ld hl, sp+$07
    rlca
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh [$E0], a
    sbc b
    ld a, b
    ld h, $1E
    push hl
    db $E3
    dec de
    jr @+$07

    inc b
    ld [bc], a
    ld [bc], a
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
    ld h, b
    ldh [$90], a
    ld [hl], b
    ld c, b
    jr c, jr_004_5BE7

    jr jr_004_5B65

    sbc h
    call c, Call_004_78D8
    ld [hl], b
    ld [hl], b
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
    ld bc, $0301
    inc bc
    rlca
    ld b, $0E
    inc c
    inc a
    jr c, jr_004_5C5E

    ld d, c
    ei

jr_004_5BE7:
    rlc b
    nop
    ld bc, $0301
    inc bc
    rlca
    ld b, $0F
    inc c
    rra
    rra
    add hl, sp
    ld sp, $6171
    db $EC
    call z, $92D6
    and d
    ld a, $3E
    ld a, $5F
    ld h, a
    ei
    rst $28
    rst $30
    rst $08
    db $FD
    ld l, a
    ldh [$C0], a
    ret nz

    add b
    add b
    add b
    ret nz

    ret nz

    ldh [$E0], a
    db $10
    ldh a, [$B8]
    ret z

    or h
    call nz, $C2B2
    ld e, [hl]
    ld h, d
    ld e, [hl]
    ld h, d
    ld e, [hl]
    ld h, d
    call z, $C8F4
    cp b
    xor b
    sbc b
    ret nc

    or b
    ld bc, $0301
    inc bc
    rlca
    ld b, $0E
    inc c
    inc e
    jr jr_004_5C33

jr_004_5C33:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    cp $F7
    db $FC
    ld b, a
    db $FC
    ld b, a
    rst $30
    adc a
    db $ED
    sbc l
    xor c
    reti


    or b
    ret nc

    ld h, b
    ld h, b
    nop
    nop
    ld bc, $0301
    inc bc

jr_004_5C5E:
    ld b, $07
    ld c, $09
    rra
    ld de, $273A
    ld d, h
    ld l, a
    db $D3
    ld a, a
    rst $08
    ld a, h
    rst $30

jr_004_5C6D:
    jr c, @-$44

    ld hl, $A17E
    ld e, h
    or e
    sbc c
    rst $38
    ld a, a
    ld a, a
    cp a
    rst $38
    ld a, c

jr_004_5C7B:
    cp a
    db $ED
    ld a, [hl]
    rst $00
    cp $8A
    rst $30
    dec d
    ei
    jr c, @+$01

    inc h
    rst $38
    ret nc

    jr nc, jr_004_5C7B

    jr nc, jr_004_5C6D

    ld h, b
    ldh [rNR41], a
    and b
    ld h, b
    ret nz

    ret nz

    add b
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    add b
    ret nz

    ld b, b
    and b
    ld h, b
    ld [hl], b
    sub b
    ld hl, sp-$78
    ld e, h
    db $E4
    nop
    nop
    ld c, $0E
    dec de
    rra
    scf
    dec sp
    dec l
    scf
    ld e, d
    ld l, h
    ld [hl], d
    ld e, h
    ld h, h
    ld a, b
    ld l, h
    ld [hl], b
    ld c, b
    ld [hl], h
    ld a, [hl]
    ld b, b
    ld [hl], $08
    dec a
    nop
    inc d
    ld bc, $000A
    nop
    nop
    nop
    nop
    ret nc

    nop
    jr jr_004_5CCE

jr_004_5CCE:
    adc h
    add b
    call nz, $C0C0
    ret nz

    ld h, h
    ld h, b
    jr nc, jr_004_5D08

    jr @+$1A

    inc c
    inc c
    inc b
    inc b
    nop
    nop
    ld c, b
    nop
    jr nz, jr_004_5CE4

jr_004_5CE4:
    add b
    nop
    nop
    nop
    nop
    nop
    rlca
    rlca
    dec e
    inc bc
    inc a
    inc bc
    ld d, a
    ld [$023D], sp
    ld c, h
    nop
    db $10
    jr nz, @+$42

    nop
    stop
    jr nz, jr_004_5CFE

jr_004_5CFE:
    ld bc, $1301
    inc bc
    ld b, $06
    nop
    nop
    nop
    nop

jr_004_5D08:
    nop
    nop
    ldh [$E0], a
    ret c

    cp b
    ld l, h
    call c, $EE36
    sbc d
    halt
    ld l, [hl]
    ld e, $1C
    inc e
    ld a, [hl-]
    jr c, jr_004_5D8D

    ld [hl], b
    ret nz

    ret nz

    add [hl]
    add b
    inc c
    nop
    ld e, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, [de]
    nop
    jr nc, jr_004_5D30

jr_004_5D30:
    ld h, c
    ld bc, $0303
    ld c, [hl]
    ld c, $5C
    inc e
    jr c, jr_004_5D72

    halt
    ld a, b
    ld e, c
    ld l, [hl]
    ld l, h
    ld [hl], a
    ld [hl], $3B
    dec de
    dec e
    rlca
    rlca
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, b
    ld h, b
    ret z

    ret nz

    add b
    add b
    inc b
    nop
    ld [$0200], sp
    nop
    ld [$3204], sp
    nop

jr_004_5D5C:
    cp h
    ld b, b
    ld [$3C10], a
    ret nz

    cp b
    ret nz

    ldh [$E0], a
    nop
    nop
    ret c

    add sp, -$68
    add sp, -$48
    ret z

    call nc, Call_004_54E4
    ld h, h

jr_004_5D72:
    ld e, h
    ld h, h
    ld a, [hl+]
    ld [hl-], a
    ld h, $3A
    dec d
    add hl, de
    ld a, [bc]
    inc c
    dec b
    ld b, $02
    inc bc
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

jr_004_5D8D:
    nop
    nop
    nop
    nop
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
    db $FC
    di
    and e
    ld a, [hl]
    ld a, b
    rlca
    rlca
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    ld b, d
    ld [hl], $34
    ld c, $1E
    ccf
    cp a
    ld e, a
    ld d, a
    rra
    or e
    dec de
    rla
    rrca
    dec c
    ld [hl], a
    ld a, e
    cp $B3
    call z, $EA5F
    pop de
    dec h
    dec sp
    rra
    rra
    add hl, bc
    rrca
    nop
    nop
    nop
    jr nc, jr_004_5D8D

    ld b, b
    add b
    add b
    ldh [$60], a
    sub b
    sub b
    adc b
    db $10
    ret nz

    ret nz

    db $10
    jr nz, jr_004_5D5C

    add c
    jp Jump_000_2543


    rst $20
    cp l
    db $DB
    sbc d
    and $CE
    or $3C
    inc a
    nop
    nop
    nop
    nop
    nop

jr_004_5DED:
    nop
    nop
    nop
    nop
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

jr_004_5DFB:
    ret nz

    ldh [rNR41], a
    ldh [$E0], a
    nop
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
    ld b, d
    ld [hl], $34
    ld c, $1E
    ccf
    cp a
    ld e, a
    ld d, a
    rra
    or e
    dec de
    rla
    rrca
    dec c
    rla
    dec de
    ld a, $36
    ld c, l
    ld a, h
    ccf
    ccf

jr_004_5E22:
    ccf
    inc h
    rra
    ld e, $19
    rra
    nop
    nop
    nop
    jr nc, jr_004_5DED

    ld b, b
    add b
    add b
    ldh [$60], a
    sub b
    sub b
    adc b
    db $10
    ret nz

    ret nz

    db $10
    jr nz, jr_004_5DFB

    ret nz

    and b
    ld h, b
    db $10
    ldh a, [$C8]
    cp b
    ld c, b
    ld hl, sp+$10
    ldh a, [$E0]
    ldh [rP1], a
    nop
    nop
    nop
    nop

jr_004_5E4D:
    nop
    nop
    nop
    nop
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
    rlca
    rlca
    rlca
    dec b
    dec b
    ld b, $03
    ld [bc], a
    ld bc, $0001
    nop
    inc bc
    ld b, d
    ld [hl], $34
    ld c, $1E
    ccf
    cp a
    ld e, a
    ld d, a
    rra
    or e
    dec de
    rla
    rrca
    dec c
    rra
    rra
    xor b
    and a
    ld d, c
    adc $B1
    sbc [hl]
    jp c, Jump_000_3F3D

    rst $38
    ret


    rst $08
    nop
    nop
    nop
    jr nc, jr_004_5E4D

    ld b, b
    add b
    add b
    ldh [$60], a
    sub b
    sub b
    adc b
    db $10
    ret nz

    ret nz

    db $10
    jr nz, jr_004_5E22

    rst $00
    rst $20
    db $FD
    ld d, a
    rst $10
    ld l, a
    call $A5BF
    rra
    inc de
    ld c, $0E
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh [$E0], a
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0202
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    ld bc, $6101
    ld h, c
    ld [hl], e
    ld d, e
    ld e, [hl]
    ld l, a
    jr z, jr_004_5F1B

    jr nz, jr_004_5F25

    rra
    rra
    rra
    ld de, $1116
    ld a, [hl]
    ld h, c
    cp b
    rst $00
    add hl, bc
    ld a, a
    cp e
    ld [hl], a
    ld [hl], $CE
    inc b
    db $FC
    daa
    rst $18
    inc de
    rst $28
    add c
    rst $38
    add b
    rst $38
    ld b, b
    rst $38
    ld h, b

jr_004_5F03:
    rst $38
    ld hl, sp-$01
    rrca
    rrca
    nop
    nop
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    rlca
    rlca
    dec de
    jr jr_004_5F03

    db $E3
    or c
    adc a
    inc bc

jr_004_5F1B:
    cp $CE
    db $FD
    ld a, h
    di
    nop
    rst $38
    ld bc, $07FF

jr_004_5F25:
    rst $38
    db $FC
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
    ldh a, [$F0]
    sbc b
    ld a, b
    inc c
    db $FC

jr_004_5F38:
    add h
    ld a, h
    inc b
    db $FC
    inc c
    db $FC
    jr jr_004_5F38

    ld [hl], b
    ldh a, [$C0]
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
    nop
    nop
    nop
    rlca
    rlca
    dec bc
    add hl, bc
    ld d, $12
    inc [hl]
    inc l
    ld c, b
    ld e, b
    ld l, b
    ld e, b
    ld e, c
    ld l, c
    ld c, a
    ld [hl], a
    dec h
    ld a, [hl-]
    ld [hl-], a
    dec l
    jr @+$21

    rlca
    rlca
    rrca
    add hl, bc
    rla
    db $10
    rra
    db $10
    ld a, $31
    jr z, jr_004_5F99

    ld b, b
    ld a, a
    ld d, d
    ld l, a
    ld e, h

jr_004_5F77:
    ld c, a
    ld e, h
    ld b, e
    ret c

    rst $00
    xor b
    rst $20

jr_004_5F7E:
    jr c, jr_004_5F77

jr_004_5F80:
    jr @+$01

jr_004_5F82:
    inc c
    ei
    ld [hl], $F7
    jp Jump_000_00C3


    nop
    add b
    add b
    ret nz

    ret nz

jr_004_5F8E:
    ld a, a
    rst $38
    ld h, c
    cp $40
    rst $38
    ld b, d
    rst $38
    jp $E6FE


jr_004_5F99:
    db $FD
    ld a, h
    ei
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc bc
    rst $38

jr_004_5FA4:
    rrca
    rst $38
    db $FC
    db $FC
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    ret nz

    and b
    jr nz, jr_004_6003

    sub b
    jr z, jr_004_5F7E

    jr c, jr_004_5F80

    jr c, jr_004_5F82

    jr jr_004_5FA4

    jr nc, jr_004_5F8E

    ldh [$60], a
    ret nz

    ret nz

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
    nop
    nop
    ld c, $0E
    rla
    ld de, $2728
    ld d, [hl]
    ld c, a
    ld l, c
    ld e, c
    ld l, b
    ld e, b
    ld b, h
    ld a, h
    ld b, a
    ld a, e
    inc hl
    inc a
    jr nz, jr_004_6021

    db $10
    rra
    ld [$070F], sp
    rlca
    rrca
    add hl, bc
    rla
    db $10
    rra
    db $10
    ld e, $11
    add hl, hl
    daa
    and [hl]
    cp a
    ld h, b
    rst $38
    ldh [$EF], a
    jr c, jr_004_6021

    ld [hl], b
    ld h, a
    ld hl, sp-$49
    inc e
    ei
    ld a, [bc]
    ld sp, hl
    inc c

jr_004_6003:
    rst $38
    ld [de], a
    di
    pop hl
    pop hl
    nop
    nop
    adc a
    adc a
    sub $D1
    ld [hl], b
    rst $28
    ld h, c
    cp $67
    db $FC
    inc sp
    cp $1B
    cp $0D
    db $FC
    ld b, $F9
    nop
    rst $38
    nop
    rst $38
    nop

jr_004_6021:
    rst $38
    ld bc, $07FF
    rst $38
    db $FC
    db $FC
    nop
    nop

jr_004_602A:
    ret nz

    ret nz

    ld h, b
    ldh [$90], a
    ld [hl], b
    jr jr_004_602A

    ld [$88F8], sp
    ld a, b
    ld [$08F8], sp
    ld hl, sp+$18
    ld hl, sp+$30
    ldh a, [$60]
    ldh [$C0], a
    ret nz

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
    nop
    nop
    nop
    nop
    nop
    nop
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
    ccf
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_004_6064:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0201
    rst $38
    cp $03
    ld [bc], a
    ld [bc], a
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, $02
    dec b
    adc l
    ld h, b
    ld h, c
    dec sp
    dec de
    dec bc
    rrca
    ld l, [hl]
    ld l, a
    sbc a
    rst $18
    adc a
    cp e
    ld c, a
    ld e, b
    ld c, $49
    dec c
    dec bc
    ld b, $06
    nop
    nop
    nop
    nop
    nop
    nop
    jr nc, jr_004_60AA

jr_004_60AA:
    ld b, b
    nop
    sbc h
    db $10
    ldh [$60], a
    sbc [hl]
    sbc b
    jr nc, jr_004_6064

    ldh [$F8], a
    add b
    and b
    cp e
    ld a, [$ECEC]
    or b
    ldh [$90], a
    sub b
    inc d
    db $10
    ld [$0008], sp
    nop
    nop
    nop
    nop
    nop
    ld bc, $0201
    ld [bc], a
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    ld b, $05
    dec b
    rlca
    rlca
    rlca
    rlca
    ld b, $0D
    ld c, $0A
    dec c
    rrca
    add hl, bc
    dec c
    dec bc
    ld c, $0B
    ld c, $0B
    ld hl, sp-$08
    cp a
    rst $38
    rst $10
    or c
    rst $28
    and e
    rst $38
    ld a, a
    jp c, $89FD

    rst $38
    xor d
    rst $18
    and a
    rst $18
    and l
    rst $18
    cp $DD
    and a
    cp $63
    xor [hl]
    ld [hl], c
    rst $28
    ld sp, hl
    ld [hl], a
    pop de
    or $00
    nop
    add b
    add b
    nop
    nop
    nop
    nop
    add b
    add b
    ldh [$60], a
    ret nc

    sub b
    ld [hl], b
    ldh a, [$30]
    ldh [$90], a
    ldh a, [rOBP0]
    ld hl, sp+$38
    ld hl, sp+$78
    ret z

    ld c, b
    ld hl, sp-$70
    ldh a, [$90]
    ldh a, [rNR22]
    ld a, [de]
    dec d
    dec de
    rla
    add hl, de
    cpl
    ld [hl-], a
    cpl
    ld [hl-], a
    cpl
    scf
    dec l
    inc [hl]
    cpl
    inc [hl]
    daa
    ccf
    cpl
    dec a
    inc [hl]
    scf
    inc h
    daa
    dec c
    rrca
    rra
    dec de
    ld [hl], $2E
    ld a, h
    ld a, h
    sub l
    pop af
    sbc a
    rst $30
    cp l
    ld a, a
    add hl, hl
    rst $38
    ld c, c
    rst $38
    ld l, a
    db $DB
    rst $28
    sbc $FF
    ld c, h
    ei
    ld c, b
    db $FD
    push hl
    sbc a
    sbc [hl]
    add e
    add e
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $F001
    ldh a, [rNR23]
    ld hl, sp+$78
    adc b
    ld a, b
    adc b
    ld hl, sp+$08
    call c, $FC2C
    add h
    db $EC
    ld d, h
    xor $D2
    ld h, [hl]
    jp c, $FA26

    sub $BA
    jp c, Jump_004_56FE

    halt
    sub b
    ldh a, [$E0]
    ldh [rP1], a
    nop
    nop
    nop
    nop
    nop
    ld bc, $0201
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, c
    ld h, c
    sbc a
    cp $EC
    rst $30
    ccf
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
    db $FC
    db $FC
    cp a
    rst $38
    rst $28
    and c
    rst $18
    jp $8FFF


    ld [hl], b
    ld a, a
    jp nz, $A8FD

    ld [hl], a
    inc h
    rst $38
    db $E4
    rst $38
    inc l
    scf
    inc l
    scf
    ld l, l
    halt
    ld b, h
    ld a, a
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    add b
    nop
    nop
    nop
    nop
    add b
    add b
    ldh a, [$F0]
    ld l, b
    ld hl, sp+$3F
    rst $30
    sbc c
    ld a, a
    ld e, a
    cp a
    dec hl
    sbc a

jr_004_61E2:
    inc d
    rst $08

jr_004_61E4:
    ld a, [hl-]
    rst $00
    add a
    ld [hl], e
    jr c, jr_004_6222

    db $E4
    db $FC
    sbc h
    ld a, h
    ldh [$E0], a
    nop
    nop
    ldh a, [$F0]
    rra
    rst $38
    add d
    cp $CC
    db $FC
    ld a, b
    ld hl, sp+$18
    ld hl, sp-$70
    ld [hl], b
    jr nz, jr_004_61E2

    jr nz, jr_004_61E4

    ldh [$E0], a
    nop
    nop
    nop
    nop
    ld bc, $0201
    ld [bc], a
    dec b
    inc b
    ld a, [bc]
    add hl, bc
    dec c
    dec bc
    inc c
    dec bc
    rlca
    rlca
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_004_6222:
    nop
    nop
    nop
    nop
    nop
    nop
    reti


    rst $28
    reti


    ld l, a
    ld e, c
    rst $28
    ld e, d
    db $ED
    adc $FD
    ld e, h
    rst $28
    push bc
    cp $54
    ld l, a
    ld b, [hl]
    ld a, a
    ld c, a
    ld a, a
    ld d, c
    ld [hl], c
    ld [hl], b

Call_004_623F:
    ld [hl], b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    nop
    nop
    nop
    nop
    ld bc, $56FB
    cp c
    add hl, bc
    cp $A4
    rst $18
    sub [hl]
    rst $28
    jp Jump_004_63FF


    rst $38

jr_004_6256:
    or [hl]
    ld a, [hl]
    inc d
    db $FC
    call z, Call_004_7CFC
    db $FC
    cp [hl]
    adc [hl]
    db $DB
    rst $08
    ld a, b
    ld [hl], a
    ld c, $0D
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
    ldh [$E0], a
    jr nz, jr_004_6256

    and b
    ld h, b
    sub b
    ldh a, [$50]
    ld [hl], b
    jr nc, jr_004_62AE

    jr nc, jr_004_62B0

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0201
    ld [bc], a
    nop
    nop
    nop
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
    add hl, bc
    rrca
    ld c, $0F
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    ld hl, sp-$08

jr_004_62AE:
    cp a
    rst $38

jr_004_62B0:
    rst $10
    or c
    rst $28
    and e
    ld a, a
    ld a, [hl]
    ei
    push af

jr_004_62B8:
    xor l
    cp [hl]
    cp $97
    ld a, d
    ld d, a
    inc sp
    ccf
    rst $30
    rst $28
    call $FB7F
    db $FD
    dec c
    dec de
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    add b
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
    ret nz

    ld b, b
    ld [hl], b
    or b
    jr c, jr_004_62B8

    inc e
    db $EC
    ld b, a
    cp a
    ld d, l
    ld sp, hl
    rst $08
    ld a, h
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    cp $FE
    ld a, e
    ld h, a
    or $3E
    inc a
    call z, $E818
    adc b
    ld hl, sp-$30
    ldh a, [$30]
    jr nc, jr_004_6305

jr_004_6305:
    nop
    nop
    nop
    ld l, d
    ld a, a
    jp c, $9AB7

    ld [hl], a
    ld sp, $DBF7
    push af
    ccf
    di
    ld [hl], a
    rst $30
    sbc h
    sbc a
    ld b, $07
    inc bc
    inc bc
    ld bc, $0101
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    ld l, $77
    and [hl]
    ld a, e
    inc de
    cp l
    ld e, b
    cp a
    dec c
    rst $18
    and a
    rst $18
    add a
    rst $28
    jp z, Jump_004_6AF6

    or $F1
    sbc a
    ld a, c
    rrca
    or a
    sbc a
    db $E3
    cp a
    ld a, b
    ld [hl], a
    rrca
    inc c
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
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    inc b
    rlca
    rlca
    rlca
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0201
    ld [bc], a
    nop
    nop
    rrca
    rrca
    ldh a, [rIE]
    ld l, a
    cp a
    ldh a, [$F1]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    db $FC
    cp a
    rst $38

jr_004_6390:
    rst $18
    cp c
    rst $38
    or e
    db $FD
    ld a, [hl]
    cp [hl]
    rst $00
    reti


    rst $28
    or d
    rst $38
    db $D3
    rst $28
    ld d, e
    ld l, a
    ld d, h
    ld l, a
    scf
    cpl
    dec sp
    dec a
    ld a, c
    halt
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    add b
    nop
    nop
    ret nz

    ret nz

    or b
    ld [hl], b
    jr z, jr_004_6390

    call c, Call_004_7AEC
    and [hl]
    dec a
    db $D3
    sbc $E9
    rst $30
    db $FC
    ld h, a
    cp h
    ld a, [$9FFD]
    ldh [rP1], a
    nop
    nop
    nop
    nop
    nop
    add b
    add b
    ld b, b
    ret nz

    and b
    ld h, b
    ret nc

    jr nc, jr_004_644F

    sbc b
    cp h
    ld c, h
    ld e, a
    inc hl
    or a
    add hl, de
    xor d
    ld e, $D6
    ld c, $CB
    rlca
    push hl
    add e
    ld a, [hl]

jr_004_63E7:
    jp nz, $D7F8

    db $DB
    inc [hl]
    sub [hl]
    ld [hl], c
    jr nc, jr_004_63E7

    jp c, $33F4

    di
    halt
    rst $30
    sbc $FD
    rla
    ld e, $13
    rla
    dec l
    inc hl
    ccf

Jump_004_63FF:
    daa
    add hl, sp
    add hl, sp
    jr nz, jr_004_6424

    nop
    nop
    nop
    nop
    cp $48
    ld e, a
    db $E4
    dec hl
    or $6F
    ld [hl], d
    db $DD
    db $EB
    cp e
    ret


    or $8D

jr_004_6416:
    db $FD
    call nz, $E67A
    di
    sbc a
    ld a, e
    rrca
    or a
    sbc a
    pop hl
    cp a
    ret c

    rst $10

jr_004_6424:
    rrca
    inc c
    inc bc
    inc bc
    inc a
    db $E4
    cp b
    ld a, b
    ldh [$E0], a
    nop
    nop
    add b
    add b
    ldh [$E0], a
    jr nz, jr_004_6416

    and b
    ld h, b
    sub b
    ldh a, [$50]
    ld [hl], b
    jr nc, jr_004_646E

    jr nc, jr_004_6470

    nop
    nop
    nop
    nop
    nop
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

jr_004_644F:
    add b
    nop
    nop
    nop
    nop
    add b
    add b
    add c
    add c
    add $C6
    ld a, [$78F9]
    rst $30
    ld h, c
    sbc $37
    add sp, -$71
    pop af
    rst $00
    cp $F0
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop

jr_004_646E:
    nop
    nop

jr_004_6470:
    nop
    nop
    ld e, $1E
    ld l, a
    ld h, e
    cp h
    add h
    cp $1E
    ld h, c
    cp a
    adc [hl]
    ld [hl], d
    inc a
    db $FC
    call z, Call_004_76C4
    ld a, [bc]
    cp e
    ld a, l
    rst $00
    rst $00
    ld [de], a
    dec d
    ld d, $11
    inc [hl]
    inc sp
    jr nc, jr_004_64C6

    ld e, e
    ld [hl], c
    ld a, a
    ld d, a
    ld a, c
    ld e, a
    inc sp
    ld l, $37
    inc a
    cpl
    dec a
    inc sp
    cpl
    inc e
    inc e
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $CF01
    rst $08
    ld h, b
    ldh [$60], a
    and b
    ret nz

    ret nz

    add b
    add b
    ld hl, sp-$08
    call nz, $D8FC
    ld a, b
    ldh [$E0], a
    jr nc, @-$0E

    sub b
    ld [hl], b
    add sp, -$08
    ld c, b
    ld a, b
    ld a, b
    ld e, b
    ret nc

    or b

jr_004_64C6:
    ldh [$E0], a
    nop
    nop
    ld bc, $0201
    ld [bc], a
    dec b
    inc b
    ld a, [bc]
    add hl, bc
    inc c
    dec bc
    add hl, bc
    rrca
    rlca
    ld b, $05
    inc b
    inc bc
    inc bc
    ld bc, $0101
    ld bc, $0202
    inc bc
    ld [bc], a
    inc bc
    inc bc
    inc bc

jr_004_64E7:
    ld [bc], a

jr_004_64E8:
    ld hl, sp-$29
    db $DB
    or h
    sub h
    ld [hl], e
    jr nc, jr_004_64E7

    jp c, $93D4

    sub e
    rst $30
    rst $30
    ei
    rst $18
    rst $00
    cp a
    adc h
    ld a, h
    db $10
    ldh a, [$F0]
    ldh a, [$F0]
    db $10
    ldh a, [rNR10]
    ldh [$E0], a
    jr nz, jr_004_64E8

    cp $48
    ld e, a
    db $E4
    dec hl
    or $6F
    ld [hl], d
    call $ABFB
    reti


    or [hl]
    call $8CF5
    jp nc, $D38E

    adc a
    call nc, $A88C
    ret c

    sub b
    ldh a, [$50]
    ld [hl], b
    ld h, b
    ld h, b
    jr nz, jr_004_6548

    ld a, [hl-]
    and $9E
    ld [hl], d
    db $FC
    db $F4
    inc e
    inc a
    jr jr_004_654A

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_004_6548:
    ld [bc], a
    inc bc

jr_004_654A:
    add $C7
    cp $BD
    sbc b
    rst $20
    ld h, c
    ld a, a
    dec sp
    ccf
    ld c, $0E
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_004_654A

    ld b, b
    ret nz

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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, $38
    ld [hl], h
    ld c, h
    and c
    rst $08
    sbc b
    rst $20
    ld b, [hl]
    ld a, a
    inc a
    jr c, jr_004_65A7

jr_004_65A7:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld hl, $8006
    ret nz

    ld [hl+], a
    ldh a, [$84]
    ld [$0000], sp
    nop
    nop
    ld [$1408], sp
    jr jr_004_65E1

    jr jr_004_65E3

    jr jr_004_65E5

    jr jr_004_65E7

    jr jr_004_65E9

    jr jr_004_65EB

    jr jr_004_65ED

    jr jr_004_65EF

    jr jr_004_65F1

    jr jr_004_65F3

    jr jr_004_65F5

jr_004_65E1:
    jr jr_004_65F7

jr_004_65E3:
    jr @+$40

jr_004_65E5:
    ld a, $7F

jr_004_65E7:
    ld l, e
    nop

jr_004_65E9:
    nop
    nop

jr_004_65EB:
    nop
    nop

jr_004_65ED:
    nop
    nop

jr_004_65EF:
    nop
    nop

jr_004_65F1:
    nop
    nop

jr_004_65F3:
    nop
    nop

jr_004_65F5:
    nop
    nop

jr_004_65F7:
    nop
    nop
    nop
    nop
    nop
    ld a, a
    ld a, a
    add b
    rst $38
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $FF01
    cp $02
    rst $38
    rst $38
    ld [bc], a
    ld bc, $0001
    nop
    nop
    nop
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
    inc bc
    inc bc
    rrca
    dec c
    rra
    add hl, de
    dec l
    inc hl
    ld e, e
    ld b, a
    and h
    sbc h
    sbc c
    cp c
    xor $9F
    ld hl, sp-$71
    cp e
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
    ld [hl], b
    ld [hl], b
    cp b
    adc b
    xor c
    reti


    or $F6
    adc a
    adc h
    rra
    jr jr_004_66F6

    ld [hl], b
    ccf
    pop de
    xor l
    ld h, e
    ld l, [hl]
    and c
    ld a, [$00D5]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc a
    inc a
    ld l, [hl]
    ld h, d
    sbc $E2
    xor $F2
    db $FC
    ld a, h
    ldh [$60], a
    ret nz

    ld b, b
    add b
    add b
    nop
    ret nz

    or b
    ld [hl], b
    and b
    ret c

    call nz, Call_004_7FFC
    ld d, d
    ccf
    cpl
    ld [hl], $35
    ld a, h
    ld e, e
    or a
    adc a
    ret c

    cp a
    ld l, a
    ld l, c
    dec b
    dec b
    dec b
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
    nop
    ld bc, $3D01
    ld [hl-], a
    db $DD
    sbc d
    rst $18
    ret c

    rst $38
    call c, $E63F
    ld a, a
    add e
    ld e, a
    add c

jr_004_66F6:
    ld c, a
    add c
    ccf
    jp $FE85


    cp $FC
    ld c, a
    ld a, l
    dec l
    scf
    ld c, l
    ld h, a
    db $DB
    call $83DF
    xor b
    or $95
    db $DB
    ld l, d
    call Call_004_6FD9
    cp h
    ld l, e
    ld a, [$F80E]
    sbc l
    ldh [$2A], a
    ldh [$60], a
    ld b, b
    ld b, b
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0501
    ld c, $08
    rrca
    dec bc
    dec c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_004_675E:
    ld l, b
    ld a, h
    inc hl
    rst $18
    call z, $1033
    rst $28
    push af
    ld a, [$0000]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ret nz

    and b
    ld [hl], b
    jr z, jr_004_675E

    add h
    ld a, h
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld [hl], b
    cp a
    adc a
    rst $28
    sbc h
    adc l
    rst $38
    ld a, a
    ld a, a
    ld bc, $0001
    nop
    rra
    ld [de], a
    ccf
    cpl
    ld [hl], $35
    ld a, h
    ld e, e
    or a
    adc a
    ret c

    cp a
    ld a, a
    ld a, c
    dec [hl]
    dec l
    ld d, l
    ld c, a
    or e
    adc a
    ld c, l
    dec a
    di
    di

jr_004_67C0:
    ld a, h
    inc e
    sbc $39
    sbc c
    ld a, [hl]
    rst $38
    rst $38
    ld a, $3F
    push de
    sbc e
    rst $18
    ret nc

    ei
    sub $3E
    push hl
    ld [hl], a
    adc a
    ld e, e
    adc h
    ld e, d
    sub e
    dec [hl]
    sbc $BB
    db $FC
    or $F9
    ld a, l
    inc de
    or e
    ld c, a
    ld e, l
    cp a
    ei
    db $ED
    rst $18
    add e
    jr z, jr_004_67C0

    sub l
    db $EB
    ld l, e
    push af
    ret nc

    ccf
    push de
    cp e
    ldh a, [rNR34]
    db $F4
    dec e
    ldh [$2A], a
    and b
    ld h, b
    ld b, b
    ret nz

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
    nop
    nop
    rlca
    ld b, $0A
    add hl, bc
    dec d
    inc de
    ld a, [hl-]
    daa
    ld [hl], h
    ld c, e
    ret


    or a
    db $E3
    sbc a
    rst $28
    sbc a
    ld a, h
    ld a, a
    rra
    rra
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    inc b

jr_004_6825:
    rlca
    rrca
    rrca
    cp l
    add $BE
    rst $08
    ret


    rst $38
    db $FD
    cp $C6
    rst $00
    add e
    add e
    add e
    add e
    pop bc
    pop bc
    ld h, b
    and b
    ret nc

    or b
    ldh a, [$D0]
    ld [hl], b
    ld d, b
    ldh a, [$90]
    ret nc

    jr nc, jr_004_6825

    ldh [$80], a
    add b
    add b
    add b
    ret nz

    ld b, b
    and b
    jr nz, @+$52

    sub b
    cp b
    ld c, b
    ld c, b
    cp b
    inc d
    db $EC
    xor h
    call nc, $FCEC
    cp b
    ld hl, sp-$30
    or b
    or b
    ret nc

    ld a, b
    ld e, b
    ld a, h
    ld c, h
    ld [hl-], a
    ld a, $1F
    rra
    ccf
    ccf
    ld b, h
    ld b, e
    cp c
    add [hl]
    sub $A9
    pop bc
    cp $FC
    rst $38
    ld a, e
    ld h, a
    ld a, a
    ld a, h
    ld h, e
    ld e, a
    ld d, c
    ld c, a
    dec hl
    daa
    dec e
    dec e

jr_004_6880:
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    db $FD
    rst $00
    ld sp, hl
    rst $38
    sbc e
    ld a, l
    ld b, l
    cp a
    cp c
    ld b, a
    ld [de], a
    xor $FC
    cp $34
    db $FC
    ret c

    cp b
    ldh a, [$D0]
    ldh a, [$90]
    jr nz, jr_004_6880

    ret nz

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
    nop
    nop
    nop
    ld bc, $0201
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
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
    nop
    nop
    rrca
    ld c, $3B
    dec a
    db $E3
    rst $18
    ld b, [hl]
    ld a, $85
    ld a, h
    ld a, [bc]
    ld sp, hl
    dec sp
    ld hl, sp-$31
    ld hl, sp-$11
    sbc h
    ld [hl], a
    ld [hl], a
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
    cp a
    cp $E3
    rst $18
    ld l, c
    sub a
    pop de
    cpl
    ld hl, $C2DF
    ld a, $86
    ld a, [hl]
    dec de
    rst $38
    db $FD
    rst $28
    or a
    push de
    and $E6
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [$1808], sp
    db $10
    jr c, jr_004_6950

    ccf
    jr nc, jr_004_6961

    ld sp, $181F
    rrca
    dec c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    cp $00
    rst $38
    jr c, jr_004_6987

    rst $38
    ld a, l
    add $FF
    rst $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_004_6950:
    nop
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
    db $10
    jr jr_004_6966

    inc e
    inc c
    db $FC

jr_004_6961:
    inc c
    ld a, h
    adc h
    ld hl, sp+$18

jr_004_6966:
    ldh a, [$B0]
    rst $10
    rst $28
    rst $28
    cp e
    rst $38
    sub e
    rst $28
    add e
    rst $00
    add e
    add e
    add e
    rst $00
    rst $00
    rst $00
    rst $00
    rst $00
    rst $28
    rst $38
    rst $38
    and e
    rst $18
    rst $38
    rst $38
    sub e
    rst $28
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_004_6987:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld e, $1F
    dec a
    ccf
    ld a, l
    ld a, a
    ld a, a
    ld a, a
    ld a, l
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    dec a
    ccf
    dec a
    ccf
    dec a
    ccf
    dec e
    rra
    dec e
    rra
    dec e
    rra
    dec c
    rrca
    dec c
    rrca
    dec c
    rrca
    dec c
    rrca
    dec c
    rrca
    dec c
    rrca
    dec c
    rrca
    dec c
    rrca
    dec e
    rra
    dec e
    rra
    rra
    rra
    dec sp
    ccf
    scf
    ccf
    dec l
    ccf
    ld a, e
    ld a, a
    ld [hl], e
    ld a, a
    db $E3
    rst $38
    rst $00
    rst $38
    add a
    rst $38
    ld a, b
    ld hl, sp-$44
    db $FC
    cp [hl]
    cp $FE
    cp $BE
    cp $FE
    cp $FE
    cp $BC
    db $FC
    cp h
    db $FC
    cp h
    db $FC
    cp b
    ld hl, sp-$48
    ld hl, sp-$48
    ld hl, sp-$50
    ldh a, [$B0]
    ldh a, [$B0]
    ldh a, [$B0]
    ldh a, [$B0]
    ldh a, [$B0]
    ldh a, [$B0]
    ldh a, [$B0]
    ldh a, [$B8]
    ld hl, sp-$48
    ld hl, sp-$08
    ld hl, sp-$24
    db $FC
    db $EC
    db $FC
    or h
    db $FC
    sbc $FE
    adc $FE
    rst $00
    rst $38
    db $E3
    rst $38
    pop hl
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
    ld b, b
    ld b, b
    ld [hl], e
    ld [hl], e
    ld a, a
    ld a, a
    ccf
    ccf
    ccf
    ccf
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    dec de
    rra
    dec c
    rrca
    ld b, $07
    ld b, $07
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0001
    nop
    ld e, $1F
    dec a
    ccf
    ld a, l
    ld a, a
    ld a, a
    ld a, a
    ld a, e
    ld a, a
    ld a, e
    ld a, a
    ld h, a
    ld a, a
    ccf
    ccf
    ccf
    ccf
    ld a, a
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $FD
    rst $38
    db $FD
    rst $38
    db $FD
    rst $38
    db $FD
    rst $38
    ld sp, hl
    rst $38
    ld sp, hl
    rst $38
    pop af
    rst $38
    pop af
    rst $38
    ld h, c
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    add a
    rst $38
    add a
    rst $38
    ld a, b
    ld hl, sp-$44
    db $FC
    cp [hl]
    cp $FE
    cp $DE
    cp $DE
    cp $E6
    cp $FC
    db $FC
    db $FC
    db $FC
    cp $FE
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    sbc a
    rst $38
    sbc a
    rst $38
    adc a
    rst $38
    adc a
    rst $38
    add [hl]
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    pop hl
    rst $38
    pop hl
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

Jump_004_6AF6:
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    adc $CE
    cp $FE
    db $FC
    db $FC
    db $FC
    db $FC
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$08
    ret c

    ld hl, sp-$50
    ldh a, [$60]
    ldh [$60], a
    ldh [$C0], a
    ret nz

    ret nz

    ret nz

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
    nop
    nop
    ld bc, $0301
    inc bc
    rlca
    rlca
    ld c, $0F
    ld e, $1F
    inc e
    rra
    jr c, jr_004_6B7D

    jr nc, jr_004_6B7F

    ld [hl], b
    ld a, a
    ld h, b
    ld a, a
    ld h, b
    ld a, a
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    pop bc
    rst $38
    ld b, d
    ld a, [hl]
    ld b, h
    ld a, h
    ld b, h
    ld a, h
    ld b, h
    ld a, h
    ld c, b
    ld a, b
    jr z, jr_004_6B9A

    jr jr_004_6B7C

    ld [$0808], sp
    ld [$1818], sp
    jr nc, jr_004_6B9C

    ld [hl], b
    ld [hl], b
    ldh a, [$F0]
    ld hl, sp-$08
    db $FC
    db $FC
    ld a, [hl]
    cp $77
    rst $38
    ld [hl], e
    rst $38
    ld [hl], c
    rst $38

jr_004_6B7C:
    ld h, b

jr_004_6B7D:
    rst $38
    ld h, b

jr_004_6B7F:
    rst $38
    ld h, b
    rst $38
    ld h, b
    rst $38
    ld h, b
    rst $38
    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

    jr nc, @+$01

    db $10
    rst $38
    ld de, $92FF
    cp $54
    ld a, h
    inc [hl]
    inc a

jr_004_6B9A:
    jr jr_004_6BB4

jr_004_6B9C:
    jr jr_004_6BB6

    ld [$0808], sp
    ld [$0000], sp
    nop
    nop
    nop
    nop
    cp $FF
    rst $38
    rst $38
    rst $30
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rlca
    rst $38

jr_004_6BB4:
    inc bc
    rst $38

jr_004_6BB6:
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    add e
    rst $38
    ld b, e
    ld a, a
    daa
    ccf
    dec d
    dec e
    dec e
    dec e
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    rlca
    rlca
    rlca
    rlca
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    pop bc
    rst $38
    jp nz, $E4FE

    db $FC
    xor b
    cp b
    cp b
    cp b
    sub b
    sub b
    sub b
    sub b
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
    ret nz

    ret nz

Call_004_6C1C:
    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ldh [$E0], a
    ldh [$E0], a
    jr jr_004_6C42

    inc c
    inc c
    ld c, $0E
    rrca
    rrca
    rra
    rra
    ccf
    ccf
    ld a, [hl]
    ld a, a
    xor $FF
    adc $FF
    adc [hl]
    rst $38
    ld b, $FF
    ld b, $FF
    ld b, $FF

jr_004_6C42:
    ld b, $FF
    ld b, $FF
    inc b
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    inc c
    rst $38
    ld [$88FF], sp
    rst $38
    ld c, c
    ld a, a
    ld a, [hl+]
    ld a, $2C
    inc a
    jr jr_004_6C74

    jr jr_004_6C76

    db $10
    db $10
    db $10
    stop
    nop
    nop
    nop
    nop
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
    ret nz

    ret nz

jr_004_6C74:
    ldh [$E0], a

jr_004_6C76:
    ld [hl], b
    ldh a, [$78]
    ld hl, sp+$38
    ld hl, sp+$1C
    db $FC
    inc c
    db $FC
    ld c, $FE
    ld b, $FE
    ld b, $FE
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    add e
    rst $38
    ld b, d
    ld a, [hl]
    ld [hl+], a
    ld a, $22
    ld a, $22
    ld a, $12
    ld e, $14
    inc e
    jr jr_004_6CBC

    db $10
    db $10
    db $10
    stop
    nop
    nop
    nop
    nop
    nop
    rra
    rra
    ld hl, $5E2F
    ld b, c
    ld a, e
    ld b, h
    ei
    add [hl]
    db $F4
    adc a
    db $EC
    sbc a

jr_004_6CBC:
    ld a, [c]
    sub e
    pop af
    sub c
    ld [hl], e
    ld d, d
    ld [hl], l
    ld d, h
    scf
    inc [hl]
    dec d
    inc d
    rlca
    inc b
    rlca
    ld b, $03
    inc bc
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    cp b
    xor $CE
    sbc a
    pop hl
    ei
    cp $7E
    rst $38
    rst $38
    db $DD
    rst $38
    ld hl, sp+$1F
    ld a, [c]
    rst $38
    and $FF
    nop
    rst $38
    rrca
    cp $17
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec e
    dec e
    ld [hl], a
    ld [hl], e
    ld sp, hl
    add a
    rst $18
    ld a, a
    ld a, [hl]
    rst $38
    rst $38
    cp e
    rst $38
    rra
    ld hl, sp+$4F
    rst $38
    ld h, a
    rst $38
    nop
    rst $38
    ldh a, [$7F]
    add sp, $00

jr_004_6D29:
    nop
    nop

jr_004_6D2B:
    nop
    nop
    nop
    ld hl, sp-$08
    add h
    db $F4
    ld a, d
    add d
    sbc $22
    rst $18
    ld h, c
    xor a
    ld [hl], c
    scf
    ld sp, hl
    ld c, a
    ret


    adc a
    adc c
    adc $4A
    xor [hl]
    ld a, [hl+]
    db $EC
    inc l
    xor b
    jr z, jr_004_6D29

    jr nz, jr_004_6D2B

    ld h, b
    ret nz

    ret nz

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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    scf
    db $FC
    ld [hl], a
    db $EC
    rst $38
    add sp, -$01
    and b
    rst $38
    ld d, b
    ld a, a
    ld [hl], b
    ld e, a
    ld [hl], b
    ld e, a
    ld a, [hl-]
    cpl
    ccf
    dec l
    rra
    dec d
    rrca
    dec bc
    rrca
    ld [$0707], sp
    nop
    nop
    nop
    nop
    ccf
    db $EC
    ccf
    xor $37
    rst $38
    rla
    rst $38
    dec b
    rst $38
    ld a, [bc]
    cp $0E
    ld a, [$FA0E]
    ld e, h
    db $F4
    db $FC
    or h
    ld hl, sp-$58
    ldh a, [$D0]
    ldh a, [rNR10]
    ldh [$E0], a
    nop
    nop
    nop
    nop
    rst $38
    scf
    rst $38
    ld d, h
    rst $38
    adc h
    rst $38
    ld [$C0FF], sp
    ld a, a
    ld [hl], e
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
    rst $38
    db $EC
    rst $38
    ld a, [hl+]
    rst $38
    ld sp, $10FF
    rst $38
    inc bc
    cp $CE
    jr c, @+$3A

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_004_6DDE:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $4200
    nop
    ld sp, $1800
    nop
    dec de
    ld [bc], a
    inc e
    inc bc
    dec c
    ld [bc], a
    ld a, [bc]
    dec b
    adc b
    rrca
    add hl, hl
    ld c, $07
    nop
    rra
    nop
    inc l
    nop
    jr nz, jr_004_6E04

jr_004_6E04:
    ld b, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $8200
    nop
    or $C0
    ld l, h
    add b
    ld d, b
    or b
    ld e, b
    and b
    dec d
    ldh [$50], a
    or b
    jr nc, jr_004_6DDE

    ldh a, [$C0]
    sub b
    nop
    stop
    adc b
    nop
    ld [hl+], a
    nop
    ld [bc], a
    nop
    ld bc, $0100
    nop
    inc hl
    nop
    rlca
    ld bc, $010E
    adc a
    ld [$0708], sp
    ld e, h
    dec bc
    dec bc
    inc c
    ld b, $01
    dec c
    inc bc
    ld [$0800], sp
    nop
    inc c
    nop
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    add b
    nop
    ld [$7000], sp
    ret nz

    nop
    ldh [rNR10], a
    ldh a, [$71]
    add b
    add hl, de
    ldh [$0E], a
    ldh a, [$60]
    and b
    ret nz

    add b
    ld b, b
    nop
    jr nz, jr_004_6E64

jr_004_6E64:
    jr c, jr_004_6E66

jr_004_6E66:
    nop
    nop

jr_004_6E68:
    nop
    nop
    nop
    nop
    stop
    stop
    dec bc
    ld [bc], a
    dec b
    ld b, $BC
    inc bc
    ld l, [hl]
    ld bc, $0B0C
    add hl, bc
    ld c, $17
    inc b
    daa
    inc bc
    ld b, h
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    nop
    nop
    jr nz, jr_004_6E8A

jr_004_6E8A:
    stop
    jr nz, jr_004_6E8E

jr_004_6E8E:
    ret nz

    nop
    call nz, $AA40
    ld h, b
    sub b
    ld [hl], b
    jr nc, jr_004_6E68

    jr nc, @-$3E

    ld e, b
    and b
    add hl, hl
    ldh [$CE], a
    ret nz

    ld b, b
    nop
    jr nz, jr_004_6EA4

jr_004_6EA4:
    stop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_004_6EBB:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    jr jr_004_6EF2

    inc l
    inc h
    ld l, $26
    ld e, c
    ld h, e
    ld l, l
    ld [hl], c
    or h
    cp e
    adc $FD
    xor d
    db $DB
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_004_6EF2:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh [$E0], a
    ret c

    ld hl, sp-$52
    sbc $B9
    rst $08
    ei
    call z, RST_00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld b, b
    ret nz

    ld [bc], a
    ld [bc], a
    dec b
    inc b
    dec b
    inc b
    ld b, $05
    ld b, $05
    ld [bc], a
    inc bc
    ld bc, $0001
    nop
    ld [hl], c
    ld [hl], c
    rst $28
    sbc [hl]
    call nz, $87BB
    rst $38
    ld a, [hl]
    ld a, c
    inc c
    dec bc
    ld [$070F], sp
    rlca
    rst $20
    cp $FC
    rst $18
    ld e, e
    rst $00
    and $AF
    ld sp, hl
    cp [hl]
    or e
    sbc h
    cp a
    adc a
    rst $38
    ret z

    db $DB
    ret


    cp a
    ld [hl], a
    ld e, $FE
    cp a
    di
    rst $38
    ret


    ld h, a
    sbc l
    ld b, a
    db $FD
    cp $FF
    sbc e
    xor $DF
    inc l
    cp e
    ld e, h
    rst $30
    ld sp, $63ED
    ld a, [$F7E7]
    ld l, h
    rst $30
    ld a, b
    db $DD
    jp Jump_000_3F4E


    or h
    ld c, a
    ld l, e
    sbc h
    scf
    db $FC
    rst $30
    call z, $1FE3
    db $FD
    cp $A0
    ld h, b
    ld d, b
    sub b
    cp b
    ret z

    ld l, b
    adc b
    ld l, b
    adc b
    cp b
    ret z

    sbc b
    ld [hl], b
    ld [hl], b
    ldh [$E0], a
    ldh [rNR41], a
    ldh [$60], a
    ret nz

    ld b, b
    ret nz

    ret nz

    add b
    add b
    add b
    ld b, b
    ret nz

    ld b, b
    ret nz

    nop
    nop
    ld bc, $0601
    rlca
    dec de
    inc e
    dec a
    inc hl
    ld e, a
    ld b, b
    cp e
    add a
    xor $91
    xor l
    sub e
    rst $30
    adc a
    ld a, a
    ld a, l
    ld d, a
    ld b, e
    ld a, l
    ld a, a
    ld [hl-], a
    ld l, $12
    ld e, $0D
    dec bc
    add c
    cp $C1
    cp $7F
    rst $38
    ld [hl], c
    rst $08
    ld e, d
    rst $20
    push hl
    rst $18
    rst $38
    and $9D
    sbc a
    ld [bc], a

Call_004_6FD9:
    inc bc
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $B070
    ldh a, [$F0]
    sub b
    ldh a, [$78]
    adc b
    cp b
    ld c, b
    call z, $EC84
    inc b
    or $82
    or $42
    ld e, [hl]
    and d
    ld a, [$6E82]
    ld d, d
    ld b, [hl]
    ld a, d
    db $FC
    cp h
    ld [hl], h
    call nz, $F838
    add hl, bc
    rrca
    jr jr_004_7023

    ld [hl], b
    ld l, a
    ret nz

    cp a
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_004_7023:
    nop
    nop
    nop
    nop
    nop
    ld bc, $8101
    add c
    add c
    add c
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ldh a, [$58]
    cp b
    ld c, h
    cp h
    or d
    adc $7E
    ld a, [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [$1C0F], sp
    rra
    rla
    rra
    scf
    dec hl
    ccf
    ld h, $2D
    inc h
    dec l
    inc h
    ccf
    inc h
    dec l
    inc h
    ld e, $13
    rla
    rra
    inc c
    inc c
    rrca
    dec bc
    ld b, $07
    inc bc
    ld [bc], a
    ld [bc], a
    inc bc
    rla
    db $EB
    rra
    rst $38
    pop hl
    rst $38
    add hl, de
    ld h, a
    ld c, l
    or e
    ld [$EA16], a
    ld d, $F4
    inc c
    add sp, $18
    db $10
    ldh a, [$F0]
    ldh a, [$F8]
    ld [$F8F8], sp
    db $10
    ldh a, [rNR41]
    ldh [rNR41], a
    ldh [rSB], a
    ld bc, $0203
    rlca
    rlca
    inc c
    dec bc
    jr @+$19

    rra
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
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, @-$1E

    db $10
    ldh a, [rNR10]
    ldh a, [$88]
    ld hl, sp+$08
    ld hl, sp-$10

jr_004_70D3:
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld bc, $0203
    inc bc
    ld [bc], a
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    inc bc
    ld b, $04
    ld b, $04
    inc bc
    inc bc
    ld [bc], a

jr_004_7101:
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    inc bc
    rlca
    inc b
    add c
    cp $C1
    rst $38
    ld a, [hl]
    rst $38
    ld [hl], c
    or $9E
    add c
    ld a, a
    nop
    rst $38
    nop
    or [hl]
    ld c, c
    add a
    rst $38

jr_004_711A:
    db $FC
    ld a, a
    pop af
    ld e, $EB
    db $EC
    daa
    rst $20
    ld hl, $20E1
    ldh [rNR41], a
    ldh [rSVBK], a
    or b
    ldh a, [$F0]
    sub b
    ld [hl], b
    ret nc

    jr nc, jr_004_7101

    jr nc, jr_004_70D3

    ld h, b
    ld h, b
    ldh [$C0], a
    ret nz

    jr nz, jr_004_711A

    ldh [rNR41], a
    ret nc

    ld d, b
    ld hl, sp-$68
    db $EC
    or h
    ld b, a
    ld a, e
    db $E3
    db $DD
    add hl, sp
    scf
    inc c
    dec bc
    inc e
    rra
    ld a, d
    ld h, a

jr_004_714E:
    ldh [$DF], a

jr_004_7150:
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
    nop
    nop
    nop
    nop
    nop
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
    ret nz

    ld b, b
    ret nz

    jr nz, jr_004_714E

    jr nz, jr_004_7150

    ret nz

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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec e
    dec de
    add hl, de
    rla
    ld [hl-], a
    ld l, $42
    ld a, [hl]
    ld a, h
    ld a, h
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc bc
    rlca
    rlca
    add hl, de
    rra
    dec l
    inc sp
    ld [hl], l
    ld c, a
    ld a, a
    ld b, e
    rst $28
    sbc a
    db $DD
    and e
    db $DB
    and a
    xor $9E
    cp $82
    ld a, a
    ld a, l
    ld d, a
    ld b, e
    ld a, l
    ld a, a
    ld [hl-], a
    ld l, $12
    ld e, $05
    ld a, [$FB07]
    cp $FF
    push bc
    ld a, $6A
    sbc l
    sub a
    ld a, [hl]
    rst $38
    sbc b
    ld [hl], a
    ld a, [hl]
    dec bc
    dec c
    add hl, bc
    ld c, $05
    ld b, $04
    rlca
    inc b
    rlca
    inc bc
    inc bc

jr_004_71E4:
    inc bc
    ld [bc], a
    dec b
    rlca
    ret nz

    ret nz

    ret nz

    ret nz

    ld b, b
    ret nz

    ldh [rNR41], a
    ldh [rNR41], a
    jr nz, @+$22

    or b
    db $10
    ret nc

    db $10
    ret nc

    db $10
    ld [hl], b
    sub b
    ldh a, [rNR10]
    or b
    ld d, b
    or b
    ld d, b
    jr nz, jr_004_71E4

    ldh a, [$F0]
    ret nc

    db $10
    dec c
    dec bc
    add hl, bc
    rrca
    jr jr_004_7225

    jr jr_004_7227

    add hl, de
    rla
    ld de, $0A1F
    ld c, $0C
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
    nop

jr_004_7225:
    nop
    nop

jr_004_7227:
    nop
    inc b
    rlca
    inc b
    rlca

jr_004_722C:
    add h
    add a
    add h
    add a
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    inc bc
    ld [bc], a
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
    nop
    nop
    ldh [$E0], a
    jr nz, jr_004_722C

    ret nz

    ret nz

    ld b, b
    ret nz

    ld b, b
    ret nz

    ret nz

    ld b, b
    ret nz

    ld b, b
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0201
    inc bc
    inc bc
    ld [bc], a
    inc b
    dec b
    rlca
    inc b
    rlca
    inc b
    dec b
    inc b
    dec b
    inc b
    inc bc
    ld [bc], a
    nop
    nop
    nop
    nop
    ld bc, $0301
    ld [bc], a
    rrca
    inc c
    inc sp
    ld a, $D9
    rst $20
    ld [hl], d
    adc l
    db $FD
    dec de
    rst $28
    daa
    rst $28
    and a
    ld e, c
    db $E3
    db $ED
    ld [hl], c
    or h
    cp e

jr_004_72A4:
    adc $FD
    xor d
    db $DB
    rrca
    rrca
    inc a
    inc sp
    ldh [$DF], a
    add l
    rst $38
    rst $00
    cp $CE
    ld a, l
    ld hl, sp+$3F
    cp $E7
    sbc a
    sub c
    cpl
    jr c, jr_004_72A4

    cp $2D
    di
    ld l, $F3
    cp d
    rst $30
    sbc d

jr_004_72C5:
    rst $30
    push de
    ei
    add b
    add b
    ld e, [hl]
    sbc $79
    rst $20
    pop bc
    cp a
    ld bc, $11FF
    rst $38
    ld l, $EE
    ld b, b
    ret nz

    ret nz

    ret nz

    ret nz

    ld b, b
    add b
    add b
    add b
    add b
    ret nz

    ld b, b
    and b
    jr nz, jr_004_72C5

    jr nz, @+$72

    ret nc

    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0001
    nop
    nop
    nop
    nop

jr_004_72F5:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $20
    cp $FC
    rst $18
    ld e, e
    rst $00
    and $AF
    ld sp, hl
    cp [hl]
    or e
    sbc h
    cp a
    adc a
    ld a, a
    ld b, b
    ld e, [hl]
    ld b, e
    ld a, [hl-]
    daa
    dec e
    rra
    dec e
    ld d, $0E
    inc c
    inc b
    inc b
    inc b
    ld b, $03
    inc bc
    sbc h
    ei
    jp c, $BD29

    ld e, b
    ei
    inc a
    db $F4
    ld l, [hl]
    ld a, [$FB87]
    inc b
    dec sp
    ld b, $B3
    rrca
    add $3F
    sbc h
    rst $38
    ld [hl], e
    db $FC
    rst $38
    ld [$04FF], sp
    rst $30
    rrca
    db $FD
    cp $E8
    ret z

    xor b
    ret z

    xor b
    ret z

    cp b
    ret z

    sub b
    ld [hl], b
    ret nc

    jr nc, jr_004_72F5

    ld h, b
    jr nz, @-$1E

    ret nz

    ret nz

    ld b, b
    ret nz

    ret nz

    ld b, b
    ret nz

    ld b, b
    ret nz

    add b
    add b
    add b
    ld b, b
    ret nz

    ld b, b
    ret nz

    inc bc
    inc bc
    add e
    add e
    jp $FEC2


    cp l
    db $FC
    add e
    ld [c], a
    sbc l
    pop hl
    sbc [hl]
    ldh a, [$8F]
    ld [hl], b
    ld c, a
    ld a, b
    ld b, a
    inc a
    inc hl
    ccf
    jr nz, jr_004_73A0

    db $10
    rrca
    inc c
    inc bc
    inc bc
    nop
    nop
    ld b, b
    ld b, b
    ldh [$A0], a
    or b
    ret nc

    ret z

    ld a, b
    ld l, h
    or h
    ld [hl-], a
    sbc $0C
    db $FC
    ld e, $FE
    daa
    rst $20
    ld b, e
    jp $C141


    ld b, b
    ret nz

jr_004_73A0:
    and b
    ld h, b
    ldh a, [rNR10]
    ld hl, sp-$08
    nop
    nop
    nop
    nop
    rra
    rra
    rrca
    ld [$0605], sp
    add d
    add e
    jp nz, $E2C3

    db $E3
    ld [hl], h
    ld [hl], a
    jr c, @+$41

    jr nc, @+$41

    ld c, h
    ld a, e
    ld [hl], $2D
    inc de
    ld e, $0D
    dec bc
    rlca
    dec b
    ld [bc], a
    ld [bc], a
    nop
    nop
    ret nz

    ret nz

    ldh a, [$30]
    ld hl, sp+$08
    db $FC
    inc b
    inc a
    call nz, $E21E
    ld c, $F2
    rrca
    pop af
    add a
    ld a, c
    ld b, a
    cp c
    ccf
    pop bc
    ld a, a
    cp l
    jp $C143


    pop bc
    ret nz

    ret nz

    nop
    nop
    rrca
    rrca
    ld a, [de]
    dec d

jr_004_73EE:
    dec sp
    ccf
    ccf
    jr nc, jr_004_740B

    rla

jr_004_73F4:
    jr @+$19

jr_004_73F6:
    rra
    db $10

jr_004_73F8:
    jr c, jr_004_7421

    ldh [$DF], a
    ldh a, [$8F]
    ld a, h
    ld b, e
    ccf
    jr nz, jr_004_7422

    jr jr_004_740C

    rlca
    nop
    nop
    nop
    nop
    ret nz

jr_004_740B:
    ret nz

jr_004_740C:
    jr nz, jr_004_73EE

    ld a, a
    rst $38
    sbc a
    ld a, a
    jr nz, jr_004_73F4

    jr nz, jr_004_73F6

    jr nz, jr_004_73F8

    ld de, $0FF1
    rst $38
    rlca
    ld sp, hl
    ld a, $C2
    db $FC

jr_004_7421:
    inc b

jr_004_7422:
    ld hl, sp+$18
    ldh [$E0], a
    nop
    nop
    ld [bc], a
    ld [bc], a
    dec b
    inc b
    dec b
    inc b
    ld b, $05
    ld b, $05
    ld [bc], a
    inc bc
    ld bc, $0001
    nop
    ld bc, $0301
    ld [bc], a
    ld a, h
    ld a, a
    rst $20
    sbc a
    adc $B9
    adc h
    ei
    ld a, b
    ld a, a
    rlca
    rlca
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_004_75B5:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_004_76C4:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_004_7768:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_004_78D8:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_004_7AEC:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_004_7CFC:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_004_7FFC:
    rst $38
    rst $38
    rst $38
    rst $38
