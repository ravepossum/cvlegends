; Disassembly of "cvlegends.gb"
; This file was created with:
; mgbdis v2.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $001", ROMX

    ld hl, $0000
    call Call_000_05AB
    ld hl, $0750
    jp Jump_000_05B2


    call Call_001_404F
    ld hl, $9C00
    ld bc, $0400
    ld a, $01
    call $DEE8
    ld hl, $9800
    ld bc, $0400
    ld a, $01
    call $DEE8
    ld hl, $41E2
    ld de, $9940
    ld bc, $0060
    call $DED7
    ld a, $E1
    ldh [$FF84], a
    ld a, $E4
    call Call_000_061C
    ret


    ld a, [$C550]
    inc a
    ld [$C550], a
    rra
    ret nc

    ldh a, [$FF86]
    inc a
    ldh [$FF86], a
    cp $16
    scf
    ret z

    or a
    ret


Call_001_404F:
    ld hl, $4072
    ld de, $9000
    ld bc, $0170

jr_001_4058:
    ld a, [hl+]
    call Call_001_4065
    call Call_001_4065
    dec bc
    ld a, c
    or b
    jr nz, jr_001_4058

    ret


Call_001_4065:
    di
    push af

jr_001_4067:
    ldh a, [rSTAT]
    bit 1, a
    jr nz, jr_001_4067

    pop af
    ld [de], a
    ei
    inc de
    ret


    db $00, $00, $00, $00, $00, $00, $00, $00, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    db $FF, $FF, $FF, $F8, $F8, $F8, $F0, $F0, $FF, $FF, $FF, $3E, $3C, $38, $70, $60
    db $FF, $FF, $FF, $06, $0C, $18, $38, $70, $FF, $FF, $80, $00, $00, $00, $1C, $3E
    db $FF, $FF, $FF, $3F, $1F, $1F, $0E, $0E, $FF, $FF, $FF, $00, $00, $00, $00, $00
    db $FF, $FF, $FF, $F8, $F8, $F0, $F0, $F0, $FF, $FF, $FF, $3F, $3F, $3E, $7E, $7C
    db $FF, $FF, $FF, $00, $00, $00, $00, $00, $FF, $FF, $FF, $7F, $7F, $7F, $7E, $7E
    db $FF, $FF, $FF, $00, $00, $00, $00, $00, $FF, $FF, $FF, $78, $78, $70, $70, $60
    db $FF, $FF, $FF, $03, $03, $03, $07, $07, $FF, $FF, $FF, $83, $83, $83, $07, $07
    db $F0, $E0, $E0, $E0, $C0, $C1, $C1, $81, $40, $81, $03, $07, $07, $03, $03, $81
    db $F0, $E0, $E0, $E0, $C0, $C0, $C1, $C1, $7E, $7E, $7C, $FC, $FC, $F8, $F8, $F8
    db $0E, $0C, $0C, $0C, $18, $18, $18, $30, $00, $00, $10, $10, $10, $30, $30, $30
    db $60, $60, $60, $40, $41, $41, $01, $03, $78, $F8, $F0, $F0, $E0, $C0, $C0, $80
    db $10, $30, $30, $70, $F0, $00, $00, $00, $7E, $7C, $7C, $7C, $78, $78, $78, $70
    db $00, $10, $10, $10, $30, $30, $30, $60, $E0, $C2, $C2, $84, $84, $0C, $0C, $18
    db $07, $0E, $0E, $0E, $1C, $1C, $1C, $38, $07, $0F, $0F, $0F, $1F, $1E, $1D, $3A
    db $83, $83, $03, $07, $07, $FF, $FF, $FF, $81, $C0, $C0, $E0, $E0, $FF, $FF, $FF
    db $C1, $C0, $E0, $60, $70, $FC, $FF, $FF, $F0, $E0, $00, $00, $01, $07, $FF, $FF
    db $30, $70, $60, $E0, $E0, $FF, $FF, $FF, $78, $78, $78, $F8, $F8, $FF, $FF, $FF
    db $03, $03, $06, $06, $04, $FF, $FF, $FF, $80, $03, $07, $07, $0F, $FF, $FF, $FF
    db $00, $F0, $F0, $F0, $F0, $FF, $FF, $FF, $70, $70, $60, $60, $60, $FF, $FF, $FF
    db $60, $60, $E0, $E0, $E0, $FF, $FF, $FF, $18, $38, $30, $70, $70, $FF, $FF, $FF
    db $38, $38, $70, $70, $70, $FF, $FF, $FF, $3A, $3A, $7A, $7D, $7E, $FF, $FF, $FF
    db $FF, $FF, $FF, $FF, $FF, $1F, $EF, $17, $D7, $37, $D7, $EF, $1F, $FF, $FF, $FF
    db $01, $01, $01, $02, $03, $04, $05, $06, $07, $08, $09, $0A, $0B, $0C, $0D, $0E
    db $0F, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $10, $11, $12, $13, $14, $15, $16, $17, $18, $19, $1A, $1B, $1C
    db $1D, $2C, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $1E, $1F, $20, $21, $22, $23, $24, $25, $26, $27, $28, $29, $2A
    db $2B, $2D, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01

    ld hl, $0000
    call Call_000_05AB
    ld hl, $0720
    call Call_000_05B2
    ld hl, $4292
    call Call_000_2E59
    ld hl, $4602
    call Call_000_2E59
    ld hl, $9C00
    ld bc, $0400
    xor a
    call $DEE8
    ld a, [$C73D]
    or a
    ret z

    ld hl, $38DB
    call Call_000_373C
    ld bc, $0004
    call Call_000_38FB
    ld hl, $386B
    call Call_000_373C
    ld bc, $0004
    call Call_000_38FB
    ret


    ld a, [$C550]
    rra
    ret nc

    ldh a, [$FF8B]
    inc a
    ldh [$FF8B], a
    cp $90
    scf
    ret z

    or a
    ret


    db $01, $01, $9A, $42, $80, $01, $4B, $00, $FD, $00, $DE, $75, $02, $02, $04, $04
    db $0C, $18, $FD, $1C, $DE, $66, $01, $05, $03, $0A, $07, $0F, $FD, $1E, $DE, $61
    db $40, $20, $00, $C0, $C0, $80, $BF, $01, $81, $03, $03, $06, $07, $DE, $64, $40
    db $EF, $C0, $80, $00, $80, $FE, $67, $01, $03, $03, $FF, $07, $07, $0F, $0F, $1F
    db $1F, $3F, $78, $FF, $38, $F8, $70, $60, $F0, $E0, $E1, $C1, $FF, $E3, $83, $C7
    db $07, $8F, $0F, $1F, $1C, $FF, $3E, $3C, $7C, $7C, $F8, $F0, $F8, $E0, $FF, $F0
    db $E1, $E1, $C3, $E3, $87, $C7, $0C, $FF, $0E, $1E, $1C, $38, $3C, $70, $78, $F0
    db $FB, $F0, $E0, $43, $00, $C3, $C3, $00, $02, $06, $FF, $04, $0C, $0C, $18, $18
    db $78, $30, $F0, $DF, $70, $F0, $E0, $C0, $E1, $DE, $62, $04, $08, $FF, $08, $30
    db $18, $70, $30, $60, $E0, $C0, $7D, $E0, $DE, $68, $10, $20, $20, $E0, $60, $DE
    db $66, $7F, $04, $00, $08, $38, $10, $70, $30, $2D, $09, $FF, $0E, $0F, $3C, $1E
    db $20, $20, $60, $40, $ED, $80, $15, $00, $00, $80, $29, $07, $00, $01, $03, $BF
    db $01, $07, $03, $0F, $07, $1F, $3A, $00, $3E, $FF, $7F, $7C, $FE, $FA, $FC, $F5
    db $F8, $F0, $FF, $F9, $E1, $F3, $C7, $E3, $8F, $C7, $1F, $FF, $3F, $3F, $7F, $FE
    db $7E, $7E, $FC, $FC, $7E, $E5, $00, $E3, $F1, $C1, $E3, $0F, $8F, $DC, $00, $FF
    db $3F, $7C, $7E, $7C, $FC, $F8, $F8, $F0, $EE, $57, $00, $C7, $87, $8F, $39, $01
    db $3E, $7E, $3E, $7E, $51, $00, $F8, $F0, $F1, $81, $C3, $87, $0F, $20, $DF, $1E
    db $1F, $3C, $3E, $7E, $51, $02, $81, $C0, $17, $81, $83, $83, $37, $00, $0E, $25
    db $20, $18, $21, $15, $00, $2F, $C1, $81, $83, $03, $38, $02, $3E, $27, $20, $8A
    db $01, $7F, $C0, $C1, $C3, $83, $07, $87, $0F, $39, $02, $9F, $7C, $3C, $78, $FC
    db $F0, $09, $20, $7A, $00, $E0, $2B, $80, $C0, $C7, $05, $01, $31, $02, $07, $36
    db $00, $EE, $01, $F3, $7E, $FE, $F5, $00, $09, $21, $E0, $C1, $C1, $0F, $7E, $4B
    db $00, $1E, $3F, $3C, $3E, $38, $7C, $79, $00, $EF, $E0, $C0, $C0, $87, $49, $02
    db $1E, $1E, $3C, $FF, $3C, $38, $78, $70, $70, $E0, $E0, $C3, $F8, $1F, $20, $39
    db $00, $3A, $00, $3C, $3E, $78, $3C, $78, $FF, $70, $F1, $E3, $E3, $C3, $87, $C7
    db $8F, $B6, $FF, $00, $1E, $3E, $5E, $20, $78, $E1, $BE, $20, $C7, $FA, $0E, $21
    db $1F, $3B, $00, $3F, $3E, $7E, $F0, $F8, $FE, $CE, $21, $C3, $C7, $87, $CF, $0F
    db $9F, $3F, $3A, $EE, $00, $F8, $61, $20, $F8, $F0, $E1, $FB, $00, $48, $00, $FE
    db $57, $20, $3F, $3F, $7E, $7F, $FC, $FE, $F8, $E0, $07, $22, $9A, $21, $C8, $08
    db $DE, $62, $38, $01, $1C, $1E, $18, $FF, $3C, $30, $38, $60, $70, $20, $40, $00
    db $7F, $80, $81, $83, $02, $03, $02, $04, $DE, $67, $BB, $80, $80, $33, $00, $01
    db $00, $02, $DE, $65, $C0, $E3, $C0, $81, $3F, $45, $33, $42, $7A, $00, $C1, $81
    db $81, $B6, $34, $00, $03, $06, $70, $00, $08, $08, $08, $41, $C1, $B9, $C1, $31
    db $21, $B8, $00, $0E, $1C, $1C, $06, $21, $E0, $DF, $F1, $C3, $E1, $81, $C3, $7A
    db $21, $0F, $0F, $50, $27, $20, $05, $45, $61, $42, $3A, $01, $3E, $17, $20, $78
    db $55, $00, $F2, $50, $20, $80, $C7, $09, $DE, $61, $18, $18, $30, $30, $F2, $BF
    db $00, $40, $DE, $65, $5F, $00, $1C, $18, $38, $20, $37, $20, $40, $40, $C7, $03
    db $03, $03, $6F, $00, $83, $00, $E2, $10, $4C, $07, $64, $41, $65, $40, $1D, $04
    db $BC, $BC, $18, $7F, $10, $30, $21, $61, $41, $C1, $C3, $DE, $63, $3F, $1D, $3D
    db $67, $E3, $82, $C2, $28, $00, $29, $04, $DF, $7F, $7F, $10, $30, $32, $28, $60
    db $3E, $7E, $B8, $48, $45, $25, $00, $C8, $08, $1C, $1C, $0E, $46, $60, $0B, $F7
    db $0B, $1B, $0B, $DE, $63, $78, $78, $10, $10, $ED, $30, $99, $00, $21, $21, $DE
    db $63, $20, $20, $70, $7F, $60, $E0, $70, $B0, $B0, $30, $31, $C8, $45, $AF, $31
    db $71, $41, $E1, $6A, $20, $C0, $DE, $63, $81, $B7, $83, $86, $86, $72, $01, $30
    db $18, $DE, $63, $C7, $FF, $C7, $23, $23, $31, $31, $30, $31, $30, $FE, $AD, $04
    db $9C, $9C, $08, $08, $80, $90, $90, $F3, $90, $E1, $7D, $03, $63, $60, $60, $60
    db $F0, $60, $9F, $A0, $B0, $30, $30, $06, $BE, $60, $71, $00, $0C, $FD, $1E, $0D
    db $02, $00, $00, $C3, $C3, $43, $63, $BF, $21, $63, $21, $31, $78, $78, $0F, $49
    db $0C, $D7, $8C, $71, $F1, $1E, $03, $62, $EE, $60, $40, $60, $8F, $40, $C1, $FF
    db $FF, $34, $49, $02, $01, $2A, $03, $11, $F4, $0E, $00, $56, $60, $30, $D6, $65
    db $A3, $A1, $E2, $C2, $BF, $C6, $C2, $C4, $C4, $4E, $4E, $8E, $03, $F9, $FF, $F1
    db $11, $39, $38, $19, $18, $18, $7C, $FD, $7C, $8E, $03, $87, $87, $83, $83, $82
    db $83, $D7, $86, $C6, $3C, $37, $04, $90, $BB, $60, $30, $30, $EF, $11, $11, $0F
    db $0F, $5E, $64, $70, $60, $60, $6E, $C3, $00, $81, $03, $03, $C8, $64, $C1, $C2
    db $21, $02, $FB, $EE, $EE, $9E, $03, $F8, $F0, $10, $38, $38, $01, $18, $34, $07
    db $01, $01, $0A, $46, $00, $02, $24, $00, $C1, $00, $DE, $7F, $00, $1F, $22, $1F
    db $44, $1F, $63, $1B, $01, $02, $FB, $03, $04, $63, $18, $05, $06, $07, $08, $09
    db $DF, $0A, $0B, $0C, $0D, $0E, $63, $12, $0F, $10, $FF, $11, $12, $13, $14, $15
    db $16, $17, $18, $FE, $63, $12, $19, $1A, $1B, $1C, $1D, $1E, $1F, $EF, $20, $21
    db $22, $23, $63, $12, $24, $25, $26, $7F, $27, $28, $29, $2A, $2B, $2C, $2D, $63
    db $18, $F7, $2E, $2F, $30, $63, $14, $31, $32, $33, $34, $FF, $35, $36, $37, $38
    db $39, $3A, $3B, $3C, $FD, $3D, $63, $10, $3E, $3F, $40, $41, $42, $43, $7F, $44
    db $45, $46, $47, $48, $49, $4A, $63, $1F, $00, $8F, $3F, $B1, $3F, $D3, $3F, $F5
    db $3F, $FC, $23

Jump_001_4685:
    ld hl, $C502
    inc [hl]
    ret


Jump_001_468A:
    ld hl, $C502
    ld [hl], a
    ret


    ld hl, $C501
    inc [hl]
    inc hl
    ld [hl], $00
    ret


Call_001_4697:
Jump_001_4697:
    ld hl, $C501
    ld [hl+], a
    ld [hl], $00
    ret


    ld a, [$C500]
    bit 6, a
    ret nz

    ld a, [$C501]
    rst $00

    db $BA, $46, $3D, $4C, $C2, $4C, $7D, $51, $10, $49, $1C, $53, $9B, $50, $22, $51
    db $74, $49

    call Call_000_0502
    ld a, [$C554]
    rst $00

    db $D3, $46, $F8, $46, $3B, $47, $7F, $47, $C0, $47, $E5, $47, $D3, $48, $96, $49
    db $A3, $49

