SECTION "NULL", ROM0
NULL::
    
INCLUDE "asm/header.asm"
    
SECTION "Home", ROM0

_Start:
    xor a
    ld [wUnk_C523], a
    ld [$0024], a
    call Call_000_0BCC
    ld a, $0C
    ldh [hUnk_FF88], a
    ldh [rBGP], a

Jump_000_0160:
    di
    xor a
    ldh [rIF], a
    inc a
    ldh [rIE], a
    ld sp, $E000
    ld a, $7F
    ld [wUnk_C52B], a
    ld a, $91
    ldh [hUnk_FF84], a
    ldh [rLCDC], a
    call Call_000_0343
    call Call_000_074A
    call Call_000_0471
    call Call_000_05B9
    call Call_000_01C4
    xor a
    call Call_000_01F4
    ld a, $01
    ldh [hUnk_FF80], a
    call Call_000_06A4
    ld a, $03
    ldh [hUnk_FF80], a
    call Call_000_06A4
    ei
    xor a
    ld [wUnk_C73D], a
    call Call_000_036E
    call $4000
    call c, $407B
    call Call_000_0343

jr_000_01A7: ; main game loop?
    call ReadJoypad
    call Call_000_0491
    call Call_000_0BDE
    call Call_000_06A4
    halt
    call Call_000_01B9
    jr jr_000_01A7

Call_000_01B9:
jr_000_01B9:
    ldh a, [hUnk_FF80]
    bit 0, a
    jr z, jr_000_01B9

    xor $03
    ldh [hUnk_FF80], a
    ret


Call_000_01C4:
    ld hl, wUnk_D0A0
    call Call_000_01EE
    ld hl, wUnk_D1A0
    call Call_000_01EE
    ld hl, wUnk_D2A0
    call Call_000_01EE
    ld hl, wUnk_D3A0
    call Call_000_01EE
    ld hl, wUnk_D4A0
    call Call_000_01EE
    ld hl, wUnk_D5A0
    call Call_000_01EE
    ld hl, wUnk_D6A0
    call Call_000_01EE

Call_000_01EE:
    xor a
    ld c, $A0
    jp wUnk_DED2


Call_000_01F4:
    push hl
    ld [wUnk_C52E], a
    ld e, a
    ld d, $00
    ld l, e
    ld h, d
    add hl, hl
    add hl, de
    ld de, $020E
    add hl, de
    ld a, [hl+]
    ldh [hUnk_FF85], a
    ld a, [hl+]
    ldh [hUnk_FF82], a
    ld a, [hl+]
    ldh [hUnk_FF83], a
    pop hl
    ret


    db $00, $2A, $02, $01, $57, $02

    ld [bc], a
    ld h, e
    ld [bc], a

Call_000_0217:
    call hUnk_FFE0
    ldh a, [hUnk_FF80]
    rra
    rra
    ld hl, wUnk_C530
    jr nc, jr_000_0226

    ld hl, wUnk_C540

jr_000_0226:
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


Call_000_022A:
    ldh a, [hUnk_FF80]
    rra
    rra
    ld hl, wUnk_C532
    jr nc, jr_000_0236

    ld hl, wUnk_C542

jr_000_0236:
    ld a, [hl+]
    ldh [rLCDC], a
    ld a, [hl+]
    ldh [hUnk_FF81], a
    ld a, [hl+]
    ldh [rSCY], a
    ld a, [hl+]
    ldh [rSCX], a
    ld a, [hl+]
    ldh [rBGP], a
    ld a, [hl+]
    ldh [rOBP0], a
    ld a, [hl+]
    ldh [rOBP1], a
    ld a, [hl+]
    ldh [rWY], a
    ld a, [hl+]
    ldh [rWX], a
    ld hl, hUnk_FF80
    set 0, [hl]
    ret


    call Call_000_022A
    ld a, $01
    ldh [hUnk_FF81], a
    ld a, $7F
    ldh [rLYC], a
    ret


    call Call_000_022A
    ld a, $02
    ldh [hUnk_FF81], a
    xor a
    ldh [rLYC], a
    ret


    db $78, $02, $7B, $02

    and d
    ld [bc], a
    cp e
    ld [bc], a
    inc b
    inc bc

Jump_000_0278:
    pop hl
    pop af
    reti


    call Call_000_0089
    ld hl, wUnk_C757
    bit 2, [hl]
    jr nz, jr_000_029C

    ld a, [wUnk_C73B]
    cp $02
    jr z, jr_000_029C

jr_000_028C:
    ldh a, [rLCDC]
    res 1, a
    ldh [rLCDC], a
    nop
    nop
    nop
    nop
    call Call_000_0089
    jp Jump_000_0278


jr_000_029C:
    ld a, $E4
    ldh [rBGP], a
    jr jr_000_028C

    call Call_000_0089
    ldh a, [rLCDC]
    res 3, a
    ldh [rLCDC], a
    xor a
    ldh [rSCX], a
    ldh [rSCY], a
    ld a, $03
    ldh [hUnk_FF81], a
    ld a, $17
    ldh [rLYC], a
    jp Jump_000_0278


    call Call_000_0089
    ldh a, [rLCDC]
    set 3, a
    res 5, a
    ldh [rLCDC], a
    ld a, $C0
    ldh [rWX], a
    ld a, [wUnk_C782]
    or a
    jr z, jr_000_02E3

    xor a
    ldh [rBGP], a
    ld hl, wUnk_C770
    call Call_000_1E7A
    xor a
    ld [wUnk_C77A], a
    ld hl, wUnk_C777
    call Call_000_1E7A

jr_000_02E3:
    ld a, [wUnk_C774]
    ldh [rSCX], a
    ld a, [wUnk_C77B]
    ldh [rSCY], a
    nop
    nop
    nop
    nop
    nop
    call Call_000_0089
    ldh a, [hUnk_FF88]
    ldh [rBGP], a
    ld a, $04
    ldh [hUnk_FF81], a
    ld a, $80
    ldh [rLYC], a
    jp Jump_000_0278


    call Call_000_0089
    ldh a, [rLCDC]
    res 3, a
    ldh [rLCDC], a
    nop
    nop
    nop
    nop
    nop
    xor a
    ldh [rSCX], a
    ldh [rSCY], a
    ld a, $02
    ldh [hUnk_FF81], a
    xor a
    ldh [rLYC], a
    jp Jump_000_0278


    ld a, [wUnk_C722]
    and $01
    ret z

.waitVRAM
    wait_for_blank .waitVRAM

    ld hl, $FF40
    res 0, [hl]
    ld b, $40

jr_000_0334:
    dec b
    jr nz, jr_000_0334

.waitVRAM
    wait_for_blank .waitVRAM

    ld hl, $FF40
    set 0, [hl]
    ret


Call_000_0343:
Jump_000_0343:
    push af
    ld a, $01

jr_000_0346:
    di
    ld [rROMB0], a
    ld [wUnk_C522], a
    ei
    pop af
    ret


Call_000_0350:
Jump_000_0350:
    push af
    ld a, $02
    jr jr_000_0346

Call_000_0355:
Jump_000_0355:
    push af
    ld a, $03
    jr jr_000_0346

Call_000_035A:
    push af
    ld a, $04
    jr jr_000_0346

Call_000_035F:
Jump_000_035F:
    push af
    ld a, $05
    jr jr_000_0346

Call_000_0364:
    push af
    ld a, $06
    jr jr_000_0346

    push af

Call_000_036A:
    ld a, $07
    jr jr_000_0346

Call_000_036E:
    push af
    ld a, $08
    jr jr_000_0346

Call_000_0373:
Jump_000_0373:
    push af
    ld a, $09
    jr jr_000_0346

Call_000_0378:
    push af
    ld a, $0A
    jr jr_000_0346

Call_000_037D:
Jump_000_037D:
    push af
    ld a, $0B
    jr jr_000_0346

Call_000_0382:
    push af
    ld a, $0C
    jr jr_000_0346

    push af
    ld a, $0D
    jr jr_000_0346

    push af
    ld a, $0E
    jr jr_000_0346

    push af
    ld a, $0F
    jr jr_000_0346

Call_000_0396:
Jump_000_0396:
    push af
    jr jr_000_0346

    ld [wUnk_C524], a
    ld a, e
    ld [wUnk_C525], a
    ld a, d
    ld [wUnk_C526], a
    ld a, l
    ld [wUnk_C527], a
    ld a, h
    ld [wUnk_C528], a
    ld a, [wUnk_C52B]
    ld l, a
    dec a
    ld [wUnk_C52B], a
    ld h, $DF
    ld a, [wUnk_C522]
    ld [hl], a
    ld hl, sp+$00
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, [de]
    inc de
    ld [wUnk_C529], a
    ld a, [de]
    inc de
    ld [wUnk_C52A], a
    ld a, [de]
    inc de
    ld [hl], d
    dec hl
    ld [hl], e
    call Call_000_0396
    call Call_000_03E2
    ld a, [wUnk_C52B]
    inc a
    ld [wUnk_C52B], a
    ld l, a
    ld h, $DF
    ld a, [hl]
    jp Jump_000_0396


Call_000_03E2:
    ld a, [wUnk_C529]
    ld l, a
    ld a, [wUnk_C52A]
    ld h, a
    push hl
    ld a, [wUnk_C525]
    ld e, a
    ld a, [wUnk_C526]
    ld d, a
    ld a, [wUnk_C527]
    ld l, a
    ld a, [wUnk_C528]
    ld h, a
    ld a, [wUnk_C524]
    ret


Jump_000_03FF:
    push hl
    push de
    ld hl, sp+$04
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld l, a
    ld h, $00
    add hl, hl
    add hl, de
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, sp+$04
    ld [hl], e
    inc hl
    ld [hl], d
    pop de
    pop hl
    ret


Call_000_0416:
    ld hl, $0421

jr_000_0419:
    ld a, [hl+]
    ld c, a
    ld a, [hl+]
    ldh [c], a
    inc c
    jr nz, jr_000_0419

    ret


    db $00, $00, $01, $00, $02, $00, $04, $00, $05, $00, $06, $00, $07, $05, $41, $40
    db $45, $00, $FF, $07

ReadJoypad:
    ld a, P1F_GET_DPAD
    ldh [rP1], a
REPT 3
    ldh a, [rP1]
ENDR
    cpl
    and %1111
    ld b, a
    ld a, P1F_GET_BTN
    ldh [rP1], a
REPT 9
    ldh a, [rP1]
ENDR
    cpl
    and %1111
    swap a
    or b
    ld c, a
    ld a, [wJoyInput1]
    xor c
    and c
    ld [wJoyInput2], a
    ld a, c
    ld [wJoyInput1], a
    ld a, P1F_GET_NONE
    ldh [rP1], a
    ret


Call_000_0471:
    ld c, $E0
    ld b, $12
    ld hl, $047F

jr_000_0478:
    ld a, [hl+]
    ldh [c], a
    inc c
    dec b
    jr nz, jr_000_0478

    ret


    db $F0, $80, $1F, $1F, $3E, $DD, $30, $02, $3E, $DE, $E0, $46, $3E, $28, $3D, $20
    db $FD, $C9

Call_000_0491:
    ld a, [wJoyInput1]
    and ~D_ANY 
    cp A_BUTTON + B_BUTTON + START + SELECT ; soft reset
    ret nz

    ld a, $01
    call Call_000_0BCC
    ld a, $FF
    ldh [hUnk_FF88], a
    ldh [rBGP], a
    ld a, $00
    call Call_000_0875
    ld a, [wUnk_C73D]
    or a
    jp z, Jump_000_0160

    ld hl, $38DB
    call Call_000_373C
    ld bc, $0004
    call Call_000_38FB
    ld hl, $37BB
    call Call_000_373C
    ld bc, $0004
    call Call_000_38FB
    jp Jump_000_0160


Call_000_04CB:
    ld a, [wUnk_C728]
    or a
    ret z

    cp $08
    ret nc

    ld a, [wJoyInput2]
    and $80
    ret z

    ld a, [wUnk_C558]
    xor $01
    ld [wUnk_C558], a
    ld hl, wUnk_C757
    bit 0, [hl]
    jr nz, jr_000_04F6

    ld a, [wUnk_C558]
    ld [wUnk_D7DC], a
    or a
    ret z

jr_000_04F0:
    ld a, $0D
    call Call_000_0875
    ret


jr_000_04F6:
    ld a, [wUnk_C558]
    or a
    jr nz, jr_000_04F0

    ld a, $3A
    call Call_000_0875
    ret


Call_000_0502:
    ld hl, wJoyInput1
    call Call_000_050B
    ld hl, wJoyInput2

Call_000_050B:
    ld b, $00
    ld a, [hl+]
    or a
    jr z, jr_000_0515

jr_000_0511:
    inc b
    rra
    jr nc, jr_000_0511

jr_000_0515:
    ld [hl], b
    ret


    call Call_000_053D
    ret nc

    ld c, $99
    ret


    call Call_000_0542
    ret nc

    ld c, $00
    ret


    call Call_000_053D
    ld a, b
    adc d
    daa
    ld b, a
    ret nc

    ld bc, $9999
    ret


    call Call_000_0542
    ld a, b
    sbc d
    daa
    ld b, a
    ret nc

    ld bc, $0000
    ret


Call_000_053D:
    ld a, c
    add e
    daa
    ld c, a
    ret


Call_000_0542:
    ld a, c
    sub e
    daa
    ld c, a
    ret


Call_000_0547:
    cpl
    inc a
    ret


    ld a, l
    add c
    ld l, a
    ld a, h
    adc b
    ld h, a
    ret


Call_000_0551:
    push hl
    push de
    push bc
    or a
    ld b, a
    ldh a, [rTIMA]
    jr z, jr_000_055E

jr_000_055A:
    sub b
    jr nc, jr_000_055A

    add b

jr_000_055E:
    pop bc
    pop de
    pop hl
    ret


Call_000_0562:
    call Call_000_057C
    call Call_000_0583
    call Call_000_0572
    call Call_000_0597
    call Call_000_05A0
    ret


Call_000_0572:
    ld hl, $8000
    ld bc, $1800
    xor a
    jp wUnk_DEE8


Call_000_057C:
    ld hl, hUnk_FF84
    bit 3, [hl]
    jr jr_000_0588

Call_000_0583:
    ld hl, hUnk_FF84
    bit 6, [hl]

jr_000_0588:
    ld hl, $9800
    jr z, jr_000_0590

    ld hl, $9C00

jr_000_0590:
    ld bc, $0400
    xor a
    jp wUnk_DEE8


Call_000_0597:
    ld hl, wUnk_DC00

Call_000_059A:
jr_000_059A:
    xor a
    ld c, $A0
    jp wUnk_DED2


Call_000_05A0:
    ld hl, wUnk_DD00
    call Call_000_059A
    ld hl, wUnk_DE00
    jr jr_000_059A

Call_000_05AB:
    ld a, l
    ldh [hUnk_FF86], a
    ld a, h
    ldh [hUnk_FF87], a
    ret


Call_000_05B2:
Jump_000_05B2:
jr_000_05B2:
    ld a, l
    ldh [hUnk_FF8B], a
    ld a, h
    ldh [hUnk_FF8C], a
    ret


Call_000_05B9:
    ld hl, $0000
    call Call_000_05AB
    ld hl, $0790
    jr jr_000_05B2

    ldh a, [hUnk_FF84]
    or $80
    ldh [hUnk_FF84], a
    ld [wUnk_C532], a
    ld [wUnk_C542], a
    ldh [rLCDC], a
    ret


Call_000_05D3:
    ldh a, [hUnk_FF84]
    or $20
    ldh [hUnk_FF84], a
    ret


Call_000_05DA:
    ldh a, [hUnk_FF84]
    and $DF
    ldh [hUnk_FF84], a
    ret


Call_000_05E1:
    ldh a, [hUnk_FF84]
    or $23
    ldh [hUnk_FF84], a
    ret


Call_000_05E8:
    ldh a, [hUnk_FF84]
    and $DC
    ldh [hUnk_FF84], a
    ret


    ldh a, [hUnk_FF84]
    or $03
    ldh [hUnk_FF84], a
    ret


    ldh a, [hUnk_FF84]
    and $FC
    ldh [hUnk_FF84], a
    ret


Call_000_05FD:
    ldh a, [hUnk_FF84]
    or $02
    ldh [hUnk_FF84], a
    ret


Call_000_0604:
    ldh a, [hUnk_FF84]

Jump_000_0606:
    and $FD
    ldh [hUnk_FF84], a
    ret


Call_000_060B:
    ld c, $E4
    ld d, $D0
    ld e, $E4
    jr jr_000_061F

    ld a, $FF
    jr jr_000_061C

    ld a, $E4
    jr jr_000_061C

Call_000_061B:
    xor a

Call_000_061C:
jr_000_061C:
    ld c, a
    ld d, a
    ld e, a

jr_000_061F:
    ld a, c
    ldh [hUnk_FF88], a
    ld a, d
    ldh [hUnk_FF89], a
    ld a, e
    ldh [hUnk_FF8A], a
    ret


Call_000_0629:
    ld [wUnk_C560], a
    ld [wUnk_C561], a
    ld a, $FF
    ld [wUnk_C55F], a
    ret


Call_000_0635:
    ld de, $066B
    jr jr_000_0647

Call_000_063A:
    ld de, $0674
    jr jr_000_0647

Call_000_063F:
    ld de, $067D
    jr jr_000_0647

Call_000_0644:
    ld de, $0686

jr_000_0647:
    push hl
    call Call_000_064D
    pop hl
    ret


Call_000_064D:
    ld hl, wUnk_C560
    dec [hl]
    scf
    ret nz

    inc l
    ld a, [hl-]
    ld [hl-], a
    inc [hl]
    ld a, [hl]
    cp $04
    ret nc

    add a
    add [hl]
    rst $30
    ld a, [de]
    ldh [hUnk_FF88], a
    inc de
    ld a, [de]
    ldh [hUnk_FF89], a
    inc de
    ld a, [de]
    ldh [hUnk_FF8A], a
    scf
    ret


    db $00, $00, $00, $40, $40, $40, $90, $90, $90, $E4, $D0, $E4, $F9, $E5, $F9, $FE
    db $FA, $FE, $FF, $FF, $FF, $FE, $FA, $FE, $F9, $E5, $F9, $E4, $D0, $E4, $90, $90
    db $90, $40, $40, $40, $00, $00, $00

Call_000_0692:
    ld hl, wUnk_C560
    dec [hl]
    ret nz

    ld [hl], $08
    ldh a, [hUnk_FF88]
    inc a
    and $03
    ret z

    or $0C
    ldh [hUnk_FF88], a
    ret


Call_000_06A4:
    ldh a, [hUnk_FF80]
    rra
    rra
    jr c, jr_000_06C5

    ld hl, wUnk_DC00
    ld de, wUnk_DE00
    call wUnk_DB80
    call wUnk_DB80
    call wUnk_DB80
    call wUnk_DB80
    ld hl, hUnk_FF82
    ld de, wUnk_C540
    jp wUnk_DBD7


jr_000_06C5:
    ld hl, wUnk_DC00
    ld de, wUnk_DD00
    call wUnk_DB80
    call wUnk_DB80
    call wUnk_DB80
    call wUnk_DB80
    ld hl, hUnk_FF82
    ld de, wUnk_C530
    jp wUnk_DBD7


    ld hl, wUnk_DC00
    ld de, wUnk_DD00
    call wUnk_DB80
    call wUnk_DB80
    call wUnk_DB80
    call wUnk_DB80
    ld hl, wUnk_DC00
    ld de, wUnk_DE00
    call wUnk_DB80
    call wUnk_DB80
    call wUnk_DB80
    call wUnk_DB80
    di
    call hUnk_FFE0
    ei
    ret


    ld [hUnk_FF95], sp

jr_000_070D:
    di
    ld sp, hl
    ld l, e
    ld h, d

jr_000_0711:
    ldh a, [rSTAT]
    and $02
    jr z, jr_000_0711

jr_000_0717:
    ldh a, [rSTAT]
    and $02
    jr nz, jr_000_0717

    pop de
    ld a, e
    ld [hl+], a
    ld a, d
    ld [hl+], a
    pop de
    ld a, e
    ld [hl+], a
    ld a, d
    ld [hl+], a
    pop de
    ld a, e
    ld [hl+], a
    ld a, d
    ld [hl+], a
    pop de
    ld a, e
    ld [hl+], a
    ld a, d
    ld [hl+], a
    ld e, l
    ld d, h
    ld [hUnk_FF97], sp
    ldh a, [hUnk_FF95]
    ld l, a
    ldh a, [hUnk_FF96]
    ld h, a
    ld sp, hl
    ei
    ldh a, [hUnk_FF97]
    ld l, a
    ldh a, [hUnk_FF98]
    ld h, a
    dec bc
    ld a, c
    or b
    jr nz, jr_000_070D

    ret


Call_000_074A:
    ld hl, $0786
    ld de, wUnk_DCA8
    ld c, $58
    call Call_000_077F
    ld hl, $07D5
    ld de, wUnk_DDA8
    ld c, $58
    call Call_000_077F
    ld hl, $0824
    ld de, wUnk_DEA8
    ld c, $58
    call Call_000_077F
    ld hl, wUnk_DB80
    ld b, $28

jr_000_0770:
    ld a, $2A
    ld [hl+], a
    ld a, $12
    ld [hl+], a
    ld a, $1C
    ld [hl+], a
    dec b
    jr nz, jr_000_0770

    ld [hl], $C9
    ret


