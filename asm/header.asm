; rst vectors

SECTION "rst0", ROM0[$0000]
RST_00::
    jp Jump_000_03FF


    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

SECTION "rst8", ROM0[$0008]
RST_08::
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ret


    rst $38
    rst $38
    rst $38
    rst $38

SECTION "rst10", ROM0[$0010]    
RST_10::
    cpl
    inc a
    ret z

    add l
    ld l, a
    ret c

    dec h
    ret

SECTION "rst18", ROM0[$0018]
RST_18::
    cpl
    inc a
    ret z

    add e
    ld e, a
    ret c

    dec d
    ret

SECTION "rst20", ROM0[$0020]
RST_20::
    cpl
    inc a
    ret z

    add c
    ld c, a
    ret c

    dec b
    ret

SECTION "rst28", ROM0[$0028]
RST_28::
    add l
    ld l, a
    ret nc

    inc h
    ret


    rst $38
    rst $38
    rst $38

SECTION "rst30", ROM0[$0030]
RST_30::
    add e
    ld e, a
    ret nc

    inc d
    ret


    rst $38
    rst $38
    rst $38

SECTION "rst38", ROM0[$0038]
RST_38::
    add c
    ld c, a
    ret nc

    inc b
    ret


    rst $38
    rst $38
    rst $38

SECTION "vblank", ROM0[$0040]
VBlankInterrupt::
    jr VBlank

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

SECTION "lcd", ROM0[$0048]
LCDCInterrupt::
    jr jr_000_0078

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

SECTION "timer", ROM0[$0050]    
TimerOverflowInterrupt::
    reti


    jp Jump_000_0098


    rst $38
    rst $38
    rst $38
    rst $38

SECTION "serial", ROM0[$0058]
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

SECTION "joypad", ROM0[$0060]
JoypadTransitionInterrupt::
    reti


    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $01
    nop


SECTION "High Home", ROM0

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
    ldh a, [hUnk_FF81]
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

SECTION "Header", ROM0[$0100]

Start::
; Nintendo requires all Game Boy ROMs to begin with a nop ($00) and a jp ($C3)
; to the starting address.
    nop
    jp _Start

; The Game Boy cartridge header data is patched over by rgbfix.
; This makes sure it doesn't get used for anything else.
	ds $0150 - @