Call_001_46D3:
Jump_001_46D3:
    ld hl, $C500
    bit 1, [hl]
    jr nz, jr_001_46E9

    call Call_000_1F3D
    jp z, Jump_001_52F2

    ld a, $00
    ld [$C50D], a
    call Call_000_1FCB
    ret


jr_001_46E9:
    call Call_001_4E88
    jp z, Jump_001_52F2

    call Call_000_2035
    ld a, $11
    ld [$C50D], a
    ret


    ld a, [$C73B]
    bit 1, a
    jr nz, jr_001_472F

    ld hl, $C500
    bit 1, [hl]
    jr z, jr_001_4727

    call Call_001_4E88
    jp z, Jump_001_52F2

    call Call_000_2035
    ld a, $11
    ld [$C50D], a
    ld a, [$C555]
    and $10
    jp nz, Jump_001_47E5

    ld a, [$C553]
    and $20
    jp nz, Jump_001_4944

    jp Jump_001_59A8


jr_001_4727:
    call Call_001_4BF5
    ld a, $01
    jp Jump_001_4697


jr_001_472F:
    call Call_001_59A8
    ld a, [$C553]
    and $20
    jp nz, Jump_001_48D3

    ret


    ld a, [$C73B]
    bit 1, a
    jp nz, Jump_001_4773

    ld hl, $C500
    bit 1, [hl]
    jr z, jr_001_476B

    call Call_001_4E88
    jp z, Jump_001_52F2

    call Call_000_2035
    ld a, $11
    ld [$C50D], a
    ld a, [$C555]
    and $10
    jp nz, Jump_001_47E5

    ld a, [$C553]
    and $20
    jp nz, Jump_001_4944

    jp Jump_001_59AE


jr_001_476B:
    call Call_001_4C19
    ld a, $01
    jp Jump_001_4697


Jump_001_4773:
    call Call_001_59AE
    ld a, [$C553]
    and $20
    jp nz, Jump_001_48D3

    ret


    call Call_000_1FCB
    call Call_001_57D0
    ret nz

    ld hl, $C500
    bit 1, [hl]
    jr nz, jr_001_47AA

    call Call_000_1F3D
    jp z, Jump_001_52F2

    ld a, [$C555]
    and $10
    jp nz, Jump_001_47E5

    ld a, [$C555]
    and $20
    ret z

Jump_001_47A1:
    call Call_001_5495
    jp nc, Jump_001_54F1

    jp Jump_001_48D3


jr_001_47AA:
    ld a, [$C555]
    and $20
    jp nz, Jump_001_47A1

    ld a, [$C761]
    bit 0, a
    ret nz

    call Call_001_507F
    ld a, $06
    jp Jump_001_4697


Jump_001_47C0:
    ld hl, $C500
    bit 1, [hl]
    jr nz, jr_001_47CF

    call Call_000_1FCB
    ld a, $02
    jp Jump_001_4697


jr_001_47CF:
    ld a, [$C761]
    or a
    jr nz, jr_001_47DD

    call Call_001_508D
    ld a, $06
    jp Jump_001_4697


jr_001_47DD:
    ld a, $01
    ld [$C762], a
    jp Jump_001_52F2


Call_001_47E5:
Jump_001_47E5:
    call Call_001_57D0
    ret nz

    ld a, [$C73B]
    bit 1, a
    ret nz

    call Call_000_1FCB
    ld hl, $C500
    bit 1, [hl]
    jr z, jr_001_4809

    ld a, [$C737]
    or a
    jp nz, Jump_001_4809

    ld a, [$C513]
    or a
    ld a, $07
    jp z, Jump_000_0BCC

Jump_001_4809:
jr_001_4809:
    ld a, [$C555]
    and $20
    jp nz, Jump_001_48D3

    ld a, [$C555]
    and $10
    ret z

    call Call_000_1FD2
    ld hl, $C500
    bit 1, [hl]
    jr nz, jr_001_4830

    ld a, $1B
    call Call_000_0875
    call Call_001_5159
    ld a, $03
    call Call_001_4697
    inc a
    ret


jr_001_4830:
    ld a, [$C553]
    and $08
    jp nz, Jump_001_5106

    ld a, [$C553]
    and $01
    jr nz, jr_001_4847

    ld a, [$C553]
    and $02
    jr nz, jr_001_4887

    ret


jr_001_4847:
    ld a, [$C725]
    cp $03
    jr z, jr_001_485A

    cp $04
    jr z, jr_001_485A

    ld a, $0C
    call Call_001_5BA5
    ret nz

    jr jr_001_487A

jr_001_485A:
    ld a, $08
    call Call_001_5BA5
    ret nz

    call Call_001_4BF5
    ld a, [$C761]
    or a
    jr z, jr_001_4870

    ld a, $01
    ld [$C762], a
    jr jr_001_48C5

jr_001_4870:
    ld a, [$C50C]
    add $04
    ld [$C50C], a
    jr jr_001_48C5

jr_001_487A:
    call Call_001_4BF5
    ld a, [$C50C]
    add $02
    ld [$C50C], a
    jr jr_001_48C5

jr_001_4887:
    ld a, [$C725]
    cp $03
    jr z, jr_001_489A

    cp $04
    jr z, jr_001_489A

    ld a, $F2
    call Call_001_5BA5
    ret nz

    jr jr_001_48BA

jr_001_489A:
    ld a, $F8
    call Call_001_5BA5
    ret nz

    call Call_001_4C19
    ld a, [$C761]
    or a
    jr z, jr_001_48B0

    ld a, $01
    ld [$C762], a
    jr jr_001_48C5

jr_001_48B0:
    ld a, [$C50C]
    sub $05
    ld [$C50C], a
    jr jr_001_48C5

jr_001_48BA:
    call Call_001_4C19
    ld a, [$C50C]
    sub $06
    ld [$C50C], a

jr_001_48C5:
    ld bc, $FF40
    ld a, c
    ld [$C504], a
    ld a, b
    ld [$C505], a
    jp Jump_001_52F2


Call_001_48D3:
Jump_001_48D3:
    ld hl, $C500
    bit 1, [hl]
    jr nz, jr_001_4944

    call Call_000_1F3D
    jp z, Jump_001_52F2

    call Call_001_57D0
    ret nz

    ld a, [$C555]
    and $20
    jp z, Jump_000_1FCB

    ld a, [$C553]
    and $04
    jr z, jr_001_48F9

    call Call_001_5495
    jp nc, Jump_001_54F1

jr_001_48F9:
    call Call_000_1FCB
    ld de, $C500
    ld bc, $5983
    call Call_000_2F92
    call Call_001_5370
    ld a, $04
    call Call_001_4697
    xor a
    inc a
    ret


    ld hl, $C500
    bit 2, [hl]
    call nz, Call_001_51C2
    ld hl, $C500
    bit 2, [hl]
    call z, Call_000_1FCB
    ld hl, $5983
    ld de, $C500
    call Call_000_2F9F
    ld a, [$C510]
    cp $FF
    ret nz

    ld a, $00
    ld [$C50D], a
    ld a, $03
    call Call_001_4697
    ld hl, $C500
    bit 2, [hl]
    ret nz

    ld a, $00
    jp Jump_001_4697


Jump_001_4944:
jr_001_4944:
    call Call_001_57D0
    ret nz

    ld a, [$C553]
    and $04
    jp z, Jump_001_495D

    ld a, [$C555]
    and $20
    jr z, jr_001_495D

    call Call_001_5495
    jp nc, Jump_001_54F1

Jump_001_495D:
jr_001_495D:
    call Call_000_1FCB
    call Call_000_1FD2
    ld de, $C500
    ld bc, $5991
    call Call_000_2F92
    call Call_001_5370
    ld a, $08
    jp Jump_001_4697


    ld a, [$C513]
    or a
    ld a, $07
    jp z, Jump_000_0BCC

    ld hl, $5991
    ld de, $C500
    call Call_000_2F9F
    ld a, [$C510]
    cp $FF
    ret nz

    ld a, $0F
    ld [$C50D], a
    ld a, $00
    jp Jump_001_4697


    ld a, [$C555]
    and $40
    jp z, Jump_001_46D3

    ld a, $0C
    jp Jump_000_0E35


    jp Jump_001_46D3


    ld hl, $C500
    res 4, [hl]
    call Call_000_1FCB
    call Call_000_1FD2
    ld a, $00
    ld [$C50D], a
    ld a, $01
    ld [$C511], a
    ld a, $0E
    ld [$C513], a
    ld a, $0E
    ld [$C517], a
    ld a, $08
    ld [$C51B], a
    ld hl, $49F0
    call Call_000_2FDE
    ld b, a
    and $7F
    ld [$C507], a
    sla b
    jr c, jr_001_49E5

    ld a, $10
    ld [$C50C], a
    ld a, $01
    ld [$C50E], a
    ret


jr_001_49E5:
    ld a, $90
    ld [$C50C], a
    ld a, $21
    ld [$C50E], a
    ret


    cp $49

    db $FE, $49, $06, $4A, $0C, $4A, $11, $4A, $16, $4A

    dec de
    ld c, d

    db $6B

    ld d, e
    ld d, e
    ld d, e
    inc sp

    db $33

    ld d, e
    ld d, e

    db $6B, $53

    inc sp

    db $53

    ld d, e
    ld d, e

    db $6B, $33, $6B, $33, $33, $EB, $D3

    db $EB

    db $B3, $B3, $53, $33, $53, $53, $6B

    ld l, e
    ld d, e
    ld d, e

    ld a, [$C500]
    bit 6, a
    ret nz

    xor a
    ld [$C75C], a
    ld [$C761], a
    ld a, [$C781]
    or a
    jp nz, Jump_001_4B7C

    call Call_000_1E59
    ld a, [$C507]
    ld hl, $C51B
    sub [hl]
    ld c, a
    ld a, [$C50C]
    ld b, a
    call Call_000_28CD
    call Call_000_1F9F
    ld hl, $C500
    bit 1, [hl]
    jr z, jr_001_4A5A

    ld hl, $C505
    bit 7, [hl]
    jr z, jr_001_4A5A

    bit 0, a
    jp nz, Jump_001_4A5D

jr_001_4A5A:
    call Call_000_1FD9

Jump_001_4A5D:
    call Call_001_59F0
    jp nz, Jump_001_4B63

    ld a, [$C50A]
    bit 7, a
    jp nz, Jump_001_4AF5

    ld a, [$C782]
    or a
    jr nz, jr_001_4AA5

    ld a, [$C780]
    bit 4, a
    jr nz, jr_001_4AA5

    ld a, [$C775]
    inc a
    call Call_000_301E
    bit 4, a
    jr nz, jr_001_4A8E

jr_001_4A83:
    ld a, [$C50C]
    cp $50
    jp c, Jump_001_4AA5

    jp Jump_000_205D


jr_001_4A8E:
    ld a, [$C518]
    or a
    jr z, jr_001_4A83

    ld a, [$C776]
    cp $9F
    jr c, jr_001_4A83

    xor a
    ld [$C770], a
    ld a, $01
    ld [$C772], a
    ret


Jump_001_4AA5:
jr_001_4AA5:
    ld a, [$C50C]
    cp $96
    jr nc, jr_001_4AB2

    ld hl, $C500
    jp Jump_000_20C4


Jump_001_4AB2:
jr_001_4AB2:
    ld a, [$C780]
    bit 6, a
    jp nz, Jump_000_16F3

    ld a, [$C725]
    cp $05
    ret nz

    ld a, [$C77D]
    or a
    ret z

    ld a, [$C77C]
    inc a
    call Call_000_3030
    bit 6, a
    ret z

    ld a, [$C77C]
    inc a
    ld [$C77C], a
    ld a, [$C77B]
    cp $80
    jr nc, jr_001_4AEA

    ld hl, $C507
    ld a, [$C77B]
    sub $80
    add [hl]
    ld [hl], a
    jp Jump_000_16F3


jr_001_4AEA:
    ld hl, $C507
    ld a, [$C77B]
    add [hl]
    ld [hl], a
    jp Jump_000_16F3


Jump_001_4AF5:
    ld a, [$C782]
    or a
    jr nz, jr_001_4B19

    ld a, [$C780]
    bit 5, a
    jr nz, jr_001_4B0C

jr_001_4B02:
    ld a, [$C50C]
    cp $51
    jr nc, jr_001_4B19

    jp Jump_000_205D


jr_001_4B0C:
    ld a, [$C518]
    or a
    jr nz, jr_001_4B26

    ld a, [$C776]
    or a
    jp nz, Jump_000_205D

Jump_001_4B19:
jr_001_4B19:
    ld a, [$C50C]
    cp $0A
    jr c, jr_001_4B3A

    ld hl, $C500
    jp Jump_000_20C4


jr_001_4B26:
    ld a, [$C776]
    or a
    jr z, jr_001_4B19

    cp $02
    jr nc, jr_001_4B02

    xor a
    ld [$C770], a
    ld a, $FF
    ld [$C772], a
    ret


Jump_001_4B3A:
jr_001_4B3A:
    ld a, [$C780]
    bit 7, a
    jp nz, Jump_000_173B

    ld a, [$C77D]
    or a
    ret z

    ld a, [$C77C]
    inc a
    call Call_000_3030
    bit 7, a
    ret z

    ld a, [$C77C]
    inc a
    ld [$C77C], a
    ld hl, $C507
    ld a, [$C77B]
    add [hl]
    ld [hl], a
    jp Jump_000_173B


Jump_001_4B63:
    ld a, [$C50A]
    bit 7, a
    jr nz, jr_001_4B73

    ld a, [$C50C]
    cp $96
    jp nc, Jump_001_4AB2

    ret


jr_001_4B73:
    ld a, [$C50C]
    cp $0A
    jp c, Jump_001_4B3A

    ret


Jump_001_4B7C:
    call Call_000_1E61
    ld hl, $C500
    bit 2, [hl]
    jr nz, jr_001_4BA0

    ld a, [$C507]
    ld hl, $C51B
    sub [hl]
    ld c, a
    ld a, [$C50C]
    ld b, a
    call Call_000_28CD
    ld hl, $C505
    bit 7, [hl]
    jr z, jr_001_4BA0

    bit 0, a
    jr nz, jr_001_4BAB

jr_001_4BA0:
    ld a, [$C505]
    bit 7, a
    call nz, Call_001_4BD2
    call z, Call_001_4BBA

jr_001_4BAB:
    call Call_001_59F0
    ret nz

    ld a, [$C50A]
    bit 7, a
    jp nz, Jump_001_4B19

    jp Jump_001_4AA5


Call_001_4BBA:
    ld a, [$C780]
    bit 4, a
    jp nz, Jump_000_1FD9

    ld a, [$C507]
    cp $40
    jp c, Jump_000_1FD9

    cp $C0
    jp nc, Jump_000_1FD9

    jp Jump_000_206E


Call_001_4BD2:
    ld a, [$C77D]
    or a
    jr nz, jr_001_4BE0

    ld a, [$C780]
    bit 5, a
    jp nz, Jump_000_1FD9

jr_001_4BE0:
    ld a, [$C507]
    cp $41
    jp nc, Jump_000_1FD9

    jp Jump_000_206E