Call_000_077F:
jr_000_077F:
    ld a, [hl+]
    ld [de], a
    inc de
    dec c
    jr nz, jr_000_077F

    ret


    db $7C, $BA, $C0, $7D, $BB, $C9, $7C, $B8, $C0, $7D, $B9, $C9, $78, $BA, $C0, $79
    db $BB, $C9, $7B, $81, $5F, $7A, $88, $57, $C9, $CD, $A8, $DC, $F5, $7D, $93, $6F
    db $7C, $9A, $67, $F1, $C9, $CD, $AE, $DC, $F5, $7D, $91, $6F, $7C, $98, $67, $F1
    db $C9, $F5, $AF, $93, $5F, $3E, $00, $9A, $57, $F1, $C9, $F5, $AF, $91, $4F, $3E
    db $00, $98, $47, $F1, $C9, $F5, $AF, $95, $6F, $3E, $00, $9C, $67, $F1, $C9, $D5
    db $5D, $54, $E1, $C9, $C5, $4D, $44, $E1, $C9, $C5, $4B, $42, $D1, $C9, $CD, $AD
    db $DD, $CD, $C7, $DD, $18, $EE, $CD, $A8, $DD, $CD, $C7, $DD, $18, $E1, $29, $29
    db $29, $29, $C9, $6F, $26, $00, $29, $D1, $19, $2A, $66, $6F, $E9, $5D, $54, $6F
    db $26, $00, $29, $19, $2A, $66, $6F, $C9, $5D, $54, $6F, $26, $00, $29, $19, $5E
    db $23, $56, $C9, $4D, $44, $6F, $26, $00, $29, $09, $4E, $23, $46, $C9, $5D, $54
    db $6F, $26, $00, $29, $29, $19, $5E, $23, $56, $23, $4E, $23, $46, $23, $C9, $2A
    db $12, $13, $0B, $79, $B0, $20, $F8, $C9, $2A, $12, $13, $0D, $20, $FA, $C9, $57
    db $7A, $22, $0B, $79, $B0, $20, $F9, $C9, $22, $0D, $20, $FC, $C9, $F3, $F0, $41
    db $CB, $4F, $20, $FA, $2A, $12, $FB, $13, $0B, $79, $B0, $20, $F0, $C9, $57, $F3
    db $F0, $41, $CB, $4F, $20, $FA, $72, $FB, $23, $0B, $79, $B0, $20, $F1, $C9

Call_000_0875:
Jump_000_0875:
    push hl
    ld hl, wUnk_C523
    set 1, [hl]
    push de
    push bc
    push af
    call Call_000_08F8
    ld a, [wUnk_C522]
    ld [rROMB0], a
    pop af
    pop bc
    pop de
    ld hl, wUnk_C523
    res 1, [hl]
    pop hl
    ret


Call_000_0891:
    push af
    ld l, $A1
    ld a, [hl]
    cp $50
    jp c, Jump_000_08A2

    ld a, $0F
    ld [rROMB0], a
    pop af
    jr jr_000_08A8

Jump_000_08A2:
    ld a, $0E
    ld [rROMB0], a
    pop af

jr_000_08A8:
    push de
    ld a, [de]
    ld [wUnk_D7D1], a
    inc de
    ld a, [de]
    ld [wUnk_D7D2], a
    inc de
    ld a, [de]
    ld [wUnk_D7D3], a
    inc de
    ld a, [de]
    ld [wUnk_D7D4], a
    ld a, $0E
    ld [rROMB0], a
    pop de
    ret


Call_000_08C3:
    ld c, $24
    ld a, $77
    ldh [c], a
    inc c
    ld a, $FF
    ldh [c], a

Call_000_08CC:
    inc c
    ld a, $80
    ldh [c], a
    ld h, $D0
    ld a, $11
    call Call_000_08ED
    ld a, $1B
    call Call_000_08ED
    ld a, $20
    call Call_000_08ED
    ld a, $11
    call Call_000_08ED
    ld a, $16
    call Call_000_08ED
    ld a, $1B

Call_000_08ED:
    ld l, $BB
    ld [hl+], a
    inc a
    ld [hl+], a
    inc a
    ld [hl+], a
    inc a
    ld [hl+], a
    inc h
    ret


Call_000_08F8:
    ld [wUnk_D7C8], a
    or a
    jr nz, jr_000_0906

    bankset Jump_00E_4CE3 
    jp Jump_00E_4CE3


jr_000_0906:
    ld hl, wUnk_D7DA
    bit 0, [hl]
    jr z, jr_000_0911

    ld [wUnk_D7DB], a
    ret


jr_000_0911:
    xor a
    ld [wUnk_D7D6], a
    ld a, [wUnk_D7D9]
    bit 0, a
    jr nz, jr_000_0939

    ld a, [wUnk_D7C9]
    or a
    jr z, jr_000_092F

    bit 0, a
    jr z, jr_000_0939

    res 0, a
    set 0, a
    ld [wUnk_D7C9], a
    jr jr_000_0939

jr_000_092F:
    ld c, $24
    ldh a, [c]
    cp $77
    jr z, jr_000_0939

    ld a, $77
    ldh [c], a

jr_000_0939:
    ld a, [wUnk_D7C8]
    ld b, a
    cp $50
    jr nc, jr_000_094D

    ld a, $0E
    ld [rROMB0], a
    ld a, b
    ld hl, $3FFE
    jp Jump_000_0958


jr_000_094D:
    ld a, $0F
    ld [rROMB0], a
    ld a, b
    ld hl, $3FFE
    sub $50

Jump_000_0958:
    call Call_000_0BA9
    ld a, [hl+]
    ld [wUnk_D7C7], a
    ld b, [hl]
    inc hl
    ld e, l
    ld d, h
    rrc b
    ld hl, wUnk_D0A0
    call c, Call_000_0A15
    rrc b
    inc h
    call c, Call_000_0A15
    rrc b
    inc h
    call c, Call_000_0A15
    ld a, b
    rlca
    rlca
    rlca
    ld b, a
    srl b
    ld hl, wUnk_D0A0
    call c, Call_000_0A1A
    srl b
    ld hl, wUnk_D1A0
    call c, Call_000_0A1A
    srl b
    ld hl, wUnk_D2A0
    call c, Call_000_0A1A
    xor a
    ld [wUnk_D7CF], a
    srl b
    ret nc

    ld hl, wUnk_D3A0
    ld a, [wUnk_D7C7]
    cp [hl]
    ret c

    ld a, [wUnk_D7C9]
    or a
    ld a, $00
    jr nz, jr_000_09B1

    ld [wUnk_D7CA], a
    ld [wUnk_D7CB], a

jr_000_09B1:
    ld [wUnk_D7CC], a
    ld [wUnk_D7C5], a
    call Call_000_09D0
    srl b
    ld hl, wUnk_D4A0
    call c, Call_000_09D0
    srl b
    ld hl, wUnk_D5A0
    call c, Call_000_09D0
    srl b
    ld hl, wUnk_D6A0
    ret nc

Call_000_09D0:
    ld a, [wUnk_D7C7]
    ld [hl+], a
    ld a, [wUnk_D7C8]
    ld [hl+], a
    ld a, [de]
    ld [hl+], a
    inc de
    ld a, [de]
    inc de
    ld [hl+], a
    ld a, $01
    ld [hl+], a
    xor a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    ld l, $B4
    ld [hl], a
    ld l, $C4
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    ld l, $E8
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    ld l, $BF
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    ld l, $F1
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    ld [wUnk_D7CE], a
    ld [wUnk_D7DB], a
    ld [wUnk_D7DA], a
    ret


Call_000_0A15:
    cp [hl]
    ret nc

    ld b, $00
    ret


Call_000_0A1A:
    call Call_000_09D0
    ld a, $D0
    cp h
    jr nz, jr_000_0A27

    ld a, $08
    ld c, $10
    ldh [c], a

jr_000_0A27:
    ld a, $D2
    cp h
    ret nz

    push bc
    ld b, $88
    ld l, $C3
    ld [hl], b
    ld c, $25
    ldh a, [c]
    or b
    ldh [c], a
    pop bc
    ret


Call_000_0A38:
    ld a, [wUnk_D7DC]
    cp $01
    jp nz, Jump_000_0A46

    call Call_000_0BB5
    jp Jump_000_0A6A


Jump_000_0A46:
    call Call_000_0AC3
    call Call_000_0B6F
    call Call_000_0A96
    ld h, $D3
    xor a
    call Call_000_0A86
    ld h, $D4
    ld a, $11
    call Call_000_0A86
    ld h, $D5
    ld a, $22
    call Call_000_0A86
    ld h, $D6
    ld a, $34
    call Call_000_0A86

Jump_000_0A6A:
    ld h, $D2
    ld a, $63
    call Call_000_0A86
    ld h, $D1
    ld a, $52
    call Call_000_0A86
    ld h, $D0
    ld a, $40
    call Call_000_0A86
    ld a, [wUnk_C522]
    ld [rROMB0], a
    ret


Call_000_0A86:
    ld [wUnk_D7C1], a
    ld l, $A1
    ld a, [hl]
    or a
    ret z
    bankset Jump_00E_465C
    jp Jump_00E_465C

Call_000_0A96:
    ld hl, wUnk_D7C5
    ld a, [hl]
    ld b, a
    or a
    ld h, $D3
    ret z

    ld a, [wUnk_D7C6]
    add b
    ld [wUnk_D7C6], a
    ld l, $A5
    jp c, Jump_000_0AB7

    res 4, [hl]
    inc h
    res 4, [hl]
    inc h
    res 4, [hl]
    inc h
    res 4, [hl]
    ret


Jump_000_0AB7:
    set 4, [hl]
    inc h
    set 4, [hl]
    inc h
    set 4, [hl]
    inc h
    set 4, [hl]
    ret


Call_000_0AC3:
    ld h, $D5
    ld l, $A1
    ld a, [hl]
    or a
    ret z

    ld a, [wUnk_D7DA]
    bit 2, a
    jr nz, jr_000_0AF0

    ld a, [wUnk_D7CA]
    or a
    ret z

    ld hl, wUnk_D7CB
    inc [hl]
    cp [hl]
    ret nz

    ld [hl], $00
    ld a, [wUnk_D7C9]
    bit 0, a
    jr z, jr_000_0AFE

    ld c, $24
    ldh a, [c]
    cp $77
    jr z, jr_000_0AF0

    add $11
    ldh [c], a
    ret


jr_000_0AF0:
    xor a
    ld [wUnk_D7C9], a
    ld [wUnk_D7CA], a
    ld [wUnk_D7CB], a
    ld [wUnk_D7CC], a
    ret


jr_000_0AFE:
    ld c, $24
    ldh a, [c]
    cp $11
    jr z, jr_000_0B0B

    sub $11
    jr z, jr_000_0B0B

    ldh [c], a
    ret


jr_000_0B0B:
    ld a, $01
    ld [wUnk_D7CA], a
    ld a, [wUnk_D7CC]
    inc a
    ld [wUnk_D7CC], a
    cp $10
    jr z, jr_000_0B67

    cp $18
    jr z, jr_000_0B43

    cp $1C
    jr z, jr_000_0B59

    cp $20
    ret nz

    ld h, $D1
    ld l, $A1
    ld a, [hl]
    or a
    ld a, $00
    jr nz, jr_000_0B36

    ld c, $1A
    ldh [c], a
    ld c, $1C
    ldh [c], a

jr_000_0B36:
    ld h, $D5
    ld [wUnk_D7CC], a
    ld [wUnk_D7CA], a
    ld [wUnk_D7CB], a
    jr jr_000_0B69

jr_000_0B43:
    ld h, $D0
    ld l, $A1
    ld a, [hl]
    or a
    jr nz, jr_000_0B55

    ld a, $08
    ld c, $12
    ldh [c], a
    ld a, $80
    ld c, $14
    ldh [c], a

jr_000_0B55:
    ld h, $D3
    jr jr_000_0B69

jr_000_0B59:
    ld h, $D4
    ld a, $08
    ld c, $17
    ldh [c], a
    ld a, $80
    ld c, $19
    ldh [c], a
    jr jr_000_0B69

jr_000_0B67:
    ld h, $D6

jr_000_0B69:
    ld l, $A1
    xor a
    ld [hl-], a
    ld [hl], a
    ret


Call_000_0B6F:
    ld hl, wUnk_D7D6
    bit 0, [hl]
    ret z

    inc l
    ld a, [hl+]
    inc [hl]
    cp [hl]
    ret nz

    ld [hl], $00
    ld l, $D6
    bit 1, [hl]
    ld c, $24
    ldh a, [c]
    jr nz, jr_000_0B93

    dec l
    and $0F
    cp [hl]
    jr nz, jr_000_0B9E

    inc l
    set 1, [hl]

jr_000_0B8E:
    ldh a, [c]
    sub $0F
    ldh [c], a
    ret


jr_000_0B93:
    swap a
    dec l
    and $0F
    cp [hl]
    jr nz, jr_000_0B8E

    inc l
    res 1, [hl]

jr_000_0B9E:
    ldh a, [c]
    add $0F
    cp $80
    jr c, jr_000_0BA7

    sub $10

jr_000_0BA7:
    ldh [c], a
    ret


Call_000_0BA9:
    sla a
    ld b, $00
    rl b
    ld c, a
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ret


Call_000_0BB5:
    xor a
    ld a, $08
    ld c, $17
    ldh [c], a
    ld a, $80
    ld c, $19
    ldh [c], a
    ret


    ld [wUnk_C551], a

Jump_000_0BC4:
    ld hl, wUnk_C520
    inc [hl]
    inc hl
    ld [hl], $00
    ret


Call_000_0BCC:
Jump_000_0BCC:
    ld hl, wUnk_C520
    ld [hl+], a
    ld [hl], $00
    ret


Jump_000_0BD3:
    ld [wUnk_C551], a

Jump_000_0BD6:
    ld a, [wUnk_C521]
    inc a

Jump_000_0BDA:
    ld [wUnk_C521], a
    ret


Call_000_0BDE:
    ld a, [wUnk_C520]
    rst $00

    db $FC, $0B, $28, $0C, $4C, $0C, $C7, $0C, $46, $32, $C0, $33, $3C, $0E, $D6, $0C
    db $E5, $0C

    xor $0C

    db $FD, $0C

    db $21
    dec c

    db $90, $0D

    ld a, [wUnk_C521]
    rst $00

    db $06, $0C, $0E, $0C

    inc e
    inc c

    ld a, $08
    ld [wUnk_C560], a
    jp Jump_000_0BD6


    call Call_000_0692
    ret nz

    ld a, [wUnk_C73D]
    or a
    jp nz, Jump_000_0BD6

    jp Jump_000_0BC4


    call Call_000_036E
    call $4470
    call Call_000_0343
    jp Jump_000_0BC4


    ld a, [wUnk_C73D]
    push af
    ld hl, wUnk_C550
    ld bc, $1630
    xor a
    call wUnk_DEC9
    pop af
    ld [wUnk_C73D], a
    call Call_000_0416
    call Call_000_08C3
    xor a
    ld [wUnk_C523], a
    ld a, $00
    call Call_000_0875
    jp Jump_000_0BC4


    ld a, [wUnk_C521]
    rst $00

    db $64, $0C, $6A, $0C, $70, $0C, $79, $0C, $86, $0C, $8D, $0C, $9B, $0C, $A2, $0C
    db $B3, $0C, $C0, $0C

    call $4000
    jp Jump_000_0BD6


    call $400C
    jp Jump_000_0BD6


    call $403B
    ret nc

    ld a, $40
    jp Jump_000_0BD3


    ld hl, wUnk_C551
    dec [hl]
    ret nz

    ld a, $04
    call Call_000_0629
    jp Jump_000_0BD6


    call Call_000_0644
    ret c

    jp Jump_000_0BD6


    call Call_000_0562
    call $4242
    ld a, $04
    call Call_000_0629
    jp Jump_000_0BD6


    call Call_000_0635
    ret c

    jp Jump_000_0BD6


    ld hl, wUnk_C550
    inc [hl]
    call $4282
    ret nc

    xor a
    ld [wUnk_C550], a
    ld a, $40
    jp Jump_000_0BD3


    ld hl, wUnk_C551
    dec [hl]
    ret nz

    ld a, $04
    call Call_000_0629
    jp Jump_000_0BD6


    call Call_000_0644
    ret c

    jp Jump_000_0BC4


    call Call_000_0378
    call $4000
    call Call_000_035F
    call $4000
    jp Jump_000_0343


    call Call_000_0378
    call $4286
    call Call_000_035F
    call $4000
    jp Jump_000_0343


    call Call_000_0378
    call $4461
    jp Jump_000_0343


    call Call_000_035F
    call $4000
    call Call_000_0382
    call $47A3
    jp Jump_000_0343


    ld a, [wUnk_C521]
    rst $00

    db $05, $0D, $0D, $0D

    ld a, $10
    call Call_000_0629
    jp Jump_000_0BD6


    call Call_000_063A
    ret c

    xor a
    ldh [hUnk_FF87], a
    ldh [hUnk_FF86], a
    ld hl, $0790
    call Call_000_05B2
    ld a, $05
    jp Jump_000_0BCC


    ld a, [wUnk_C521]
    rst $00
    add hl, hl
    dec c
    ld l, b
    dec c
    call Call_000_0382
    call $4000
    call Call_000_0343
    ld a, $00
    call Call_000_0875
    ld hl, $0D83
    call Call_000_2E53
    ld a, $0C
    ld [wUnk_C50C], a
    ld a, $44
    ld [wUnk_C507], a
    ld de, wUnk_C500
    ld bc, $0D8B
    call Call_000_2F92
    ld a, $31
    ld [wUnk_C50E], a
    ld de, wUnk_C600
    call Call_000_2183
    ld de, wUnk_C700
    call Call_000_2183
    xor a
    ld [wUnk_C724], a
    jp Jump_000_0BD6


    call Call_000_035F
    call $4000
    call Call_000_0343
    ld de, wUnk_C500
    ld hl, $0D8B
    call Call_000_2F9F
    call Call_000_0382
    call $4060
    jp Jump_000_0343


    ld [bc], a
    dec b
    call c, Call_000_0059
    ld bc, $000A
    ld [$0834], sp
    dec [hl]
    db $FE

    call Call_000_035F
    call $4000
    call Call_000_0378
    call $6D8F
    jp Jump_000_0343


    ld a, [wUnk_C558]
    or a
    ret z

    ld a, [wJoyInput2]
    and $01
    jr nz, jr_000_0DD9

    ld a, [wJoyInput2]
    and $02
    jr nz, jr_000_0DFB

    ld a, [wJoyInput2]
    and $40
    ret z

    ld a, [wUnk_C725]
    inc a
    cp $07
    jr nz, jr_000_0DC2

    ld a, $01

jr_000_0DC2:
    ld [wUnk_C725], a
    xor a
    ld [wUnk_C726], a
    ld [wUnk_C728], a
    ld [wUnk_C729], a
    call Call_000_0E58
    call Call_000_0E58
    call Call_000_0E58
    ret


jr_000_0DD9:
    ld a, [wUnk_C725]
    ld hl, $0E22
    rst $28
    ld a, [hl]
    ld hl, wUnk_C726
    inc [hl]
    cp [hl]
    jr nc, jr_000_0DEA

    xor a
    ld [hl], a

jr_000_0DEA:
    xor a
    ld [wUnk_C728], a
    ld [wUnk_C729], a
    call Call_000_0E58
    call Call_000_0E58
    call Call_000_0E58
    ret


jr_000_0DFB:
    ld a, [wUnk_C725]
    ld hl, $0E22
    rst $28
    ld a, [hl]
    ld b, a
    ld a, [wUnk_C726]
    or a
    jr z, jr_000_0E0D

    dec a
    jr jr_000_0E0E

jr_000_0E0D:
    ld a, b

jr_000_0E0E:
    ld [wUnk_C726], a
    xor a
    ld [wUnk_C728], a
    ld [wUnk_C729], a
    call Call_000_0E58
    call Call_000_0E58
    call Call_000_0E58
    ret


    nop
    rlca
    dec b
    inc b
    inc b
    inc b
    ld [bc], a

Jump_000_0E29:
    ld a, [wUnk_C729]
    inc a

Jump_000_0E2D:
    ld [wUnk_C729], a
    ret


Jump_000_0E31:
    ld a, [wUnk_C728]
    inc a

Call_000_0E35:
Jump_000_0E35:
    ld hl, wUnk_C728
    ld [hl+], a
    ld [hl], $00
    ret


    call Call_000_04CB
    ld a, [wUnk_C558]
    or a
    ret nz

    ld hl, wUnk_C550
    inc [hl]
    call Call_000_0E58
    call Call_000_035F
    call $4000
    call Call_000_0343
    call $606C
    ret


Call_000_0E58:
    ld a, [wUnk_C728]
    rst $00

    db $80, $0E, $06, $0F, $5E, $0F, $8B, $12, $2A, $59, $67, $0F, $06, $58, $28, $1B
    db $70, $0F, $79, $0F, $82, $0F, $8B, $0F, $94, $0F, $9D, $0F

    and [hl]
    rrca

    db $AF, $0F

    cp b
    rrca

    db $C1, $0F

    ld a, [wUnk_C729]
    rst $00

    db $8A, $0E, $D4, $0E, $DA, $0E

    call Call_000_0604
    call Call_000_057C
    ld hl, $0790
    call Call_000_05B2
    xor a
    ldh [hUnk_FF87], a
    ldh [hUnk_FF86], a
    ld [wUnk_C777], a
    ld [wUnk_C779], a
    ld [wUnk_C778], a
    ld [wUnk_C77B], a
    ld [wUnk_C770], a
    ld [wUnk_C772], a
    ld [wUnk_C771], a
    ld [wUnk_C774], a
    ld [wUnk_C782], a
    ld [wUnk_C752], a
    ld [wUnk_C72F], a
    ld [wUnk_C734], a

