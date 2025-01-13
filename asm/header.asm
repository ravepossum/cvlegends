
RST_00::
    jp Jump_000_03FF


    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

RST_08::
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ret


    rst $38
    rst $38
    rst $38
    rst $38

RST_10::
    cpl
    inc a
    ret z

    add l
    ld l, a
    ret c

    dec h
    ret


RST_18::
    cpl
    inc a
    ret z

    add e
    ld e, a
    ret c

    dec d
    ret


RST_20::
    cpl
    inc a
    ret z

    add c
    ld c, a
    ret c

    dec b
    ret


RST_28::
    add l
    ld l, a
    ret nc

    inc h
    ret


    rst $38
    rst $38
    rst $38

RST_30::
    add e
    ld e, a
    ret nc

    inc d
    ret


    rst $38
    rst $38
    rst $38

RST_38::
    add c
    ld c, a
    ret nc

    inc b
    ret


    rst $38
    rst $38
    rst $38

VBlankInterrupt::
    jr VBlank

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

LCDCInterrupt::
    jr jr_000_0078

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

TimerOverflowInterrupt::
    reti


    jp Jump_000_0098


    rst $38
    rst $38
    rst $38
    rst $38

SerialTransferCompleteInterrupt::
    reti


Call_000_0059:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

JoypadTransitionInterrupt::
    reti


    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $01
    nop

VBlank:
    push af
    push bc
    push de
    push hl
    call Call_000_0217
    ei
    call Call_000_0098
    pop hl
    pop de
    pop bc
    pop af
    ret


jr_000_0078:
    push af
    push hl
    ldh a, [$81]
    ld hl, $026E
    add a
    add l
    ld l, a
    jr nc, jr_000_0085

    inc h

jr_000_0085:
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


Call_000_0089:
    ld hl, $FF41

jr_000_008C:
    bit 1, [hl]
    jr nz, jr_000_008C

    ret


jr_000_0091:
    ldh a, [rSTAT]
    bit 1, a
    jr nz, jr_000_0091

    ret


Call_000_0098:
Jump_000_0098:
    ld hl, $C523
    ld a, [hl]
    and $03
    jr nz, jr_000_00AA

    set 0, [hl]
    call Call_000_0A38
    ld hl, $C523
    res 0, [hl]

jr_000_00AA:
    ret


    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_000_00FD:
    rst $38
    rst $38
    rst $38

Start::
; Nintendo requires all Game Boy ROMs to begin with a nop ($00) and a jp ($C3)
; to the starting address.
    nop
    jp _Start


HeaderLogo::
    NINTENDO_LOGO

HeaderTitle::
    db "CASTLEVANIA", $00, $00, $00, $00, $00

HeaderNewLicenseeCode::
    db $41, $34

HeaderSGBFlag::
    db CART_INDICATOR_SGB

HeaderCartridgeType::
    db CART_ROM_MBC1

HeaderROMSize::
    db CART_ROM_256KB

HeaderRAMSize::
    db CART_SRAM_NONE

HeaderDestinationCode::
    db $01

HeaderOldLicenseeCode::
    db $33

HeaderMaskROMVersion::
    db $00

HeaderComplementCheck::
    db $0C

HeaderGlobalChecksum::
    db $66, $F5