Call_001_4BEB:
    ld de, $C500
    ld bc, $596C
    call Call_000_2F92
    ret


Call_001_4BF5:
Jump_001_4BF5:
    call Call_001_4BEB
    call Call_001_59A8
    ld a, [$C518]
    or a
    jr nz, jr_001_4C0D

    ld bc, $0090
    ld a, c
    ld [$C509], a
    ld a, b
    ld [$C50A], a
    ret


jr_001_4C0D:
    ld bc, $0120
    ld a, c
    ld [$C509], a
    ld a, b
    ld [$C50A], a
    ret


Call_001_4C19:
Jump_001_4C19:
    call Call_001_4BEB
    call Call_001_59AE
    ld a, [$C518]
    or a
    jr nz, jr_001_4C31

    ld bc, $FF70
    ld a, c
    ld [$C509], a
    ld a, b
    ld [$C50A], a
    ret


jr_001_4C31:
    ld bc, $FEE0
    ld a, c
    ld [$C509], a
    ld a, b
    ld [$C50A], a
    ret


    call Call_000_1F3D
    jp z, Jump_001_5311

    call Call_001_47E5
    ret nz

    call Call_001_48D3
    ret nz

    ld a, [$C553]
    and $08
    jp nz, Jump_001_47C0

    ld de, $C500
    ld hl, $596C
    call Call_000_2F9F
    ld a, [$C553]
    and $01
    jp nz, Jump_001_4C74

    ld a, [$C553]
    and $02
    jp nz, Jump_001_4C9B

    call Call_001_599D
    ld a, $00
    jp Jump_001_4697


Jump_001_4C74:
    ld a, [$C518]
    or a
    jr nz, jr_001_4C87

    ld bc, $0090
    ld a, c
    ld [$C509], a
    ld a, b
    ld [$C50A], a
    jr jr_001_4C92

jr_001_4C87:
    ld bc, $0120
    ld a, c
    ld [$C509], a
    ld a, b
    ld [$C50A], a

jr_001_4C92:
    ld a, [$C50E]
    bit 5, a
    ret z

    jp Jump_001_4BF5


Jump_001_4C9B:
    ld a, [$C518]
    or a
    jr nz, jr_001_4CAE

    ld bc, $FF70
    ld a, c
    ld [$C509], a
    ld a, b
    ld [$C50A], a
    jr jr_001_4CB9

jr_001_4CAE:
    ld bc, $FEE0
    ld a, c
    ld [$C509], a
    ld a, b
    ld [$C50A], a

jr_001_4CB9:
    ld a, [$C50E]
    bit 5, a
    ret nz

    jp Jump_001_4C19


    ld a, [$C502]
    rst $00

    db $D2, $4C, $E5, $4C, $8E, $4D, $F8, $4D, $12, $4E, $30, $4E

    ld hl, $C500
    set 3, [hl]
    ld a, [$C507]
    add $06
    ld [$C507], a
    call Call_001_4E4C
    jp Jump_001_4685


    call Call_000_1F3D
    jp z, Jump_001_5311

    call Call_001_4E4C
    ld a, [$C555]
    and $10
    jp nz, Jump_001_4E59

Jump_001_4CF6:
    ld a, [$C555]
    and $20
    ld a, $03
    jp nz, Jump_001_468A

    ld a, [$C553]
    and $01
    jr nz, jr_001_4D1D

    ld a, [$C553]
    and $02
    jr nz, jr_001_4D55

    ld a, [$C553]
    and $08
    ret nz

    call Call_001_59B4
    ret nz

    ld a, $05
    jp Jump_001_468A


Jump_001_4D1D:
jr_001_4D1D:
    ld a, [$C73B]
    bit 1, a
    jr nz, jr_001_4D40

    call Call_001_59A8
    ld de, $C500
    ld bc, $5975
    call Call_000_2F92
    ld bc, $0060
    ld a, c
    ld [$C509], a
    ld a, b
    ld [$C50A], a
    ld a, $02
    jp Jump_001_468A


jr_001_4D40:
    call Call_000_1FCB
    call Call_001_59A8
    ld a, [$C553]
    and $08
    ret nz

    call Call_001_59B4
    ret nz

    ld a, $05
    jp Jump_001_468A


Jump_001_4D55:
jr_001_4D55:
    ld a, [$C73B]
    bit 1, a
    jp nz, Jump_001_4D79

    call Call_001_59AE
    ld de, $C500
    ld bc, $5975
    call Call_000_2F92
    ld bc, $FFA0
    ld a, c
    ld [$C509], a
    ld a, b
    ld [$C50A], a
    ld a, $02
    jp Jump_001_468A


Jump_001_4D79:
    call Call_000_1FCB
    call Call_001_59AE
    ld a, [$C553]
    and $08
    ret nz

    call Call_001_59B4
    ret nz

    ld a, $05
    jp Jump_001_468A


    call Call_000_1F3D
    jp z, Jump_001_5311

    ld a, [$C555]
    and $20
    ld a, $03
    jp nz, Jump_001_468A

    ld de, $C500
    ld hl, $5975
    call Call_000_2F9F
    ld a, [$C553]
    and $01
    call nz, Call_001_4DD0
    ld a, [$C553]
    and $02
    call nz, Call_001_4DE4
    ld a, [$C553]
    and $03
    ld a, $01
    jp z, Jump_001_468A

    ld a, [$C553]
    and $08
    ret nz

    call Call_001_59B4
    ret nz

    ld a, $05
    jp Jump_001_468A


Call_001_4DD0:
    ld bc, $0060
    ld a, c
    ld [$C509], a
    ld a, b
    ld [$C50A], a
    ld a, [$C50E]
    bit 5, a
    ret z

    jp Jump_001_4D1D


Call_001_4DE4:
    ld bc, $FFA0
    ld a, c
    ld [$C509], a
    ld a, b
    ld [$C50A], a
    ld a, [$C50E]
    bit 5, a
    ret nz

    jp Jump_001_4D55


    call Call_001_57D0
    ret nz

    xor a
    ld [$C509], a
    ld [$C50A], a
    ld de, $C500
    ld bc, $598A
    call Call_000_2F92
    call Call_001_5370
    jp Jump_001_4685


    xor a
    ld [$C509], a
    ld [$C50A], a
    ld hl, $598A
    ld de, $C500
    call Call_000_2F9F
    ld a, [$C510]
    cp $FF
    ret nz

    call Call_001_4E4C
    ld a, $01
    jp Jump_001_468A


    ld hl, $C500
    res 3, [hl]
    xor a
    ld [$C509], a
    ld [$C50A], a
    ld a, [$C507]
    sub $06
    ld [$C507], a
    call Call_001_46D3
    ld a, $00
    jp Jump_001_4697


Call_001_4E4C:
    ld a, $06
    ld [$C50D], a
    xor a
    ld [$C509], a
    ld [$C50A], a
    ret


Jump_001_4E59:
    call Call_001_57D0
    ret nz

    ld a, [$C507]
    cp $6A
    jp nc, Jump_001_4CF6

    ld a, $05
    call Call_001_5B59
    jp nz, Jump_001_4CF6

    ld a, $00
    call Call_001_5B59
    jp nz, Jump_001_4CF6

    ld a, $FA
    call Call_001_5B59
    jp nz, Jump_001_4CF6

    ld a, [$C507]
    add $02
    ld [$C507], a
    jp Jump_001_52F2


Call_001_4E88:
    ld hl, $C500
    res 1, [hl]
    ld a, [$C725]
    cp $03
    jp z, Jump_001_4F11

    cp $04
    jp z, Jump_001_4F11

    cp $05
    jp z, Jump_001_4F7B

    cp $06
    jp z, Jump_001_4F7B

    ld a, [$C507]
    ld c, a
    ld a, [$C50C]
    ld b, a
    call Call_000_28CD
    bit 1, a
    jr z, jr_001_4EB8

    ld a, b
    cp $05
    jr nc, jr_001_4F07

jr_001_4EB8:
    ld a, [$C507]
    add $08
    ld c, a
    ld a, [$C50C]
    ld b, a
    call Call_000_28CD
    bit 1, a
    jr z, jr_001_4ECE

    ld a, b
    cp $05
    jr nc, jr_001_4F07

jr_001_4ECE:
    ld a, [$C507]
    add $10
    ld c, a
    ld a, [$C50C]
    ld b, a
    call Call_000_28CD
    bit 1, a
    ret z

    ld a, b
    cp $05
    jr nc, jr_001_4F07

    xor a
    ret


Jump_001_4EE5:
    ld a, [$C507]
    cp $08
    jr c, jr_001_4EF7

    cp $E0
    jr nc, jr_001_4EF7

    cp $80
    jp nc, Jump_001_4EFC

    jr jr_001_4EFF

jr_001_4EF7:
    call Call_000_1785
    jr jr_001_4EFF

Jump_001_4EFC:
    call Call_000_1819

jr_001_4EFF:
    ld hl, $C500
    set 1, [hl]
    bit 1, [hl]
    ret


jr_001_4F07:
    ld a, [$C507]
    cp $80
    jp nc, Jump_001_4EFC

    jr jr_001_4EFF

Jump_001_4F11:
    ld a, [$C507]
    sub $06
    ld c, a
    ld a, [$C50C]
    ld b, a
    call Call_000_28CD
    bit 1, a
    jr z, jr_001_4F28

    ld a, b
    cp $08
    jp c, Jump_001_4EE5

jr_001_4F28:
    ld a, [$C507]
    ld c, a
    ld a, [$C50C]
    ld b, a
    call Call_000_28CD
    bit 1, a
    jr z, jr_001_4F3D

    ld a, b
    cp $08
    jp c, Jump_001_4EE5

jr_001_4F3D:
    ld a, [$C507]
    add $06
    ld c, a
    ld a, [$C50C]
    ld b, a
    call Call_000_28CD
    bit 1, a
    jr z, jr_001_4F54

    ld a, b
    cp $08
    jp c, Jump_001_4EE5

jr_001_4F54:
    ld a, [$C507]
    add $0C
    ld c, a
    ld a, [$C50C]
    ld b, a
    call Call_000_28CD
    bit 1, a
    jr z, jr_001_4F6D

    ld a, b
    cp $08
    jp c, Jump_001_4EE5

    xor a
    ret


jr_001_4F6D:
    ld a, [$C761]
    bit 0, a
    ret z

    ld hl, $C500
    set 1, [hl]
    xor a
    inc a
    ret


Jump_001_4F7B:
    ld a, [$C507]
    ld c, a
    ld a, [$C50C]
    ld b, a
    call Call_000_28CD
    bit 1, a
    jr z, jr_001_4F90

    ld a, b
    cp $06
    jp c, Jump_001_4EE5

jr_001_4F90:
    ld a, [$C507]
    add $08
    ld c, a
    ld a, [$C50C]
    ld b, a
    call Call_000_28CD
    bit 1, a
    jr z, jr_001_4FA7

    ld a, b
    cp $06
    jp c, Jump_001_4EE5

jr_001_4FA7:
    ld a, [$C507]
    add $10
    ld c, a
    ld a, [$C50C]
    ld b, a
    call Call_000_28CD
    bit 1, a
    ret z

    ld a, b
    cp $06
    jp c, Jump_001_4EE5

    xor a
    ret


Jump_001_4FBF:
    ld a, $10
    ld [$C51B], a
    xor a
    ld [$C760], a
    ld a, [$C725]
    cp $03
    jr nc, jr_001_4FD9

    ld a, $06
    sub b
    ld hl, $C50C
    add [hl]
    ld [hl], a
    jr jr_001_4FE1

jr_001_4FD9:
    ld a, $04
    sub b
    ld hl, $C50C
    add [hl]
    ld [hl], a

jr_001_4FE1:
    ld a, [$C507]
    ld [$C7D0], a
    ld a, [$C50C]
    ld b, a
    ld a, [$C507]
    add $06
    ld c, a
    call Call_000_28CD
    bit 0, a
    jp z, Jump_001_5006

    ld a, $20
    sub c
    ld hl, $C507
    add [hl]
    ld [$C7D0], a
    jp Jump_001_505A


Jump_001_5006:
    ld a, [$C50C]
    ld b, a
    ld a, [$C507]
    ld c, a
    call Call_000_28CD
    bit 0, a
    jr z, jr_001_5021

    ld a, $18
    sub c
    ld hl, $C507
    add [hl]
    ld [$C7D0], a
    jr jr_001_505A

jr_001_5021:
    ld a, [$C50C]
    ld b, a
    ld a, [$C507]
    sub $08
    ld c, a
    call Call_000_28CD
    bit 0, a
    jr z, jr_001_503E

    ld a, $0F
    sub c
    ld hl, $C507
    add [hl]
    ld [$C7D0], a
    jr jr_001_505A

jr_001_503E:
    ld a, [$C50C]
    ld b, a
    ld a, [$C507]
    sub $10
    ld c, a
    call Call_000_28CD
    bit 0, a
    jp z, Jump_001_505A

    ld a, $07
    sub c
    ld hl, $C507
    add [hl]
    ld [$C7D0], a

Jump_001_505A:
jr_001_505A:
    ld a, [$C7D0]
    ld [$C507], a
    ld a, $11
    ld [$C50D], a
    call Call_000_1FCB
    call Call_000_1FD2
    ld a, $00
    jp Jump_001_4697


Jump_001_5070:
    ld hl, $C500
    res 2, [hl]
    ld de, $C500
    ld bc, $597E
    call Call_000_2F92
    ret


Call_001_507F:
Jump_001_507F:
    ld bc, $FFA0
    ld a, c
    ld [$C504], a
    ld a, b
    ld [$C505], a
    jp Jump_001_5070


Call_001_508D:
Jump_001_508D:
    ld bc, $0060
    ld a, c
    ld [$C504], a
    ld a, b
    ld [$C505], a
    jp Jump_001_5070


    ld a, [$C553]
    and $10
    jp nz, Jump_001_5106

Jump_001_50A3:
    ld a, [$C737]
    or a
    jp nz, Jump_001_50B3

    ld a, [$C513]
    or a
    ld a, $07
    jp z, Jump_000_0BCC

Jump_001_50B3:
    ld a, [$C507]
    cp $08
    jp c, Jump_000_1785

    cp $E0
    jp nc, Jump_000_1785

    cp $80
    jp nc, Jump_000_17D2

    call Call_001_4E88
    jp z, Jump_001_52F2

    ld a, [$C553]
    and $20
    jp nz, Jump_001_4944

    ld de, $C500
    ld hl, $597E
    call Call_000_2F9F
    ld a, [$C553]
    and $04
    jp nz, Jump_001_50F4

    ld a, [$C553]
    and $08
    jp nz, Jump_001_50FD

    call Call_000_1FD2
    ld a, $00
    jp Jump_001_4697


Jump_001_50F4:
    ld a, [$C505]
    bit 7, a
    ret nz

    jp Jump_001_507F


Jump_001_50FD:
    ld a, [$C505]
    bit 7, a
    ret z

    jp Jump_001_508D


Jump_001_5106:
    ld a, [$C553]
    and $08
    jp z, Jump_001_50A3

    ld a, $0F
    ld [$C50D], a
    ld a, $00
    ld [$C504], a
    ld a, $02
    ld [$C505], a
    ld a, $07
    jp Jump_001_4697


    ld a, [$C737]
    or a
    jp nz, Jump_001_5132

    ld a, [$C513]
    or a
    ld a, $07
    jp z, Jump_000_0BCC