Call_000_0EBF:
    ld [wUnk_C738], a
    ld [wUnk_C739], a
    ld [wUnk_C73A], a
    ld [wUnk_C72E], a
    ld [wUnk_C740], a
    ld [wUnk_C737], a
    jp Jump_000_0E29


    call Call_000_0FCA
    jp Jump_000_0E29


    ld hl, $0780
    call Call_000_05B2
    call Call_000_05FD
    call Call_000_05D3
    call Call_000_060B
    call $49A6
    ld a, $01
    call Call_000_01F4
    ld hl, $0EFF
    ld a, [wUnk_C725]
    rst $28
    ld a, [hl]
    call Call_000_0875
    jp Jump_000_0E31


    nop

    db $52, $56, $58, $59, $54

    ld e, e

    call Call_000_2D73
    call Call_000_0364
    call Call_000_1BA5
    call Call_000_0343
    ld a, [wUnk_C518]
    or a
    call nz, $5894
    call $5707
    call $572D
    call $469E
    call Call_000_037D
    call $4496
    call Call_000_0343
    call $4A1E
    call $535F
    call $5625
    call Call_000_0F3B
    call Call_000_1B56
    ret


Call_000_0F3B:
    ld a, [wUnk_C500]
    bit 2, a
    jr nz, jr_000_0F59

    ld hl, wUnk_C511
    bit 1, [hl]
    jr nz, jr_000_0F59

Call_000_0F49:
    ld a, [wUnk_C78B]
    or a
    jr nz, jr_000_0F59

    ld a, [wUnk_C787]
    bit 2, a
    ld a, $03
    jp nz, Jump_000_0E35

jr_000_0F59:
    xor a
    ld [wUnk_C787], a
    ret


    call Call_000_0355
    call $4989
    jp Jump_000_0343


    call Call_000_0355
    call $49DB
    jp Jump_000_0343


    call Call_000_0373
    call $4000
    jp Jump_000_0343


    call Call_000_0373
    call $4169
    jp Jump_000_0343


    call Call_000_037D
    call $4000
    jp Jump_000_0343


    call Call_000_037D
    call $409B
    jp Jump_000_0343


    call Call_000_037D
    call $4A55
    jp Jump_000_0343


    call Call_000_037D
    call $42B7
    jp Jump_000_0343


    call Call_000_037D
    call $495C
    jp Jump_000_0343


    call Call_000_0373
    call $4274
    jp Jump_000_0343


    call Call_000_0373
    call $438F
    jp Jump_000_0343


    call Call_000_0373
    call $43F8
    jp Jump_000_0343


Call_000_0FCA:
    call Call_000_3925
    ld a, [wUnk_C725]
    ld [wUnk_C736], a
    ld hl, $1063
    call wUnk_DDD6
    call Call_000_2E53
    call Call_000_0364
    call $4000
    call $4020
    call Call_000_0343
    call $5D2C
    call $5BE9
    call Call_000_301B
    ld [wUnk_C780], a
    call Call_000_1E84
    call Call_000_159D
    call Call_000_2C24
    call Call_000_2D30
    call Call_000_2168
    call Call_000_0355
    call $4BC0
    call $4CFF
    call Call_000_0343
    call Call_000_1023
    xor a
    ld [wUnk_C78B], a
    call Call_000_151E
    xor a
    ld hl, wUnk_C500
    ld bc, $0020
    jp wUnk_DEC9


Call_000_1023:
    ld a, [wUnk_C725]
    cp $01
    jr z, jr_000_1044

    ld a, [wUnk_C756]
    inc a
    ld hl, $365E
    call wUnk_DDD6
    call Call_000_2E53
    ld a, [wUnk_C725]
    cp $06
    jr z, jr_000_1050

    ld a, [wUnk_C73B]
    or a
    jr nz, jr_000_1056

jr_000_1044:
    ld a, [wUnk_C725]
    ld hl, $105C
    rst $28
    ld a, [hl]
    ld [wUnk_C755], a
    ret


jr_000_1050:
    ld a, $0F
    ld [wUnk_C755], a
    ret


jr_000_1056:
    ld a, $1F
    ld [wUnk_C755], a
    ret


    nop

    db $00, $01, $03, $07, $0F

    rra
    ld [hl], c
    db $10

    db $71, $10, $C6, $10, $29, $11, $8C, $11, $E8, $11

    ld [hl], $12

    db $02, $05, $DC, $51, $80, $00, $7A, $02, $04, $90, $41, $FA, $00, $02, $02, $04
    db $B0, $47, $FC, $00, $04, $02, $05, $DC, $59, $00, $01, $0A, $02, $05, $3C, $5B
    db $0A, $01, $12, $02, $05, $BC, $5D, $1C, $01, $10, $02, $05, $7C, $5A, $30, $01
    db $08, $02, $05, $FC, $5A, $38, $01, $04, $02, $05, $5C, $5C, $3C, $01, $16, $02
    db $04, $B0, $41, $70, $01, $10, $02, $04, $B0, $42, $7C, $01, $04, $02, $07, $40
    db $41, $80, $01, $7F, $00, $02, $05, $DC, $51, $80, $00, $7A, $02, $04, $90, $41
    db $FA, $00, $02, $02, $04, $B0, $47, $FC, $00, $04, $02, $05, $DC, $59, $00, $01
    db $0A, $02, $05, $3C, $5B, $0A, $01, $12, $02, $05, $BC, $5E, $1C, $01, $12, $02
    db $05, $DC, $5F, $2E, $01, $08, $02, $05, $5C, $60, $36, $01, $14, $02, $05, $9C
    db $61, $4A, $01, $1E, $02, $04, $B0, $41, $70, $01, $10, $02, $04, $F0, $42, $7C
    db $01, $04, $02, $07, $30, $49, $80, $01, $7F, $02, $07, $80, $40, $89, $01, $04
    db $02, $07, $20, $51, $68, $01, $08, $00, $02, $05, $DC, $51, $80, $00, $7A, $02
    db $04, $90, $41, $FA, $00, $02, $02, $04, $B0, $47, $FC, $00, $04, $02, $05, $DC
    db $59, $00, $01, $0A, $02, $05, $DC, $6A, $0A, $01, $02, $02, $05, $3C, $6B, $0C
    db $01, $04, $02, $05, $BC, $5D, $1C, $01, $10, $02, $05, $DC, $5F, $2E, $01, $08
    db $02, $05, $5C, $60, $36, $01, $14, $02, $05, $7C, $63, $4A, $01, $14, $02, $04
    db $B0, $41, $70, $01, $10, $02, $04, $30, $43, $7C, $01, $04, $02, $07, $A0, $51
    db $80, $01, $80, $02, $07, $40, $40, $89, $01, $04, $00, $02, $05, $DC, $51, $80
    db $00, $7A, $02, $04, $90, $41, $FA, $00, $02, $02, $04, $B0, $47, $FC, $00, $04
    db $02, $05, $DC, $59, $00, $01, $0A, $02, $05, $BC, $64, $0A, $01, $12, $02, $05
    db $5C, $67, $1C, $01, $10, $02, $05, $FC, $6A, $2C, $01, $04, $02, $05, $DC, $65
    db $30, $01, $18, $02, $05, $9C, $61, $4A, $01, $1E, $02, $04, $B0, $41, $70, $01
    db $10, $02, $04, $70, $43, $7C, $01, $04, $02, $07, $A0, $59, $80, $01, $7F, $02
    db $07, $00, $40, $89, $01, $04, $00, $02, $05, $DC, $51, $80, $00, $7A, $02, $04
    db $90, $41, $FA, $00, $02, $02, $04, $B0, $47, $FC, $00, $04, $02, $05, $DC, $59
    db $00, $01, $0A, $02, $05, $BC, $64, $0A, $01, $12, $02, $05, $5C, $68, $1C, $01
    db $14, $02, $05, $DC, $65, $30, $01, $18, $02, $05, $9C, $61, $4A, $01, $1E, $02
    db $04, $B0, $41, $70, $01, $10, $02, $07, $30, $69, $80, $01, $80, $02, $07, $C0
    db $40, $89, $01, $04, $00

    ld [bc], a
    dec b
    call c, $8051
    nop
    ld a, d
    ld [bc], a
    inc b
    sub b
    ld b, c
    ld a, [$0200]
    ld [bc], a
    inc b
    or b
    ld b, a
    db $FC
    nop
    inc b
    ld [bc], a
    dec b
    call c, Call_000_0059
    ld bc, $020A
    dec b
    inc a
    ld e, e
    ld a, [bc]
    ld bc, $0212
    dec b
    ld e, h
    ld l, b
    inc e
    ld bc, $0214
    dec b
    ld a, h
    ld e, d
    jr nc, @+$03

    ld [$0502], sp
    db $FC
    ld e, d
    jr c, jr_000_126E

    inc b

jr_000_126E:
    ld [bc], a
    dec b
    ld e, h
    ld e, h
    inc a
    ld bc, $0216
    inc b
    or b
    ld b, c
    ld [hl], b
    ld bc, $0210
    inc b
    or b
    ld b, e
    ld a, h
    ld bc, $0204
    rlca
    ldh [$FF78], a
    add b
    ld bc, $0070

    ld a, [wUnk_C729]
    rst $00

    db $A9, $12, $0E, $13, $45, $13, $84, $13, $9D, $13, $B6, $13, $00, $14, $2D, $14
    db $9D, $13, $84, $13, $F4, $13, $6F, $14, $81, $14

    call Call_000_2168
    call Call_000_060B
    ld a, [wUnk_C500]
    bit 3, a
    jr z, jr_000_12C3

    ld hl, wUnk_C500
    res 3, [hl]
    ld a, [wUnk_C507]
    sub $06
    ld [wUnk_C507], a

jr_000_12C3:
    ld a, $00
    ld [wUnk_C50D], a
    ld hl, wUnk_C50E
    set 0, [hl]
    xor a
    ld [wUnk_C787], a
    ld [wUnk_C501], a
    ld [wUnk_C502], a
    ld [wUnk_C776], a
    ld hl, wUnk_C100
    ld bc, $0400
    xor a
    call wUnk_DEC9
    call Call_000_14B9
    call Call_000_14CE
    ld a, [wUnk_C50E]
    bit 5, a
    jp nz, Jump_000_1300

    ld bc, $0090
    ld a, c
    ld [wUnk_C770], a
    ld a, b
    ld [wUnk_C772], a
    jp Jump_000_0E29


Jump_000_1300:
    ld bc, $FF70
    ld a, c
    ld [wUnk_C770], a
    ld a, b
    ld [wUnk_C772], a
    jp Jump_000_0E29


    ld a, [wUnk_C50E]
    bit 5, a
    jp nz, Jump_000_1322

    call Call_000_132E
    ld a, [wUnk_C776]
    cp $40
    ret nz

    jp Jump_000_0E29


Jump_000_1322:
    call Call_000_132E
    ld a, [wUnk_C776]
    cp $60
    ret nz

    jp Jump_000_0E29


Call_000_132E:
    call Call_000_1E72
    call Call_000_0364
    call Call_000_1BB4
    call Call_000_0343
    ld a, [wUnk_C773]
    cpl
    inc a
    ld hl, wUnk_C50C
    add [hl]
    ld [hl], a
    ret


    ld a, $1A
    call Call_000_0875
    ld a, $03
    ld [wUnk_C788], a
    ld bc, $0CF0
    ld a, [wUnk_C50E]
    bit 5, a
    jr z, jr_000_135C

    ld bc, wUnk_DCF0

jr_000_135C:
    ld a, [wUnk_C50C]
    add b
    ld b, a
    ld a, [wUnk_C507]
    add c
    ld c, a
    call Call_000_3042
    ld a, l
    ld [wUnk_C789], a
    ld a, h
    ld [wUnk_C78A], a
    call Call_000_0364
    ld a, $52
    ld [wUnk_C784], a
    ld a, $B1
    ld [wUnk_C783], a
    call Call_000_0343
    jp Jump_000_0E29


    ld hl, wUnk_C788
    dec [hl]
    ret nz

    ld a, $03
    ld [wUnk_C788], a
    ld a, $01
    ld hl, wUnk_C50E
    bit 5, [hl]
    jp z, Jump_000_13CF

    ld a, $06
    jp Jump_000_13CF


    ld hl, wUnk_C788
    dec [hl]
    ret nz

    ld a, $03
    ld [wUnk_C788], a
    ld a, $02
    ld hl, wUnk_C50E
    bit 5, [hl]
    jp z, Jump_000_13CF

    ld a, $05
    jp Jump_000_13CF


    ld hl, wUnk_C788
    dec [hl]
    ret nz

    ld a, $03
    ld [wUnk_C788], a
    ld a, $03
    ld hl, wUnk_C50E
    bit 5, [hl]
    jp z, Jump_000_13CF

    ld a, $04
    jp Jump_000_13CF


Jump_000_13CF:
    call Call_000_0364
    call Call_000_2FEE
    ld de, wUnk_CF20
    ld a, [wUnk_C78A]
    ld [de], a
    inc de
    ld a, [wUnk_C789]
    ld [de], a
    inc de
    ld a, $01
    ld [de], a
    inc de
    ld c, $10
    call wUnk_DEC2
    ld a, $FF
    ld [de], a
    call Call_000_0343
    jp Jump_000_0E29


    call Call_000_0364
    call $4000
    call Call_000_0343
    jp Jump_000_0E29


    ld de, wUnk_C500
    ld bc, $596C
    call Call_000_2F92
    ld a, [wUnk_C50E]
    bit 5, a
    jp nz, Jump_000_141F

    ld bc, $0090
    ld a, c
    ld [wUnk_C509], a
    ld a, b
    ld [wUnk_C50A], a
    jp Jump_000_0E29


Jump_000_141F:
    ld bc, $FF70
    ld a, c
    ld [wUnk_C509], a
    ld a, b
    ld [wUnk_C50A], a
    jp Jump_000_0E29


    ld de, wUnk_C500
    ld hl, $596C
    call Call_000_2F9F
    ld hl, wUnk_C500
    call Call_000_20C4
    ld a, [wUnk_C50E]
    bit 5, a
    jr nz, jr_000_1459

    ld a, [wUnk_C50C]
    cp $70
    ret nz

    ld a, $00
    ld [wUnk_C50D], a
    call Call_000_1FCB
    ld a, $1A
    call Call_000_0875
    jp Jump_000_0E29


jr_000_1459:
    ld a, [wUnk_C50C]
    cp $30
    ret nz

    ld a, $00
    ld [wUnk_C50D], a
    call Call_000_1FCB
    ld a, $1A
    call Call_000_0875
    jp Jump_000_0E29


    call Call_000_132E
    ld a, [wUnk_C776]
    or a
    ret nz

    xor a
    ld [wUnk_C776], a
    call Call_000_1E59
    jp Jump_000_0E29


Call_000_1481:
    ld hl, wUnk_C726
    inc [hl]
    call Call_000_0364
    call $4020
    call Call_000_0343
    call $5D2C
    call $5BE9
    call Call_000_151E
    call Call_000_301B
    ld [wUnk_C780], a
    call Call_000_1E84
    call Call_000_0355
    call $4BC0
    call $4CFF
    call Call_000_0343
    call Call_000_14E3
    ld hl, wUnk_C500
    res 4, [hl]
    ld a, $01
    jp Jump_000_0E35


Call_000_14B9:
    ld a, [wUnk_C50E]
    bit 5, a
    ret nz

    call Call_000_14F9
    ld a, e
    cp $0C
    jp c, Jump_000_1604

    ld a, $20
    rst $18
    jp Jump_000_1604


Call_000_14CE:
    ld a, [wUnk_C50E]
    bit 5, a
    ret z

    call Call_000_14F9
    ld a, e
    cp $04
    jp c, Jump_000_1616

    ld a, $20
    rst $18
    jp Jump_000_1616


Call_000_14E3:
    ld a, [wUnk_C781]
    or a
    ret z

    ld a, [wUnk_C780]
    bit 4, a
    call z, Call_000_1542
    ld a, [wUnk_C780]
    bit 5, a
    call z, Call_000_156C
    ret


Call_000_14F9:
    ld a, [wUnk_C774]
    and $E0
    rrca
    rrca
    rrca
    and $1F
    ld b, a
    ld a, [wUnk_C77B]
    and $E0
    ld d, $00
    sla a
    rl d
    sla a
    rl d
    add b
    ld e, a
    ld bc, $9800
    call wUnk_DCBA
    res 2, d
    ret


Call_000_151E:
    xor a
    ld [wUnk_C78B], a
    ld a, [wUnk_C725]
    cp $02
    jr z, jr_000_152A

    ret


jr_000_152A:
    ld a, [wUnk_C726]
    cp $02
    jr z, jr_000_1537

    ld a, [wUnk_C726]
    cp $03
    ret nz

jr_000_1537:
    ld a, $01
    ld [wUnk_C78B], a
    ld hl, $1121
    jp Jump_000_2E53


Call_000_1542:
    ld de, wUnk_CF20
    ld c, $80
    ld b, $00
    call Call_000_1E0C
    ld a, $01
    ld [de], a
    inc de
    ld a, [wUnk_C77C]
    inc a
    call Call_000_3030
    and $0F
    call Call_000_3006
    call Call_000_0364
    call Call_000_1DAD
    call Call_000_0343
    ld a, $FF
    ld [de], a
    inc de
    xor a
    ld [de], a
    ret


Call_000_156C:
    ld de, wUnk_CF20
    xor a
    ld [wUnk_C773], a
    ld c, $E0
    ld b, $00
    call Call_000_1E0C
    ld a, $01
    ld [de], a
    inc de
    ld a, [wUnk_C77C]
    dec a
    call Call_000_3030
    and $0F
    call Call_000_3006
    ld a, $0F
    rst $38
    call Call_000_0364
    call Call_000_1DAD
    call Call_000_0343
    ld a, $FF
    ld [de], a
    inc de
    xor a
    ld [de], a
    ret


Call_000_159D:
    call Call_000_057C
    ld hl, wUnk_C100
    ld bc, $0400
    xor a
    call wUnk_DEC9
    ld a, [wUnk_C780]
    and $0F
    call Call_000_3006
    ld de, $9800
    ld a, $05
    ld [wUnk_C7D0], a

jr_000_15BA:
    call Call_000_165C
    inc bc
    ld hl, $FE04
    add hl, de
    call wUnk_DDA8
    ld a, [wUnk_C7D0]
    dec a
    ld [wUnk_C7D0], a
    jr nz, jr_000_15BA

    xor a
    ld [wUnk_C776], a
    ld [wUnk_C77D], a
    ld de, $9800
    call Call_000_1604
    ld de, $9800
    call Call_000_1616
    ld a, [wUnk_C781]
    or a
    ret z

    ld a, [wUnk_C780]
    and $30
    or $30
    ret z

    ld de, $9800
    ld a, [wUnk_C780]
    bit 4, a
    call z, Call_000_162B
    ld de, $9800
    ld a, [wUnk_C780]
    bit 5, a
    jr z, jr_000_1642

    ret


Call_000_1604:
Jump_000_1604:
    ld a, [wUnk_C775]
    inc a
    call Call_000_301E
    and $0F
    call Call_000_3006
    ld a, $14
    rst $30
    jp Jump_000_165C


Call_000_1616:
Jump_000_1616:
    ld a, [wUnk_C775]
    dec a
    call Call_000_301E
    and $0F
    call Call_000_3006
    ld a, $04
    rst $38
    ld a, $1C
    rst $30
    jp Jump_000_165C


Call_000_162B:
    ld bc, $0200
    call wUnk_DCBA
    res 2, d
    ld a, [wUnk_C77C]
    inc a
    call Call_000_3030
    and $0F
    call Call_000_3006
    jp Jump_000_167E


jr_000_1642:
    ld bc, $0380
    call wUnk_DCBA
    res 2, d
    ld a, [wUnk_C77C]
    dec a
    call Call_000_3030
    and $0F
    call Call_000_3006
    ld a, $0F
    rst $38
    jp Jump_000_167E


Call_000_165C:
Jump_000_165C:
    call Call_000_0364
    push bc
    ld a, $04
    ld [wUnk_C7D1], a

jr_000_1665:
    ld a, [bc]
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    call Call_000_2FEE
    call Call_000_16A7
    ld a, [wUnk_C7D1]
    dec a
    ld [wUnk_C7D1], a
    jr nz, jr_000_1665

    pop bc
    jp Jump_000_0343


Jump_000_167E:
    call Call_000_0364
    push bc
    ld a, $05
    ld [wUnk_C7D1], a

jr_000_1687:
    ld a, [bc]
    inc bc
    call Call_000_2FEE
    call Call_000_16A7
    ld a, $7C
    rst $18
    ld a, e
    and $1F
    jr nz, jr_000_169A

    ld a, $20
    rst $18

jr_000_169A:
    ld a, [wUnk_C7D1]
    dec a
    ld [wUnk_C7D1], a
    jr nz, jr_000_1687

    pop bc
    jp Jump_000_0343


