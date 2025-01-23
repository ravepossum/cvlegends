SECTION "ROM Bank $007", ROMX

    INCBIN "gfx/image_007_4000.2bpp"

    INCBIN "gfx/image_007_6100.2bpp"

    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    jp hUnk_FFC7


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
    jp hUnk_FFC7


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

    INCBIN "gfx/image_007_63d0.2bpp"

    INCBIN "gfx/image_007_70d0.2bpp"

    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    jp hUnk_FFC7


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
    jp hUnk_FFC7


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
    jr @+$1E

    inc e
    inc d
    nop
    inc b

    INCBIN "gfx/image_007_7380.2bpp"

    INCBIN "gfx/image_007_7880.2bpp"

    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    jp hUnk_FFC7


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
    jp hUnk_FFC7


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
    ldh [$FF09], a
    ld bc, $0006
    inc bc
    ld [bc], a
    inc b
    ldh a, [$FF03]
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