Jump_001_5132:
    ld a, [$C507]
    cp $80
    jp nc, Jump_000_17D2

    call Call_001_4E88
    jp z, Jump_001_52F2

    ld a, [$C553]
    and $08
    jp z, Jump_001_5151

    ld a, [$C553]
    and $10
    jp z, Jump_001_47C0

    ret


Jump_001_5151:
    call Call_000_1FD2
    ld a, $00
    jp Jump_001_4697


Call_001_5159:
    xor a
    ld [$C7EF], a
    xor a
    ld [$C760], a
    ld hl, $C500
    set 2, [hl]
    ld a, $15
    ld [$C50D], a
    ld a, [$C507]
    sub $04
    ld [$C507], a
    ld bc, $FE10
    ld hl, $C504
    ld [hl], c
    inc hl
    ld [hl], b
    ret


    ld hl, $C511
    bit 1, [hl]
    jp nz, Jump_001_5241

    call Call_001_51BC
    call Call_000_1FCB
    ld hl, $C500
    bit 1, [hl]
    ret nz

    ld a, [$C553]
    and $01
    call nz, Call_001_52B0
    ld a, [$C553]
    and $02
    call nz, Call_001_52D1
    ld a, [$C555]
    and $20
    jp nz, Jump_001_521A

    ld hl, $C500
    bit 2, [hl]
    ret nz

    ld a, $00
    ld [$C50D], a
    call Call_000_1FCB
    ld a, $00
    jp Jump_001_4697


Call_001_51BC:
    call Call_001_4E88
    jp nz, Jump_001_4FBF

Call_001_51C2:
    ld a, [$C505]
    bit 7, a
    jr nz, jr_001_51D5

    ld a, [$C507]
    cp $F0
    jr nc, jr_001_51D5

    call Call_000_1F3D
    jr nz, jr_001_51F1

jr_001_51D5:
    ld a, [$C553]
    and $10
    jr nz, jr_001_51E1

jr_001_51DC:
    ld a, $25
    jp Jump_000_1FB9


jr_001_51E1:
    ld a, [$C7EF]
    inc a
    cp $08
    jr z, jr_001_51DC

    ld [$C7EF], a
    ld a, $00
    jp Jump_000_1FB9


jr_001_51F1:
    ld a, [$C72F]
    or a
    jr nz, jr_001_51FE

    push bc
    call Call_001_5AC5
    pop bc
    jr nz, jr_001_51DC

jr_001_51FE:
    ld a, [$C507]
    sub c
    ld [$C507], a
    ld hl, $C500
    res 2, [hl]
    call Call_000_1FD2
    ld a, $1C
    call Call_000_0875
    xor a
    ld [$C762], a
    ld [$C7EF], a
    ret


Jump_001_521A:
    ld a, [$C553]
    and $04
    jp z, Jump_001_5228

    call Call_001_5495
    jp nc, Jump_001_54F1

Jump_001_5228:
    ld hl, $C500
    bit 2, [hl]
    call z, Call_001_46D3
    ld de, $C500
    ld bc, $5983
    call Call_000_2F92
    call Call_001_5370
    ld a, $04
    jp Jump_001_4697


Jump_001_5241:
    ld a, [$C50E]
    bit 5, a
    jr nz, jr_001_5255

    ld bc, $FF70
    ld a, c
    ld [$C509], a
    ld a, b
    ld [$C50A], a
    jr jr_001_5260

jr_001_5255:
    ld bc, $0090
    ld a, c
    ld [$C509], a
    ld a, b
    ld [$C50A], a

jr_001_5260:
    call Call_001_4E88
    jp nz, Jump_001_529C

    ld a, [$C505]
    bit 7, a
    jr nz, jr_001_5272

    call Call_000_1F3D
    jr nz, jr_001_5277

jr_001_5272:
    ld a, $20
    jp Jump_000_1FB9


jr_001_5277:
    ld a, [$C72F]
    or a
    jr nz, jr_001_5284

    push bc
    call Call_001_5B22
    pop bc
    jr nz, jr_001_5272

jr_001_5284:
    ld a, [$C507]
    sub c
    ld [$C507], a
    ld hl, $C511
    res 1, [hl]
    ld hl, $C500
    res 2, [hl]
    xor a
    ld [$C762], a
    jp Jump_000_2035


Jump_001_529C:
    ld hl, $C511
    res 1, [hl]
    ld hl, $C500
    res 2, [hl]
    xor a
    ld [$C762], a
    call Call_000_2035
    jp Jump_001_4FBF


Call_001_52B0:
    call Call_001_59A8
    ld a, [$C518]
    or a
    jr nz, jr_001_52C5

    ld bc, $0090
    ld a, c
    ld [$C509], a
    ld a, b
    ld [$C50A], a
    ret


jr_001_52C5:
    ld bc, $0120
    ld a, c
    ld [$C509], a
    ld a, b
    ld [$C50A], a
    ret


Call_001_52D1:
    call Call_001_59AE
    ld a, [$C518]
    or a
    jr nz, jr_001_52E6

    ld bc, $FF70
    ld a, c
    ld [$C509], a
    ld a, b
    ld [$C50A], a
    ret


jr_001_52E6:
    ld bc, $FEE0
    ld a, c
    ld [$C509], a
    ld a, b
    ld [$C50A], a
    ret


Jump_001_52F2:
jr_001_52F2:
    ld hl, $C500
    res 3, [hl]
    call Call_001_4E88
    jp nz, Jump_001_4FBF

    ld a, $08
    ld [$C51B], a
    ld hl, $C500
    set 2, [hl]
    ld a, $15
    ld [$C50D], a
    ld a, $05
    jp Jump_001_4697


Jump_001_5311:
    xor a
    ld [$C505], a
    ld a, $1E
    ld [$C504], a
    jr jr_001_52F2

    ld a, [$C553]
    and $01
    call nz, Call_001_52B0
    ld a, [$C553]
    and $02
    call nz, Call_001_52D1
    ld a, [$C555]
    and $20
    jp nz, Jump_001_521A

    call Call_001_4E88
    jp nz, Jump_001_4FBF

    call Call_000_1F3D
    jr nz, jr_001_5344

    ld a, $1E
    jp Jump_000_1FB9


jr_001_5344:
    ld a, [$C507]
    sub c
    ld [$C507], a
    ld hl, $C500
    res 2, [hl]
    call Call_000_1FD2
    ld a, $1C
    call Call_000_0875
    xor a
    ld [$C762], a
    jp Jump_000_2035


    ld a, [$C600]
    bit 7, a
    call nz, Call_001_5398
    ld a, [$C700]
    bit 7, a
    call nz, Call_001_543C
    ret


Call_001_5370:
    ld a, [$C75E]
    set 7, a
    ld [$C600], a
    ld hl, $C60E
    set 0, [hl]
    ld a, [$C50E]
    set 0, a
    ld [$C60E], a
    ld a, [$C75E]
    or a
    jp nz, Jump_001_5392

    ld a, $0E
    call Call_000_0875
    ret


Jump_001_5392:
    ld a, $0F
    call Call_000_0875
    ret


Call_001_5398:
    call Call_001_53B1
    ld a, [$C510]
    cp $FF
    ret nz

    ld hl, $C600
    res 7, [hl]
    ld hl, $C60E
    res 0, [hl]
    ld hl, $C611
    res 0, [hl]
    ret


Call_001_53B1:
    ld a, [$C50F]
    rst $00

    db $BB, $53, $D8, $53, $F5, $53

    ld a, $F1
    ld c, $01
    ld hl, $C500
    bit 1, [hl]
    jr z, jr_001_53CA

    ld a, $F2
    ld c, $02

jr_001_53CA:
    ld hl, $C50E
    bit 5, [hl]
    call nz, Call_000_0547
    ld b, a
    ld d, $18
    jp Jump_001_5427


    ld a, $F2
    ld c, $00
    ld hl, $C500
    bit 1, [hl]
    jr z, jr_001_53E7

    ld a, $FB
    ld c, $01

jr_001_53E7:
    ld hl, $C50E
    bit 5, [hl]
    call nz, Call_000_0547
    ld b, a
    ld d, $19
    jp Jump_001_5427


    ld hl, $C611
    set 0, [hl]
    ld a, $0B
    ld c, $03
    ld hl, $C50E
    bit 5, [hl]
    call nz, Call_000_0547
    ld b, a
    ld d, $1A
    ld a, [$C600]
    cp $80
    jp z, Jump_001_5427

    cp $82
    jp nz, Jump_001_5422

    ld a, [$C60D]
    cp $19
    jr nz, jr_001_5422

    ld hl, $C700
    set 7, [hl]

Jump_001_5422:
jr_001_5422:
    ld d, $1B
    jp Jump_001_5427


Jump_001_5427:
    ld a, [$C50C]
    add b
    ld b, a
    ld a, [$C507]
    sub c
    ld c, a
    ld hl, $C60D
    ld [hl], d
    ld de, $C600
    call Call_000_2098
    ret


Call_001_543C:
    ld a, [$C701]
    rst $00

    db $44, $54, $74, $54

    ld a, $1C
    ld [$C70D], a
    ld a, [$C50E]
    set 0, a
    ld [$C70E], a
    ld hl, $C711
    set 0, [hl]
    ld de, $C700
    call Call_000_21AB
    ld de, $C600
    ld bc, $1000
    call Call_000_2116
    ld de, $C700
    call Call_000_2098
    ld bc, $0200
    call Call_000_20FC
    jp Jump_000_2089


    ld de, $C700
    call Call_001_5489
    ld a, [$C711]
    bit 7, a
    jp nz, Jump_000_2183

    ld de, $C700
    call Call_000_2767
    ret


Call_001_5489:
    ld a, $03
    call Call_000_21FE
    ret nc

    ld hl, $C711
    set 7, [hl]
    ret


Call_001_5495:
    ld a, [$C755]
    or a
    jr nz, jr_001_549D

    scf
    ret


jr_001_549D:
    ld a, [$C756]
    rst $00

    db $AB, $54, $BE, $54, $C5, $54, $CC, $54, $DE, $54

Call_001_54AB:
    ld a, [$C753]
    cp $05
    jr c, jr_001_54BC

    ld hl, $C757
    bit 0, [hl]
    jr nz, jr_001_54BC

    scf
    ccf
    ret


jr_001_54BC:
    scf
    ret


Call_001_54BE:
    ld a, [$C753]
    cp $20
    ret c

    ret


Call_001_54C5:
    ld a, [$C753]
    cp $05
    ret c

    ret


Call_001_54CC:
    ld a, [$C753]
    or a
    jr z, jr_001_54DC

    ld hl, $C757
    bit 1, [hl]
    jr nz, jr_001_54DC

    scf
    ccf
    ret


jr_001_54DC:
    scf
    ret


Call_001_54DE:
    ld a, [$C753]
    cp $05
    jr c, jr_001_54EF

    ld hl, $C757
    bit 2, [hl]
    jr nz, jr_001_54EF

    scf
    ccf
    ret


jr_001_54EF:
    scf
    ret


Jump_001_54F1:
    ld a, [$C755]
    or a
    ret z

    ld a, [$C756]
    rst $00

    db $04, $55, $53, $55, $75, $55, $AB, $55, $EF, $55

    call Call_001_54AB
    ret c

    ld hl, $C757
    bit 0, [hl]
    ret nz

    ld de, $C900
    ld b, $13

jr_001_5513:
    ld e, $00
    ld a, [de]
    or a
    jr z, jr_001_5534

    ld e, $18
    ld a, [de]
    or a
    jr nz, jr_001_5534

    ld e, $08
    ld a, [de]
    bit 0, a
    call nz, Call_000_21D7
    ld e, $03
    ld a, [de]
    bit 0, a
    call nz, Call_000_21E4
    ld h, d
    ld l, $0E
    set 0, [hl]

jr_001_5534:
    inc d
    dec b
    jr nz, jr_001_5513

    ld a, $04
    ld [$C51C], a
    push de
    ld a, $05
    call Call_000_2DEC
    pop de
    ld hl, $C757
    set 0, [hl]
    ld a, $01
    ld [$D7DC], a
    ld a, $3A
    jp Jump_000_0875


    call Call_001_54BE
    ret c

    ld a, $14
    call Call_000_0875
    ld b, $0E
    ld c, $02

jr_001_5560:
    dec c
    jr nz, jr_001_5560

    ld c, $02
    push bc
    ld a, $01
    call Call_000_2CAA
    pop bc
    dec b
    jr nz, jr_001_5560

    ld a, $20
    call Call_000_2DEC
    ret


    call Call_001_54C5
    ret c

    ld de, $C900
    ld b, $13

jr_001_557E:
    ld e, $00
    ld a, [de]
    or a
    jr z, jr_001_55A2

    ld e, $18
    ld a, [de]
    or a
    jr nz, jr_001_55A2

    ld e, $11
    ld a, [de]
    bit 0, a
    jr z, jr_001_55A2

    push bc
    call Call_000_26CB
    pop bc
    ld a, [$C73B]
    bit 1, a
    jp z, Jump_001_55A2

    ld hl, $C73C
    inc [hl]

Jump_001_55A2:
jr_001_55A2:
    inc d
    dec b
    jr nz, jr_001_557E

    ld a, $05
    jp Jump_000_2DEC


    call Call_001_54CC
    ret c

    ld a, $1C
    ld [$C80D], a
    ld a, [$C50E]
    set 0, a
    ld [$C80E], a
    ld hl, $C811
    set 0, [hl]
    ld de, $C800
    call Call_000_21AB
    ld de, $C500
    ld bc, $1000
    call Call_000_2116
    ld de, $C800
    call Call_000_2098
    ld bc, $0200
    call Call_000_20FC
    ld a, $01
    call Call_000_2DEC
    ld hl, $C757
    set 1, [hl]
    ld de, $C800
    ld bc, $56C1
    jp Jump_000_2F92


    call Call_001_54DE
    ret c

    ld a, $27
    ldh [$FF88], a
    ld de, $C900
    ld b, $13

jr_001_55FC:
    ld e, $00
    ld a, [de]
    or a
    jr z, jr_001_5612

    ld e, $18
    ld a, [de]
    or a
    jr nz, jr_001_5612

    call Call_000_21BB
    ld h, d
    ld l, $11
    set 7, [hl]
    res 0, [hl]

jr_001_5612:
    inc d
    dec b
    jr nz, jr_001_55FC

    ld a, $30
    ld [$C51D], a
    ld hl, $C757
    set 2, [hl]
    ld a, $05
    jp Jump_000_2DEC


    call Call_001_562E
    call Call_001_5698
    jp Jump_001_56C6


Call_001_562E:
    ld hl, $C757
    bit 0, [hl]
    ret z

    ld de, $C900
    ld b, $13

jr_001_5639:
    ld e, $00
    ld a, [de]
    or a
    jr z, jr_001_5655

    ld e, $18
    ld a, [de]
    or a
    jr jr_001_5655

    ld e, $08
    ld a, [de]
    bit 0, a
    call nz, Call_000_21D7
    ld e, $03
    ld a, [de]
    bit 0, a
    call nz, Call_000_21E4

jr_001_5655:
    inc d
    dec b
    jr nz, jr_001_5639

    ld a, [$C550]
    and $3F
    ret nz

    ld hl, $C51C
    dec [hl]
    ret nz

    ld hl, $C757
    res 0, [hl]
    ld de, $C900
    ld b, $13