Call_000_16A7:
    push bc
    ld a, d
    add $29
    ld b, a
    ld a, e
    ld c, a
    ld a, $04
    ld [wUnk_C7D2], a

jr_000_16B3:
    ld a, $04
    ld [wUnk_C7D3], a

jr_000_16B8:
    di

.waitVRAM
    wait_for_blank .waitVRAM

    ld a, [hl+]
    ld [de], a
    inc de
    ei
    ld [bc], a
    inc bc
    ld a, [wUnk_C7D3]
    dec a
    ld [wUnk_C7D3], a
    jr nz, jr_000_16B8

    ld a, $1C

Call_000_16D0:
    rst $30
    ld a, $1C
    rst $38
    ld a, [wUnk_C7D2]
    dec a
    ld [wUnk_C7D2], a
    jr nz, jr_000_16B3

Jump_000_16DD:
    pop bc
    ret


Call_000_16DF:
    ld a, $12
    ld de, $9800

jr_000_16E4:
    push af
    ld bc, $0014
    call wUnk_DED7
    ld a, $0C
    rst $30
    pop af
    dec a
    jr nz, jr_000_16E4

    ret


Jump_000_16F3:
    ld a, [wUnk_C513]
    or a
    ret z

    call Call_000_2168
    ld a, [wUnk_C72E]
    or a
    jr z, jr_000_170B

    inc a
    cp $06
    jr z, jr_000_170B

    ld [wUnk_C72E], a
    jr jr_000_171D

jr_000_170B:
    xor a
    ld [wUnk_C72E], a
    ld hl, wUnk_C775
    inc [hl]
    call Call_000_1856
    jr nz, jr_000_171D

    ld a, $01
    ld [wUnk_C72E], a

jr_000_171D:
    ld a, $0C
    ld [wUnk_C50C], a
    call Call_000_1918
    call Call_000_05E8
    ld hl, wUnk_C500
    set 6, [hl]
    xor a
    ld [wUnk_C7D8], a
    ld a, $01
    ld [wUnk_C741], a
    ld a, $02
    jp Jump_000_0E35


Jump_000_173B:
    ld a, [wUnk_C513]
    or a
    ret z

    call Call_000_2168
    ld a, [wUnk_C72E]
    or a
    jr z, jr_000_1752

    dec a
    or a
    jr z, jr_000_1752

    ld [wUnk_C72E], a
    jr jr_000_1767

jr_000_1752:
    xor a
    ld [wUnk_C72E], a
    ld a, [wUnk_C775]
    dec a
    ld [wUnk_C775], a
    call Call_000_1856
    jr nz, jr_000_1767

    ld a, $05
    ld [wUnk_C72E], a

jr_000_1767:
    ld a, $94
    ld [wUnk_C50C], a
    call Call_000_19E2
    call Call_000_05E8
    ld hl, wUnk_C500
    set 6, [hl]
    xor a
    ld [wUnk_C7D8], a
    ld a, $01
    ld [wUnk_C741], a
    ld a, $02
    jp Jump_000_0E35


Call_000_1785:
Jump_000_1785:
    ld a, [wUnk_C513]
    or a
    ret z

    call Call_000_2168
    call Call_000_1B01
    ret z

    ld a, [wUnk_C77C]
    dec a
    ld [wUnk_C77C], a
    ld a, [wUnk_C776]
    cp $50
    jr c, jr_000_17A6

    ld a, [wUnk_C775]
    inc a
    ld [wUnk_C775], a

jr_000_17A6:
    xor a
    ld [wUnk_C7D8], a
    call Call_000_1869
    ld a, $70
    ld [wUnk_C507], a
    call Call_000_05E8
    ld hl, wUnk_C500
    set 6, [hl]
    xor a
    ld [wUnk_C741], a
    ld a, $02
    jp Jump_000_0E35


Jump_000_17C3:
    call Call_000_2168
    ld a, [wUnk_C77C]
    dec a
    ld [wUnk_C77C], a
    ld a, $05
    jp Jump_000_0E35


Jump_000_17D2:
    ld a, [wUnk_C513]
    or a
    ret z

    call Call_000_2168
    ld a, [wUnk_C77C]
    inc a
    and $0F
    ld [wUnk_C77C], a
    ld a, $10
    ld [wUnk_C507], a
    ld a, [wUnk_C776]
    cp $50
    jr c, jr_000_17F6

    ld a, [wUnk_C775]
    inc a
    ld [wUnk_C775], a

jr_000_17F6:
    call Call_000_1E59
    call Call_000_1E61
    xor a
    ld [wUnk_C7D8], a
    call Call_000_1A9C
    ld hl, wUnk_C100
    ld bc, $0400
    xor a
    call wUnk_DEC9
    call Call_000_05E8
    xor a
    ld [wUnk_C741], a
    ld a, $02
    jp Jump_000_0E35


Call_000_1819:
    ld a, [wUnk_C513]
    or a
    ret z

    call Call_000_2168
    ld a, [wUnk_C77C]
    inc a
    and $0F
    ld [wUnk_C77C], a
    ld a, $10
    ld [wUnk_C507], a
    ld a, [wUnk_C776]
    cp $50
    jr c, jr_000_183D

    ld a, [wUnk_C775]
    inc a
    ld [wUnk_C775], a

jr_000_183D:
    call Call_000_1E59
    call Call_000_1E61
    xor a
    ld [wUnk_C7D8], a
    call Call_000_1A9C
    call Call_000_05E8
    xor a
    ld [wUnk_C741], a
    ld a, $02
    jp Jump_000_0E35


Call_000_1856:
    ld a, [wUnk_C725]
    cp $02
    ret nz

    ld a, [wUnk_C726]
    or a
    ret nz

    ld a, [wUnk_C775]
    cp $07
    ret nz

    xor a
    ret


Call_000_1869:
    ld a, [wUnk_C725]
    cp $03
    jr z, jr_000_1879

    cp $04
    jr z, jr_000_189E

    cp $05
    jr z, jr_000_18BD

    ret


jr_000_1879:
    ld a, [wUnk_C726]
    cp $02
    ret nz

    ld a, [wUnk_C775]
    cp $04
    ret nz

    ld a, [wUnk_C77C]
    cp $02
    ret nz

    ld a, $08
    call Call_000_1908
    jr z, jr_000_1898

    ld a, $4C
    ld [wUnk_C7D8], a
    ret


jr_000_1898:
    ld a, $54
    ld [wUnk_C7D8], a
    ret


jr_000_189E:
    ld a, [wUnk_C726]
    cp $01
    ret nz

    ld a, [wUnk_C775]
    cp $06
    ret nz

    ld a, [wUnk_C77C]
    cp $06
    ret nz

    ld a, $08
    call Call_000_1908
    jr z, jr_000_1898

    ld a, $4C
    ld [wUnk_C7D8], a
    ret


jr_000_18BD:
    ld a, [wUnk_C726]
    cp $04
    ret nz

    ld a, [wUnk_C775]
    cp $05
    ret nz

    ld a, [wUnk_C77C]
    cp $01
    ret nz

    call Call_000_057C
    call Call_000_0364
    ld hl, $7981
    ld a, h
    ld [wUnk_C784], a
    ld a, l
    ld [wUnk_C783], a
    call Call_000_0343
    ld hl, $18EF
    call Call_000_2E53
    ld hl, $18F7
    jp Jump_000_3067


    db $02, $07, $80, $73, $A5, $01, $56, $00, $1A, $00, $09, $05, $02, $02, $11, $00
    db $03, $01, $02, $00, $01, $01, $44, $00, $FF

Call_000_1908:
    ld b, a
    ld a, [wUnk_C50C]
    add b
    ld b, a
    ld a, [wUnk_C507]
    ld c, a
    call Call_000_28CD
    bit 1, a
    ret


Call_000_1918:
    ld a, [wUnk_C725]
    cp $02
    jr z, jr_000_1929

    cp $05
    jr z, jr_000_1950

    cp $06
    jp z, Jump_000_19B6

    ret


jr_000_1929:
    ld a, [wUnk_C726]
    cp $01
    ret nz

    ld a, [wUnk_C775]
    cp $06
    ret nz

    ld a, [wUnk_C77C]
    cp $03
    ret nz

    xor a
    ld [wUnk_C73E], a
    ld a, $33
    ld [wUnk_C507], a
    ld a, [wUnk_C500]
    bit 3, a
    ret z

    ld a, $39
    ld [wUnk_C507], a
    ret


jr_000_1950:
    ld a, [wUnk_C726]
    cp $01
    jr z, jr_000_195C

    cp $03
    jr z, jr_000_1980

    ret


jr_000_195C:
    ld a, [wUnk_C77C]
    cp $06
    ret nz

    ld a, [wUnk_C775]
    cp $02
    ret nz

    ld a, [wUnk_C77D]
    cp $40
    jr nc, jr_000_19AC

    ld a, $53
    ld [wUnk_C507], a
    ld a, [wUnk_C500]
    bit 3, a
    ret z

    ld a, $59
    ld [wUnk_C507], a
    ret


jr_000_1980:
    ld a, [wUnk_C775]
    cp $02
    ret nz

    ld a, [wUnk_C77C]
    cp $04
    jr z, jr_000_1992

    cp $05
    jr z, jr_000_1996

    ret


jr_000_1992:
    inc a
    ld [wUnk_C77C], a

jr_000_1996:
    ld a, $33
    ld [wUnk_C507], a
    ld hl, wUnk_C500
    set 4, [hl]
    ld a, [wUnk_C500]
    bit 3, a
    ret z

    ld a, $39
    ld [wUnk_C507], a
    ret


jr_000_19AC:
    ld hl, wUnk_C77C
    inc [hl]
    ld a, $33
    ld [wUnk_C507], a
    ret


Jump_000_19B6:
    ld a, [wUnk_C726]
    cp $01
    ret nz

    ld a, [wUnk_C775]
    cp $02
    ret nz

    ld a, [wUnk_C77C]
    cp $03
    ret nz

    ld a, [wUnk_C77D]
    or a
    ret z

    ld hl, wUnk_C77C
    inc [hl]
    ld a, $33
    ld [wUnk_C507], a
    ld a, [wUnk_C500]
    bit 3, a
    ret z

    ld a, $39
    ld [wUnk_C507], a
    ret


Call_000_19E2:
    ld a, [wUnk_C725]
    cp $03
    jr z, jr_000_19F2

    cp $04
    jr z, jr_000_1A15

    cp $05
    jr z, jr_000_1A69

    ret


jr_000_19F2:
    ld a, [wUnk_C726]
    cp $02
    ret nz

    ld a, [wUnk_C775]
    cp $06
    ret nz

    ld a, [wUnk_C77C]
    cp $03
    ret nz

    ld a, $6B
    ld [wUnk_C507], a
    ld a, [wUnk_C500]
    bit 3, a
    ret z

    ld a, $71
    ld [wUnk_C507], a
    ret


jr_000_1A15:
    ld a, [wUnk_C726]
    cp $01
    jr z, jr_000_1A21

    cp $04
    jr z, jr_000_1A3E

    ret


jr_000_1A21:
    ld a, [wUnk_C775]
    cp $06
    ret nz

    ld a, [wUnk_C77C]
    cp $05
    ret nz

    ld a, $33
    ld [wUnk_C507], a
    ld a, [wUnk_C500]
    bit 3, a
    ret z

    ld a, $39
    ld [wUnk_C507], a
    ret


jr_000_1A3E:
    ld a, [wUnk_C775]
    cp $01
    ret nz

    call Call_000_057C
    call Call_000_0364
    ld hl, $6FF1
    ld a, h
    ld [wUnk_C784], a
    ld a, l
    ld [wUnk_C783], a
    call Call_000_0343
    ld hl, wUnk_C50E
    res 0, [hl]
    ld hl, $1A81
    call Call_000_2E53
    ld hl, $1A89
    jp Jump_000_3067


jr_000_1A69:
    ld a, [wUnk_C726]
    cp $03
    ret nz

    ld a, [wUnk_C775]
    cp $01
    ret nz

    ld a, [wUnk_C77C]
    cp $05
    ret nz

    ld hl, wUnk_C500
    res 4, [hl]
    ret


    db $02, $07, $D0, $63, $A4, $01, $56, $00, $1A, $00, $09, $05, $13, $00, $04, $01
    db $14, $00, $02, $01, $0E, $00, $02, $01, $20, $00, $FF

Call_000_1A9C:
    ld a, [wUnk_C725]
    cp $04
    jr z, jr_000_1AA8

    cp $05
    jr z, jr_000_1ACA

    ret


jr_000_1AA8:
    ld a, [wUnk_C726]
    or a
    ret nz

    ld a, [wUnk_C775]
    cp $04
    ret nz

    ld a, [wUnk_C77C]
    cp $08
    ret nz

    ld a, $34
    ld [wUnk_C7D8], a
    ld a, $08
    call Call_000_1908
    ret z

    ld a, $2C
    ld [wUnk_C7D8], a
    ret


jr_000_1ACA:
    ld a, [wUnk_C726]
    cp $04
    ret nz

    ld a, [wUnk_C775]
    cp $05
    ret nz

    ld a, [wUnk_C77C]
    cp $02
    ret nz

    call Call_000_057C
    call Call_000_0364
    ld hl, $7121
    ld a, h
    ld [wUnk_C784], a
    ld a, l
    ld [wUnk_C783], a
    call Call_000_0343
    ld hl, $1AF9
    call Call_000_2E53
    jp $5BE9


    ld [bc], a
    rlca
    add b
    ld l, e
    and l
    ld bc, $005B

Call_000_1B01:
    ld a, [wUnk_C725]
    cp $03
    ret nz

    ld a, [wUnk_C726]
    cp $01
    ret nz

    ld a, [wUnk_C775]
    cp $07
    ret nz

    ld a, [wUnk_C77C]
    cp $01
    ret nz

    ld a, $70
    ld [wUnk_C507], a
    call Call_000_05E8
    ld a, $07
    call Call_000_0E35
    xor a
    ret


    call Call_000_1481
    xor a
    ld [wUnk_C771], a
    ld [wUnk_C774], a
    ld [wUnk_C778], a
    ld [wUnk_C77B], a
    ldh [hUnk_FF87], a
    ldh [hUnk_FF86], a
    call Call_000_159D
    ld de, $8000

jr_000_1B42:
    dec de
    ld a, d
    or e
    jr nz, jr_000_1B42

    ld a, $70
    ld [wUnk_C507], a
    call Call_000_05E1
    ret


Call_000_1B50:
    call Call_000_159D
    jp Jump_000_0355


Call_000_1B56:
    call Call_000_0355
    call $4000
    call Call_000_0350
    ld de, wUnk_C900
    ld a, $13
    ld [wUnk_C7DF], a

jr_000_1B67:
    ld e, $00
    ld a, [de]
    or a
    jr z, jr_000_1B7E

    bit 7, a
    call Call_000_0355
    call nz, $4254
    call Call_000_0350
    call Call_000_2767
    call Call_000_1B8D

jr_000_1B7E:
    ld bc, $0100
    call wUnk_DCBA
    ld hl, wUnk_C7DF
    dec [hl]
    jr nz, jr_000_1B67

    jp Jump_000_0343


Call_000_1B8D:
    ld e, $00
    ld a, [de]
    cp $07
    jr c, jr_000_1B9F

    cp $21
    jp c, $4000

    call Call_000_037D
    jp $5431


jr_000_1B9F:
    call Call_000_037D
    jp $6019


Call_000_1BA5:
    call Call_000_1E72
    ld a, [wUnk_C782]
    or a
    ret nz

    ld a, [wUnk_C781]
    or a
    jp nz, Jump_000_1C0F

Call_000_1BB4:
    ld hl, wUnk_C770
    call Call_000_1E7A
    ld a, [wUnk_C773]
    or a
    ret z

    call Call_000_1BCB
    ld a, [wUnk_C773]
    ld hl, hUnk_FF87
    add [hl]
    ld [hl], a
    ret


Call_000_1BCB:
    ld a, [wUnk_C772]
    bit 7, a
    jp nz, Jump_000_1BF0

    ld a, [wUnk_C773]
    ld hl, wUnk_C776
    add [hl]
    ld [hl], a
    cp $A0
    jp c, Jump_000_1C91

    sub $A0
    ld [hl], a
    ld hl, wUnk_C775
    inc [hl]
    call Call_000_301B
    ld [wUnk_C780], a
    jp Jump_000_1C91


Jump_000_1BF0:
    ld a, [wUnk_C773]
    cpl
    inc a
    ld b, a
    ld hl, wUnk_C776
    ld a, [hl]
    sub b
    ld [hl], a
    jp nc, Jump_000_1CD0

    add $A0
    ld [hl], a
    ld hl, wUnk_C775
    dec [hl]
    call Call_000_301B
    ld [wUnk_C780], a
    jp Jump_000_1CD0


Jump_000_1C0F:
    ld hl, wUnk_C777
    call Call_000_1E7A
    ld a, [wUnk_C77A]
    or a
    ret z

    call Call_000_1C26
    ld a, [wUnk_C77A]
    ld hl, hUnk_FF86
    add [hl]
    ld [hl], a
    ret


Call_000_1C26:
    ld a, [wUnk_C779]
    bit 7, a
    jp nz, Jump_000_1C53

    ld a, [wUnk_C77A]
    ld hl, wUnk_C77D
    add [hl]
    ld [hl], a
    cp $80
    jp c, Jump_000_1D0C

    sub $80
    ld [hl], a
    ld hl, wUnk_C77C
    inc [hl]
    call Call_000_301B
    ld [wUnk_C780], a
    bit 4, a
    jp z, Jump_000_1D0C

    ld a, [wUnk_C77D]
    jp Jump_000_1C7B


Jump_000_1C53:
    ld a, [wUnk_C77A]
    cpl
    inc a
    ld b, a
    ld hl, wUnk_C77D
    ld a, [hl]
    sub b
    ld [hl], a
    jp nc, Jump_000_1D6D

    ld hl, wUnk_C780
    bit 5, [hl]
    jr nz, jr_000_1C7B

    add $80
    ld [wUnk_C77D], a
    ld hl, wUnk_C77C
    dec [hl]
    call Call_000_301B
    ld [wUnk_C780], a
    jp Jump_000_1D6D


Jump_000_1C7B:
jr_000_1C7B:
    cpl
    inc a
    push af
    ld hl, wUnk_C77A
    add [hl]
    ld [hl], a
    pop af
    ld hl, wUnk_C77B
    add [hl]
    ld [hl], a
    xor a
    ld [wUnk_C778], a
    ld [wUnk_C77D], a
    ret


Jump_000_1C91:
    ld de, wUnk_CF20
    ld c, $00
    ld b, $C0
    call Call_000_1E0C
    ld a, $20
    ld [de], a
    inc de
    ld a, [wUnk_C775]
    push af
    ld a, [wUnk_C776]
    call Call_000_1DFF
    inc a
    cp $05
    jr nz, jr_000_1CB3

    xor a
    ld hl, wUnk_C775
    inc [hl]

jr_000_1CB3:
    push af
    ld a, [wUnk_C775]
    inc a
    call Call_000_301E
    and $0F
    call Call_000_3006
    pop af
    rst $38
    call Call_000_1DC4
    pop af
    ld [wUnk_C775], a
    ld a, $FF
    ld [de], a
    inc de
    xor a
    ld [de], a
    ret


Jump_000_1CD0:
    ld de, wUnk_CF20
    ld c, $00
    ld b, $C0
    call Call_000_1E0C
    ld a, $20
    ld [de], a
    inc de
    ld a, [wUnk_C775]
    push af
    ld a, [wUnk_C776]
    call Call_000_1DFF
    dec a
    cp $FF
    jr nz, jr_000_1CF3

    ld a, $04
    ld hl, wUnk_C775
    dec [hl]

jr_000_1CF3:
    push af
    call Call_000_301B
    and $0F
    call Call_000_3006
    pop af
    rst $38
    call Call_000_1DC4
    pop af

Call_000_1D02:
    ld [wUnk_C775], a
    ld a, $FF
    ld [de], a
    inc de
    xor a
    ld [de], a
    ret


Jump_000_1D0C:
    ld de, wUnk_CF20
    ld c, $A0
    ld b, $00
    call Call_000_1E0C
    ld a, $01
    ld [de], a
    inc de
    ld a, [wUnk_C77C]
    inc a
    call Call_000_3030
    bit 4, a
    jr z, jr_000_1D38

    ld a, [wUnk_C77D]
    cp $60
    jr c, jr_000_1D38

    ld h, d
    ld l, e
    xor a
    ld c, $50
    call wUnk_DED2
    ld a, $FF
    ld [hl], a
    ret


jr_000_1D38:
    ld a, [wUnk_C77C]
    push af
    ld a, [wUnk_C77D]
    call Call_000_1DFF
    inc a
    cp $04
    jr nz, jr_000_1D4C

    xor a
    ld hl, wUnk_C77C
    inc [hl]

jr_000_1D4C:
    push af
    ld a, [wUnk_C77C]
    inc a
    call Call_000_3030
    and $0F
    call Call_000_3006
    pop af
    ld h, a
    add a
    add a
    add h
    rst $38
    call Call_000_1DAD
    pop af
    ld [wUnk_C77C], a
    ld a, $FF
    ld [de], a
    inc de
    xor a
    ld [de], a
    ret


Jump_000_1D6D:
    ld de, wUnk_CF20
    ld c, $C0
    ld b, $00
    call Call_000_1E0C
    ld a, $01
    ld [de], a
    inc de
    ld a, [wUnk_C77C]
    push af
    ld a, [wUnk_C77D]
    call Call_000_1DFF
    dec a
    cp $FF
    jr nz, jr_000_1D90

    ld a, $03
    ld hl, wUnk_C77C
    dec [hl]

jr_000_1D90:
    push af
    call Call_000_301B
    and $0F
    call Call_000_3006
    pop af
    ld h, a
    add a
    add a
    add h
    rst $38
    call Call_000_1DAD
    pop af
    ld [wUnk_C77C], a
    ld a, $FF
    ld [de], a
    inc de
    xor a
    ld [de], a
    ret


Call_000_1DAD:
    ld a, $05
    ld [wUnk_C7D0], a

jr_000_1DB2:
    ld a, [bc]
    inc bc
    call Call_000_2FEE
    call Call_000_1DDF
    ld a, [wUnk_C7D0]
    dec a
    ld [wUnk_C7D0], a
    jr nz, jr_000_1DB2

    ret


Call_000_1DC4:
    ld a, $04
    ld [wUnk_C7D0], a

jr_000_1DC9:
    ld a, [bc]
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    call Call_000_2FEE
    call Call_000_1DDF
    ld a, [wUnk_C7D0]
    dec a
    ld [wUnk_C7D0], a
    jr nz, jr_000_1DC9

    ret


Call_000_1DDF:
    ld a, $04
    ld [wUnk_C7D2], a

jr_000_1DE4:
    ld a, $04
    ld [wUnk_C7D3], a

jr_000_1DE9:
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [wUnk_C7D3]
    dec a
    ld [wUnk_C7D3], a
    jr nz, jr_000_1DE9

    ld a, [wUnk_C7D2]
    dec a
    ld [wUnk_C7D2], a
    jr nz, jr_000_1DE4

    ret


Call_000_1DFF:
    and $E0
    srl a
    srl a
    srl a
    srl a
    srl a
    ret


Call_000_1E0C:
    ld a, [wUnk_C774]
    ld hl, wUnk_C773
    bit 7, [hl]
    jr z, jr_000_1E18

    add $20

jr_000_1E18:
    and $E0
    add b
    rrca
    rrca
    rrca
    and $1F
    ld b, a
    ld a, [wUnk_C77B]
    ld hl, wUnk_C77A
    bit 7, [hl]
    jr z, jr_000_1E2D

    add $20

jr_000_1E2D:
    and $E0
    add c
    ld h, $00
    sla a
    rl h
    sla a
    rl h
    add b
    ld l, a
    ld bc, $9800
    add hl, bc
    res 2, h
    ld a, h
    ld [de], a
    inc de
    ld a, l
    ld [de], a
    inc de
    ret


Call_000_1E49:
    xor a
    ld [wUnk_C771], a
    ld [wUnk_C774], a
    ret


Call_000_1E51:
    xor a
    ld [wUnk_C778], a
    ld [wUnk_C77B], a
    ret


Call_000_1E59:
    xor a
    ld [wUnk_C770], a
    ld [wUnk_C772], a
    ret


Call_000_1E61:
    xor a
    ld [wUnk_C777], a
    ld [wUnk_C779], a
    ret


Call_000_1E69:
    ld a, c
    ld [wUnk_C777], a
    ld a, b
    ld [wUnk_C779], a
    ret


Call_000_1E72:
    xor a
    ld [wUnk_C773], a
    ld [wUnk_C77A], a
    ret


Call_000_1E7A:
    ld a, [hl+]
    add [hl]
    ld [hl+], a
    ld a, [hl+]
    adc $00
    ld [hl+], a
    add [hl]
    ld [hl], a
    ret


Call_000_1E84:
    ld hl, $1E95
    call Call_000_2FCD
    ld a, [wUnk_C780]
    and $0F
    rst $28
    ld a, [hl]
    ld [wUnk_C781], a
    ret


    and e
    db $1E

    db $A3, $1E, $BC, $1E, $D4, $1E, $F0, $1E, $0C, $1F

    inc l
    rra

    db $B3, $1E, $B3, $1E, $B3, $1E, $B3, $1E, $B9, $1E, $B3, $1E, $B3, $1E, $B3, $1E
    db $00, $00, $00, $00, $00, $00, $01

    db $01

    db $01, $C8, $1E, $CE, $1E, $C8, $1E, $C8, $1E, $C8, $1E, $C8, $1E, $00, $00, $00
    db $00, $00, $00, $00

    nop

    db $01

    db $01

    db $00

    db $01

    db $DE, $1E, $DE, $1E, $E5, $1E, $DE, $1E, $DE, $1E, $01

    db $01

    db $01

    db $01

    db $01

    db $01

    db $01, $01

    db $01

    db $01, $01, $01

    db $01

    db $00

    nop
    ld bc, $0000

    db $FA, $1E, $FD, $1E, $05, $1F, $08, $1F, $FA, $1E, $00, $00, $00, $00, $01

    db $01

    db $01, $01, $01

    nop

    db $00, $00

    nop

    db $01, $01

    db $01

    db $01, $01, $16, $1F, $17, $1F, $1D, $1F, $21, $1F, $26, $1F, $00, $01, $00

    nop
    nop
    db $01

    db $00, $00, $00

    nop

    db $00, $01, $01

    db $01

    db $00

    db $01

    db $01

    db $01

    db $00, $00, $00, $00

    ld [hl-], a
    rra
    scf
    rra
    ld [hl-], a
    rra
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    nop
    nop

Call_000_1F3D:
    ld a, [wUnk_C507]
    cp $E4
    jp nc, Jump_000_1F9D

    add $0D
    ld hl, wUnk_C500
    bit 3, [hl]
    jr z, jr_000_1F50

    sub $05

jr_000_1F50:
    ld [wUnk_C7D0], a
    ld c, a
    ld a, [wUnk_C50C]
    add $05
    ld b, a
    call Call_000_28CD
    call Call_000_1F9F
    ld [wUnk_C760], a
    bit 0, a
    ret nz

    ld a, [wUnk_C7D0]
    ld c, a
    ld a, [wUnk_C50C]
    ld b, a
    call Call_000_28CD
    call Call_000_1F9F
    ld [wUnk_C760], a
    bit 0, a
    ret nz

    ld a, [wUnk_C7D0]
    ld c, a
    ld a, [wUnk_C50C]
    sub $06
    ld b, a
    call Call_000_28CD
    call Call_000_1F9F
    ld [wUnk_C760], a
    bit 0, a
    ret nz

    ld a, [wUnk_C75C]
    bit 0, a
    ret z

    ld hl, wUnk_C75D
    ld c, [hl]
    xor a
    inc a
    ret


Jump_000_1F9D:
    xor a
    ret


Call_000_1F9F:
    ld hl, wUnk_C511
    bit 0, [hl]
    jr z, jr_000_1FB6

    push af
    and $20
    or [hl]
    ld [hl], a
    bit 5, a
    jr z, jr_000_1FB4

    ld a, $01
    ld [wUnk_C740], a

jr_000_1FB4:
    pop af
    ret


jr_000_1FB6:
    res 5, [hl]
    ret


Call_000_1FB9:
Jump_000_1FB9:
    ld hl, wUnk_C504
    add [hl]
    ld [hl+], a
    ld a, $00
    adc [hl]
    ld [hl], a
    ld a, [hl]
    cp $04
    ret nz

    xor a
    ld [wUnk_C504], a
    ret


Call_000_1FCB:
Jump_000_1FCB:
    ld hl, wUnk_C509
    xor a
    ld [hl+], a
    ld [hl], a
    ret


Call_000_1FD2:
Jump_000_1FD2:
    ld hl, wUnk_C504
    xor a
    ld [hl+], a
    ld [hl], a
    ret


Call_000_1FD9:
Jump_000_1FD9:
    ld hl, wUnk_C500
    call Call_000_20D3
    cp $8F
    ret c

    cp $F0
    ret nc

    ld hl, wUnk_C500
    bit 4, [hl]
    jp nz, Jump_000_1FFB

jr_000_1FED:
    ld a, $F2
    call Call_000_2CAA
    call Call_000_1FCB
    call Call_000_1FD2
    jp Jump_000_2035


Jump_000_1FFB:
    res 4, [hl]
    ld a, [wUnk_C725]
    cp $05
    jp z, Jump_000_2023

    ld a, [wUnk_C726]
    cp $04
    jp z, Jump_000_17D2

    ld a, [wUnk_C776]
    cp $50
    jp c, Jump_000_17D2

    ld a, [wUnk_C50C]
    cp $50
    jr nc, jr_000_1FED

    ld hl, wUnk_C775
    dec [hl]
    jp Jump_000_17D2


Jump_000_2023:
    ld a, [wUnk_C77C]
    cp $05
    jp z, Jump_000_17D2

    ld a, $01
    ld [wUnk_C73B], a
    ld a, $0E
    jp Jump_000_0E35


Call_000_2035:
Jump_000_2035:
    ld a, [wUnk_C737]
    or a
    jp nz, Jump_000_2047

jr_000_203C:
    ld a, [wUnk_C513]
    or a
    ld a, $07
    jp z, Jump_000_0BCC

    jr jr_000_204D

Jump_000_2047:
    ld a, [wUnk_C740]
    or a
    jr nz, jr_000_203C

jr_000_204D:
    ld a, $00
    ld [wUnk_C50D], a
    call Call_000_1FCB
    call Call_000_1FD2
    ld a, $00
    jp $4697


Jump_000_205D:
    ld hl, wUnk_C770
    ld a, [wUnk_C509]
    add [hl]
    ld [hl], a
    ld hl, wUnk_C772
    ld a, [wUnk_C50A]
    adc [hl]
    ld [hl], a
    ret


Jump_000_206E:
    ld hl, wUnk_C777
    ld a, [wUnk_C504]
    add [hl]
    ld [hl], a
    ld hl, wUnk_C779
    ld a, [wUnk_C505]
    adc [hl]
    ld [hl], a
    ret


Jump_000_207F:
    ld h, d
    ld l, $02
    inc [hl]
    ret


Call_000_2084:
Jump_000_2084:
    ld h, d
    ld l, $02
    ld [hl], a
    ret


Jump_000_2089:
    ld h, d
    ld l, $01
    inc [hl]
    inc hl
    ld [hl], $00
    ret


Call_000_2091:
Jump_000_2091:
    ld h, d
    ld l, $01
    ld [hl+], a
    ld [hl], $00
    ret


Call_000_2098:
    push hl
    ld h, d
    ld l, $07
    ld [hl], c
    ld l, $0C
    ld [hl], b
    pop hl
    ret


Call_000_20A2:
Jump_000_20A2:
    ld a, $09
    jr jr_000_20A8

Call_000_20A6:
Jump_000_20A6:
    ld a, $04

jr_000_20A8:
    push hl
    ld h, d
    ld l, a
    ld a, c
    add [hl]
    ld [hl+], a
    ld a, b
    adc [hl]
    ld [hl], a
    pop hl
    ret


Jump_000_20B3:
    ld a, $09
    jr jr_000_20B9

Call_000_20B7:
Jump_000_20B7:
    ld a, $04

jr_000_20B9:
    push hl
    ld h, d
    ld l, a
    ld a, [hl]
    sub c
    ld [hl+], a
    ld a, [hl]
    sbc b
    ld [hl], a
    pop hl
    ret


Call_000_20C4:
Jump_000_20C4:
    push de
    ld d, h
    ld e, $09
    ld l, $0B
    ld a, [de]
    inc de
    add [hl]
    ld [hl+], a
    ld a, [de]
    adc [hl]
    ld [hl], a
    pop de
    ret


Call_000_20D3:
Jump_000_20D3:
    push de
    ld d, h
    ld e, $04
    ld l, $06
    ld a, [de]
    inc de
    add [hl]
    ld [hl+], a
    ld a, [de]
    adc [hl]
    ld [hl], a
    pop de
    ret


Call_000_20E2:
Jump_000_20E2:
    ld e, $09
    jr jr_000_20E8

Call_000_20E6:
Jump_000_20E6:
    ld e, $04

jr_000_20E8:
    ld a, c
    ld [de], a
    inc de
    ld a, b
    ld [de], a
    ret


Call_000_20EE:
Jump_000_20EE:
    ld a, $09
    jr jr_000_20F4

Call_000_20F2:
    ld a, $04

jr_000_20F4:
    push hl
    ld h, d
    ld l, a
    xor a
    ld [hl+], a
    ld [hl+], a
    pop hl
    ret


Call_000_20FC:
    ld e, $0E
    ld a, [de]
    bit 5, a
    jp z, Jump_000_20E2

    ld a, b
    cpl
    inc a
    ld b, a
    jp Jump_000_20E2


Call_000_210B:
Jump_000_210B:
    ld e, $0C
    ld a, [de]
    add b
    ld b, a
    ld e, $07
    ld a, [de]
    add c
    ld c, a
    ret


Call_000_2116:
    ld e, $0E
    ld a, [de]
    bit 5, a
    jp z, Jump_000_210B

    ld a, b
    cpl
    inc a

Jump_000_2121:
    ld b, a
    jp Jump_000_210B


Call_000_2125:
    push hl
    ld h, d
    ld l, $0C
    ld a, b
    add [hl]
    ld [hl], a
    ld l, $07
    ld a, c
    add [hl]
    ld [hl], a
    pop hl
    ret


Call_000_2133:
    push hl
    ld h, d
    ld l, $0E
    ld a, [wUnk_C550]
    ld b, a
    rrc b
    or a
    and $01
    xor [hl]
    ld [hl], a
    pop hl
    ret


Call_000_2144:
    ld a, d
    cp b
    ret nz

    ld a, e
    cp c
    ret


Call_000_214A:
Jump_000_214A:
    push hl
    ld h, d
    ld l, $09
    ld c, [hl]
    inc hl
    ld b, [hl]
    call wUnk_DCE3
    ld [hl], b
    dec hl
    ld [hl], c
    pop hl
    ret


Call_000_2159:
    push hl
    ld h, d
    ld l, $04
    ld c, [hl]
    inc hl
    ld b, [hl]
    call wUnk_DCE3
    ld [hl], b
    dec hl
    ld [hl], c
    pop hl
    ret


Call_000_2168:
    ld a, $18
    ld [wUnk_C7D0], a
    ld hl, wUnk_C600

jr_000_2170:
    push hl
    xor a
    ld c, $20
    call wUnk_DED2
    pop hl
    inc h
    ld a, [wUnk_C7D0]
    dec a
    ld [wUnk_C7D0], a
    jr nz, jr_000_2170

    ret


Call_000_2183:
Jump_000_2183:
    push hl
    ld h, d
    ld l, $00
    ld b, $20

jr_000_2189:
    xor a
    ld [hl+], a
    dec b
    jr nz, jr_000_2189

    pop hl
    ret


Call_000_2190:
Jump_000_2190:
    ld e, $16
    ld [de], a
    ld e, $11
    ld a, [de]
    set 0, a
    ld [de], a
    ld e, $0E
    ld a, $11
    ld [de], a
    ret


Call_000_219F:
Jump_000_219F:
    push hl
    ld h, d
    ld l, $08
    set 0, [hl]
    ld l, $03
    set 0, [hl]
    pop hl
    ret


Call_000_21AB:
    push hl
    ld h, d
    ld l, $08
    set 0, [hl]
    pop hl
    ret


Call_000_21B3:
Jump_000_21B3:
    push hl
    ld h, d
    ld l, $03
    set 0, [hl]
    pop hl
    ret


Call_000_21BB:
Jump_000_21BB:
    push hl
    ld h, d
    ld l, $08
    res 0, [hl]
    ld l, $03
    res 0, [hl]
    pop hl
    ret


Call_000_21C7:
    push hl
    ld h, d
    ld l, $08
    res 0, [hl]
    pop hl
    ret


Call_000_21CF:
Jump_000_21CF:
    push hl
    ld h, d
    ld l, $03
    res 0, [hl]
    pop hl
    ret


Call_000_21D7:
    push hl
    ld h, d
    ld l, $08
    res 0, [hl]
    ld a, $01
    ld e, $1E
    ld [de], a
    pop hl
    ret


Call_000_21E4:
Jump_000_21E4:
    push hl
    ld h, d
    ld l, $03
    res 0, [hl]
    ld a, $01
    ld e, $1F
    ld [de], a
    pop hl
    ret


Call_000_21F1:
    ld a, $14
    jr jr_000_21F7

Call_000_21F5:
    ld a, $15

Call_000_21F7:
jr_000_21F7:
    ld h, d
    ld l, a
    ld a, [hl]
    or a
    ret z

    dec [hl]
    ret


Call_000_21FE:
    ld b, a
    ld e, $0C
    ld a, [de]
    cp b
    ret c

    ld a, $A0
    sub b
    inc a
    ld b, a
    ld e, $0C
    ld a, [de]
    cp b
    ccf
    ret


Call_000_220F:
    ld e, $11
    ld a, [de]
    bit 0, a
    ret z

    push de
    call Call_000_2220
    pop de
    ld h, d
    ld l, $11
    bit 7, [hl]
    ret


Call_000_2220:
    call Call_000_22EE
    ld a, [wUnk_C511]
    bit 7, a
    jp nz, Jump_000_231E

    bit 0, a
    jp z, Jump_000_231E

    call Call_000_225E
    jp nc, Jump_000_231E

    ld a, [wUnk_C518]
    or a
    jr nz, jr_000_224E

    ld hl, wUnk_C511
    set 7, [hl]
    ld e, $16
    ld a, [de]
    cpl
    inc a
    push de
    call Call_000_2CAA
    pop de
    jp Jump_000_231E


jr_000_224E:
    ld e, $18
    ld a, [de]
    or a
    jp nz, Jump_000_231E

    ld e, $11
    ld a, [de]
    set 7, a
    ld [de], a
    jp Jump_000_231E


Call_000_225E:
    push de
    ld de, wUnk_C500
    call Call_000_2937
    pop de
    ld a, [hl]
    ld b, a
    ld a, [wUnk_C507]
    add b
    ld [wUnk_C7D5], a
    inc hl
    ld a, [wUnk_C7D1]
    add [hl]
    ld c, a
    inc hl
    inc hl
    ld a, [wUnk_C7D3]
    add [hl]
    ld b, a
    jp Jump_000_23C1


Call_000_227F:
    push de
    push hl
    ld d, h
    call Call_000_2937
    ld b, h
    ld c, l
    pop hl
    ld a, [bc]
    ld l, $0E
    bit 6, [hl]
    call nz, Call_000_0547
    ld l, $07
    add [hl]
    ld [wUnk_C7D0], a
    inc bc
    ld a, [bc]
    ld [wUnk_C7D1], a
    inc bc
    ld a, [bc]
    ld l, $0E
    bit 5, [hl]
    call nz, Call_000_0547
    ld l, $0C
    add [hl]
    ld [wUnk_C7D2], a
    inc bc
    ld a, [bc]
    ld [wUnk_C7D3], a
    pop de
    call Call_000_2937
    ld e, $0E
    ld a, [de]
    bit 6, a
    ld a, [hl+]
    call nz, Call_000_0547
    ld b, a
    ld e, $07
    ld a, [de]
    add b
    ld b, a
    ld a, [wUnk_C7D1]
    add [hl]
    inc hl
    ld c, a
    ld a, [wUnk_C7D0]
    sub b
    add c
    srl a
    cp c
    ret nc

    ld e, $0E
    ld a, [de]
    bit 5, a
    ld a, [hl+]
    call nz, Call_000_0547
    ld b, a
    ld e, $0C
    ld a, [de]
    add b
    ld b, a
    ld a, [wUnk_C7D3]

Jump_000_22E3:
    add [hl]
    ld c, a
    ld a, [wUnk_C7D2]
    sub b
    add c
    srl a
    cp c
    ret


Call_000_22EE:
    push hl
    call Call_000_2937
    ld e, $0E
    ld a, [de]
    bit 6, a
    ld a, [hl+]
    call nz, Call_000_0547
    ld b, a
    ld e, $07
    ld a, [de]
    add b
    ld [wUnk_C7D0], a
    ld a, [hl+]
    ld [wUnk_C7D1], a
    ld e, $0E
    ld a, [de]
    bit 5, a
    ld a, [hl+]
    call nz, Call_000_0547
    ld b, a
    ld e, $0C
    ld a, [de]
    add b
    ld [wUnk_C7D2], a
    ld a, [hl]
    ld [wUnk_C7D3], a
    pop hl
    ret


Call_000_231E:
Jump_000_231E:
    ld e, $11
    ld a, [de]
    bit 0, a
    ret z

    ld a, [wUnk_C611]
    bit 0, a
    jp z, Jump_000_235A

    ld a, [wUnk_C7D1]
    add $06
    ld c, a
    ld b, $10
    ld a, [wUnk_C75E]
    cp $03
    jr nz, jr_000_233D

    ld b, $13

jr_000_233D:
    ld a, [wUnk_C7D3]
    add b
    ld b, a
    ld hl, wUnk_C600
    call Call_000_23AB
    jp nc, Jump_000_235A

    ld h, d
    ld l, $11
    set 7, [hl]
    res 6, [hl]
    ld a, [wUnk_C75E]
    or a
    ret z

    set 6, [hl]
    ret