jr_001_566E:
    ld e, $00
    ld a, [de]
    or a
    jr z, jr_001_568A

    ld e, $18
    ld a, [de]
    or a
    jr nz, jr_001_568A

    ld e, $1E
    ld a, [de]
    bit 0, a
    call nz, Call_000_21AB
    ld e, $1F
    ld a, [de]
    bit 0, a
    call nz, Call_000_21B3

jr_001_568A:
    inc d
    dec b
    jr nz, jr_001_566E

    xor a
    ld [$D7DC], a
    ld a, $40
    call Call_000_0875
    ret


Call_001_5698:
    ld hl, $C757
    bit 1, [hl]
    ret z

    ld de, $C800
    ld hl, $56C1
    call Call_000_2F9F
    ld de, $C800
    ld a, $03
    call Call_000_21FE
    jp c, Jump_001_56B9

    ld de, $C800
    call Call_000_2767
    ret


Jump_001_56B9:
    ld hl, $C757
    res 1, [hl]
    jp Jump_000_2183


    db $08, $1D, $08, $1E, $FE

Jump_001_56C6:
    ld hl, $C757
    bit 2, [hl]
    ret z

    ld a, $E4
    ldh [$FF88], a
    ld a, [$C550]
    bit 0, a
    jr z, jr_001_56DB

    ld a, $FF
    ldh [$FF88], a

jr_001_56DB:
    ld hl, $C51D
    dec [hl]
    ret nz

    ld de, $C900
    ld b, $13

jr_001_56E5:
    ld e, $00
    ld a, [de]
    or a
    jr z, jr_001_56F9

    ld e, $18
    ld a, [de]
    or a
    jr nz, jr_001_56F9

    push bc
    call Call_000_2183
    call Call_000_262C
    pop bc

jr_001_56F9:
    inc d
    dec b
    jr nz, jr_001_56E5

    ld hl, $C757
    res 2, [hl]
    ld a, $E4
    ldh [$FF88], a
    ret


    ld a, [$C518]
    or a
    ret nz

    ld hl, $C511
    bit 0, [hl]
    ret z

    bit 5, [hl]
    ret z

    bit 7, [hl]
    ret nz

    ld hl, $C511
    set 7, [hl]
    ld a, [$C72F]
    or a
    jr nz, jr_001_5728

    ld a, $FB
    jp Jump_000_2CAA


jr_001_5728:
    ld a, $FE
    jp Jump_000_2CAA


    ld a, [$C518]
    or a
    ret nz

    ld a, [$C737]
    cp $02
    ret z

    ld hl, $C511
    bit 0, [hl]
    jr z, jr_001_576C

    bit 7, [hl]
    ret z

    ld a, $16
    call Call_000_0875
    res 7, [hl]
    res 0, [hl]
    ld a, $40
    ld [$C515], a
    ld hl, $C600
    res 7, [hl]
    ld hl, $C60E
    res 0, [hl]
    ld hl, $C611
    res 0, [hl]
    ld a, [$C500]
    bit 1, a
    jr z, jr_001_5786

    ld a, $11
    ld [$C50D], a
    ret


jr_001_576C:
    ld de, $C500
    call Call_000_2133
    ld hl, $C515
    dec [hl]
    ret nz

    ld hl, $C511
    set 0, [hl]
    ld hl, $C50E
    set 0, [hl]
    xor a
    ld [$C740], a
    ret


jr_001_5786:
    ld a, $0C
    ld [$C50D], a
    ld hl, $C511
    set 1, [hl]
    ld hl, $C500
    res 3, [hl]
    ld a, $03
    call Call_001_4697
    ld a, [$C500]
    bit 2, a
    jr z, jr_001_57A6

    call Call_000_1FD2
    jr jr_001_57B1

jr_001_57A6:
    ld bc, $FE20
    ld a, c
    ld [$C504], a
    ld a, b
    ld [$C505], a

jr_001_57B1:
    ld a, [$C50E]
    bit 5, a
    jr nz, jr_001_57C4

    ld bc, $FF70
    ld a, c
    ld [$C509], a
    ld a, b
    ld [$C50A], a
    ret


jr_001_57C4:
    ld bc, $0090
    ld a, c
    ld [$C509], a
    ld a, b
    ld [$C50A], a
    ret


Call_001_57D0:
    ld a, [$C513]
    or a
    ret z

    ld a, [$C517]
    or a
    ret z

    ld a, [$C518]
    or a
    jr nz, jr_001_5804

    ld a, [$C555]
    and $30
    cp $30
    jr nz, jr_001_5804

    ld a, $2D
    call Call_000_0875
    ld hl, $C511
    set 0, [hl]
    res 5, [hl]
    res 7, [hl]
    ld hl, $C50E
    set 0, [hl]
    ld a, $06
    call Call_000_0E35
    xor a
    inc a
    ret


jr_001_5804:
    xor a
    ret


    ld a, [$C513]
    or a
    jp z, Jump_000_2035

    ld a, [$C729]
    rst $00

    db $15, $58, $47, $58

    ld a, [$C50D]
    ld [$C7D9], a
    ld de, $C500
    ld bc, $5998
    call Call_000_2F92
    ld de, $C600
    call Call_000_2183
    ld a, $80
    ld [$C514], a
    ld a, $01
    ld [$C518], a
    ld a, [$C500]
    bit 3, a
    jp z, Jump_000_0E29

    ld a, [$C507]
    sub $06
    ld [$C507], a
    jp Jump_000_0E29


    ld de, $C500
    ld hl, $5998
    call Call_000_2F9F
    ld hl, $C514
    dec [hl]
    ret nz

    ld a, [$C7D9]
    ld [$C50D], a
    ld a, [$C73B]
    bit 1, a
    jr nz, jr_001_5872

    ld a, [$C553]
    and $01
    call nz, Call_001_4BF5
    ld a, [$C553]
    and $02
    call nz, Call_001_4C19

jr_001_5872:
    ld a, $30
    ld [$C51F], a
    ld hl, $C511
    set 0, [hl]
    res 5, [hl]
    res 7, [hl]
    ld a, [$C500]
    bit 3, a
    jr z, jr_001_588F

    ld a, [$C507]
    add $06
    ld [$C507], a

jr_001_588F:
    ld a, $01
    jp Jump_000_0E35


    ld hl, $C511
    set 0, [hl]
    res 5, [hl]
    res 7, [hl]
    ld a, [$C500]
    bit 6, a
    ret nz

    ld de, $C500
    call Call_000_2133
    ld hl, $C51F
    dec [hl]
    ret nz

    ld a, $30
    ld [$C51F], a
    ld a, $FF
    call Call_000_2CED
    ld a, [$C517]
    or a
    ret nz

    ld hl, $C511
    set 0, [hl]
    res 5, [hl]
    res 7, [hl]
    ld hl, $C50E
    set 0, [hl]
    xor a
    ld [$C518], a
    ld a, [$C500]
    bit 1, a
    ret nz

    ld a, [$C73B]
    bit 1, a
    ret nz

    ld a, [$C553]
    and $01
    jp nz, Jump_001_58EC

    ld a, [$C553]
    and $02
    jp nz, Jump_001_590B

    ret


Jump_001_58EC:
    ld a, [$C500]
    bit 3, a
    jr nz, jr_001_58FF

    ld bc, $0090
    ld a, c
    ld [$C509], a
    ld a, b
    ld [$C50A], a
    ret


jr_001_58FF:
    ld bc, $0060
    ld a, c
    ld [$C509], a
    ld a, b
    ld [$C50A], a
    ret


Jump_001_590B:
    ld a, [$C500]
    bit 3, a
    jr nz, jr_001_591E

    ld bc, $FF70
    ld a, c
    ld [$C509], a
    ld a, b
    ld [$C50A], a
    ret


jr_001_591E:
    ld bc, $0060
    ld a, c
    ld [$C509], a
    ld a, b
    ld [$C50A], a
    ret


    ld a, [$C729]
    rst $00

    db $32, $59, $3F, $59

    ld a, $13
    call Call_000_0875
    ld a, $40
    ld [$C51E], a
    jp Jump_000_0E29


    ld de, $C500
    call Call_000_2133
    ld de, $C600
    ld a, [$C600]
    bit 7, a
    call nz, Call_000_2133
    ld hl, $C51E
    dec [hl]
    ret nz

    ld hl, $C50E
    set 0, [hl]
    ld a, [$C600]
    bit 7, a
    jp z, Jump_001_5967

    ld hl, $C60E
    set 0, [hl]

Jump_001_5967:
    ld a, $01
    jp Jump_000_0E35


    db $0C, $01, $0C, $02, $0C, $01, $0C, $00, $FE, $10, $07, $10, $08, $10, $07, $10
    db $06, $FE, $0C, $0F, $0C, $10, $FE, $04, $03, $04, $04, $0B, $05, $FF, $04, $09
    db $04, $0A, $0B, $0B, $FF, $04, $12, $04, $13, $0B, $14, $FF, $08, $16, $08, $17
    db $FE

Call_001_599D:
    ld a, $00
    ld [$C50D], a
    call Call_000_1FCB
    jp Jump_000_1FD2


Call_001_59A8:
Jump_001_59A8:
    ld hl, $C50E
    res 5, [hl]
    ret


Call_001_59AE:
Jump_001_59AE:
    ld hl, $C50E
    set 5, [hl]
    ret


Call_001_59B4:
    ld a, [$C507]
    sub $0C
    ld [$C7D0], a
    ld c, a
    ld a, [$C50C]
    add $05
    ld b, a
    call Call_000_28CD
    call Call_000_1F9F
    bit 0, a
    ret nz

    ld a, [$C7D0]
    ld c, a
    ld a, [$C50C]
    ld b, a
    call Call_000_28CD
    call Call_000_1F9F
    bit 0, a
    ret nz

    ld a, [$C7D0]
    ld c, a
    ld a, [$C50C]
    sub $06
    ld b, a
    call Call_000_28CD
    call Call_000_1F9F
    bit 0, a
    ret


Call_001_59F0:
    ld a, [$C50A]
    bit 7, a
    jr nz, jr_001_59FE

    ld a, [$C50C]
    add $08
    jr jr_001_5A03

jr_001_59FE:
    ld a, [$C50C]
    sub $09

jr_001_5A03:
    ld [$C7D0], a
    ld hl, $C500
    bit 2, [hl]
    jp nz, Jump_001_5A3A

    ld a, [$C7D0]
    ld b, a
    ld a, [$C507]
    sub $08
    ld c, a
    call Call_000_28CD
    call Call_000_1F9F
    call Call_001_5A82
    bit 0, a
    ret nz

    ld a, [$C7D0]
    ld b, a
    ld a, [$C507]
    sub $04
    ld c, a
    call Call_000_28CD
    call Call_000_1F9F
    call Call_001_5A82
    bit 0, a
    ret nz

Jump_001_5A3A:
    ld a, [$C7D0]
    ld b, a
    ld a, [$C507]
    add $02
    ld c, a
    call Call_000_28CD
    call Call_000_1F9F
    call Call_001_5A82
    bit 0, a
    ret nz

    ld a, [$C500]
    bit 3, a
    jr z, jr_001_5A59

    xor a
    ret


jr_001_5A59:
    ld a, [$C7D0]
    ld b, a
    ld a, [$C507]
    add $06
    ld c, a
    call Call_000_28CD
    call Call_000_1F9F
    call Call_001_5A82
    bit 0, a
    ret nz

    ld a, [$C7D0]
    ld b, a
    ld a, [$C507]
    add $0A
    ld c, a
    call Call_000_28CD
    call Call_000_1F9F
    bit 0, a
    ret


Call_001_5A82:
    ld hl, $C50E
    bit 5, [hl]
    jr nz, jr_001_5A93

    ld hl, $C50A
    bit 7, [hl]
    ret nz

    ld [$C787], a
    ret


jr_001_5A93:
    ld hl, $C50A
    bit 7, [hl]
    ret z

    ld [$C787], a
    ret


    ld hl, $C500
    bit 2, [hl]
    ret z

    ld a, [$C7D0]
    ld b, a
    ld a, [$C507]
    sub $08
    ld c, a
    call Call_000_28CD
    call Call_000_1F9F
    ret z

    ld a, [$C7D0]
    ld b, a
    ld a, [$C507]
    sub $04
    ld c, a
    call Call_000_28CD
    call Call_000_1F9F
    ret


Call_001_5AC5:
    ld a, [$C507]
    sub c
    sub $0B
    ld [$C7D0], a
    ld a, $03
    ld [$C7D1], a

jr_001_5AD3:
    ld a, [$C7D1]
    cp $03
    jr z, jr_001_5AEA

    ld a, [$C7D0]
    ld c, a
    ld a, [$C50C]
    add $05
    ld b, a
    call Call_000_28CD
    bit 0, a
    ret nz

jr_001_5AEA:
    ld a, [$C7D0]
    ld c, a
    ld a, [$C50C]
    ld b, a
    call Call_000_28CD
    bit 0, a
    ret nz

    ld a, [$C7D1]
    cp $03
    jr z, jr_001_5B0F

    ld a, [$C7D0]
    ld c, a
    ld a, [$C50C]
    sub $06
    ld b, a
    call Call_000_28CD
    bit 0, a
    ret nz

jr_001_5B0F:
    ld a, [$C7D1]
    dec a
    or a
    ret z

    ld [$C7D1], a
    ld a, [$C7D0]
    add $08
    ld [$C7D0], a
    jr jr_001_5AD3

Call_001_5B22:
    ld a, [$C507]
    sub c
    add $0B
    ld [$C7D0], a
    ld a, [$C7D0]
    ld c, a
    ld a, [$C50C]
    add $05
    ld b, a
    call Call_000_28CD
    bit 0, a
    ret nz

    ld a, [$C7D0]
    ld c, a
    ld a, [$C50C]
    ld b, a
    call Call_000_28CD
    bit 0, a
    ret nz

    ld a, [$C7D0]
    ld c, a
    ld a, [$C50C]
    sub $06
    ld b, a
    call Call_000_28CD
    bit 0, a
    ret


Call_001_5B59:
    ld hl, $C50C
    add [hl]
    ld [$C7D0], a
    ld a, [$C7D0]
    ld b, a
    ld a, [$C507]
    add $10
    ld c, a
    call Call_000_28CD
    ld [$C787], a
    bit 0, a
    ret nz

    ld a, [$C7D0]
    ld b, a
    ld a, [$C507]
    add $18
    ld c, a
    call Call_000_28CD
    ld [$C787], a
    bit 0, a
    ret nz

    ld a, [$C7D0]
    ld b, a
    ld a, [$C507]
    add $20
    ld c, a
    call Call_000_28CD
    ld [$C787], a
    bit 0, a
    ret nz

    xor a
    ret


    ld hl, $C506
    ld bc, $0008
    xor a
    jp $DEC9


Call_001_5BA5:
    ld b, a
    ld a, [$C50C]
    add b
    ld [$C7DF], a
    ld b, a
    ld a, [$C507]
    sub $04
    ld c, a
    call Call_000_28CD
    bit 0, a
    ret nz

    ld a, [$C7DF]
    ld b, a
    ld a, [$C507]
    ld c, a
    call Call_000_28CD
    bit 0, a
    ret nz

    ld a, [$C7DF]
    ld b, a
    ld a, [$C507]
    add $04
    ld c, a
    call Call_000_28CD
    bit 0, a
    ret nz

    ld a, [$C7DF]
    ld b, a
    ld a, [$C507]
    add $0C
    ld c, a
    call Call_000_28CD
    bit 0, a
    ret nz

    ret


    ld hl, $C000
    ld bc, $0100
    xor a
    call $DEC9
    ld hl, $5C0A
    call Call_000_2FCD
    ld de, $C000