Jump_000_235A:
    ld a, [wUnk_C711]
    bit 0, a
    jr z, jr_000_2386

    ld a, [wUnk_C7D1]
    add $06
    ld c, a
    ld a, [wUnk_C7D3]
    add $03
    ld b, a
    ld hl, wUnk_C700
    call Call_000_23AB
    jr nc, jr_000_2386

    ld hl, wUnk_C711
    set 7, [hl]
    ld e, $11
    ld a, [de]
    bit 0, a
    ret z

    ld a, $88
    ld e, $11
    ld [de], a
    ret


jr_000_2386:
    ld a, [wUnk_C811]
    bit 0, a
    ret z

    ld a, [wUnk_C7D1]
    add $08
    ld c, a
    ld a, [wUnk_C7D3]
    add $04
    ld b, a
    ld hl, wUnk_C800
    call Call_000_23AB
    ret nc

    ld e, $11
    ld a, [de]
    bit 0, a
    ret z

    ld a, $C8
    ld e, $11
    ld [de], a
    ret


Call_000_23AB:
    ld l, $07
    ld a, [wUnk_C7D0]
    sub [hl]
    add c
    srl a
    cp c
    ret nc

    ld l, $0C
    ld a, [wUnk_C7D2]
    sub [hl]
    add b
    srl a
    cp b
    ret


Jump_000_23C1:
    ld hl, wUnk_C7D5
    ld a, [wUnk_C7D0]
    sub [hl]
    add c
    srl a
    cp c
    ret nc

    ld hl, wUnk_C50C
    ld a, [wUnk_C7D2]
    sub [hl]
    add b
    srl a
    cp b
    ret


Call_000_23D9:
Jump_000_23D9:
    call Call_000_2116
    call Call_000_28CD
    bit 0, a
    ret z

    call Call_000_214A

Jump_000_23E5:
    ld h, d
    ld l, $0E
    ld a, [hl]
    res 5, [hl]
    and $20
    xor $20
    or [hl]
    ld [hl], a
    xor a
    inc a
    ret


Call_000_23F4:
Jump_000_23F4:
    call Call_000_210B
    call Call_000_28CD
    bit 0, a
    ret


Call_000_23FD:
Jump_000_23FD:
    ld a, [wUnk_C781]
    cp $01
    jr z, jr_000_240E

    push de
    call Call_000_210B
    call Call_000_28CD
    pop de
    jr jr_000_2416

jr_000_240E:
    push de
    call Call_000_210B
    call Call_000_28C8
    pop de

jr_000_2416:
    bit 0, a
    ret z

    ld a, c
    cpl
    inc a
    ld c, a
    ld b, $00
    call Call_000_2125
    xor a
    inc a
    ret


Call_000_2425:
    ld a, [wUnk_C781]
    cp $01
    jr z, jr_000_2436

    push de
    call Call_000_210B
    call Call_000_28CD
    pop de
    jr jr_000_243E

jr_000_2436:
    push de
    call Call_000_210B
    call Call_000_28C8
    pop de

jr_000_243E:
    bit 0, a
    ret z

    xor a
    inc a
    ret


Call_000_2444:
Jump_000_2444:
    ld bc, $F7FC
    call Call_000_23D9
    ret nz

    ld bc, $F704
    call Call_000_23D9
    ret nz

    ld bc, $F70C
    jp Jump_000_23D9


Call_000_2458:
    ld bc, $040D
    call Call_000_23FD
    ret nz

    ld bc, $000D
    call Call_000_23FD
    ret nz

    ld bc, $FC0D
    call Call_000_23FD
    ret


Call_000_246D:
    ld a, [wUnk_C7D4]
    or a
    ret z

    cp $01
    ret z

    push hl
    inc hl
    inc hl
    call Call_000_247E
    pop hl
    or a
    ret


Call_000_247E:
    ld a, [wUnk_C7D4]
    or a
    ret z

    cp $01
    ret z

    ld a, [hl]
    and $1F
    push bc
    ld bc, wUnk_C7A0
    rst $38
    ld a, [bc]
    pop bc
    or a
    ret


Call_000_2492:
    push de
    ld a, [hl]
    and $E0
    swap a
    srl a
    add b
    ld b, a
    ld d, b
    ld e, c
    ld a, [hl+]
    and $1F
    ld e, $12
    ld [de], a
    ld a, [hl-]
    set 7, a
    ld e, $00
    ld [de], a
    ld a, [wUnk_C7D1]
    ld e, $07
    ld [de], a
    ld a, [wUnk_C7D0]
    ld e, $0C
    ld [de], a
    pop de
    ret


Call_000_24B8:
    push hl
    ld hl, wUnk_C793
    cp [hl]
    jr c, jr_000_24C1

    sub [hl]
    inc b

jr_000_24C1:
    add c
    jr nc, jr_000_24C6

Call_000_24C4:
    sub [hl]
    inc b

jr_000_24C6:
    ld c, a
    cp [hl]
    jr c, jr_000_24CD

    sub [hl]
    ld c, a
    inc b

jr_000_24CD:
    pop hl
    ret


Call_000_24CF:
    push hl
    ld hl, wUnk_C793
    cp [hl]
    jr c, jr_000_24DE

    sub [hl]
    push af
    dec b
    ld a, b
    and $0F
    ld b, a
    pop af

jr_000_24DE:
    push hl
    ld h, a
    ld a, c
    ld c, h
    sub c
    ld c, a

Jump_000_24E4:
    pop hl
    jr nc, jr_000_24EE

    add [hl]
    ld c, a
    ld a, b
    dec a
    and $0F
    ld b, a

jr_000_24EE:
    pop hl
    ret


Call_000_24F0:
    push hl
    ld c, $01
    ld h, d
    ld l, $11
    bit 6, [hl]
    jr z, jr_000_24FC

    ld c, $02

jr_000_24FC:
    res 6, [hl]
    ld h, d
    ld l, $13
    inc c
    ld a, [hl]
    cp c
    jr c, jr_000_2512

    dec c
    sub c
    ld [hl], a
    pop hl
    ld a, $18
    call Call_000_0875
    xor a
    cp a
    ret


jr_000_2512:
    pop hl
    scf
    ret


Jump_000_2515:
    ld a, $19
    call Call_000_0875
    call Call_000_21BB
    ld h, d
    ld l, $00
    ld [hl], $20
    set 7, [hl]
    xor a
    ld e, $01
    ld [de], a
    ld e, $11
    ld [de], a
    ld a, $10
    ld e, $0E
    ld [de], a
    call Call_000_20EE
    call Call_000_20F2
    xor a
    ret


Call_000_2538:
    call Call_000_035A
    ld hl, $4000

Call_000_253E:
    ld de, $9800
    ld b, $14

jr_000_2543:
    ld c, $14

jr_000_2545:
    di

.waitVRAM
    wait_for_blank .waitVRAM

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
    jr nz, jr_000_2545

    ld a, $0C
    rst $30
    dec b
    jr nz, jr_000_2543

    jp Jump_000_0355


Call_000_2565:
Jump_000_2565:
    ld e, $0E
    ld a, [de]
    ld b, a
    push bc
    call Call_000_2576
    pop bc
    ld e, $0E
    ld a, [de]
    xor b
    jp nz, Jump_000_214A

    ret


Call_000_2576:
Jump_000_2576:
    call Call_000_25AC
    res 7, a
    ld e, $17
    ld [de], a
    ld b, a
    and $03
    jr nz, jr_000_2598

    ld h, d
    ld l, $0E
    ld e, $0C
    ld a, [de]
    ld b, a
    cp $D0
    jr nc, jr_000_2595

    res 5, [hl]
    ld a, [wUnk_C50C]
    cp b
    ret c

jr_000_2595:
    set 5, [hl]
    ret


jr_000_2598:
    ld a, b
    and $03
    ret z

    ld a, b
    rla
    rla
    rla
    xor $20
    and $20
    ld h, d
    ld l, $0E
    res 5, [hl]
    or [hl]
    ld [hl], a
    ret


Call_000_25AC:
    ld e, $0C
    ld a, [de]
    cp $B4
    jr c, jr_000_25B8

    cp $EC
    jr c, jr_000_2629

    xor a

jr_000_25B8:
    ld b, a
    ld a, [wUnk_C50C]
    sub b
    ld b, a
    rl a
    and $01
    ld h, a
    ld a, b
    call nz, Call_000_0547
    cp $80
    call nc, Call_000_2626
    ld b, a
    ld e, $07
    ld a, [de]
    cp $98
    jr c, jr_000_25D9

    cp $E0
    jr c, jr_000_2629

    xor a

jr_000_25D9:
    ld c, a
    ld a, c
    ld a, [wUnk_C507]
    cp $DC
    jr c, jr_000_25E3

    xor a

jr_000_25E3:
    sub c
    ccf
    ld c, a
    rl a
    rl a
    and $02
    push af
    or h
    ld h, a
    pop af
    ld a, c
    call z, Call_000_0547
    cp $80
    call nc, Call_000_2626
    ld c, a
    srl b
    srl c
    ld a, b
    add a
    cp c
    jr c, jr_000_2620

    ld a, b
    srl a
    cp c
    jr c, jr_000_2613

    sla h
    sla h
    ld a, h
    and $04
    set 1, a
    ret


jr_000_2613:
    ld a, h
    bit 0, a
    jr nz, jr_000_261B

    set 0, a
    ret


jr_000_261B:
    xor $02
    set 2, a
    ret


jr_000_2620:
    ld a, h
    sla a
    and $04
    ret


Call_000_2626:
    ld a, $7F
    ret


jr_000_2629:
    ld a, $80
    ret


Call_000_262C:
    ld hl, wUnk_C759
    ld a, [hl]
    inc a
    daa
    ld [hl+], a
    ret nc

    ld a, $01
    add [hl]
    daa
    ld [hl+], a
    ret nc

    ld a, $01
    add [hl]
    daa
    ld [hl], a
    ret


Call_000_2640:
    call Call_000_2650
    inc bc
    ld a, [bc]
    ld l, a
    inc bc
    ld a, [bc]
    ld b, a
    ld c, l
    push de
    call Call_000_2F92
    pop de
    ret


Call_000_2650:
    call Call_000_2670
    ld h, d
    ld l, $04
    inc bc
    ld a, [bc]
    inc bc
    ld [hl+], a
    ld a, [bc]
    inc bc
    ld [hl], a
    ld a, $04
    rst $28
    ld a, [bc]
    inc bc
    ld [hl+], a
    ld a, [bc]
    inc bc
    ld [hl], a
    ld l, $16
    ld a, [bc]
    inc bc
    ld [hl], a
    ld l, $13
    ld a, [bc]
    ld [hl], a
    ret


Call_000_2670:
Jump_000_2670:
    ld h, d
    ld l, $03
    ld a, [bc]
    inc bc
    ld [hl], a
    ld l, $08
    ld a, [bc]
    inc bc
    ld [hl], a
    ld l, $0D
    ld a, [bc]
    inc bc
    ld [hl+], a
    ld a, [bc]
    inc bc
    ld [hl], a
    ld l, $11
    ld a, [bc]
    ld [hl], a
    ret


Call_000_2688:
    ld a, [wUnk_C730]
    or a
    ret nz

    ld a, [wUnk_C757]
    bit 0, a
    ret nz

    ld a, [wUnk_C757]
    bit 2, a
    ret


Call_000_2699:
Jump_000_2699:
    ld h, d
    ld l, $00
    ld [hl], $06
    set 7, [hl]
    ld a, $10
    ld e, $0E
    ld [de], a
    ld a, $00
    ld e, $11
    ld [de], a
    ret


Call_000_26AB:
Jump_000_26AB:
    call Call_000_214A
    ld h, d
    ld l, $0E
    ld a, [hl]
    res 5, [hl]
    and $20
    xor $20
    or [hl]
    ld [hl], a
    ret


Call_000_26BB:
    ld e, $11
    ld a, [de]
    bit 7, a
    jr nz, jr_000_26E2

    call Call_000_220F
    jp nz, Jump_000_26CB

    xor a
    inc a
    ret


Call_000_26CB:
Jump_000_26CB:
    call Call_000_24F0
    jp c, Jump_000_2515

    push hl
    ld h, d
    ld l, $11
    set 7, [hl]
    res 0, [hl]
    pop hl
    ld a, $20
    ld e, $19
    ld [de], a
    xor a
    inc a
    ret


Jump_000_26E2:
jr_000_26E2:
    call Call_000_2133
    ld a, $19
    call Call_000_21F7
    ret nz

    ld h, d
    ld l, $0E
    set 0, [hl]
    ld l, $11
    res 7, [hl]
    set 0, [hl]
    xor a
    inc a
    ret


Call_000_26F9:
    ld de, $2725
    jr jr_000_270B

    ld de, $2728
    jr jr_000_270B

    ld de, $272B
    jr jr_000_270B

Call_000_2708:
    ld de, $272E

jr_000_270B:
    push hl
    call Call_000_2711
    pop hl
    ret


Call_000_2711:
    ld hl, wUnk_C560
    dec [hl]
    scf
    ret nz

    inc l
    ld a, [hl-]
    ld [hl-], a
    inc [hl]
    ld a, [hl]
    cp $04
    ret nc

    rst $30
    ld a, [de]
    ldh [hUnk_FF8A], a
    scf
    ret


    db $00, $40, $90, $E4

    ld sp, hl
    cp $FF
    cp $F9

    db $E4, $90, $40, $00

Call_000_2732:
Jump_000_2732:
    di

.waitVRAM
    wait_for_blank .waitVRAM

    ld a, $26
    ld [hl], a
    ei
    jp Jump_000_2183


Call_000_2740:
    ld e, $0C
    ld a, [de]
    ld hl, wUnk_C774
    add [hl]
    rrca
    rrca
    rrca
    and $1F
    ld b, a
    ld e, $07
    ld a, [de]
    ld hl, wUnk_C77B
    add [hl]
    ld h, $00
    sla a
    rl h
    sla a
    rl h
    and $E0
    add b
    ld l, a
    ld bc, $9800
    add hl, bc
    ret


Call_000_2767:
    ld a, [wUnk_C730]
    or a
    ret nz

    ld a, [wUnk_C77A]
    ld c, a
    ld h, d
    ld l, $03
    bit 1, [hl]
    jr z, jr_000_2779

    ld c, $00

jr_000_2779:
    bit 0, [hl]
    jr nz, jr_000_2783

    ld a, $04
    rst $28
    ld a, [hl]
    jr jr_000_278B

jr_000_2783:
    inc hl
    ld a, [hl+]
    ld b, [hl]
    inc hl
    add [hl]
    ld [hl+], a
    ld a, [hl]
    adc b

jr_000_278B:
    sub c
    ld [hl], a
    cp $98
    jr c, jr_000_279D

    cp $DC
    jr nc, jr_000_279D

    ld e, $03
    ld a, [de]
    bit 4, a
    jp z, Jump_000_2183

jr_000_279D:
    ld a, [wUnk_C773]
    ld c, a
    ld h, d
    ld l, $08
    bit 1, [hl]
    jr z, jr_000_27AA

    ld c, $00

jr_000_27AA:
    bit 0, [hl]
    jr nz, jr_000_27B4

    ld a, $04
    rst $28
    ld a, [hl]
    jr jr_000_27BC

jr_000_27B4:
    inc hl
    ld a, [hl+]
    ld b, [hl]
    inc hl
    add [hl]
    ld [hl+], a
    ld a, [hl]
    adc b

jr_000_27BC:
    sub c
    ld [hl], a
    cp $B4
    ret c

    cp $EC
    ret nc

    ld e, $08
    ld a, [de]
    bit 4, a
    jp z, Jump_000_2183

    ret


    db $0C, $27, $0C, $28, $0C, $29, $0C, $28, $FE, $0C, $2A, $0C, $2B, $0C, $2C, $0C
    db $2D, $FF, $08, $2E, $08, $2F, $08, $30, $08, $31, $08, $32, $FF, $08, $34, $08
    db $35, $FE, $08, $37, $08, $38, $FE, $18, $39, $18, $3A, $18, $3B, $18, $3A, $FE
    db $10, $3C

    db $10
    dec a
    db $FE

    db $0C, $3E, $0C, $3F, $FE, $0C, $45, $0C, $46, $FE, $06, $48, $06, $49, $06, $4A
    db $06, $49, $FE, $0C, $4D, $0C, $4E, $0C, $4F, $0C, $4E, $FE, $0C, $56, $0C, $57
    db $0C, $58, $0C, $57, $FE, $08, $B6, $08, $B7, $FE, $0C, $75, $0C, $76, $FE, $0C
    db $77, $0C, $78, $0C, $79, $0C, $7A, $FF, $04, $7A, $0C, $79, $0C, $78, $0C, $77
    db $FF, $0A, $7B, $0A, $7C, $FE, $0A, $40, $0A, $41, $0A, $42, $0A, $41, $0A, $40
    db $FE, $02, $40, $02, $41, $02, $42, $02, $41, $02, $40, $FE, $14, $5B, $14, $5C
    db $14, $5D, $14, $5C, $FE, $14, $5E, $14, $5F, $FE, $10, $63, $06, $62, $06, $61
    db $FF, $0A, $64, $0A, $66, $0A, $65, $FE, $10, $7F, $08, $7E, $18, $7D, $FF, $0A
    db $80, $0A, $81, $0A, $82, $FE, $01, $86, $08, $87, $20, $88, $FF

    db $10
    add [hl]
    ld [$0887], sp
    adc d
    rst $38
    db $10
    sbc b
    db $10
    sbc c
    db $10
    sbc b
    db $10
    sbc c
    db $10
    sbc b
    db $10
    sbc c
    rst $38

    db $08, $9C, $0A, $9D, $10, $9E, $FF, $08, $9E, $0A, $9D, $10, $9C, $FF, $0A, $A1
    db $0A, $A2, $0A, $A3, $0A, $A2, $FE

    ld c, $A6
    ld c, $A7
    ld c, $A8
    ld c, $A7
    cp $30
    and l
    jr nc, @-$51

    rst $38

Call_000_28C8:
    ld a, c
    cp $E8
    jr nc, jr_000_28D3

Call_000_28CD:
    ld a, c
    cp $B0
    jp nc, Jump_000_2933

jr_000_28D3:
    ld hl, wUnk_C774
    ld a, b
    add [hl]
    push af
    rrca
    rrca
    rrca
    and $1F
    ld b, a
    ld a, c
    ld hl, wUnk_C77B
    add [hl]
    push af
    ld h, $00
    sla a
    rl h
    sla a
    rl h
    and $E0
    add b
    ld l, a
    ld bc, wUnk_C100
    add hl, bc
    ld a, [hl]
    ld h, $C0
    ld l, a
    pop af
    and $07
    ld c, a
    pop af
    and $07
    ld b, a
    ld a, [hl]
    ret


Call_000_2905:
    ld hl, wUnk_C774
    ld a, b
    add [hl]
    push af
    rrca
    rrca
    rrca
    and $1F
    ld b, a
    ld a, c
    ld hl, wUnk_C77B
    add [hl]
    push af
    ld h, $00
    sla a
    rl h
    sla a
    rl h
    and $E0
    add b
    ld l, a
    ld bc, wUnk_C100
    add hl, bc
    pop af
    and $07
    ld c, a
    pop af
    and $07
    ld b, a
    ld a, [hl]
    ret


Jump_000_2933:
    xor a
    ld c, a
    ld b, a
    ret


Call_000_2937:
    ld e, $0D
    ld a, [de]
    ld h, $00
    ld l, a
    add hl, hl
    rst $28
    ld bc, $296E
    add hl, bc
    push de
    ld de, wUnk_C7C0
    ld a, [hl+]
    ld [de], a
    ld a, [hl+]
    inc de
    inc de
    ld [de], a
    dec de
    ld a, b
    cp $FF
    jr nz, jr_000_295C

    xor a
    ld [de], a
    inc de
    inc de
    ld [de], a
    ld hl, wUnk_C7E0
    ret


jr_000_295C:
    ld a, [hl+]
    add a
    ld bc, $2B96
    rst $38
    ld a, [bc]
    inc bc
    ld [de], a
    ld a, [bc]
    inc de
    inc de
    ld [de], a
    pop de
    ld hl, wUnk_C7C0
    ret


    db $02, $00, $01, $02, $00, $02, $02, $00, $01, $02, $00, $01, $02, $00, $01, $02
    db $00, $01, $00, $00, $03, $00, $00, $03, $00, $00, $03, $00, $00, $03, $00, $00
    db $03, $00, $00, $03, $00, $00, $01

    nop
    nop
    rst $38
    nop
    nop
    rst $38

    db $00, $00, $01, $00, $00, $01, $00, $00, $01, $00, $00, $01, $00, $00, $01, $00
    db $00, $01, $00, $00, $01

    nop
    nop
    ld bc, $0000
    ld bc, $0000
    rst $38
    nop
    nop
    rst $38
    nop
    nop
    rst $38
    nop
    nop
    rst $38

    db $00, $00, $05

    nop
    nop
    dec b
    nop
    nop
    dec b
    nop
    nop
    rst $38

    db $00, $00, $03, $00, $00, $03, $00, $00, $03, $00, $00, $03, $00, $00, $04, $00
    db $00, $04, $00, $00, $05, $00, $00, $05, $00, $00, $05, $00, $00, $05

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
    rst $38
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
    rst $38
    nop
    nop
    rst $38

    db $00, $00, $06, $FC, $00, $03, $01, $00, $03, $00, $00, $07, $00, $00, $08, $00
    db $00, $08, $00, $00, $01, $00, $00, $01, $00, $00, $01, $00, $FC, $09, $00, $F8
    db $0A, $00, $00, $01, $00, $00, $01, $00, $08, $0B, $00, $04, $0C, $00, $00, $0D
    db $00, $08, $0E, $00, $08, $0F, $00, $00, $27, $00, $00, $27, $00, $00, $10, $FC
    db $00, $11, $FC, $00, $11, $FC, $00, $11, $F0, $F4, $12, $F4, $F0, $13, $00, $00
    db $14, $00, $00, $14, $00, $00, $14, $00, $00, $14

    nop
    nop
    rst $38

    db $04, $08, $08, $00, $00, $15, $00, $00, $16, $00, $00, $17, $00, $FA, $14, $00
    db $FA, $14, $00, $FA, $14, $00, $FA, $14, $00, $00, $05, $00, $FC, $18, $00, $FC
    db $18, $00, $FC, $18, $08, $00, $19, $00, $FC, $18, $00, $FC, $08, $00, $00, $0D
    db $00, $00, $0D, $00, $00, $0D, $00, $00, $03, $00, $00, $03, $00, $00, $03

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
    rst $38
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
    rst $38
    nop
    nop
    rst $38
    nop
    nop
    rst $38

    db $00, $00, $03, $00, $00, $05, $00, $00, $05, $00, $00, $05, $0C, $00, $06, $0A
    db $00, $03, $0E, $00, $1B, $0A, $00, $06, $06, $00, $1C, $02, $00, $10, $02, $FC
    db $1D, $02, $00, $1D, $00, $00, $1D, $00, $00, $03, $00, $00, $1D, $00, $00, $1D
    db $00, $00, $1D, $00, $00, $1D, $02, $00, $1E

    nop
    nop
    inc bc

    db $00, $00, $1F, $00, $00, $0E, $00, $00, $0E, $00, $FE, $20, $00, $00, $1F

    nop
    cp $20

    db $00, $00, $20, $04, $00, $21, $00, $00, $22, $04, $00, $23

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
    rst $38

    db $00, $00, $1F, $00, $00, $1F, $00, $00, $1F

    nop
    nop
    rra

    db $00, $00, $05, $00, $04, $0C, $00, $00, $0D, $00, $04, $0C, $00, $00, $0D, $06
    db $00, $24, $06, $FC, $25, $06, $F8, $26, $00, $00, $0E, $00, $00, $0E, $00, $00
    db $03, $00, $00, $03, $00, $00, $03

    inc b
    nop
    ld a, [de]
    nop
    nop
    rra
    ld a, [$1A00]
    db $FC
    nop
    ld a, [de]
    ld a, [$1A00]
    db $FC
    nop
    ld a, [de]
    nop
    nop
    inc bc
    nop
    nop
    inc bc
    nop
    nop
    inc bc
    inc b
    nop
    ld a, [de]
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
    rst $38
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
    rst $38

    db $00, $00, $03, $00, $00, $03

    nop
    nop

    db $0A, $06, $0A, $04, $06, $06, $05, $04, $04, $03, $06, $03, $05, $07, $03, $06
    db $0C, $0A, $0C, $0E, $15, $16, $15, $0A, $15, $0E, $0E, $0E, $1E, $0E, $0C, $06
    db $09, $06, $0C, $03, $03, $08, $0E, $06, $0C, $12, $0E, $12, $0A, $03, $1A, $0E
    db $16, $16

    ld a, [bc]
    ld a, [bc]

    db $06, $02, $06, $08, $06, $0D, $02, $08, $0E, $0A, $0E, $10, $02, $06, $08, $03
    db $03, $08, $12, $0A, $12, $0E, $12, $12, $0C, $08

Call_000_2BE6:
    ld hl, $2C4A
    call Call_000_2C27
    xor a
    call Call_000_2CAA
    xor a
    call Call_000_2CED
    call Call_000_2DA4
    ld hl, wUnk_C753
    ld a, [hl]
    call Call_000_2DF9
    ld hl, wUnk_C754
    ld a, [hl]
    jp Jump_000_2E35


Call_000_2C05:
    ld hl, $2C7A
    call Call_000_2C27
    xor a
    call Call_000_2CAA
    xor a
    call Call_000_2CED
    call Call_000_2DA4
    ld hl, wUnk_C753
    ld a, [hl]
    call Call_000_2DF9
    ld hl, wUnk_C754
    ld a, [hl]
    jp Jump_000_2E35


Call_000_2C24:
    ld hl, $2C4A

Call_000_2C27:
jr_000_2C27:
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a

jr_000_2C2B:
    ld a, [hl+]
    cp $7F
    jr z, jr_000_2C27

    cp $FF
    jr z, jr_000_2C3C

    ld c, a
    ld b, $00
    call wUnk_DED7
    jr jr_000_2C2B

jr_000_2C3C:
    ld hl, wUnk_C753
    ld a, [hl]
    call Call_000_2DF9
    ld hl, wUnk_C754
    ld a, [hl]
    jp Jump_000_2E35


    db $00, $9C, $14, $04, $09, $0B, $01, $02, $02, $02, $02, $02, $02, $02, $04, $04
    db $0D, $0F, $16, $10, $10, $04, $04, $7F, $20, $9C, $14, $04, $0A, $0C, $05, $06
    db $06, $06, $06, $06, $06, $06, $04, $08, $10, $10, $04, $0E, $0F, $12, $04, $FF
    db $20, $9C, $14, $04, $09, $0B, $01, $02, $02, $02, $02, $02, $02, $02, $04, $04
    db $0D, $0F, $16, $10, $10, $04, $04, $7F, $40, $9C, $14, $04, $0A, $0C, $05, $06
    db $06, $06, $06, $06, $06, $06, $04, $08, $10, $10, $04, $0E, $0F, $12, $04, $FF

Call_000_2CAA:
Jump_000_2CAA:
    ld hl, wUnk_C513
    add [hl]
    bit 7, a
    jr z, jr_000_2CB3

    xor a

jr_000_2CB3:
    cp $0E
    jr c, jr_000_2CB9

    ld a, $0E

jr_000_2CB9:
    ld [hl], a
    ld c, a
    ld hl, $9C04
    ld a, [wUnk_C734]
    or a
    jr z, jr_000_2CC7

    ld hl, $9C24

jr_000_2CC7:
    ld a, c
    ld e, $02
    ld b, $07

jr_000_2CCC:
    ld c, $02
    cp e
    jr nc, jr_000_2CDB

    ld c, $04
    bit 0, a
    jr z, jr_000_2CDB

    ld c, $03
    res 0, a

jr_000_2CDB:
    push af
    di

.waitVRAM
    wait_for_blank .waitVRAM

    ld [hl], c
    inc hl
    ei
    pop af
    dec b
    ret z

    inc e
    inc e
    jr jr_000_2CCC

Call_000_2CED:
    ld hl, wUnk_C517
    add [hl]
    cp $01
    jr nc, jr_000_2CF6

    xor a

jr_000_2CF6:
    cp $0E
    jr c, jr_000_2CFC

    ld a, $0E

jr_000_2CFC:
    ld [hl], a
    ld c, a
    ld hl, $9C24
    ld a, [wUnk_C734]
    or a
    jr z, jr_000_2D0A

    ld hl, $9C44

jr_000_2D0A:
    ld a, c
    ld e, $02
    ld b, $07

jr_000_2D0F:
    ld c, $06
    cp e
    jr nc, jr_000_2D1E

    ld c, $04
    bit 0, a
    jr z, jr_000_2D1E

    ld c, $07
    res 0, a

jr_000_2D1E:
    push af
    di

.waitVRAM
    wait_for_blank .waitVRAM

    ld [hl], c
    inc hl
    ei
    pop af
    dec b
    ret z

    inc e
    inc e
    jr jr_000_2D0F

Call_000_2D30:
    ld hl, $2D45
    call Call_000_2FDE
    ld b, $00
    ld c, a
    call wUnk_DDB7
    ld a, c
    ld hl, wUnk_C750
    ld [hl+], a
    ld [hl], b
    jp Jump_000_2DA4


    ld d, e
    dec l

    db $53, $2D, $5B, $2D, $61, $2D, $66, $2D, $6B, $2D

    ld [hl], b
    dec l

    db $60

    ld d, [hl]
    ld b, h
    ld b, b
    ld [hl-], a

    db $28

    ld [hl+], a
    db $16

    db $64, $56

    ld b, l

    db $30

    jr z, jr_000_2D81

    db $65, $60, $48, $35, $23, $56, $48

    db $38

    db $30, $20, $68, $60, $52, $44, $38

    ld b, d
    ld [hl], $20

Call_000_2D73:
    ld a, [wUnk_C752]
    or a
    ret nz

    ld a, [wUnk_C550]
    and $3F
    ret nz

    ld hl, wUnk_C750

jr_000_2D81:
    ld a, [hl]
    sub $01
    daa
    ld [hl+], a
    jr nc, jr_000_2DA4

    ld a, [hl]
    sub $01
    daa
    ld [hl], a
    jr nc, jr_000_2DA4

    ld a, $F2
    call Call_000_2CAA
    call Call_000_1FCB
    call Call_000_1FD2

jr_000_2D9A:
    ld a, [wUnk_C737]
    or a
    ret nz

    ld a, $07
    jp Jump_000_0BCC


Call_000_2DA4:
Jump_000_2DA4:
jr_000_2DA4:
    ld de, $9C11
    ld a, [wUnk_C734]
    or a
    jr z, jr_000_2DB0

    ld de, $9C31

jr_000_2DB0:
    ld hl, wUnk_C750
    di

.waitVRAM1
    wait_for_blank .waitVRAM1

    ld a, [hl]
    and $0F
    add $10
    ld [de], a
    dec de

.waitVRAM2
    wait_for_blank .waitVRAM2

    ld a, [hl+]
    swap a
    and $0F
    add $10
    ld [de], a
    dec de

.waitVRAM3
    wait_for_blank .waitVRAM3

    ld a, [hl]
    add $10
    ld [de], a
    ei
    ret


Call_000_2DDC:
    ld e, a
    ld hl, wUnk_C753
    ld a, [hl]
    cp $99
    ret z

    add e
    daa
    jr nc, jr_000_2DF9

    ld a, $99
    jr jr_000_2DF9

Call_000_2DEC:
Jump_000_2DEC:
    ld e, a
    ld hl, wUnk_C753
    ld a, [hl]
    or a
    ret z

    sub e
    daa
    jr nc, jr_000_2DF9

    ld a, $00

Call_000_2DF9:
jr_000_2DF9:
    ld [hl], a
    ld hl, $9C2D
    ld a, [wUnk_C734]
    or a
    jr z, jr_000_2E06

    ld hl, $9C4D

jr_000_2E06:
    di

.waitVRAM1
    wait_for_blank .waitVRAM1

    ld a, [wUnk_C753]
    swap a
    and $0F
    add $10
    ld [hl+], a

.waitVRAM2
    wait_for_blank .waitVRAM2

    ld a, [wUnk_C753]
    and $0F
    add $10
    ld [hl], a
    ei
    ret


Call_000_2E27:
    ld hl, wUnk_C754
    ld a, [hl]
    cp $09
    ret z

    inc a
    cp $09
    jr c, jr_000_2E35

    ld a, $09

Jump_000_2E35:
jr_000_2E35:
    ld [hl], a
    ld hl, $9C32
    ld a, [wUnk_C734]
    or a
    jr z, jr_000_2E42

    ld hl, $9C52

jr_000_2E42:
    di

.waitVRAM
    wait_for_blank .waitVRAM

    ld a, [wUnk_C754]
    and $0F
    add $10
    ld [hl], a
    ei
    ret


Call_000_2E53:
Jump_000_2E53:
    ldh a, [rLCDC]
    bit 7, a
    jr z, jr_000_2E5D

Call_000_2E59:
    ld a, $01
    jr jr_000_2E5E

jr_000_2E5D:
    xor a

jr_000_2E5E:
    ld [wUnk_C723], a
    ld a, [wUnk_C522]
    ld [wUnk_C720], a

jr_000_2E67:
    ld a, [hl]
    rst $00

    db $6F, $2E, $70, $2E, $81, $2E

    ret


    push hl
    call Call_000_2E92
    call Call_000_2ECD
    call Call_000_2EBC
    pop hl
    ld de, $0007
    add hl, de
    jr jr_000_2E67

    push hl
    call Call_000_2E92
    call Call_000_2EB2
    call Call_000_2EBC
    pop hl
    ld de, $0007
    add hl, de
    jr jr_000_2E67

Call_000_2E92:
    inc hl
    ld a, [hl+]
    push af
    ld e, [hl]
    inc hl
    ld d, [hl]
    inc hl
    push de
    ld e, [hl]
    inc hl
    ld d, [hl]
    inc hl
    call wUnk_DDBF
    ld bc, $7800
    call wUnk_DCBA
    ld c, [hl]
    ld b, $00
    call wUnk_DDB7
    pop hl
    pop af
    jp Jump_000_0396


Call_000_2EB2:
    ld a, [wUnk_C723]
    or a
    jp z, wUnk_DEB9

    jp wUnk_DED7


Call_000_2EBC:
    ld a, [wUnk_C720]
    jp Jump_000_0396


    ld a, $01
    ld [wUnk_C723], a
    jr jr_000_2ECD

    xor a
    ld [wUnk_C723], a

Call_000_2ECD:
jr_000_2ECD:
    push hl
    ld hl, wUnk_C420
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl+], a
    ld a, e
    ld [hl+], a
    ld a, d
    ld [hl+], a
    pop de
    ld a, e
    ld [hl+], a
    ld a, d
    ld [hl+], a
    ld hl, wUnk_C000
    ld bc, $03DE
    ld a, $20
    call wUnk_DEC9
    ld bc, $03DE
    ld a, $01
    ld [wUnk_C428], a

jr_000_2EF1:
    ld hl, wUnk_C428
    dec [hl]
    jr nz, jr_000_2F00

    ld [hl], $08
    call Call_000_2F3E
    ld hl, wUnk_C429
    ld [hl-], a

jr_000_2F00:
    inc l
    rr [hl]
    jr nc, jr_000_2F0E

    call Call_000_2F3E
    call Call_000_2F4C
    ret c

    jr jr_000_2EF1

jr_000_2F0E:
    call Call_000_2F3E
    push af
    call Call_000_2F3E
    ld d, a
    and $1F
    add $03
    ld [wUnk_C426], a
    ld a, d
    swap a
    rrca
    and $03
    ld d, a
    pop af
    ld e, a

jr_000_2F26:
    ld hl, wUnk_C000
    add hl, de
    inc de
    ld a, d
    and $03
    ld d, a
    ld a, [hl]
    push de
    call Call_000_2F4C
    pop de
    ret c

    ld hl, wUnk_C426
    dec [hl]
    jr nz, jr_000_2F26

    jr jr_000_2EF1

Call_000_2F3E:
    push hl
    ld hl, wUnk_C424
    ld e, [hl]
    inc l
    ld d, [hl]
    ld a, [de]
    inc de
    ld [hl], d
    dec l
    ld [hl], e
    pop hl
    ret


Call_000_2F4C:
    call Call_000_2F70
    ld hl, wUnk_C723
    bit 1, [hl]
    call nz, Call_000_2F70
    ld hl, wUnk_C000
    add hl, bc
    ld [hl], a
    inc bc
    ld a, b
    and $03
    ld b, a
    ld hl, wUnk_C420
    ld e, [hl]
    inc l
    ld d, [hl]
    dec de
    ld [hl], d
    dec l
    ld [hl], e
    ld a, d
    or e
    ret nz

    scf
    ret


Call_000_2F70:
    ld hl, wUnk_C422
    ld e, [hl]
    inc l
    ld d, [hl]
    inc de
    ld [hl], d
    dec l
    ld [hl], e
    dec de
    ld hl, wUnk_C723
    bit 0, [hl]
    ret z

    jr z, jr_000_2F8F

    di
    ld hl, rSTAT

jr_000_2F87:
    bit 1, [hl]
    jr nz, jr_000_2F87

    ld [de], a
    ei
    inc de
    ret


jr_000_2F8F:
    ld [de], a
    inc de
    ret


Call_000_2F92:
Jump_000_2F92:
jr_000_2F92:
    ld e, $10
    ld a, [bc]
    inc bc
    ld [de], a
    dec de
    xor a
    ld [de], a
    dec de
    dec de
    ld a, [bc]
    ld [de], a
    ret


Call_000_2F9F:
    ld c, $10
    ld b, d
    ld a, [bc]
    cp $FF
    ret z

    dec a
    ld [bc], a
    ret nz

    dec bc
    ld a, [bc]
    inc a
    ld [bc], a
    ld c, l
    ld b, h
    add a
    add l
    ld l, a
    jr nc, jr_000_2FB5

    inc h

jr_000_2FB5:
    ld a, [hl+]
    cp $FF
    jr z, jr_000_2FC6

    cp $FE
    jr z, jr_000_2F92

    ld e, $10
    ld [de], a
    ld a, [hl]
    ld e, $0D
    ld [de], a
    ret


jr_000_2FC6:
    ld e, $10
    ld [de], a
    dec de
    xor a
    ld [de], a
    ret


Call_000_2FCD:
    push de
    ld a, [wUnk_C725]
    call wUnk_DDD6
    ld a, [wUnk_C726]
    and $0F
    call wUnk_DDD6
    pop de
    ret


Call_000_2FDE:
    push de
    ld a, [wUnk_C725]
    call wUnk_DDD6
    ld a, [wUnk_C726]
    and $0F
    rst $28
    ld a, [hl]
    pop de
    ret


Call_000_2FEE:
    or a
    jr z, jr_000_3002

    dec a
    push bc
    ld c, a
    ld b, $00
    call wUnk_DDB7
    ld hl, wUnk_C783
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, bc

Call_000_3000:
    pop bc
    ret


jr_000_3002:
    ld hl, $5311
    ret


Call_000_3006:
    ld c, a
    ld b, $00
    call wUnk_DDB7
    add a
    add a
    rst $38
    ld a, [wUnk_C786]
    ld h, a
    ld a, [wUnk_C785]
    ld l, a
    add hl, bc
    ld b, h
    ld c, l
    ret


Call_000_301B:
    ld a, [wUnk_C775]

Call_000_301E:
    and $0F
    ld l, a
    ld a, [wUnk_C77C]
    swap a
    and $F0
    or l
    add $20
    ld l, a
    ld h, $CE
    ld a, [hl]
    ret


Call_000_3030:
    swap a
    and $F0
    ld l, a
    ld a, [wUnk_C775]
    and $0F
    or l
    add $20
    ld l, a
    ld h, $CE
    ld a, [hl]
    ret


Call_000_3042:
    ld a, b
    ld hl, wUnk_C774
    add [hl]
    rrca
    rrca
    rrca
    and $1F
    ld b, a
    ld a, c
    ld hl, wUnk_C77B
    add [hl]
    ld h, $00
    sla a
    rl h
    sla a
    rl h
    and $E0
    add b
    ld l, a
    ld bc, $9800
    add hl, bc
    res 2, h
    ret


Call_000_3067:
Jump_000_3067:
    push hl
    ld hl, wUnk_C000
    ld bc, $0100
    xor a
    call wUnk_DEC9
    pop hl
    ld de, wUnk_C000

jr_000_3076:
    ld a, [hl+]
    cp $FF
    ret z

    ld b, a

jr_000_307B:
    ld a, [hl]
    ld [de], a
    inc de
    dec b
    jr nz, jr_000_307B

    inc hl
    jr jr_000_3076

    db $02, $05, $DC, $51, $80, $00, $7A, $02, $04, $90, $41, $FA, $00, $02, $02, $04
    db $B0, $47, $FC, $00, $04, $00, $02, $05, $DC, $59, $00, $01, $0A, $02, $05, $3C
    db $5B, $0A, $01, $12, $02, $05, $BC, $5D, $1C, $01, $10, $02, $05, $7C, $5A, $30
    db $01, $08, $02, $05, $FC, $5A, $38, $01, $04, $02, $05, $5C, $5C, $3C, $01, $16
    db $00, $02, $05, $DC, $59, $00, $01, $0A, $02, $05, $3C, $5B, $0A, $01, $12, $02
    db $05, $BC, $5E, $1C, $01, $12, $02, $05, $DC, $5F, $2E, $01, $08, $02, $05, $5C
    db $60, $36, $01, $14, $02, $05, $9C, $61, $4A, $01, $1E, $00, $02, $05, $DC, $59
    db $00, $01, $0A, $02, $05, $DC, $6A, $0A, $01, $02, $02, $05, $3C, $6B, $0C, $01
    db $04, $02, $05, $BC, $5D, $1C, $01, $10, $02, $05, $DC, $5F, $2E, $01, $08, $02
    db $05, $5C, $60, $36, $01, $14, $02, $05, $7C, $63, $4A, $01, $14, $00, $02, $05
    db $DC, $59, $00, $01, $0A, $02, $05, $BC, $64, $0A, $01, $12, $02, $05, $5C, $67
    db $1C, $01, $10, $02, $05, $FC, $6A, $2C, $01, $04, $02, $05, $DC, $65, $30, $01
    db $18, $02, $05, $9C, $61, $4A, $01, $1E, $00, $02, $05, $DC, $59, $00, $01, $0A
    db $02, $05, $BC, $64, $0A, $01, $12, $02, $05, $5C, $68, $1C, $01, $14, $02, $05
    db $DC, $65, $30, $01, $18, $02, $05, $9C, $61, $4A, $01, $1E, $00

    ld [bc], a
    dec b
    call c, Call_000_0059
    ld bc, $020A
    dec b
    inc a
    ld e, e
    ld a, [bc]
    ld bc, $0212
    dec b
    ld e, h
    ld l, b
    inc e
    ld bc, $0214
    dec b
    ld a, h
    ld e, d
    jr nc, @+$03

    ld [$0502], sp
    db $FC
    ld e, d
    jr c, jr_000_3194

    inc b