jr_001_5BFC:
    ld a, [hl+]
    cp $FF
    ret z

    ld b, a

jr_001_5C01:
    ld a, [hl]
    ld [de], a
    inc de
    dec b
    jr nz, jr_001_5C01

    inc hl
    jr jr_001_5BFC

    jr @+$5E

    db $18, $5C, $39, $5C, $68, $5C, $AF, $5C, $DA, $5C

    db $11
    ld e, l

    db $28, $5C, $28, $5C, $28, $5C, $28, $5C, $28, $5C, $28, $5C, $28, $5C, $28, $5C
    db $1A, $00, $09, $05, $02, $02, $11, $00, $02, $01, $0D, $00, $03, $01, $38, $00
    db $FF, $45, $5C, $45, $5C, $45, $5C, $45, $5C, $45, $5C, $45, $5C, $1A, $00, $09
    db $05, $02, $02, $04, $01, $13, $00, $01, $21, $01, $01, $10, $00, $02, $01, $0B
    db $00, $01, $01, $0A, $00, $02, $01, $03, $00, $01, $21, $82, $00, $02, $21, $FF
    db $72, $5C, $72, $5C, $72, $5C, $72, $5C, $72, $5C, $1A, $00, $09, $05, $01, $02
    db $02, $01, $01, $08, $09, $01, $01, $00, $02, $01, $01, $00, $02, $02, $0A, $00
    db $04, $01, $04, $00, $02, $01, $01, $21, $01, $00, $03, $01, $01, $00, $04, $01
    db $04, $00, $02, $01, $02, $00, $01, $01, $03, $00, $04, $01, $04, $00, $02, $01
    db $02, $00, $01, $01, $13, $00, $FF, $B9, $5C, $B9, $5C, $B9, $5C, $B9, $5C, $B9
    db $5C, $1A, $00, $09, $05, $01, $02, $02, $01, $01, $08, $05, $01, $02, $21, $01
    db $09, $05, $00, $02, $02, $04, $01, $14, $00, $02, $01, $0E, $00, $02, $01, $20
    db $00, $FF, $E4, $5C, $E4, $5C, $E4, $5C, $E4, $5C, $E4, $5C, $04, $00, $01, $01
    db $15, $00, $09, $05, $02, $02, $0B, $01, $02, $21, $02, $00, $05, $01, $02, $00
    db $01, $01, $04, $00, $02, $21, $02, $00, $02, $01, $03, $40, $02, $00, $03, $80
    db $06, $01, $1D, $00, $03, $01, $0C, $00, $FF

    rla
    ld e, l
    rla
    ld e, l
    rla
    ld e, l
    inc b
    nop
    ld bc, $1501
    nop
    add hl, bc
    dec b
    ld [bc], a
    ld [bc], a
    dec b
    ld bc, $000A
    ld bc, $0F21
    nop
    ld bc, $FF21

    xor a
    ld hl, $CE20
    ld bc, $00A0
    call $DEC9
    ld hl, $5D57
    call Call_000_2FCD
    ld a, [hl+]
    ld [$C775], a
    ld a, [hl+]
    ld [$C77C], a

jr_001_5D44:
    ld e, [hl]
    inc hl
    ld d, [hl]
    inc hl
    ld b, [hl]
    inc hl

jr_001_5D4A:
    ld a, [hl+]
    cp $FF
    ret z

    cp $FE
    jr z, jr_001_5D44

    ld [de], a
    ld a, b
    rst $30
    jr jr_001_5D4A

    ld h, l
    ld e, l

    db $65, $5D, $10, $5E, $87, $5E, $F0, $5E, $5C, $5F

    ldh [$FF5F], a

    db $75, $5D, $83, $5D, $A3, $5D, $B0, $5D, $D2, $5D, $EA, $5D, $F6, $5D, $09, $5E
    db $01, $01, $31, $CE, $01, $20, $01, $02, $03, $04, $15, $06, $0C, $FF, $03, $01
    db $33, $CE, $01, $20, $06, $07, $11, $FE, $41, $CE, $01, $2B, $03, $0A, $09, $08
    db $12, $FE, $52, $CE, $01, $34, $FE, $62, $CE, $01, $35, $0C, $0D, $FF, $01, $04
    db $61, $CE, $01, $20, $01, $02, $03, $14, $05, $0A, $FF, $01, $04, $46, $CE, $01
    db $34, $0E, $0E, $FE, $56, $CE, $01, $33, $FE, $61, $CE, $01, $20, $05, $06, $07
    db $08, $02, $09, $0A, $0B, $0C, $1D, $FE, $71, $CE, $01, $31, $FF, $01, $02, $33
    db $CE, $01, $04, $05, $FE, $32, $CE, $10, $23, $92, $FE, $41, $CE, $01, $70, $FE
    db $51, $CE, $01, $31, $FF, $01, $01, $31, $CE, $01, $20, $01, $02, $13, $04, $05
    db $FF, $01, $01, $22, $CE, $01, $22, $03, $04, $05, $16, $07, $07, $FE, $31, $CE
    db $01, $20, $11, $FF, $01, $00, $21, $CE, $01, $30, $FF, $1C, $5E, $2C, $5E, $4B
    db $5E, $63, $5E, $72, $5E, $7E, $5E, $01, $05, $71, $CE, $01, $20, $04, $05, $06
    db $07, $51, $F2, $B3, $08, $0E, $FF, $01, $05, $35, $CE, $10, $29, $15, $FE, $55
    db $CE, $10, $63, $12, $FE, $56, $CE, $01, $A4, $1A, $0B, $0C, $FE, $71, $CE, $01
    db $20, $06, $07, $08, $11, $FF, $01, $03, $51, $CE, $01, $20, $01, $06, $02, $17
    db $FE, $64, $CE, $10, $33, $34, $35, $FE, $75, $CE, $01, $08, $09, $FF, $01, $05
    db $71, $CE, $10, $30, $31, $32, $FE, $82, $CE, $01, $03, $04, $FF, $01, $06, $81
    db $CE, $01, $20, $01, $02, $13, $04, $05, $FF, $01, $06, $81, $CE, $01, $20, $01
    db $12, $FF, $91, $5E, $A2, $5E, $B1, $5E, $D3, $5E, $E3, $5E, $07, $05, $37, $CE
    db $10, $24, $12, $21, $03, $10, $FE, $38, $CE, $01, $05, $05, $FF, $08, $04, $38
    db $CE, $10, $A3, $12, $21, $10, $FE, $37, $CE, $01, $34, $FF, $07, $06, $37, $CE
    db $10, $25, $14, $A3, $12, $21, $10, $FE, $51, $CE, $01, $7A, $A9, $0B, $07, $0C
    db $56, $FE, $34, $CE, $10, $2D, $18, $FE, $38, $CE, $01, $0E, $0E, $FF, $08, $04
    db $38, $CE, $10, $23, $12, $21, $10, $FE, $39, $CE, $01, $04, $04, $FF, $08, $07
    db $38, $CE, $10, $36, $25, $14, $23, $12, $21, $10, $FF, $FA, $5E, $0D, $5F, $27
    db $5F, $3F, $5F, $50, $5F, $08, $08, $91, $CE, $01, $0F, $07, $26, $12, $FE, $A4
    db $CE, $01, $21, $05, $04, $03, $10, $FF, $06, $07, $47, $CE, $10, $29, $15, $24
    db $93, $FE, $76, $CE, $10, $62, $11, $FE, $91, $CE, $01, $0E, $0A, $37, $A6, $08
    db $10, $FF, $08, $07, $71, $CE, $01, $00, $08, $FE, $73, $CE, $10, $23, $12, $FE
    db $93, $CE, $01, $21, $07, $06, $05, $04, $10, $FF, $03, $05, $33, $CE, $10, $24
    db $13, $32, $21, $10, $FE, $61, $CE, $01, $07, $05, $FF, $06, $04, $61, $CE, $01
    db $31, $A5, $04, $03, $02, $10, $FF, $66, $5F, $74, $5F, $94, $5F, $A7, $5F, $C3
    db $5F, $01, $06, $81, $CE, $01, $20, $01, $02, $03, $04, $15, $06, $07, $FF, $01
    db $06, $81, $CE, $10, $60, $54, $FE, $82, $CE, $01, $A1, $06, $07, $08, $09, $12
    db $FE, $97, $CE, $01, $33, $FE, $92, $CE, $01, $A5, $0A, $1B, $0C, $0D, $FF, $01
    db $07, $91, $CE, $01, $30, $FE, $A1, $CE, $01, $21, $04, $05, $06, $52, $33, $07
    db $08, $FF, $01, $08, $61, $CE, $10, $67, $42, $06, $05, $50, $FE, $82, $CE, $10
    db $24, $08, $91, $FE, $72, $CE, $01, $A3, $09, $0A, $1B, $0C, $0D, $FF, $01, $05
    db $41, $CE, $10, $61, $07, $06, $10, $FE, $42, $CE, $01, $A2, $08, $09, $13, $FE
    db $55, $CE, $01, $34, $FE, $35, $CE, $01, $25, $1B, $FF

    and $5F
    nop
    ld h, b
    ld e, $60
    ld bc, $5103
    adc $01
    jr nz, @+$07

    ld b, $11
    cp $64
    adc $01
    ld [hl+], a
    rlca
    inc de
    cp $76
    adc $01
    inc h
    ld [$0A19], sp
    nop
    rst $38
    ld bc, $7105
    adc $01

jr_001_6005:
    jr nc, jr_001_6005

    ld sp, $10CE
    ld h, $13
    ld h, d
    ld d, c
    cp $52
    adc $01
    and l
    add hl, de
    ld a, [bc]
    dec bc
    cp $62
    adc $01
    and h
    rlca
    jr @+$01

    ld bc, $5103
    adc $01
    jr nz, jr_001_6026

    ld [de], a

jr_001_6026:
    rst $38
    xor a
    ld c, $0A
    ld hl, $C740
    jp $DED2


    ld a, [$C555]
    and $3F
    ret z

    ld hl, $C741
    ld de, $C740
    ld c, $09
    call $DEC2
    ld a, [$C555]
    ld [$C749], a
    call Call_001_6051
    ret nz

    ld a, $01
    ld [$C74B], a
    ret


Call_001_6051:
    ld hl, $C740
    ld de, $6062
    ld c, $0A

jr_001_6059:
    ld a, [de]
    cp [hl]
    ret nz

    inc de
    inc hl
    dec c
    jr nz, jr_001_6059

    ret


    inc b
    inc b
    ld [$0208], sp
    ld bc, $0102
    jr nz, jr_001_607C

    ld bc, $CF20
    ld a, [bc]
    inc bc
    or a
    ret z

    ld h, a
    ld a, [bc]
    inc bc
    ld l, a
    ld a, h
    add $29
    ld d, a
    ld e, l

jr_001_607C:
    ld a, [bc]
    inc bc
    bit 0, a
    jr z, jr_001_60E0

jr_001_6082:
    ld a, $04
    ld [$C7D0], a

jr_001_6087:
    ld a, $04
    ld [$C7D1], a
    push de
    push hl

jr_001_608E:
    ld a, [bc]
    cp $FF
    jp z, Jump_001_60DB

    di

jr_001_6095:
    ldh a, [rSTAT]
    bit 1, a
    jr nz, jr_001_6095

    ld a, [bc]
    inc bc
    ld [hl], a
    ld [de], a
    ei
    ld a, l
    and $1F
    cp $1F
    jr nz, jr_001_60AD

    ld a, $20
    rst $10
    ld a, $20
    rst $18

jr_001_60AD:
    inc hl
    inc de
    ld a, [$C7D1]
    dec a
    ld [$C7D1], a
    jr nz, jr_001_608E

    pop hl
    pop de
    ld a, $20
    rst $28
    ld a, $20
    rst $30
    ld a, [$C7D0]
    dec a
    ld [$C7D0], a
    jr nz, jr_001_6087

    ld a, $7C
    rst $10
    ld a, l
    and $1F
    jr nz, jr_001_60D4

    ld a, $20
    rst $10

jr_001_60D4:
    ld a, h
    add $29
    ld d, a
    ld e, l
    jr jr_001_6082

Jump_001_60DB:
    pop hl
    pop de
    jp Jump_001_610D


jr_001_60E0:
    ld a, $04
    ld [$C7D0], a

jr_001_60E5:
    ld a, [bc]
    cp $FF
    jp z, Jump_001_610D

    di

jr_001_60EC:
    ldh a, [rSTAT]
    bit 1, a
    jr nz, jr_001_60EC

    ld a, [bc]
    inc bc
    ld [hl+], a
    ld [de], a
    inc de
    ei
    ld a, [$C7D0]
    dec a
    ld [$C7D0], a
    jr nz, jr_001_60E5

    ld a, $1C
    rst $28
    res 2, h
    ld a, h
    add $29
    ld d, a
    ld e, l
    jr jr_001_60E0

Jump_001_610D:
    ld hl, $CF20
    ld c, $E0
    xor a
    jp $DED2


    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $F5, $F4
    db $F3, $F2, $01, $F3, $F2, $01, $F1, $F4, $F0, $01, $F1, $EF, $EE, $F0, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $ED, $EC, $01, $EF, $01, $EB, $ED, $EA, $E9, $E8
    db $01, $E8, $F3, $E7, $EE, $E6, $F2, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $F2, $F1, $E7, $EA, $E8, $E8, $EE, $F0, $01, $F1, $ED, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $F2, $F3, $E9, $E8, $EE, $F0, $E5, $F4, $EF, $E9
    db $E4, $F0, $E4, $EE, $EB, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $E3, $E7, $ED, $E2, $F3, $E4, $F0, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $F5, $E7, $EF, $E9, $F2, $EB, $EE, $E2
    db $EF, $E9, $F3, $EF, $E1, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $EF
    db $01, $E3, $EE, $EF, $E0, $F0, $01, $E7, $EA, $EE, $F0, $E4, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $DF, $EB, $01, $DE, $EF, $E4, $E9, $F0, $F2
    db $F2, $01, $EF, $E9, $E4, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $E4, $F0
    db $F2, $E3, $EF, $F3, $E7, $E1, $DD, $F3, $F1, $F4, $01, $F1, $F4, $F0, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $EE, $F3, $E8, $F4, $F1, $01, $ED, $EC, $01
    db $F4, $ED, $E3, $F0, $DC, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $DB, $DB, $DB, $DB, $DB, $DB, $DB, $DB
    db $DB, $DB, $DB, $DB, $DB, $DB, $DB, $DB, $DB, $DB, $DB, $DB, $DB, $DB, $DB, $DB
    db $DB, $DB, $DB, $DB, $DB, $DB, $DB, $DB, $DB, $DB, $DB, $DB, $DB, $DB, $DB, $DB
    db $DB, $DB, $DB, $DB, $DB, $DB, $DB, $DB, $DB, $DB, $DB, $DB, $DB, $DB, $DB, $DB
    db $DB, $DB, $DB, $DB, $DB, $DB, $DB, $DB, $DB, $DB, $DB, $DB, $DB, $DB, $DB, $DB
    db $DB, $DB, $DB, $DB, $DB, $DB, $DB, $DB, $DA, $DA, $DA, $DA, $DA, $DA, $DA, $DA
    db $DA, $DA, $DA, $DA, $DA, $DA, $DA, $DA, $DA, $DA, $DA, $DA, $DA, $DA, $DA, $DA
    db $DA, $DA, $DA, $DA, $DA, $DA, $DA, $DA, $DA, $DA, $DA, $DA, $DA, $DA, $DA, $DA
    db $DA, $DA, $DA, $DA, $DA, $DA, $DA, $DA, $DA, $DA, $DA, $DA, $DA, $DA, $DA, $DA
    db $DA, $DA, $D9, $DA, $D8, $D8, $D8, $D8, $D7, $D6, $D5, $D8, $D8, $D8, $D8, $D8
    db $D8, $D4, $D3, $D2, $D8, $D1, $D0, $D8, $D8, $D8, $D8, $CF, $CE, $CD, $CC, $CB
    db $CA, $C9, $D8, $D8, $D8, $C8, $C7, $C6, $C5, $C4, $C3, $D8, $D8, $D8, $D8, $C2
    db $C1, $C0, $BF, $BE, $BD, $BC, $BB, $D8, $D8, $BA, $B9, $B8, $B7, $B6, $B5, $D8
    db $B4, $B4, $B4, $B3, $B2, $B1, $B0, $AF, $AE, $AD, $AC, $B4, $AB, $AA, $A9, $A8
    db $A7, $A6, $A5, $B4, $B4, $B4, $A4, $A3, $A2, $A1, $A0, $9F, $9E, $9D, $9C, $B4
    db $9B, $9A, $99, $98, $97, $96, $95, $B4, $00, $94, $93, $92, $91, $90, $8F, $8E
    db $8D, $8C, $8B, $8A, $89, $88, $87, $DB, $86, $85, $84, $00, $00, $00, $83, $82
    db $81, $80, $7F, $7E, $7D, $7C, $00, $7B, $7A, $79, $78, $DB, $77, $76, $75, $74
    db $00, $00, $00, $73, $72, $71, $70, $6F, $6E, $6D, $6C, $DB, $DB, $DB, $DB, $DB
    db $DB, $DB, $DB, $DB, $6B, $6A, $69, $68, $67, $66, $65, $64, $63, $62, $61, $60
    db $5F, $5E, $5D, $5C, $5B, $DB, $DB, $DB, $5A, $59, $00, $58, $57, $56, $55, $DB
    db $DB, $54, $53, $52, $51, $50, $4F, $4E, $4D, $DB, $DB, $DB, $4C, $4B, $4A, $49
    db $48, $01, $47, $46, $45, $44, $43, $42, $DB, $DB, $41, $40, $3F, $DB, $DB, $DB
    db $3E, $3D, $3C, $42, $3B, $3A, $01, $01, $01, $39, $38, $37, $DB, $36, $35, $34
    db $33, $32, $31, $DB, $30, $2F, $2E, $2D, $2C, $2B, $2A, $29, $01, $28, $27, $26
    db $25, $24, $23, $22, $21, $20, $DB, $DB, $1F, $1E, $1D, $1C, $1B, $1A, $19, $18
    db $17, $16, $15, $14, $13, $12, $11, $10, $0F, $0E, $DB, $DB, $0D, $0C, $0B, $0A
    db $09, $08, $07, $06, $05, $04, $03, $01, $02, $DB, $DB, $DB, $DB, $DB, $DB, $DB
    db $B5, $00, $DE, $6C, $FF, $EE, $6C, $00, $7F, $FE, $60, $3F, $FB, $80, $BF, $04
    db $03, $00, $3F, $FF, $FF, $09, $FF, $F6, $01, $C3, $07, $CF, $0F, $3F, $7F, $FE
    db $EE, $62, $05, $FB, $20, $DF, $00, $F8, $00, $9F, $FF, $D0, $EE, $FE, $FD, $FA
    db $62, $2D, $02, $7E, $B4, $F5, $67, $2D, $02, $E0, $EE, $64, $0F, $73, $2E, $01
    db $80, $FF, $7F, $7F, $BF, $7F, $9F, $17, $EF, $88, $F7, $73, $FE, $01, $2E, $03
    db $20, $DF, $98, $E7, $FF, $CE, $F1, $E7, $F8, $F9, $FE, $F8, $FF, $DD, $FC, $33
    db $00, $3F, $FF, $BF, $EE, $64, $BC, $FF, $FF, $BE, $FF, $9F, $FF, $CF, $FF, $E7
    db $FF, $E7, $F3, $FF, $F1, $43, $00, $86, $03, $F9, $FF, $FD, $3E, $95, $02, $FF
    db $FF, $6F, $7F, $DF, $81, $00, $A2, $01, $FF, $47, $7F, $73, $7F, $3F, $3F, $00
    db $FE, $9C, $AE, $08, $2D, $01, $EE, $00, $E0, $2E, $03, $C2, $04, $7F, $FE, $C2
    db $0A, $FF, $00, $06, $00, $6C, $00, $E1, $FA, $C2, $08, $0F, $C0, $0C, $49, $00
    db $13, $00, $D3, $FF, $00, $CB, $00, $E9, $00, $E5, $00, $F1, $FC, $C2, $0C, $FF
    db $60, $FC, $FC, $FE, $FE, $E0, $FE, $BF, $80, $FE, $06, $FE, $0E, $FE, $EE, $61
    db $07, $EF, $FF, $0F, $FF, $1F, $31, $20, $7C, $FF, $C0, $EA, $2F, $20, $7F, $43
    db $00, $E0, $37, $20, $C0, $FF, $80, $3A, $2B, $04, $7F, $75, $00, $BF, $FF, $DF
    db $53, $22, $2E, $01, $FE, $EE, $61, $3F, $FF, $07, $7F, $01, $0F, $00, $DB, $03
    db $00, $5D, $00, $03, $07, $68, $20, $81, $00, $E7, $F0, $00, $1C, $DE, $60, $23
    db $00, $00, $7E, $00, $AB, $3F, $00, $6F, $21, $E0, $7A, $22, $FF, $C0, $00, $F0
    db $DF, $00, $FC, $80, $FE, $80, $37, $20, $E0, $FF, $DD, $F0, $6F, $00, $FE, $FF
    db $8F, $2D, $20, $07, $FF, $5F, $03, $FF, $13, $FF, $39, $7F, $00, $FC, $9D, $22
    db $C9, $FF, $3B, $20, $82, $01, $3F, $73, $00, $82, $01, $F3, $FF, $FF, $7D, $7F
    db $7F, $7F, $6F, $7F, $01, $FD, $F6, $CE, $23, $00, $FC, $B8, $04, $8F, $C0, $E7
    db $60, $FF, $F3, $30, $7B, $18, $39, $08, $9C, $0C, $DF, $DE, $04, $CE, $03, $C7
    db $02, $20, $D9, $00, $F7, $DC, $00, $DF, $F6, $20, $9F, $00, $3F, $06, $FF, $21
    db $04, $43, $0C, $02, $78, $06, $E0, $77, $1C, $00, $F9, $0A, $20, $E3, $00, $7C
    db $DE, $63, $BB, $07, $80, $5C, $02, $7F, $00, $F2, $0C, $40, $CC, $FF, $00, $90
    db $00, $31, $01, $5E, $00, $B7, $F3, $00, $2C, $C2, $08, $AF, $02, $40, $AF, $00
    db $EF, $FE, $40, $42, $CF, $00, $87, $F0, $F1, $FC, $FD, $52, $C2, $09, $01, $A7
    db $20, $B0, $21, $F8, $61, $42, $F0, $67, $42, $4A, $5E, $23, $8F, $85, $00, $FB
    db $95, $00, $29, $21, $00, $6F, $00, $FF, $7F, $FF, $3F, $7F, $1F, $3F, $0F, $1F
    db $FF, $07, $0F, $03, $07, $81, $03, $00, $C1, $9A, $8E, $22, $F8, $D6, $20, $FC
    db $01, $B9, $03, $FD, $61, $1F, $FA, $82, $20, $81, $A8, $40, $87, $80, $C3, $80
    db $E0, $7F, $40, $F0, $60, $F8, $70, $FF, $78, $35, $20, $A7, $BD, $FF, $DE, $B3
    db $22, $B6, $21, $FF, $83, $04, $F9, $CB, $FF, $DD, $7F, $00, $BF, $3B, $20, $8C
    db $41, $01, $03, $0F, $00, $19, $00, $7D, $9C, $40, $D3, $21, $01, $00, $DE, $21
    db $BF, $F0, $E7, $60, $F7, $00, $77, $82, $20, $00, $47, $00, $7F, $1E, $A7, $20
    db $6A, $20, $D7, $21, $3F, $40, $40, $FB, $C0, $80, $9F, $20, $E0, $FC, $30, $F9
    db $08, $FF, $FD, $04, $CE, $00, $E4, $00, $F7, $03, $FF, $F7, $07, $E7, $03, $8F
    db $0C, $33, $38, $77, $C7, $04, $1B, $2E, $4A, $38, $00, $83, $DC, $21, $FB, $00
    db $A7, $2A, $40, $93, $00, $D8, $00, $CE, $FA, $08, $20, $BF, $FA, $20, $DF, $00
    db $4F, $80, $6F, $FB, $80, $2F, $3E, $41, $98, $E1, $9C, $E0, $06, $13, $F8, $03
    db $9D, $46, $EE, $67, $FE, $77, $62, $B6, $21, $84, $42, $E0, $87, $44, $E2, $00
    db $95, $43, $99, $41, $B9, $01, $19, $00, $8C, $FF, $80, $E7, $C0, $F3, $E0, $F9
    db $F0, $FC, $5F, $F8, $FC, $F8, $FE, $F8, $29, $20, $EF, $83, $00, $7F, $C7, $FF
    db $83, $FF, $89, $FF, $9E, $EE, $68, $FD, $7F, $87, $42, $00, $E7, $00, $D3, $C0
    db $CB, $FF, $60, $EB, $20, $EB, $20, $F3, $00, $F3, $FF, $00, $E7, $01, $BF, $07
    db $FF, $00, $17, $2E, $42, $60, $A7, $00, $97, $02, $22, $F9, $D6, $26, $F5, $6F
    db $FE, $EF, $40, $80, $9F, $80, $CF, $80, $E7, $80, $FF, $33, $40, $99, $80, $CC
    db $A0, $C6, $B0, $3D, $C3, $BE, $20, $E1, $21, $DE, $1E, $73, $00, $77, $03, $48
    db $50, $00, $2F, $02, $5E, $01, $07, $47, $24, $56, $43, $C1, $77, $02, $7C, $9A
    db $25, $6D, $65, $0F, $7F, $2F, $1F, $0F, $61, $00, $BE, $8C, $40, $87, $03, $C7
    db $01, $C3, $10, $42, $C0, $D0, $7A, $20, $9F, $45, $14, $40, $82, $22, $03, $3C
    db $60, $61, $00, $B9, $31, $10, $43, $8E, $04, $C0, $C0, $F8, $C0, $00, $C0, $2E
    db $10, $42, $80, $80, $FE, $7C, $42, $3F, $4E, $60, $B1, $03, $FD, $9F, $46, $40
    db $EF, $70, $B9, $30, $FD, $18, $E3, $FD, $08, $11, $27, $7B, $20, $9E, $40, $7F
    db $00, $F4, $FB, $00, $04, $1E, $40, $FB, $9C, $E7, $00, $FF, $FF, $C0, $23, $80
    db $58, $00, $87, $00, $30, $DE, $18, $20, $FF, $40, $7F, $23, $BD, $21, $3C, $1E
    db $DF, $01, $04, $C3, $00, $3C, $72, $20, $E0, $C0, $DE, $9D, $20, $F0, $FF, $00
    db $FD, $86, $20, $0E, $00, $FF, $FF, $17, $2F, $07, $AF, $0B, $97, $01, $7F, $D7
    db $02, $49, $00, $27, $00, $B0, $4E, $60, $FD, $3E, $E6, $00, $F1, $F0, $FC, $7C
    db $FE, $7E, $9E, $BD, $22, $F0, $0F, $C0, $3F, $2E, $45, $96, $21, $FE, $CF, $83
    db $C2, $3D, $7C, $79, $64, $6D, $41, $01, $03, $8F, $01, $E2, $00, $F3, $5A, $41
    db $A4, $21, $E0, $60, $30, $AF, $00, $1B, $00, $0F, $82, $02, $01, $8E, $04, $38
    db $EE, $0E, $40, $3C, $00, $1E, $4A, $60, $86, $00, $02, $2A, $E8, $00, $60, $72
    db $00, $80, $76, $20, $7F, $CC, $03, $00, $0A, $74, $EB, $00, $2E, $44, $07, $96
    db $40, $0E, $00, $73, $A8, $40, $FF, $C7, $00, $33, $00, $18, $00, $06, $80, $D7
    db $C3, $C0, $E1, $96, $40, $F0, $B0, $20, $18, $00, $FF, $F0, $06, $1E, $03, $1F
    db $03, $7F, $07, $95, $FB, $1A, $40, $C0, $76, $20, $61, $84, $20, $10, $41, $E1
    db $AE, $A4, $22, $F3, $00, $08, $AA, $40, $02, $84, $20, $C0, $EB, $00, $C6, $EE
    db $20, $C7, $1E, $60, $E0, $84, $FF, $FF, $64, $FF, $0E, $FF, $1E, $27, $0E, $A7
    db $FF, $0E, $A7, $0F, $97, $07, $D3, $03, $49, $BF, $00, $67, $00, $70, $F8, $05
    db $0E, $40, $04, $AF, $F8, $06, $F0, $0E, $F2, $63, $0F, $62, $20, $1F, $4F, $80
    db $3F, $40, $0F, $E9, $02, $A4, $22, $7E, $92, $40, $BC, $A4, $01, $E6, $00, $FC
    db $03, $00, $F8, $AA, $60, $FD, $E3, $FD, $FE, $44, $41, $78, $61, $06, $60, $F3
    db $01, $1F, $41, $01, $E1, $40, $56, $43, $F0, $40, $A1, $03, $36, $41, $C0, $80
    db $20, $15, $00, $06, $60, $E6, $FA, $00, $0E, $84, $00, $8E, $03, $05, $61, $BA
    db $8E, $09, $01, $84, $00, $04, $00, $0C, $E4, $20, $18, $EB, $00, $10, $6E, $02
    db $C1, $B2, $20, $19, $00, $8D, $BF, $00, $CD, $00, $C4, $CC, $F1, $AE, $40, $F3
    db $FF, $C4, $FB, $E4, $FB, $F5, $7B, $3B, $9D, $FF, $0E, $7F, $9F, $7F, $1F, $FF
    db $1B, $FF, $F7, $0B, $FD, $01, $09, $61, $FD, $08, $F4, $37, $FF, $F8, $37, $F8
    db $77, $F8, $F6, $F9, $6E, $7F, $F1, $2C, $F3, $18, $A7, $00, $9F, $37, $60, $7F
    db $01, $FE, $01, $F8, $07, $80, $7F, $A0, $02, $FF, $01, $87, $00, $07, $80, $03
    db $80, $03, $67, $E0, $0F, $70, $AE, $00, $6E, $00, $02, $97, $46, $60, $5D, $88
    db $72, $00, $40, $00, $20, $6E, $02, $63, $8A, $00, $A5, $20, $E8, $00, $10, $9C
    db $44, $8E, $05, $80, $84, $20, $E0, $FF, $00, $FC, $10, $EE, $00, $FE, $0C, $F3
    db $F9, $04, $CD, $21, $69, $62, $A0, $5F, $40, $BF, $30, $FF, $CF, $68, $97, $6C
    db $93, $C4, $3B, $60, $FF, $9F, $72, $8D, $29, $D6, $2B, $D4, $3C, $FF, $C3, $14
    db $EB, $15, $EA, $10, $EF, $18, $FF, $E7, $0C, $F3, $58, $A7, $50, $AF, $58, $FF
    db $A7, $48, $B7, $58, $A7, $30, $CF, $20, $FF, $DF, $20, $DF, $6C, $93, $5C, $A3
    db $9D, $FF, $62, $35, $CA, $77, $88, $62, $9D, $46, $E5, $B9, $34, $60, $03, $FC
    db $00, $81, $61, $C3, $01, $CE, $AB, $06, $D9, $F4, $60, $0C, $8E, $62, $8C, $94
    db $62, $CE, $FF, $00, $DF, $FE, $FF, $FC, $FE, $F8, $FC, $7F, $F0, $FA, $F0, $FA
    db $E8, $F1, $EC, $AF, $40, $F9, $9F, $BD, $40, $AE, $67, $BF, $7F, $17, $28, $17
    db $FF, $28, $57, $28, $D7, $28, $47, $B8, $47, $FF, $B8, $17, $F8, $17, $F8, $38
    db $06, $7C, $01, $02, $E0, $41, $E0, $41, $FD, $61, $F7, $00, $20, $00, $E0, $60
    db $01, $00, $03, $80, $FF, $03, $40, $07, $00, $C7, $00, $E0, $F0, $FF, $60, $F0
    db $30, $FC, $38, $7C, $38, $7D, $FF, $18, $7E, $0C, $3F, $06, $AF, $73, $1F, $FF
    db $73, $1F, $42, $3F, $42, $BF, $42, $AF, $FF, $40, $AF, $00, $E7, $00, $63, $00
    db $65, $8F, $00, $45, $00, $41, $12, $00, $DF, $62, $E0, $60, $FC, $FF, $00, $FE
    db $40, $BF, $20, $DF, $48, $B7, $FF, $68, $97, $30, $CE, $70, $8C, $00, $FF, $FE
    db $2E, $05, $80, $7F, $A0, $5F, $A0, $5F, $10, $FF, $EF, $02, $FD, $40, $BF, $50
    db $AF, $25, $FF, $DA, $32, $CD, $1C, $E3, $4A, $B5, $F8, $FF, $07, $F8, $07, $70
    db $8F, $74, $8B, $D4, $FD, $2B, $56, $01, $4C, $B3, $02, $FD, $74, $8B, $FF, $24
    db $DB, $6E, $91, $1A, $E5, $3A, $C5, $0F, $6A, $95, $CB, $34, $18, $04, $E0, $63
    db $E4, $60, $6E, $06, $FD, $0C, $86, $03, $F8, $04, $F8, $04, $E8, $14, $FF, $90
    db $68, $30, $C8, $40, $B0, $00, $E0, $FF, $00, $80, $7A, $85, $FA, $05, $EE, $11
    db $FE, $2F, $02, $49, $FF, $5B, $FE, $FF, $5D, $A6, $BF, $5F, $A4, $0E, $F5, $1F
    db $F4, $B4, $01, $17, $FF, $FE, $9F, $7E, $4E, $31, $2E, $11, $2E, $7F, $91, $27
    db $98, $37, $C8, $37, $48, $C8, $01, $FF, $10, $61, $60, $99, $F0, $C4, $80, $FA
    db $FF, $C0, $38, $60, $18, $70, $0C, $38, $04, $FF, $2E, $CE, $2F, $CF, $2F, $FA
    db $07, $EF, $FB, $01, $62, $0C, $00, $61, $00, $21, $F0, $F8, $FF, $F0, $F0, $C0
    db $F0, $82, $C0, $06, $80, $FF, $0F, $80, $1F, $C0, $C2, $E0, $F3, $3F, $BF, $F7
    db $2F, $F7, $6F, $EF, $5F, $04, $21, $7B, $FF, $1F, $7B, $1F, $01, $A4, $01, $2C
    db $00, $7D, $4C, $12, $20, $54, $00, $56, $00, $66, $0E, $00, $CE, $7B, $01, $03
    db $00, $02, $24, $20, $18, $02, $82, $78, $FF, $80, $7F, $80, $7E, $01, $FE, $02
    db $FC, $FB, $01, $FC, $36, $21, $08, $E3, $04, $F1, $02, $7F, $F9, $04, $F9, $02
    db $FD, $00, $FD, $2E, $07, $F6, $2E, $01, $10, $EF, $56, $21, $08, $F7, $C0, $3F
    db $EB, $E0, $1F, $30, $20, $7F, $2E, $03, $78, $87, $70, $FF, $8F, $78, $87, $F8
    db $07, $F7, $08, $E0, $FF, $1F, $00, $FF, $F0, $0F, $86, $39, $44, $FF, $3B, $84
    db $7B, $04, $FB, $07, $F8, $00, $FF, $FF, $84, $7B, $13, $EC, $A0, $0E, $52, $FF
    db $0D, $A6, $09, $56, $09, $A7, $08, $51, $FF, $06, $A8, $03, $54, $01, $62, $88
    db $45, $DF, $A8, $BA, $44, $B9, $44, $A2, $21, $EA, $14, $FF, $E9, $14, $EF, $10
    db $E7, $18, $E7, $18, $FF, $F7, $08, $F6, $09, $7F, $80, $7B, $84, $FF, $7B, $84
    db $B9, $46, $8C, $73, $E6, $39, $FF, $F6, $19, $72, $9D, $79, $8E, $BB, $4C, $FF
    db $BB, $44, $77, $08, $3B, $04, $1D, $02, $FF, $0E, $01, $CE, $01, $A3, $44, $45
    db $22, $FF, $54, $23, $04, $80, $40, $80, $02, $C0, $FF, $21, $C0, $B0, $40, $10
    db $60, $50, $A0, $EF, $10, $E2, $01, $48, $EE, $20, $58, $41, $B8, $FF, $D0, $BC
    db $AC, $F2, $30, $FF, $78, $FD, $FF, $F8, $FC, $FC, $FE, $FC, $FF, $FE, $FF, $FF
    db $7E, $FF, $FD, $FE, $FC, $FC, $F8, $FC, $FF, $4F, $80, $9F, $01, $3F, $03, $3F
    db $03, $FF, $7F, $07, $7E, $0F, $FD, $1F, $FB, $1F, $FF, $AA, $01, $54, $03, $A0
    db $0C, $40, $18, $FF, $80, $31, $00, $70, $00, $E2, $00, $E4, $EF, $8A, $70, $85
    db $70, $2E, $41, $0A, $F0, $05, $FD, $F0, $36, $40, $F8, $AA, $41, $94, $41, $28
    db $FF, $C3, $15, $E2, $09, $E2, $15, $E2, $08, $FF, $E3, $15, $E2, $88, $73, $85
    db $72, $89, $CF, $72, $85, $72, $81, $33, $20, $2E, $01, $E6, $19, $FF, $E6, $19
    db $A6, $59, $E4, $1B, $06, $F9, $7E, $2E, $01, $08, $F7, $0F, $F0, $0F, $F0, $2F
    db $01, $FE, $2E, $05, $9C, $63, $1C, $63, $87, $78, $40, $FF, $3F, $80, $3F, $40
    db $3F, $86, $39, $46, $7F, $39, $AA, $00, $51, $04, $AA, $04, $90, $42, $FF, $06
    db $A8, $06, $51, $0E, $0A, $20, $95, $FF, $20, $8A, $30, $85, $10, $CA, $10, $C5
    db $FE, $A5, $40, $45, $88, $E7, $00, $F7, $00, $FB, $FE, $2E, $00, $BF, $40, $DC
    db $23, $CE, $31, $EF, $F7, $10, $7E, $00, $67, $21, $EF, $10, $37, $C8, $FF, $83
    db $7C, $E3, $1C, $71, $8E, $EE, $10, $FF, $F7, $08, $FB, $04, $FC, $03, $FE, $01
    db $EE, $2F, $03, $61, $00, $25, $DE, $60, $12, $00, $19, $FF, $00, $09, $00, $88
    db $00, $00, $80, $00, $FF, $B0, $00, $10, $00, $10, $01, $10, $00, $FF, $21, $00
    db $28, $00, $28, $01, $48, $FF, $FF, $1F, $FE, $1F, $FC, $1E, $F8, $3E, $F8, $FD
    db $3C, $06, $60, $7C, $F8, $7C, $A0, $08, $41, $FF, $18, $A1, $10, $43, $20, $87
    db $60, $0F, $FF, $40, $1F, $C0, $37, $C0, $AA, $00, $55, $8D, $00, $1E, $69, $03
    db $FC, $2E, $61, $4F, $00, $35, $62, $87, $FF, $78, $3F, $C0, $BF, $40, $3E, $C1
    db $00, $FF, $FF, $1C, $E3, $3E, $C1, $BE, $41, $BE, $7F, $41, $3E, $C1, $3C, $C3
    db $1D, $E2, $5F, $40, $FF, $E6, $1C, $E3, $1E, $E1, $0E, $F1, $00, $F7, $FF, $F8
    db $07, $60, $21, $A9, $56, $E0, $1F, $FF, $E1, $1E, $E2, $1D, $E0, $1F, $EF, $10
    db $FF, $EF, $10, $6F, $90, $2E, $D1, $2F, $D0, $BE, $6E, $41, $E0, $1F, $E0, $1F
    db $C8, $C6, $00, $C8, $87, $37, $8C, $73, $88, $61, $2F, $03, $65, $20, $86, $41
    db $40, $7F, $1F, $60, $03, $04, $41, $02, $00, $F4, $40, $E5, $1C, $86, $00, $8F
    db $EB, $60, $18, $03, $04, $00, $82, $BF, $00, $E1, $00, $F1, $00, $F9, $EB, $41
    db $80, $FF, $04, $80, $82, $40, $81, $40, $41, $20, $7F, $50, $20, $68, $10, $11
    db $00, $08, $B3, $60, $DF, $04, $00, $86, $00, $42, $D7, $60, $63, $00, $FF, $50
    db $A8, $50, $A8, $51, $A8, $70, $88, $FD, $50, $E3, $60, $20, $D0, $80, $F0, $7C
    db $0E, $5F, $3C, $0E, $3C, $0F, $3E, $F3, $60, $7F, $F7, $60, $BF, $FF, $0F, $FD
    db $02, $FD, $02, $39, $20, $02, $FE, $8E, $01, $F8, $04, $F0, $0C, $81, $7E, $80
    db $F1, $7F, $62, $21, $4B, $60, $17, $02, $F9, $06, $FB, $04, $BF, $79, $86, $7D
    db $82, $7C, $83, $26, $01, $3E, $C5, $C1, $94, $62, $C0, $32, $01, $48, $63, $32
    db $03, $5F, $A0, $FF, $9F, $60, $9E, $61, $CE, $31, $00, $FF, $DE, $94, $61, $7F
    db $80, $FE, $01, $54, $01, $F8, $07, $FF, $E2, $1D, $F6, $09, $FA, $05, $FA, $05
    db $7B, $E8, $17, $64, $01, $E2, $1D, $E8, $17, $4B, $25, $FF, $7F, $80, $1F, $60
    db $0F, $30, $07, $18, $FF, $FF, $00, $1F, $E0, $07, $38, $01, $06, $B8, $1E, $20
    db $28, $22, $74, $41, $F8, $00, $C0, $EC, $40, $40, $FE, $28, $20, $20, $00, $1F
    db $60, $0E, $31, $81, $FF, $0E, $63, $84, $11, $E0, $00, $1C, $04, $FF, $03, $02
    db $01, $80, $00, $7C, $00, $C3, $F7, $3C, $80, $43, $93, $00, $E0, $60, $90, $60
    db $BF, $90, $72, $F8, $F1, $FC, $F9, $C1, $01, $BC, $FF, $F9, $1C, $F9, $1C, $F8
    db $0C, $FF, $00, $F6, $54, $03, $FD, $03, $D6, $02, $02, $0F, $F0, $4F, $FF, $B0
    db $07, $F8, $47, $B8, $47, $B8, $C3, $1F, $3C, $C3, $3C, $81, $7E, $4B, $23, $54
    db $03, $2F, $61, $80, $6E, $07, $2E, $03, $4B, $29, $94, $61, $FE, $61, $00, $00
    db $2E, $60, $F8, $DF, $07, $FA, $05, $F6, $09, $0E, $29, $FF, $00, $DE, $0C, $2B
    db $1F, $E0, $00, $3F, $0E, $27, $C1, $3E, $EF, $80, $61, $00, $F8, $2E, $2B, $FF
    db $00, $AA, $F7, $55, $B5, $4A, $6E, $21, $9A, $65, $95, $6A, $FF, $9A, $65, $0D
    db $F2, $AA, $55, $55, $AA, $94, $7E, $29, $5F, $2C, $FF, $9D, $27, $9F, $A8, $20
    db $9D, $23, $9C, $7B, $9C, $94, $B4, $20, $88, $88, $9C, $9C, $9D, $23, $A3, $81
    db $81, $B4, $21, $B4, $21, $9D, $21, $8F, $D0, $20, $81, $DB, $81, $88, $D6, $20
    db $81, $81, $9D, $23, $C1, $C1, $FF, $88, $88, $8F, $8F, $88, $88, $C1, $C1, $26
    db $9D, $28, $FF, $CF, $F8, $20, $AA, $23, $9C, $02, $40, $E8, $21, $E3, $E3, $E3
    db $BC, $25, $D6, $23, $D0, $21, $FF, $FF, $F8, $B6, $20, $40, $C0, $C0, $D6, $21
    db $C0, $C0, $9D, $27, $C3, $BD, $C3, $9D, $25, $F9, $F9, $FC, $FC, $EC, $29, $FF
    db $7F, $FF, $88, $88, $83, $83, $87, $87, $1A, $43, $EC, $E0, $23, $28, $41, $F8
    db $F8, $E8, $25, $81, $81, $8C, $F0, $74, $44, $4C, $45, $82, $43, $2A, $45, $9C
    db $9C, $C8, $C8, $BF, $E1, $E1, $E3, $E3, $C7, $C7, $1C, $41, $E1, $FF, $E1, $C4
    db $C4, $C7, $C7, $80, $80, $C7, $70, $A8, $40, $DC, $25, $74, $43, $EA, $23, $C3
    db $C3, $E3, $C2, $46, $DA, $DC, $25, $89, $D4, $42, $C4, $C4, $DC, $27, $80, $80
    db $E3, $8F, $8F, $2A, $43, $A8, $41, $A6, $41, $C4, $C4, $E1, $FD, $E1, $9D, $23
    db $C0, $C0, $8F, $8F, $80, $80, $C3, $F8, $F8, $DA, $23, $0A, $41, $C4, $49, $D0
    db $27, $88, $88, $06, $9D, $21, $80, $80, $C2, $49, $AD, $64, $44, $7F, $66, $7F
    db $88, $7F, $00, $AA, $7F, $BC, $6E

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