jr_000_3194:
    ld [bc], a
    dec b
    ld e, h
    ld e, h
    inc a
    ld bc, $0016

    db $02, $04, $F0, $47, $00, $01, $4A, $02, $04, $70, $45, $74, $01, $0C, $00, $02
    db $04, $28, $50, $00, $01, $44, $02, $04, $B0, $44, $74, $01, $0C, $00, $02, $04
    db $90, $4C, $B0, $01, $3A, $00, $02, $04, $68, $54, $00, $01, $4C, $00, $02, $04
    db $28, $59, $00, $01, $46, $02, $04, $F0, $43, $74, $01, $0C, $00, $02, $04, $88
    db $5D, $00, $01, $34, $00, $02, $05, $DC, $59, $00, $01, $0A, $02, $04, $C8, $60
    db $0A, $01, $5A, $02, $04, $30, $46, $74, $01, $0C, $00, $02, $04, $68, $66, $00
    db $01, $2A, $00, $02, $04, $08, $69, $00, $01, $5A, $00

    ld [bc], a
    inc b
    xor b
    ld l, [hl]
    nop
    ld bc, $025A
    inc b
    ldh a, [rDMA]
    ld [hl], h
    ld bc, $000C

    db $02, $05, $9C, $69, $60, $01, $14, $00, $02, $07, $80, $40, $89, $01, $04, $00
    db $02, $07, $40, $40, $89, $01, $04, $00, $02, $07, $00, $40, $89, $01, $04, $00
    db $02, $07, $C0, $40, $89, $01, $04, $00, $02, $07, $00, $41, $89, $01, $04, $00

    ld a, [wUnk_C521]
    rst $00

    db $56, $32, $5E, $32, $99, $32, $E5, $32, $5A, $33, $75, $33

    ld a, $18
    call Call_000_0629
    jp Jump_000_0BD6


    call Call_000_063A
    ret c

    call Call_000_057C
    call Call_000_0597
    ld a, $00
    call Call_000_0875
    ld a, $5D
    call Call_000_0875
    ld a, $08
    ld [wUnk_C731], a
    ld a, [wUnk_C73D]
    or a
    jp z, Jump_000_0BD6

    ld hl, $38DB
    call Call_000_373C
    ld bc, $0004
    call Call_000_38FB
    ld hl, $37DB
    call Call_000_373C
    ld bc, $0004
    call Call_000_38FB
    jp Jump_000_0BD6


    ld hl, wUnk_C731
    dec [hl]
    ret nz

    ld hl, $33B1
    call Call_000_2E53
    ld hl, $6116
    call Call_000_16DF
    ld de, $9A40
    ld a, e
    ld [wUnk_C785], a
    ld a, d
    ld [wUnk_C786], a
    ld hl, $627E
    ld a, l
    ld [wUnk_C783], a
    ld a, h
    ld [wUnk_C784], a
    ld bc, $0014
    call wUnk_DED7
    call Call_000_060B
    ld bc, $003A
    ld a, c
    ld [wUnk_C777], a
    ld a, b
    ld [wUnk_C779], a
    ld a, $04
    ld [wUnk_C731], a
    ld a, $08
    ld [wUnk_C732], a
    xor a
    ld [wUnk_C733], a
    jp Jump_000_0BD6


    ld a, [wJoyInput2]
    and $80
    jp nz, Jump_000_334B

    xor a
    ld [wUnk_C77A], a
    ld hl, wUnk_C777
    call Call_000_1E7A
    ld a, [wUnk_C77A]
    or a
    ret z

    ld hl, hUnk_FF86
    add [hl]
    ld [hl], a
    ld hl, wUnk_C732
    dec [hl]
    ret nz

    ld a, $08
    ld [hl], a
    ld a, [wUnk_C733]
    cp $35
    jp z, Jump_000_3343

    inc a
    ld [wUnk_C733], a
    ld a, [wUnk_C785]
    ld e, a
    ld a, [wUnk_C786]
    ld d, a
    ld a, $20
    rst $30
    res 2, d
    ld a, e
    ld [wUnk_C785], a
    ld a, d
    ld [wUnk_C786], a
    ld a, [wUnk_C783]
    ld l, a
    ld a, [wUnk_C784]
    ld h, a
    ld a, $14
    rst $28
    ld a, l
    ld [wUnk_C783], a
    ld a, h
    ld [wUnk_C784], a
    ld bc, $0014
    jp wUnk_DED7


Jump_000_3343:
    ld a, $50
    ld [wUnk_C731], a
    jp Jump_000_0BD6


Jump_000_334B:
    ld a, $00
    call Call_000_0875
    ld a, $08
    call Call_000_0629
    ld a, $05
    jp Jump_000_0BDA


    ld a, [wJoyInput2]
    or a
    jp nz, Jump_000_0BD6

    ld a, [wUnk_C731]
    dec a
    ld [wUnk_C731], a
    ret nz

    xor a
    ld [wUnk_C725], a
    ld a, $08
    call Call_000_0629
    jp Jump_000_0BD6


    call Call_000_063A
    ret c

    ld a, $00
    call Call_000_0875
    call Call_000_2168
    xor a
    ld [wUnk_C726], a
    ld [wUnk_C728], a
    ld [wUnk_C729], a
    ld [wUnk_C75E], a
    ld [wUnk_C759], a
    ld [wUnk_C75A], a
    ld [wUnk_C75B], a
    ld [wUnk_C753], a
    ld [wUnk_C73C], a
    ld a, $02
    ld [wUnk_C754], a
    ld a, [wUnk_C735]
    or a
    jp z, Jump_000_0BC4

    ld a, $02
    ld [wUnk_C75E], a
    jp Jump_000_0BC4


    db $01, $01, $B6, $66, $80, $01, $80, $01, $01, $A0, $6C, $00, $01, $80, $00

    ld a, [wUnk_C521]
    rst $00

    db $D0, $33, $1A, $34, $72, $34, $82, $34, $CC, $34, $01, $35

    call Call_000_0604
    call Call_000_057C
    xor a
    ldh [hUnk_FF87], a
    ldh [hUnk_FF86], a
    call Call_000_01F4
    call Call_000_05DA
    ld a, $20
    ld [wUnk_C731], a
    ld a, [wUnk_C73D]
    or a
    jp z, Jump_000_0BD6

    ld de, wUnk_C600
    call Call_000_2183
    ld de, wUnk_C700
    call Call_000_2183
    ld de, wUnk_C800
    call Call_000_2183
    ld hl, $38DB
    call Call_000_373C
    ld bc, $0004
    call Call_000_38FB
    ld hl, $37EB
    call Call_000_373C
    ld bc, $0004
    call Call_000_38FB
    jp Jump_000_0BD6


    ld a, [wUnk_C731]
    dec a
    ld [wUnk_C731], a
    ret nz

    call Call_000_057C
    ld de, wUnk_C500
    ld bc, $596C
    call Call_000_2F92
    ld a, [wUnk_C725]
    cp $03
    jr z, jr_000_344D

Call_000_3435:
    ld bc, $007B
    call Call_000_2098
    ld a, $01
    ld [wUnk_C50E], a
    ld bc, $0090
    ld a, c
    ld [wUnk_C509], a
    ld a, b
    ld [wUnk_C50A], a
    jr jr_000_3463

jr_000_344D:
    ld bc, $A07B
    call Call_000_2098
    ld a, $21
    ld [wUnk_C50E], a
    ld bc, $FF70
    ld a, c
    ld [wUnk_C509], a
    ld a, b
    ld [wUnk_C50A], a

jr_000_3463:
    call Call_000_3518
    call Call_000_035F
    call $4000
    call Call_000_0343
    jp Jump_000_0BD6


    call Call_000_060B
    call Call_000_05DA
    call Call_000_05FD
    xor a
    ld [wUnk_C550], a
    jp Jump_000_0BD6


    ld a, [wJoyInput2]
    and $80
    jp nz, Jump_000_34C4

    call Call_000_035F
    call $4000
    call Call_000_0343
    ld de, wUnk_C500
    ld hl, $596C
    call Call_000_2F9F
    ld a, [wUnk_C50D]
    cp $01
    jr nz, jr_000_34AF

    ld a, [wUnk_C510]
    cp $0C
    jr nz, jr_000_34AF

    ld a, $3E
    call Call_000_0875

jr_000_34AF:
    ld hl, wUnk_C500
    call Call_000_20C4
    ld a, [wUnk_C50C]
    cp $F8
    ret nc

    cp $A8
    ret c

    ld de, wUnk_C500
    call Call_000_2183

Jump_000_34C4:
    ld a, $08
    call Call_000_0629
    jp Jump_000_0BD6


    call Call_000_063A
    ret c

    ld a, [wUnk_C725]
    cp $06
    jr z, jr_000_34EA

    inc a
    ld [wUnk_C725], a
    xor a
    ld [wUnk_C726], a
    ld [wUnk_C73B], a
    ld a, $20
    ld [wUnk_C731], a
    jp Jump_000_0BD6


jr_000_34EA:
    ld a, $05
    ld [wUnk_C725], a
    ld a, $03
    ld [wUnk_C726], a
    ld a, $01
    ld [wUnk_C73B], a
    ld a, $20
    ld [wUnk_C731], a
    jp Jump_000_0BD6


    ld a, [wUnk_C731]
    dec a
    ld [wUnk_C731], a
    ret nz

    xor a
    ld [wUnk_C728], a
    ld [wUnk_C729], a
    ld [wUnk_C737], a
    ld a, $06
    jp Jump_000_0BCC


Call_000_3518:
    ld hl, $3084
    call Call_000_2E53
    ld a, [wUnk_C725]
    ld hl, $354A
    call wUnk_DDD6
    call Call_000_2E53
    call Call_000_0382
    ld a, [wUnk_C725]
    ld hl, $353C
    call wUnk_DDD6
    call Call_000_16DF
    jp Jump_000_0343


    db $AA, $71, $12, $73, $7A, $74, $E2, $75, $4A, $77

    or d
    ld a, b

    db $1A, $7A, $58, $35, $67, $35, $76, $35, $85, $35, $94, $35

    and e
    dec [hl]

    db $B2, $35, $01, $0D, $00, $40, $80, $01, $80, $01, $0D, $8D, $45, $00, $01, $38
    db $00, $01, $0D, $22, $48, $80, $01, $80, $01, $0D, $AE, $4D, $00, $01, $39, $00
    db $01, $0D, $4A, $50, $80, $01, $80, $01, $0D, $D6, $55, $00, $01, $39, $00, $01
    db $0D, $71, $58, $80, $01, $80, $01, $0D, $FB, $5D, $00, $01, $39, $00, $01, $0D
    db $95, $60, $80, $01, $80, $01, $0D, $30, $66, $00, $01, $41, $00

    ld bc, $F80D
    ld l, b
    add b
    ld bc, $0180
    dec c
    sbc l
    ld l, [hl]
    nop
    ld bc, $0052

    db $01, $0D, $FD, $71, $80, $01, $80, $01, $0D, $A3, $77, $00, $01, $52, $00

Call_000_35C1:
    ld [wUnk_C7D0], a
    ld a, [wUnk_C725]
    ld hl, $35E6
    call wUnk_DDD6
    call Call_000_2E53
    ld hl, $3216
    call Call_000_2E53
    ld a, [wUnk_C7D0]
    cp $03
    jp z, Jump_000_0355

    cp $0B
    jp z, Jump_000_037D

    jp Jump_000_0350


    sbc h
    db $31

    db $9C, $31, $AB, $31, $CA, $31, $E1, $31, $FF, $31

    rlca
    ld [hl-], a

Call_000_35F4:
    ld hl, $31BA
    call Call_000_2E53
    jp Jump_000_037D


Call_000_35FD:
    ld a, [wUnk_C725]
    ld hl, $360C
    call wUnk_DDD6
    call Call_000_2E53
    jp Jump_000_0355


    sbc h
    ld sp, $319C
    xor e
    db $31

    db $C2, $31, $D9, $31, $F7, $31

Call_000_3618:
    ld hl, $30F0
    call Call_000_2E53
    ld a, $03
    ld [wUnk_C736], a
    jp Jump_000_0350


Call_000_3626:
    ld hl, $3122
    call Call_000_2E53
    ld a, $04
    ld [wUnk_C736], a
    jp Jump_000_0350


Call_000_3634:
    ld hl, $314D
    call Call_000_2E53
    ld a, $05
    ld [wUnk_C736], a
    jp Jump_000_0350


Call_000_3642:
    ld a, [wUnk_C725]
    ld hl, $365E
    call wUnk_DDD6
    call Call_000_2E53
    ld a, [wUnk_C725]
    ld hl, $366C
    rst $28
    ld b, a
    ld a, [wUnk_C755]
    or b
    ld [wUnk_C755], a
    ret


    ld e, $32

    db $1E, $32, $26, $32, $2E, $32, $36, $32, $3E, $32

    ld a, $32
    nop
    ld bc, $0402
    ld [$1020], sp

Call_000_3673:
    ld a, [wUnk_C736]
    ld hl, $3682
    call wUnk_DDD6
    call Call_000_2E53
    jp Jump_000_037D


    sbc d
    db $30

    db $9A, $30, $C5, $30

    ldh a, [$FF30]

    db $22, $31, $4D, $31

    ld [hl], c
    ld sp, $319C
    xor e
    ld sp, $31C2
    jp z, wUnk_D931

    ld sp, $31E1
    rst $30
    ld sp, $31FF
    rlca
    ld [hl-], a

Call_000_36A2:
    ld hl, $36A8
    jp Jump_000_2E53


    ld [bc], a
    add hl, bc
    cp c
    ld c, b
    nop
    ld bc, $0040

Call_000_36B0:
    ld a, [wUnk_D02A]
    cp $02
    jr z, jr_000_36D4

    cp $03
    jr z, jr_000_36E9

    cp $04
    jr z, jr_000_36E9

    ld hl, $3084
    call Call_000_2E53
    ld hl, $31E1
    call Call_000_2E53
    ld hl, $1A81
    call Call_000_2E53
    jp Jump_000_0373


jr_000_36D4:
    ld hl, $3084
    call Call_000_2E53
    ld hl, $31FF
    call Call_000_2E53
    ld hl, $18EF
    call Call_000_2E53
    jp Jump_000_0373


jr_000_36E9:
    ld hl, $3084
    call Call_000_2E53
    ld hl, $31FF
    call Call_000_2E53
    ld hl, $3725
    call Call_000_2E53
    ld hl, $372D
    call Call_000_3067
    xor a
    ldh [hUnk_FF87], a
    ldh [hUnk_FF86], a
    call Call_000_1E49
    call Call_000_1E51
    call Call_000_037D
    ld hl, wUnk_C100
    ld bc, $0400
    xor a
    call wUnk_DEC9
    call Call_000_057C
    ld hl, $63D2
    call Call_000_253E
    jp Jump_000_0373


    db $02, $0B, $12, $65, $9A, $01, $63, $00, $1A, $00, $03, $01, $02, $00, $01, $01
    db $44, $00, $02, $01, $17, $00, $FF

Call_000_373C:
    ld a, [hl]
    and $07
    ret z

    ld b, a
    ld c, $00

jr_000_3743:
    push bc
    ld a, $00
    ldh [c], a
    ld a, $30
    ldh [c], a
    ld b, $10

jr_000_374C:
    ld e, $08
    ld a, [hl+]
    ld d, a

jr_000_3750:
    bit 0, d
    ld a, $10
    jr nz, jr_000_3758

    ld a, $20

jr_000_3758:
    ldh [c], a
    ld a, $30
    ldh [c], a
    rr d
    dec e
    jr nz, jr_000_3750

    dec b
    jr nz, jr_000_374C

    ld a, $20
    ldh [c], a
    ld a, $30
    ldh [c], a
    pop bc
    dec b
    ret z

    call Call_000_3772
    jr jr_000_3743

Call_000_3772:
    ld de, $1B58

jr_000_3775:
    nop
    nop
    nop
    dec de
    ld a, d
    or e
    jr nz, jr_000_3775

    ret


Call_000_377E:
    di
    push de
    call Call_000_390C
    ld a, $E4
    ldh [rBGP], a
    ld de, $8800
    ld bc, $1000
    call wUnk_DEB9
    ld hl, $9800
    ld de, $000C
    ld a, $80
    ld c, $0D

jr_000_379A:
    ld b, $14

jr_000_379C:
    ld [hl+], a
    inc a
    dec b
    jr nz, jr_000_379C

    add hl, de
    dec c
    jr nz, jr_000_379A

    ld a, $81
    ldh [rLCDC], a
    ld bc, $0005
    call Call_000_38FB
    pop hl
    call Call_000_373C
    ld bc, $0006
    call Call_000_38FB
    ei
    ret


    db $51, $04, $00, $01, $00, $02, $00, $03, $00, $C0, $00, $00, $00, $00, $00, $00

    ld d, c
    ld [$0100], sp
    nop
    ld [bc], a
    nop
    inc bc
    nop
    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    ld d, c
    ld b, $00
    ld bc, $0200
    nop
    inc bc
    nop
    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    ld d, c
    rlca
    nop
    ld bc, $0200
    nop
    inc bc
    nop
    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    ld d, c
    nop
    nop
    dec b
    nop
    ld [bc], a
    nop
    inc bc
    nop
    jp nz, RST_00

    nop
    nop
    nop
    nop
    ld d, c
    nop
    nop
    add hl, bc
    nop
    ld [bc], a
    nop
    inc bc
    nop
    jp nz, RST_00

    nop
    nop
    nop
    nop
    ld d, c
    nop
    nop
    rlca
    nop
    ld [bc], a
    nop
    inc bc
    nop
    jp nz, RST_00

    nop
    nop
    nop
    nop
    ld d, c
    nop
    nop
    ld b, $00
    ld [bc], a
    nop
    inc bc
    nop
    jp nz, RST_00

    nop
    nop
    nop
    nop
    ld d, c

Call_000_383C:
    nop
    nop
    ld [$0200], sp
    nop
    inc bc
    nop
    jp nz, RST_00

    nop
    nop
    nop
    nop
    ld d, c
    nop
    nop
    inc b
    nop
    ld [bc], a
    nop
    inc bc
    nop
    jp nz, RST_00

    nop
    nop
    nop
    nop
    ld d, c
    ld a, [bc]
    nop
    ld bc, $0200
    nop
    inc bc
    nop
    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    ld d, c
    dec bc
    nop
    inc c
    nop
    ld [bc], a
    nop
    inc bc
    nop
    pop bc
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, c
    inc b
    nop
    dec c
    nop
    ld c, $00
    inc bc
    nop
    call nz, RST_00
    nop
    nop
    nop
    nop
    ld d, c
    rrca
    nop
    stop
    nop
    nop
    nop
    nop
    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    ld d, c
    rrca
    nop
    stop
    nop
    nop
    nop
    nop
    push bc
    nop
    nop
    nop
    nop
    nop
    nop
    or c
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
    or c
    ld b, d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    or c
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
    nop
    nop
    nop
    nop

    db $B9, $01, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00

    cp c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_000_38FB:
jr_000_38FB:
    ld de, $06D6

jr_000_38FE:
    nop
    nop
    nop
    dec de
    ld a, d
    or e
    jr nz, jr_000_38FE

    dec bc
    ld a, b
    or c
    jr nz, jr_000_38FB

    ret


Call_000_390C:
    ldh a, [rIE]
    ldh [hUnk_FF80], a
    res 0, a
    ldh [rIE], a

jr_000_3914:
    ldh a, [rLY]
    cp $91
    jr nz, jr_000_3914

    ldh a, [rLCDC]
    and $7F
    ldh [rLCDC], a
    ldh a, [hUnk_FF80]
    ldh [rIE], a
    ret


Call_000_3925:
    ld a, [wUnk_C73D]
    or a
    ret z

    ld hl, $38DB
    call Call_000_373C
    ld bc, $0004
    call Call_000_38FB
    ld a, [wUnk_C725]
    rst $00
    ld c, b
    add hl, sp
    ld c, b
    add hl, sp
    ld d, l
    add hl, sp
    ld h, d
    add hl, sp
    ld l, a
    add hl, sp
    ld a, h
    add hl, sp
    adc c
    add hl, sp
    ld hl, $37FB
    call Call_000_373C
    ld bc, $0004
    call Call_000_38FB
    ret


    ld hl, $380B
    call Call_000_373C
    ld bc, $0004
    call Call_000_38FB
    ret


    ld hl, $381B
    call Call_000_373C
    ld bc, $0004
    call Call_000_38FB
    ret


    ld hl, $382B
    call Call_000_373C
    ld bc, $0004
    call Call_000_38FB
    ret


    ld hl, $383B
    call Call_000_373C
    ld bc, $0004
    call Call_000_38FB
    ret


    ld hl, $384B
    call Call_000_373C
    ld bc, $0004
    call Call_000_38FB
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_000_39FD:
    rst $38
    rst $38

Jump_000_39FF:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_000_3B02:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_000_3F03:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_000_3F1F:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_000_3F3F:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_000_3F4E:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_000_3FEF:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
