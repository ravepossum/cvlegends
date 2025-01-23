SECTION "ROM Bank $008", ROMX

    ld bc, $0004
    call Call_000_38FB
    ld hl, $406B
    call Call_000_373C
    call Call_000_3772
    ldh a, [rP1]
    and $03
    cp $03
    jr nz, jr_008_4050

    ld a, $20
    ldh [rP1], a
    ldh a, [rP1]
    ldh a, [rP1]
    ld a, $30
    ldh [rP1], a
    ld a, $10
    ldh [rP1], a
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ld a, $30
    ldh [rP1], a
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    and $03
    cp $03
    jr nz, jr_008_4050

    ld hl, $405B
    call Call_000_373C
    call Call_000_3772
    sub a
    ret


jr_008_4050:
    ld hl, $405B
    call Call_000_373C
    call Call_000_3772
    scf
    ret


    db $89, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $89, $01, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00

    ld bc, $0078
    call Call_000_38FB
    ld hl, $38DB
    call Call_000_373C
    ld bc, $0004
    call Call_000_38FB
    ld hl, $43F0
    call Call_000_373C
    ld bc, $0004
    call Call_000_38FB
    ld hl, $4400
    call Call_000_373C
    ld bc, $0004
    call Call_000_38FB
    ld hl, $4410
    call Call_000_373C
    ld bc, $0004
    call Call_000_38FB
    ld hl, $4420
    call Call_000_373C
    ld bc, $0004
    call Call_000_38FB
    ld hl, $4430
    call Call_000_373C
    ld bc, $0004
    call Call_000_38FB
    ld hl, $4440
    call Call_000_373C
    ld bc, $0004
    call Call_000_38FB
    ld hl, $4450
    call Call_000_373C
    ld bc, $0004
    call Call_000_38FB
    ld hl, $4460
    call Call_000_373C
    ld bc, $0004
    call Call_000_38FB
    ld hl, $4348
    ld de, $43D0
    call Call_000_377E
    ld hl, $412C
    ld de, $43E0
    call Call_000_377E
    call Call_000_0562
    ld hl, $38EB
    call Call_000_373C
    ld bc, $0004
    call Call_000_38FB
    ld hl, $38DB
    call Call_000_373C
    ld bc, $0004
    call Call_000_38FB
    ld hl, $37BB
    call Call_000_373C
    ld bc, $0004
    call Call_000_38FB
    ld a, $01
    ld [$C73D], a
    ret


    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, l

Jump_008_41E1:
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    nop
    rst $38
    db $FC
    nop
    nop
    nop
    xor d
    xor b
    ret nz

    nop
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l

jr_008_4280:
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l

jr_008_4285:
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $1445
    ld d, c
    ld b, b
    ld bc, $1445
    ld d, c
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
    ld [bc], a
    adc d
    jr z, jr_008_4280

    add b
    ld [bc], a
    adc d
    jr z, jr_008_4285

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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    ld bc, $0000
    inc b
    nop
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
    rst $38
    ld a, a
    ld a, a
    ccf
    jp c, $0001

    nop
    rst $38
    ld a, a
    or b
    ld a, [hl+]
    add hl, bc
    ld [bc], a
    nop
    nop
    rst $38
    ld a, a
    jr jr_008_43D7

    ret nc

    ld [hl], b
    nop
    nop
    rst $38
    ld a, a
    ld e, a
    ld d, a
    ccf
    ld b, [hl]
    nop
    nop
    rst $38
    ld a, a
    or l
    ld d, [hl]
    ld c, d
    add hl, hl
    nop
    nop
    rst $38
    ld a, a
    adc [hl]
    ld a, [hl-]
    inc b
    ld d, $00
    nop
    rst $38
    ld a, a
    db $10
    ld h, [hl]
    and l
    ld d, b
    nop
    nop
    rst $38
    ld a, a
    cp c
    ld b, [hl]
    ld [hl-], a
    add hl, bc
    nop
    nop
    rst $38
    ld a, a
    ret c

    ld c, l
    db $10
    inc e
    nop
    nop
    rst $38
    ld a, a
    sbc b
    ld h, d
    ld [hl], c
    ld b, l
    nop
    nop
    rst $38
    ld a, a
    add hl, sp
    ld b, e
    ld sp, $0002
    nop
    rst $38
    ld a, a
    ld a, l
    ld c, [hl]
    ld e, e
    dec l
    inc d
    inc b
    rst $38
    ld a, a
    or l
    ld h, d
    ld c, d
    ld e, c
    nop
    ld b, b
    rst $38
    ld a, a
    dec [hl]
    ld e, e
    ld b, [hl]
    ld h, $40
    dec c
    rst $38
    ld a, a
    push af
    ld h, [hl]
    jp z, $4049

    ld d, c
    jr jr_008_4425

    ld a, a
    dec bc
    ld e, a
    inc b
    dec b
    nop
    jr jr_008_442D

    rst $38
    ld a, a
    and b
    ld a, h
    ld l, d
    dec [hl]
    ld e, c
    nop
    nop
    nop
    nop
    nop
    nop

jr_008_43D7:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    xor c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, c
    ld e, l
    ld [$0B00], sp
    adc h
    ret nc

    db $F4
    ld h, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, c
    ld d, d
    ld [$0B00], sp
    xor c
    rst $20
    sbc a
    ld bc, $7EC0
    add sp, -$18
    add sp, -$18
    ldh [$FF79], a
    ld b, a
    ld [$0B00], sp
    call nz, Call_000_16D0
    and l
    set 1, c
    dec b
    ret nc

    db $10
    and d
    jr z, jr_008_449A

    inc a
    ld [$0B00], sp

jr_008_4425:
    ldh a, [rNR12]
    and l
    ret


    ret


    ret z

    ret nc

    inc e

jr_008_442D:
    and l
    jp z, Jump_008_79C9

    ld sp, $0008
    dec bc
    inc c
    and l
    jp z, Jump_008_7EC9

    ret nc

    ld b, $A5
    set 1, c
    ld a, [hl]
    ld a, c

jr_008_4441:
    ld h, $08
    nop
    dec bc
    add hl, sp
    call $0C48
    ret nc

    inc [hl]
    and l
    ret


    ret


    add b
    ret nc

    ld a, c
    dec de
    ld [$0B00], sp
    ld [$EAEA], a
    ld [$A9EA], a
    ld bc, $4FCD
    inc c
    ret nc

    ld a, c
    db $10
    ld [$0B00], sp
    ld c, h
    jr nz, @+$0A

jr_008_4468:
    ld [$EAEA], a

jr_008_446B:
    ld [$60EA], a
    ld [$21EA], a

jr_008_4471:
    db $DB
    jr c, jr_008_4441

    inc a

jr_008_4475:
    scf
    ld bc, $0004

jr_008_4479:
    call Call_000_38FB
    ld hl, $4D37

jr_008_447F:
    ld de, $44A7
    call Call_000_377E

jr_008_4485:
    ld hl, $5D37
    ld de, $44B7

jr_008_448B:
    call Call_000_377E
    ld hl, $44D7

jr_008_4491:
    ld de, $44C7

jr_008_4494:
    call Call_000_377E
    call Call_000_0562

jr_008_449A:
    ld hl, $38EB
    call Call_000_373C
    ld bc, $0004

jr_008_44A3:
    call Call_000_38FB

jr_008_44A6:
    ret


jr_008_44A7:
    sbc c

jr_008_44A8:
    nop

jr_008_44A9:
    nop

jr_008_44AA:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    sbc c
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
    and c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_008_44D3:
    nop

jr_008_44D4:
    nop

jr_008_44D5:
    nop

jr_008_44D6:
    nop
    adc l
    jr @-$71

    jr jr_008_4468

    jr @-$73

    jr @-$74

    jr jr_008_446B

    jr @-$76

    jr @-$77

    jr @-$77

    jr jr_008_4471

    jr @-$77

    jr jr_008_4475

    jr @-$77

    jr jr_008_4479

    jr @-$77

    jr @-$77

    jr jr_008_447F

    jr @-$77

    jr @-$77

    jr jr_008_4485

    jr @-$77

    jr @-$77

    jr jr_008_448B

    jr @-$77

    jr @-$77

    jr @-$78

    jr jr_008_4491

    jr @-$7A

    jr @-$7B

    jr jr_008_4494

    jr @-$71

    jr jr_008_44A3

    jr @-$71

    jr jr_008_44A6

    jr jr_008_44A7

    jr jr_008_44A8

    jr jr_008_44A9

    jr jr_008_44AA

    jr @-$7D

    db $10
    add b
    db $10
    ld a, a
    db $10
    ld a, [hl]
    db $10
    ld a, l
    db $10
    ld a, h
    db $10
    ld a, e
    db $10
    ld a, d
    db $10
    ld a, c
    db $10
    ld a, b
    db $10
    ld [hl], a
    db $10
    halt
    db $10
    ld [hl], l
    db $10
    ld [hl], h
    db $10
    ld [hl], e
    db $10
    ld [hl], d
    db $10
    ld [hl], c
    db $10
    ld [hl], b
    db $10
    ld l, a
    db $10
    ld l, [hl]
    db $10
    add [hl]
    jr jr_008_44D3

    jr jr_008_44D4

    jr jr_008_44D5

    jr jr_008_44D6

    jr @-$71

    jr @+$6F

    jr jr_008_45C6

    jr @+$6D

    jr jr_008_45C8

    jr @+$6B

    jr jr_008_45CA

    jr @+$69

    jr jr_008_45CC

    jr @+$67

    jr jr_008_45CE

    jr @+$65

    jr jr_008_45D0

    jr @+$63

    jr jr_008_45D2

    jr @+$61

    jr jr_008_45D4

    jr @+$5F

    jr jr_008_45D6

    jr @+$5D

    jr jr_008_45D8

    jr @+$5B

    jr jr_008_45DA

    jr @+$59

    jr jr_008_45DC

    jr @+$57

    jr jr_008_45DE

    jr @+$55

    jr jr_008_45E0

    jr @+$53

    jr jr_008_45E2

    jr @+$51

    jr @+$6F

    jr jr_008_45E6

    jr @+$4F

    jr jr_008_45E8

    jr @+$4D

    jr jr_008_45EA

    jr @+$4B

    jr jr_008_45EC

    jr @+$49

    jr jr_008_45EE

    jr @+$47

    jr jr_008_45F0

    jr @+$45

    jr jr_008_45F2

    jr @+$43

    jr jr_008_45F6

    jr @+$43

    jr jr_008_45F8

    jr @+$43

    jr jr_008_45FC

    jr @+$43

    jr jr_008_4600

    jr @+$41

    jr jr_008_4602

    jr @+$3F

jr_008_45C6:
    jr jr_008_4604

jr_008_45C8:
    jr @+$3D

jr_008_45CA:
    jr jr_008_4606

jr_008_45CC:
    jr @+$3B

jr_008_45CE:
    jr jr_008_4608

jr_008_45D0:
    jr @+$39

jr_008_45D2:
    jr jr_008_460A

jr_008_45D4:
    jr @+$37

jr_008_45D6:
    jr jr_008_460C

jr_008_45D8:
    jr @+$35

jr_008_45DA:
    jr jr_008_460E

jr_008_45DC:
    jr @+$33

jr_008_45DE:
    jr jr_008_4610

jr_008_45E0:
    jr @+$31

jr_008_45E2:
    jr jr_008_4612

    jr @+$2F

jr_008_45E6:
    jr jr_008_4614

jr_008_45E8:
    jr @+$2D

jr_008_45EA:
    jr jr_008_4618

jr_008_45EC:
    jr @+$2D

jr_008_45EE:
    jr jr_008_461C

jr_008_45F0:
    jr @+$2D

jr_008_45F2:
    jr jr_008_4620

    jr @+$2D

jr_008_45F6:
    jr jr_008_4624

jr_008_45F8:
    jr @+$2D

    jr jr_008_4628

jr_008_45FC:
    jr @+$2D

    jr jr_008_462C

jr_008_4600:
    jr @+$2D

jr_008_4602:
    jr jr_008_4630

jr_008_4604:
    jr @+$2D

jr_008_4606:
    jr jr_008_4632

jr_008_4608:
    jr @+$2B

jr_008_460A:
    jr jr_008_4634

jr_008_460C:
    jr @+$29

jr_008_460E:
    jr jr_008_4636

jr_008_4610:
    jr @+$27

jr_008_4612:
    jr jr_008_4638

jr_008_4614:
    jr @+$25

    jr jr_008_464C

jr_008_4618:
    jr @+$35

    jr jr_008_464E

jr_008_461C:
    jr jr_008_4640

    jr @+$23

jr_008_4620:
    jr jr_008_4642

    jr jr_008_4624

jr_008_4624:
    jr jr_008_4626

jr_008_4626:
    jr jr_008_4628

jr_008_4628:
    jr jr_008_462A

jr_008_462A:
    jr jr_008_462C

jr_008_462C:
    jr jr_008_462E

jr_008_462E:
    jr jr_008_4630

jr_008_4630:
    jr jr_008_4632

jr_008_4632:
    jr jr_008_4634

jr_008_4634:
    jr jr_008_4636

jr_008_4636:
    jr jr_008_4638

jr_008_4638:
    jr jr_008_463A

jr_008_463A:
    jr jr_008_463C

jr_008_463C:
    jr jr_008_463E

jr_008_463E:
    jr jr_008_4640

jr_008_4640:
    jr jr_008_4642

jr_008_4642:
    jr jr_008_4644

jr_008_4644:
    jr jr_008_4646

jr_008_4646:
    jr jr_008_4648

jr_008_4648:
    jr jr_008_464A

jr_008_464A:
    jr @+$21

jr_008_464C:
    jr jr_008_466C

jr_008_464E:
    jr @+$1F

    jr @+$27

    jr jr_008_4678

    jr @+$25

    jr jr_008_468C

    jr @+$35

    jr jr_008_468E

    jr jr_008_467A

    jr @+$1D

    jr jr_008_467C

    jr jr_008_4664

jr_008_4664:
    jr jr_008_4666

jr_008_4666:
    jr jr_008_4668

jr_008_4668:
    jr jr_008_466A

jr_008_466A:
    jr jr_008_466C

jr_008_466C:
    jr jr_008_466E

jr_008_466E:
    jr jr_008_4670

jr_008_4670:
    jr jr_008_4672

jr_008_4672:
    jr jr_008_4674

jr_008_4674:
    jr jr_008_4676

jr_008_4676:
    jr jr_008_4678

jr_008_4678:
    jr jr_008_467A

jr_008_467A:
    jr jr_008_467C

jr_008_467C:
    jr jr_008_467E

jr_008_467E:
    jr jr_008_4680

jr_008_4680:
    jr jr_008_4682

jr_008_4682:
    jr jr_008_4684

jr_008_4684:
    jr jr_008_4686

jr_008_4686:
    jr jr_008_4688

jr_008_4688:
    jr jr_008_468A

jr_008_468A:
    jr @+$1B

jr_008_468C:
    jr jr_008_46A6

jr_008_468E:
    jr @+$19

    jr @+$27

    jr jr_008_46B8

    jr @+$25

    jr jr_008_46CC

    jr @+$35

    jr jr_008_46CE

    jr jr_008_46B4

    jr @+$17

    db $10
    inc d
    jr jr_008_46A4

jr_008_46A4:
    jr jr_008_46A6

jr_008_46A6:
    jr jr_008_46A8

jr_008_46A8:
    jr jr_008_46AA

jr_008_46AA:
    jr jr_008_46AC

jr_008_46AC:
    jr jr_008_46AE

jr_008_46AE:
    jr jr_008_46B0

jr_008_46B0:
    jr jr_008_46B2

jr_008_46B2:
    jr jr_008_46B4

jr_008_46B4:
    jr jr_008_46B6

jr_008_46B6:
    jr jr_008_46B8

jr_008_46B8:
    jr jr_008_46BA

jr_008_46BA:
    jr jr_008_46BC

jr_008_46BC:
    jr jr_008_46BE

jr_008_46BE:
    jr jr_008_46C0

jr_008_46C0:
    jr jr_008_46C2

jr_008_46C2:
    jr jr_008_46C4

jr_008_46C4:
    jr jr_008_46C6

jr_008_46C6:
    jr jr_008_46C8

jr_008_46C8:
    jr jr_008_46CA

jr_008_46CA:
    jr jr_008_46E0

jr_008_46CC:
    jr jr_008_46E1

jr_008_46CE:
    jr jr_008_46E8

    jr @+$27

    jr jr_008_46F8

    jr @+$25

    jr jr_008_470C

    jr @+$35

    jr jr_008_470E

    jr @+$17

    jr @+$15

jr_008_46E0:
    db $10

jr_008_46E1:
    add hl, de
    jr jr_008_46E4

jr_008_46E4:
    jr jr_008_46E6

jr_008_46E6:
    jr jr_008_46E8

jr_008_46E8:
    jr jr_008_46EA

jr_008_46EA:
    jr jr_008_46EC

jr_008_46EC:
    jr jr_008_46EE

jr_008_46EE:
    jr jr_008_46F0

jr_008_46F0:
    jr jr_008_46F2

jr_008_46F2:
    jr jr_008_46F4

jr_008_46F4:
    jr jr_008_46F6

jr_008_46F6:
    jr jr_008_46F8

jr_008_46F8:
    jr jr_008_46FA

jr_008_46FA:
    jr jr_008_46FC

jr_008_46FC:
    jr jr_008_46FE

jr_008_46FE:
    jr jr_008_4700

jr_008_4700:
    jr jr_008_4702

jr_008_4702:
    jr jr_008_4704

jr_008_4704:
    jr jr_008_4706

jr_008_4706:
    jr jr_008_4708

jr_008_4708:
    jr jr_008_470A

jr_008_470A:
    jr @+$1B

jr_008_470C:
    jr @+$17

jr_008_470E:
    jr @+$15

    jr @+$27

    jr jr_008_4738

    jr @+$25

    jr jr_008_474C

    jr @+$35

    jr jr_008_474E

    jr @+$15

    jr @+$17

    db $10
    inc d
    jr jr_008_4724

jr_008_4724:
    jr jr_008_4726

jr_008_4726:
    jr jr_008_4728

jr_008_4728:
    jr jr_008_472A

jr_008_472A:
    jr jr_008_472C

jr_008_472C:
    jr jr_008_472E

jr_008_472E:
    jr jr_008_4730

jr_008_4730:
    jr jr_008_4732

jr_008_4732:
    jr jr_008_4734

jr_008_4734:
    jr jr_008_4736

jr_008_4736:
    jr jr_008_4738

jr_008_4738:
    jr jr_008_473A

jr_008_473A:
    jr jr_008_473C

jr_008_473C:
    jr jr_008_473E

jr_008_473E:
    jr jr_008_4740

jr_008_4740:
    jr jr_008_4742

jr_008_4742:
    jr jr_008_4744

jr_008_4744:
    jr jr_008_4746

jr_008_4746:
    jr jr_008_4748

jr_008_4748:
    jr jr_008_474A

jr_008_474A:
    jr jr_008_4760

jr_008_474C:
    jr jr_008_4761

jr_008_474E:
    jr @+$17

    jr @+$27

    jr jr_008_4778

    jr @+$25

    jr jr_008_478C

    jr @+$35

    jr jr_008_478E

    jr @+$17

    jr @+$15

jr_008_4760:
    db $10

jr_008_4761:
    add hl, de
    jr jr_008_4764

jr_008_4764:
    jr jr_008_4766

jr_008_4766:
    jr jr_008_4768

jr_008_4768:
    jr jr_008_476A

jr_008_476A:
    jr jr_008_476C

jr_008_476C:
    jr jr_008_476E

jr_008_476E:
    jr jr_008_4770

jr_008_4770:
    jr jr_008_4772

jr_008_4772:
    jr jr_008_4774

jr_008_4774:
    jr jr_008_4776

jr_008_4776:
    jr jr_008_4778

jr_008_4778:
    jr jr_008_477A

jr_008_477A:
    jr jr_008_477C

jr_008_477C:
    jr jr_008_477E

jr_008_477E:
    jr jr_008_4780

jr_008_4780:
    jr jr_008_4782

jr_008_4782:
    jr jr_008_4784

jr_008_4784:
    jr jr_008_4786

jr_008_4786:
    jr jr_008_4788

jr_008_4788:
    jr jr_008_478A

jr_008_478A:
    jr @+$1B

jr_008_478C:
    jr @+$17

jr_008_478E:
    jr @+$15

    jr @+$27

    jr jr_008_47B8

    jr @+$25

    jr jr_008_47CC

    jr @+$35

    jr jr_008_47CE

    jr @+$15

    jr @+$17

    db $10
    inc d
    jr jr_008_47A4

jr_008_47A4:
    jr jr_008_47A6

jr_008_47A6:
    jr jr_008_47A8

jr_008_47A8:
    jr jr_008_47AA

jr_008_47AA:
    jr jr_008_47AC

jr_008_47AC:
    jr jr_008_47AE

jr_008_47AE:
    jr jr_008_47B0

jr_008_47B0:
    jr jr_008_47B2

jr_008_47B2:
    jr jr_008_47B4

jr_008_47B4:
    jr jr_008_47B6

jr_008_47B6:
    jr jr_008_47B8

jr_008_47B8:
    jr jr_008_47BA

jr_008_47BA:
    jr jr_008_47BC

jr_008_47BC:
    jr jr_008_47BE

jr_008_47BE:
    jr jr_008_47C0

jr_008_47C0:
    jr jr_008_47C2

jr_008_47C2:
    jr jr_008_47C4

jr_008_47C4:
    jr jr_008_47C6

jr_008_47C6:
    jr jr_008_47C8

jr_008_47C8:
    jr jr_008_47CA

jr_008_47CA:
    jr jr_008_47E0

jr_008_47CC:
    jr jr_008_47E1

jr_008_47CE:
    jr @+$17

    jr @+$27

    jr jr_008_47F8

    jr @+$25

    jr jr_008_480C

    jr @+$35

    jr jr_008_480E

    jr @+$17

    jr @+$15

jr_008_47E0:
    db $10

jr_008_47E1:
    add hl, de
    jr jr_008_47E4

jr_008_47E4:
    jr jr_008_47E6

jr_008_47E6:
    jr jr_008_47E8

jr_008_47E8:
    jr jr_008_47EA

jr_008_47EA:
    jr jr_008_47EC

jr_008_47EC:
    jr jr_008_47EE

jr_008_47EE:
    jr jr_008_47F0

jr_008_47F0:
    jr jr_008_47F2

jr_008_47F2:
    jr jr_008_47F4

jr_008_47F4:
    jr jr_008_47F6

jr_008_47F6:
    jr jr_008_47F8

jr_008_47F8:
    jr jr_008_47FA

jr_008_47FA:
    jr jr_008_47FC

jr_008_47FC:
    jr jr_008_47FE

jr_008_47FE:
    jr jr_008_4800

jr_008_4800:
    jr jr_008_4802

jr_008_4802:
    jr jr_008_4804

jr_008_4804:
    jr jr_008_4806

jr_008_4806:
    jr jr_008_4808

jr_008_4808:
    jr jr_008_480A

jr_008_480A:
    jr @+$1B

jr_008_480C:
    jr @+$17

jr_008_480E:
    jr @+$15

    jr @+$27

    jr jr_008_4838

    jr @+$25

    jr jr_008_484C

    jr @+$35

    jr jr_008_484E

    jr @+$15

    jr @+$17

    db $10
    inc d
    jr jr_008_4824

jr_008_4824:
    jr jr_008_4826

jr_008_4826:
    jr jr_008_4828

jr_008_4828:
    jr jr_008_482A

jr_008_482A:
    jr jr_008_482C

jr_008_482C:
    jr jr_008_482E

jr_008_482E:
    jr jr_008_4830

jr_008_4830:
    jr jr_008_4832

jr_008_4832:
    jr jr_008_4834

jr_008_4834:
    jr jr_008_4836

jr_008_4836:
    jr jr_008_4838

jr_008_4838:
    jr jr_008_483A

jr_008_483A:
    jr jr_008_483C

jr_008_483C:
    jr jr_008_483E

jr_008_483E:
    jr jr_008_4840

jr_008_4840:
    jr jr_008_4842

jr_008_4842:
    jr jr_008_4844

jr_008_4844:
    jr jr_008_4846

jr_008_4846:
    jr jr_008_4848

jr_008_4848:
    jr jr_008_484A

jr_008_484A:
    jr jr_008_4860

jr_008_484C:
    jr jr_008_4861

jr_008_484E:
    jr @+$17

    jr @+$27

    jr jr_008_4878

    jr @+$25

    jr jr_008_488C

    jr @+$35

    jr jr_008_488E

    jr @+$17

    jr @+$15

jr_008_4860:
    db $10

jr_008_4861:
    add hl, de
    jr jr_008_4864

jr_008_4864:
    jr jr_008_4866

jr_008_4866:
    jr jr_008_4868

jr_008_4868:
    jr jr_008_486A

jr_008_486A:
    jr jr_008_486C

jr_008_486C:
    jr jr_008_486E

jr_008_486E:
    jr jr_008_4870

jr_008_4870:
    jr jr_008_4872

jr_008_4872:
    jr jr_008_4874

jr_008_4874:
    jr jr_008_4876

jr_008_4876:
    jr jr_008_4878

jr_008_4878:
    jr jr_008_487A

jr_008_487A:
    jr jr_008_487C

jr_008_487C:
    jr jr_008_487E

jr_008_487E:
    jr jr_008_4880

jr_008_4880:
    jr jr_008_4882

jr_008_4882:
    jr jr_008_4884

jr_008_4884:
    jr jr_008_4886

jr_008_4886:
    jr jr_008_4888

jr_008_4888:
    jr jr_008_488A

jr_008_488A:
    jr @+$1B

jr_008_488C:
    jr @+$17

jr_008_488E:
    jr @+$15

    jr @+$27

    jr jr_008_48B8

    jr @+$25

    jr jr_008_48CC

    jr @+$35

    jr jr_008_48CE

    jr @+$15

    jr @+$17

    db $10
    inc d
    jr jr_008_48A4

jr_008_48A4:
    jr jr_008_48A6

jr_008_48A6:
    jr jr_008_48A8

jr_008_48A8:
    jr jr_008_48AA

jr_008_48AA:
    jr jr_008_48AC

jr_008_48AC:
    jr jr_008_48AE

jr_008_48AE:
    jr jr_008_48B0

jr_008_48B0:
    jr jr_008_48B2

jr_008_48B2:
    jr jr_008_48B4

jr_008_48B4:
    jr jr_008_48B6

jr_008_48B6:
    jr jr_008_48B8

jr_008_48B8:
    jr jr_008_48BA

jr_008_48BA:
    jr jr_008_48BC

jr_008_48BC:
    jr jr_008_48BE

jr_008_48BE:
    jr jr_008_48C0

jr_008_48C0:
    jr jr_008_48C2

jr_008_48C2:
    jr jr_008_48C4

jr_008_48C4:
    jr jr_008_48C6

jr_008_48C6:
    jr jr_008_48C8

jr_008_48C8:
    jr jr_008_48CA

jr_008_48CA:
    jr jr_008_48E0

jr_008_48CC:
    jr jr_008_48E1

jr_008_48CE:
    jr @+$17

    jr @+$27

    jr jr_008_48F8

    jr @+$25

    jr jr_008_490C

    jr @+$35

    jr jr_008_490E

    jr @+$17

    jr @+$15

jr_008_48E0:
    db $10

jr_008_48E1:
    add hl, de
    jr jr_008_48E4

jr_008_48E4:
    jr jr_008_48E6

jr_008_48E6:
    jr jr_008_48E8

jr_008_48E8:
    jr jr_008_48EA

jr_008_48EA:
    jr jr_008_48EC

jr_008_48EC:
    jr jr_008_48EE

jr_008_48EE:
    jr jr_008_48F0

jr_008_48F0:
    jr jr_008_48F2

jr_008_48F2:
    jr jr_008_48F4

jr_008_48F4:
    jr jr_008_48F6

jr_008_48F6:
    jr jr_008_48F8

jr_008_48F8:
    jr jr_008_48FA

jr_008_48FA:
    jr jr_008_48FC

jr_008_48FC:
    jr jr_008_48FE

jr_008_48FE:
    jr jr_008_4900

jr_008_4900:
    jr jr_008_4902

jr_008_4902:
    jr jr_008_4904

jr_008_4904:
    jr jr_008_4906

jr_008_4906:
    jr jr_008_4908

jr_008_4908:
    jr jr_008_490A

jr_008_490A:
    jr @+$1B

jr_008_490C:
    jr @+$17

jr_008_490E:
    jr @+$15

    jr @+$27

    jr jr_008_4938

    jr @+$25

    jr jr_008_494C

    jr @+$35

    jr jr_008_494E

    jr @+$15

    jr @+$17

    db $10
    inc d
    jr jr_008_4924

jr_008_4924:
    jr jr_008_4926

jr_008_4926:
    jr jr_008_4928

jr_008_4928:
    jr jr_008_492A

jr_008_492A:
    jr jr_008_492C

jr_008_492C:
    jr jr_008_492E

jr_008_492E:
    jr jr_008_4930

jr_008_4930:
    jr jr_008_4932

jr_008_4932:
    jr jr_008_4934

jr_008_4934:
    jr jr_008_4936

jr_008_4936:
    jr jr_008_4938

jr_008_4938:
    jr jr_008_493A

jr_008_493A:
    jr jr_008_493C

jr_008_493C:
    jr jr_008_493E

jr_008_493E:
    jr jr_008_4940

jr_008_4940:
    jr jr_008_4942

jr_008_4942:
    jr jr_008_4944

jr_008_4944:
    jr jr_008_4946

jr_008_4946:
    jr jr_008_4948

jr_008_4948:
    jr jr_008_494A

jr_008_494A:
    jr jr_008_4960

jr_008_494C:
    jr jr_008_4961

jr_008_494E:
    jr @+$17

    jr @+$27

    jr jr_008_4978

    jr @+$25

    jr jr_008_498C

    jr @+$35

    jr jr_008_498E

    jr @+$17

    jr @+$15

jr_008_4960:
    db $10

jr_008_4961:
    add hl, de
    jr jr_008_4964

jr_008_4964:
    jr jr_008_4966

jr_008_4966:
    jr jr_008_4968

jr_008_4968:
    jr jr_008_496A

jr_008_496A:
    jr jr_008_496C

jr_008_496C:
    jr jr_008_496E

jr_008_496E:
    jr jr_008_4970

jr_008_4970:
    jr jr_008_4972

jr_008_4972:
    jr jr_008_4974

jr_008_4974:
    jr jr_008_4976

jr_008_4976:
    jr jr_008_4978

jr_008_4978:
    jr jr_008_497A

jr_008_497A:
    jr jr_008_497C

jr_008_497C:
    jr jr_008_497E

jr_008_497E:
    jr jr_008_4980

jr_008_4980:
    jr jr_008_4982

jr_008_4982:
    jr jr_008_4984

jr_008_4984:
    jr jr_008_4986

jr_008_4986:
    jr jr_008_4988

jr_008_4988:
    jr jr_008_498A

jr_008_498A:
    jr @+$1B

jr_008_498C:
    jr @+$17

jr_008_498E:
    jr @+$15

    jr @+$27

    jr jr_008_49B8

    jr @+$25

    jr jr_008_49CC

    jr @+$35

    jr jr_008_49CE

    jr @+$15

    jr @+$17

    db $10
    inc d
    jr jr_008_49A4

jr_008_49A4:
    jr jr_008_49A6

jr_008_49A6:
    jr jr_008_49A8

jr_008_49A8:
    jr jr_008_49AA

jr_008_49AA:
    jr jr_008_49AC

jr_008_49AC:
    jr jr_008_49AE

jr_008_49AE:
    jr jr_008_49B0

jr_008_49B0:
    jr jr_008_49B2

jr_008_49B2:
    jr jr_008_49B4

jr_008_49B4:
    jr jr_008_49B6

jr_008_49B6:
    jr jr_008_49B8

jr_008_49B8:
    jr jr_008_49BA

jr_008_49BA:
    jr jr_008_49BC

jr_008_49BC:
    jr jr_008_49BE

jr_008_49BE:
    jr jr_008_49C0

jr_008_49C0:
    jr jr_008_49C2

jr_008_49C2:
    jr jr_008_49C4

jr_008_49C4:
    jr jr_008_49C6

jr_008_49C6:
    jr jr_008_49C8

jr_008_49C8:
    jr jr_008_49CA

jr_008_49CA:
    jr jr_008_49E0

jr_008_49CC:
    jr jr_008_49E1

jr_008_49CE:
    jr @+$17

    jr @+$27

    jr jr_008_49F8

    jr @+$25

    jr jr_008_4A0C

    jr @+$35

    jr jr_008_4A0E

    jr @+$17

    jr @+$15

jr_008_49E0:
    db $10

jr_008_49E1:
    add hl, de
    jr jr_008_49E4

jr_008_49E4:
    jr jr_008_49E6

jr_008_49E6:
    jr jr_008_49E8

jr_008_49E8:
    jr jr_008_49EA

jr_008_49EA:
    jr jr_008_49EC

jr_008_49EC:
    jr jr_008_49EE

jr_008_49EE:
    jr jr_008_49F0

jr_008_49F0:
    jr jr_008_49F2

jr_008_49F2:
    jr jr_008_49F4

jr_008_49F4:
    jr jr_008_49F6

jr_008_49F6:
    jr jr_008_49F8

jr_008_49F8:
    jr jr_008_49FA

jr_008_49FA:
    jr jr_008_49FC

jr_008_49FC:
    jr jr_008_49FE

jr_008_49FE:
    jr jr_008_4A00

jr_008_4A00:
    jr jr_008_4A02

jr_008_4A02:
    jr jr_008_4A04

jr_008_4A04:
    jr jr_008_4A06

jr_008_4A06:
    jr jr_008_4A08

jr_008_4A08:
    jr jr_008_4A0A

jr_008_4A0A:
    jr @+$1B

jr_008_4A0C:
    jr @+$17

jr_008_4A0E:
    jr @+$15

    jr @+$27

    jr jr_008_4A38

    jr @+$25

    jr jr_008_4A4C

    jr @+$35

    jr jr_008_4A4E

    jr @+$15

    jr @+$17

    db $10
    inc d
    jr jr_008_4A24

jr_008_4A24:
    jr jr_008_4A26

jr_008_4A26:
    jr jr_008_4A28

jr_008_4A28:
    jr jr_008_4A2A

jr_008_4A2A:
    jr jr_008_4A2C

jr_008_4A2C:
    jr jr_008_4A2E

jr_008_4A2E:
    jr jr_008_4A30

jr_008_4A30:
    jr jr_008_4A32

jr_008_4A32:
    jr jr_008_4A34

jr_008_4A34:
    jr jr_008_4A36

jr_008_4A36:
    jr jr_008_4A38

jr_008_4A38:
    jr jr_008_4A3A

jr_008_4A3A:
    jr jr_008_4A3C

jr_008_4A3C:
    jr jr_008_4A3E

jr_008_4A3E:
    jr jr_008_4A40

jr_008_4A40:
    jr jr_008_4A42

jr_008_4A42:
    jr jr_008_4A44

jr_008_4A44:
    jr jr_008_4A46

jr_008_4A46:
    jr jr_008_4A48

jr_008_4A48:
    jr jr_008_4A4A

jr_008_4A4A:
    jr jr_008_4A60

jr_008_4A4C:
    jr jr_008_4A61

jr_008_4A4E:
    jr @+$17

    jr @+$27

    jr jr_008_4A78

    jr @+$25

    jr jr_008_4A8C

    jr @+$35

    jr jr_008_4A8E

    jr @+$17

    jr @+$15

jr_008_4A60:
    db $10

jr_008_4A61:
    add hl, de
    jr jr_008_4A64

jr_008_4A64:
    jr jr_008_4A66

jr_008_4A66:
    jr jr_008_4A68

jr_008_4A68:
    jr jr_008_4A6A

jr_008_4A6A:
    jr jr_008_4A6C

jr_008_4A6C:
    jr jr_008_4A6E

jr_008_4A6E:
    jr jr_008_4A70

jr_008_4A70:
    jr jr_008_4A72

jr_008_4A72:
    jr jr_008_4A74

jr_008_4A74:
    jr jr_008_4A76

jr_008_4A76:
    jr jr_008_4A78

jr_008_4A78:
    jr jr_008_4A7A

jr_008_4A7A:
    jr jr_008_4A7C

jr_008_4A7C:
    jr jr_008_4A7E

jr_008_4A7E:
    jr jr_008_4A80

jr_008_4A80:
    jr jr_008_4A82

jr_008_4A82:
    jr jr_008_4A84

jr_008_4A84:
    jr jr_008_4A86

jr_008_4A86:
    jr jr_008_4A88

jr_008_4A88:
    jr jr_008_4A8A

jr_008_4A8A:
    jr @+$1B

jr_008_4A8C:
    jr @+$17

jr_008_4A8E:
    jr @+$15

    jr @+$27

    jr jr_008_4AB8

    jr @+$25

    jr jr_008_4ACC

    jr @+$35

    jr jr_008_4ACE

    jr @+$15

    jr @+$17

    db $10
    ld [de], a
    jr jr_008_4AD0

    jr @+$2D

    jr jr_008_4AD4

    jr @+$2D

    jr jr_008_4AD8

    jr @+$2D

    jr jr_008_4ADC

    jr @+$2D

    jr jr_008_4AE0

    jr jr_008_4AE1

    jr jr_008_4AE4

jr_008_4AB8:
    jr jr_008_4AE5

    jr jr_008_4AE8

    jr jr_008_4AE9

    jr jr_008_4AEC

    jr jr_008_4AED

    jr jr_008_4AF0

    jr jr_008_4AF1

    jr jr_008_4AF4

    jr jr_008_4AF5

    jr jr_008_4ADE

jr_008_4ACC:
    jr jr_008_4AE1

jr_008_4ACE:
    jr jr_008_4AE5

jr_008_4AD0:
    jr jr_008_4AF7

    jr jr_008_4AF8

jr_008_4AD4:
    jr jr_008_4AF9

    jr jr_008_4B0C

jr_008_4AD8:
    jr @+$35

    jr jr_008_4B0E

jr_008_4ADC:
    jr jr_008_4AF3

jr_008_4ADE:
    jr jr_008_4AF3

jr_008_4AE0:
    db $10

jr_008_4AE1:
    dec d
    db $10
    inc de

jr_008_4AE4:
    db $10

jr_008_4AE5:
    dec d
    db $10
    inc de

jr_008_4AE8:
    db $10

jr_008_4AE9:
    dec d
    db $10
    inc de

jr_008_4AEC:
    db $10

jr_008_4AED:
    dec d
    db $10
    inc de

jr_008_4AF0:
    db $10

jr_008_4AF1:
    dec d
    db $10

jr_008_4AF3:
    inc de

jr_008_4AF4:
    db $10

jr_008_4AF5:
    dec d
    db $10

jr_008_4AF7:
    inc de

jr_008_4AF8:
    db $10

jr_008_4AF9:
    dec d
    db $10
    inc de
    db $10
    dec d
    db $10
    inc de
    db $10
    dec d
    db $10
    inc de
    db $10
    dec d
    db $10
    inc de
    db $10
    dec d
    db $10
    inc de

jr_008_4B0C:
    jr @+$17

jr_008_4B0E:
    jr @+$15

    jr @+$27

    jr jr_008_4B38

    jr @+$25

    jr @+$13

    jr jr_008_4B2A

    jr @+$11

    jr jr_008_4B2C

    jr @+$17

    jr @+$15

    jr @+$17

    jr @+$15

    jr @+$17

    jr @+$15

jr_008_4B2A:
    jr @+$17

jr_008_4B2C:
    jr @+$15

    jr @+$17

    jr @+$15

    jr @+$17

    jr @+$15

    jr @+$17

jr_008_4B38:
    jr @+$15

    jr @+$17

    jr @+$15

    jr @+$17

    jr @+$15

    jr @+$17

    jr @+$15

    jr @+$17

    jr @+$15

    jr @+$17

    jr @+$15

    jr @+$0F

    jr jr_008_4B5E

    jr @+$0D

    jr jr_008_4B60

    jr @+$0B

    jr @+$0B

    jr jr_008_4B64

    jr @+$09

jr_008_4B5E:
    jr @+$15

jr_008_4B60:
    jr @+$17

    jr @+$15

jr_008_4B64:
    jr @+$17

    jr @+$15

    jr @+$17

    jr @+$15

    jr @+$17

    jr @+$15

    jr @+$17

    jr @+$15

    jr @+$17

    jr @+$15

    jr @+$17

    jr @+$15

    jr @+$17

    jr @+$15

    jr @+$17

    jr @+$15

    jr @+$17

    jr @+$15

    jr @+$17

    jr @+$15

    jr @+$17

    jr jr_008_4B96

    jr @+$07

    jr @+$0B

    jr @+$0B

jr_008_4B96:
    jr jr_008_4B9C

    jr jr_008_4B9E

    jr @+$05

jr_008_4B9C:
    jr @+$09

jr_008_4B9E:
    jr @+$17

    jr @+$15

    jr @+$17

    jr @+$15

    jr @+$17

    jr @+$15

    jr @+$17

    jr @+$15

    jr @+$17

    jr @+$15

    jr @+$17

    jr @+$15

    jr @+$17

    jr @+$15

    jr @+$17

    jr @+$15

    jr @+$17

    jr @+$15

    jr @+$17

    jr @+$15

    jr @+$17

    jr @+$15

    jr @+$17

    jr @+$15

    jr jr_008_4BD6

    jr jr_008_4BD4

    jr jr_008_4BD8

jr_008_4BD4:
    jr jr_008_4BDA

jr_008_4BD6:
    jr @+$03

jr_008_4BD8:
    jr @+$03

jr_008_4BDA:
    jr @+$03

    jr @+$03

    jr @+$03

    jr @+$03

    jr @+$03

    jr @+$03

    jr @+$03

    jr @+$03

    jr @+$03

    jr @+$03

    jr @+$03

    jr @+$03

    jr @+$03

    jr @+$03

    jr @+$03

    jr @+$03

    jr @+$03

    jr @+$03

    jr @+$03

    jr @+$03

    jr @+$03

    jr @+$03

    jr @+$03

    jr @+$03

    jr @+$03

    jr @+$03

    jr @+$03

    jr @+$03

    jr @+$03

    jr @+$03

    jr @+$03

    jr @+$03

    jr @+$03

    jr @+$03

    jr @+$03

    jr @+$03

    jr @+$03

    jr @+$03

    jr @+$03

    jr @+$03

    jr @+$03

    jr @+$03

    jr @+$03

    jr @+$03

    jr @+$03

    jr @+$03

    jr @+$03

    jr @+$03

    jr @+$03

    jr @+$03

    jr @+$03

    jr @+$03

    jr @+$03

    jr @+$03

    jr @+$03

    jr @+$03

    jr @+$03

    jr @+$03

    jr @+$03

    jr @+$03

    jr @+$03

    jr @+$03

    jr @+$03

    jr @+$03

    jr @+$03

    jr @+$03

    jr @+$03

    jr @+$03

    jr @+$03

    jr @+$03

    jr @+$03

    jr @+$03

    jr @+$03

    jr @+$03

    jr @+$03

    jr @+$03

    jr @+$03

    jr @+$03

    jr @+$03

    jr @+$03

    jr @+$03

    jr @+$03

    jr @+$03

    jr @+$03

    jr @+$03

    jr @+$03

    jr @+$03

    jr @+$03

    jr @+$03

    jr @+$03

    jr @+$03

    jr @+$03

    jr @+$03

    jr @+$03

    jr @+$03

    jr @+$03

    jr @+$03

    jr @+$03

    jr @+$03

    jr @+$03

    jr @+$03

    jr @+$03

    jr @+$03

    jr @+$03

    jr @+$03

    jr @+$03

    jr @+$03

    jr @+$03

    jr @+$03

    jr @+$03

    jr @+$03

    jr @+$03

    jr @+$03

    jr @+$03

    jr @+$03

    jr @+$03

    jr @+$03

    jr @+$03

    jr @+$03

    jr @+$03

    jr @+$03

    jr @+$03

    jr @+$03

    jr @+$03

    jr @+$03

    jr @+$03

    jr @+$01

    ld a, a
    nop
    nop
    ld b, a
    ld d, c
    push bc
    inc e
    ld l, d
    dec [hl]
    sub c
    ld d, d
    nop
    nop
    ld h, d
    ld hl, $0140
    xor [hl]
    ld a, [hl+]
    sub d
    ld a, [bc]
    ld d, $01
    jr jr_008_4CF2

    ld a, [de]

jr_008_4CF2:
    ld bc, $011C
    ld e, $01
    ld e, a
    ld bc, $0382
    ld b, h
    ld l, c
    ld b, [hl]
    ld a, l
    cp a
    ld [bc], a
    ld e, a
    dec hl
    sbc h
    ld c, [hl]
    ld e, c
    ld e, e
    sbc $7D
    ld d, d
    ld a, l
    ld d, h
    ld bc, $0156
    ld e, b
    ld bc, $015A
    ld e, h
    ld bc, $015E
    rst $38
    ld a, a
    nop
    nop
    ld b, a
    ld d, c
    ld l, d
    dec [hl]
    sub c
    ld d, d
    jr jr_008_4D86

    push bc
    inc e
    ld b, b
    ld bc, $2AAE
    sub d
    ld a, [bc]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    db $E3
    inc bc
    db $E3
    inc bc
    db $E3
    inc bc
    db $E3
    inc bc
    db $E3
    inc bc
    db $E3
    inc bc
    db $E3
    inc bc
    db $E3

jr_008_4D86:
    inc bc
    cp h
    nop
    cp h
    nop
    cp h
    nop
    cp h
    nop
    cp h
    nop
    cp h
    nop
    cp h
    nop
    cp h
    nop
    rst $00
    ret nz

    rst $00
    ret nz

    rst $00
    ret nz

    rst $00
    ret nz

    rst $00
    ret nz

    rst $00
    ret nz

    rst $00
    ret nz

    rst $00
    ret nz

    dec a
    nop
    dec a
    nop
    dec a
    nop
    dec a
    nop
    dec a
    nop
    dec a
    nop
    dec a
    nop
    dec a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ldh [rP1], a
    ldh [rP1], a
    db $E3
    inc bc
    db $E3
    inc bc
    db $E3
    inc bc
    db $E3
    inc bc
    db $E3
    inc bc
    db $E3
    inc bc
    cp a
    nop
    cp a
    nop
    cp h
    nop
    cp h
    nop
    cp h
    nop
    cp h
    nop
    cp h
    nop
    cp h
    nop
    or h
    ld l, h
    or h
    ld l, h
    or h
    ld l, h
    or h
    ld l, h
    or h
    ld l, h
    or h
    ld l, h
    or h
    ld l, h
    or h
    ld l, h
    ld c, e
    nop
    ld c, e
    nop
    ld c, e
    nop
    ld c, e
    nop
    ld c, e
    nop
    ld c, e
    nop
    ld c, e
    nop
    ld c, e
    nop
    dec l
    ld [hl], $2D
    ld [hl], $2D
    ld [hl], $2D
    ld [hl], $2D
    ld [hl], $2D
    ld [hl], $2D
    ld [hl], $2D
    ld [hl], $D2
    nop
    jp nc, $D200

    nop
    jp nc, $D200

    nop
    jp nc, $D200

    nop
    jp nc, $0700

    nop
    rlca
    nop
    rst $00
    ret nz

    rst $00
    ret nz

    rst $00
    ret nz

    rst $00
    ret nz

    rst $00
    ret nz

    rst $00
    ret nz

    db $FD
    nop
    db $FD
    nop
    dec a
    nop
    dec a
    nop
    dec a
    nop
    dec a
    nop
    dec a
    nop
    dec a
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
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
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    adc $40
    adc $40
    adc $40
    rst $38
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    dec a
    nop
    dec a
    nop
    dec a
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    db $DD
    ld b, h
    db $DD
    ld b, h
    db $DD
    ld b, h
    rst $38
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    inc sp
    nop
    inc sp
    nop
    inc sp
    nop
    nop
    nop

jr_008_4EAF:
    rst $38
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    push af
    jr nz, jr_008_4EAF

    jr nz, jr_008_4F39

    nop
    add a
    add b
    sbc b
    ld a, b
    rst $38
    nop
    rst $38
    nop
    ldh [rP1], a
    dec bc
    nop
    dec bc
    nop
    add e
    nop
    ld a, b
    nop
    ld h, a
    nop
    add b
    nop
    cp a
    nop
    cp a
    nop
    rst $38
    ldh [hUnk_FFE3], a
    rra
    or $0E
    call c, $BB43
    ld l, b
    or a
    ld l, h
    or h
    ld l, h
    or h
    ld l, h
    nop
    nop
    inc e
    nop
    add hl, bc
    nop
    inc hl
    nop
    ld b, h
    nop
    ld c, e
    nop
    ld c, e
    nop
    ld c, e
    nop
    rst $38
    rlca
    rst $00
    ld hl, sp+$6F
    ld [hl], b
    dec sp
    jp nz, Jump_000_16DD

    db $ED
    ld [hl], $2D
    ld [hl], $2D
    ld [hl], $00
    nop
    jr c, jr_008_4F0B

jr_008_4F0B:
    sub b
    nop
    call nz, $2200
    nop
    jp nc, $D200

    nop
    jp nc, $AF00

    inc b
    xor a
    inc b
    cp [hl]
    nop
    pop hl
    ld bc, $1E19
    rst $38
    nop
    rst $38
    nop
    rlca
    nop
    ret nc

    nop
    ret nc

    nop
    pop bc
    nop
    ld e, $00
    and $00
    ld bc, $FD00
    nop
    db $FD
    nop
    cp e
    ld [hl+], a

jr_008_4F39:
    cp e
    ld [hl+], a
    cp e
    ld [hl+], a
    rst $38
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    call z, $CC00
    nop
    call z, RST_00
    nop
    rst $38
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    ld [hl], e
    ld [bc], a
    ld [hl], e
    ld [bc], a
    ld [hl], e
    ld [bc], a
    rst $38
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    cp h
    nop
    cp h
    nop
    cp h
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add c
    rst $38
    nop
    cp l
    nop
    add a
    ld [bc], a
    and e
    ld [hl+], a
    db $ED
    ld a, [hl]
    add c
    ld a, [hl]
    rst $38
    add c
    nop
    nop
    ld a, [hl]
    nop
    ld a, [hl]
    nop
    ld a, h
    nop
    ld e, h
    nop
    ld [de], a
    nop
    ld a, [hl]
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop

jr_008_4F9E:
    nop
    nop
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add c
    rst $38
    nop
    rst $38
    nop
    sbc a
    nop
    adc e
    nop
    jp $C340


    ld b, b
    pop de
    ld d, b
    nop
    nop
    ld a, [hl]
    nop
    ld a, [hl]
    nop
    ld a, [hl]
    nop
    ld a, [hl]
    nop
    ld a, $00
    ld a, $00
    ld l, $00
    rst $38
    rst $38
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0008], sp
    nop
    rst $30
    nop
    rst $30
    nop
    rst $30
    nop
    rst $30
    nop
    rst $30
    nop
    rst $30
    nop
    rst $30
    nop
    jr nc, jr_008_5008

    ld a, a
    rra
    cp $3E
    db $FC
    ld a, h
    ld hl, sp-$08
    ldh a, [hUnk_FFF0]
    ldh [hUnk_FFE0], a
    ret nz

    ret nz

    rst $08

jr_008_5008:
    nop
    add b
    nop
    ld bc, $0300
    nop
    rlca
    nop
    rrca
    nop
    rra
    nop
    ccf
    nop
    nop
    ld l, b
    nop
    jr c, jr_008_501C

jr_008_501C:
    jr jr_008_4F9E

    ld [$00C0], sp
    ldh [hUnk_FF80], a
    ldh a, [hUnk_FFC0]
    ld hl, sp-$20
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    nop
    ccf
    nop
    rra
    nop
    rrca
    nop
    rlca
    nop
    inc c
    ldh a, [hUnk_FFEE]
    ld hl, sp-$11
    db $FC
    ld l, a
    ld a, [hl]
    cpl
    ccf
    rrca
    rra
    rrca
    rra
    rla
    rla
    di
    nop
    ld de, $1000
    nop
    sub b
    nop
    ret nc

    nop
    ldh a, [rP1]
    ldh a, [rP1]
    add sp, $00
    or l
    inc [hl]
    rst $38
    ld a, [hl]
    xor a
    ld a, [hl]
    cp e
    ld a, [hl]
    sbc l
    ld a, [hl]
    add c
    ld a, [hl]
    add c
    ld a, [hl]
    rst $38
    add c
    ld c, d
    nop
    nop
    nop
    ld d, b
    nop
    ld b, h
    nop
    ld h, d
    nop
    ld a, [hl]
    nop
    ld a, [hl]
    nop
    nop
    nop
    xor l
    inc l
    rst $38
    ld a, [hl]
    push af
    ld a, [hl]
    db $DD
    ld a, [hl]
    cp c
    ld a, [hl]
    add c
    ld a, [hl]
    add c
    ld a, [hl]
    rst $38
    add c
    ld d, d
    nop
    nop
    nop
    ld a, [bc]
    nop
    ld [hl+], a
    nop
    ld b, [hl]
    nop
    ld a, [hl]
    nop
    ld a, [hl]
    nop
    nop
    nop
    jr nc, jr_008_50A8

    ld a, a
    rra
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $08

jr_008_50A8:
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
    ld d, $00
    inc e
    nop
    jr jr_008_50BF

    db $10

jr_008_50BF:
    inc bc
    nop
    rlca
    ld bc, $030F
    rra
    rlca
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    db $FC
    nop
    ld hl, sp+$00
    ldh a, [rP1]
    ldh [rP1], a
    jr nc, @+$2A

    jr nc, jr_008_5103

    ldh a, [hUnk_FFE8]
    jr nc, jr_008_5107

    jr nz, jr_008_5109

    nop
    ld [$8810], sp
    nop
    ret z

    rst $18
    nop
    rst $18
    nop
    rra
    nop
    rst $18
    nop
    rst $18
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld bc, $01E1
    ld sp, $1800
    add b
    inc c
    ret nz

    ld b, $E0
    add e

jr_008_5103:
    ldh a, [hUnk_FFC1]
    ld hl, sp-$20

jr_008_5107:
    cp $00

jr_008_5109:
    cp $00
    rst $38
    nop
    ld a, a
    nop
    ccf
    nop
    rra
    nop
    rrca
    nop
    rlca
    nop
    ld hl, sp+$00
    adc h
    ld [hl], b
    rst $20
    ld a, b
    or c
    ld a, $9D
    ld e, $EF
    ld c, $E3
    ld [bc], a
    or e
    ld [bc], a
    rlca
    nop
    ld [hl], e
    nop
    jr jr_008_512D

jr_008_512D:
    ld c, [hl]
    nop
    ld h, d
    nop
    ld [hl], b
    nop
    ld a, h
    nop
    ld a, h
    nop
    rra
    nop
    ld sp, $E70E
    ld e, $8D
    ld a, h
    cp c
    ld a, b
    rst $30
    ld [hl], b
    rst $00
    ld b, b
    call $E040
    nop
    adc $00
    jr jr_008_514D

jr_008_514D:
    ld [hl], d
    nop
    ld b, [hl]
    nop
    ld c, $00
    ld a, $00
    ld a, $00
    add b
    add a
    add b
    adc h
    nop
    jr @+$03

    jr nc, jr_008_5163

    ld h, b
    rlca
    pop bc

jr_008_5163:
    rrca
    add e
    rra
    rlca
    ld a, a
    nop
    ld a, a
    nop
    rst $38
    nop
    cp $00
    db $FC
    nop
    ld hl, sp+$00
    ldh a, [rP1]
    ldh [rP1], a
    inc c
    inc d
    inc c
    inc d
    rrca
    rla
    inc c
    inc d
    inc b
    inc d
    nop
    db $10
    ld [$0011], sp
    inc de
    ei
    nop
    ei
    nop
    ld hl, sp+$00
    ei
    nop
    ei
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    adc $40
    adc $40
    adc $40
    adc $40
    adc $40
    adc $40
    adc $40
    adc $40
    dec a
    nop
    dec a
    nop
    dec a
    nop
    dec a
    nop
    dec a
    nop
    dec a
    nop
    dec a
    nop
    dec a
    nop
    db $DD
    ld b, h
    db $DD
    ld b, h
    db $DD
    ld b, h
    db $DD
    ld b, h
    db $DD
    ld b, h
    db $DD
    ld b, h
    db $DD
    ld b, h
    db $DD
    ld b, h
    inc sp
    nop
    inc sp
    nop
    inc sp
    nop
    inc sp
    nop

jr_008_51CF:
    inc sp
    nop

jr_008_51D1:
    inc sp
    nop

jr_008_51D3:
    inc sp
    nop

jr_008_51D5:
    inc sp
    nop

jr_008_51D7:
    push af
    jr nz, jr_008_51CF

    jr nz, jr_008_51D1

    jr nz, jr_008_51D3

    jr nz, jr_008_51D5

    jr nz, jr_008_51D7

    jr nz, @-$09

    jr nz, @-$09

    jr nz, jr_008_51F3

    nop
    dec bc
    nop
    dec bc
    nop
    dec bc
    nop
    dec bc
    nop
    dec bc
    nop

jr_008_51F3:
    dec bc
    nop
    dec bc
    nop
    ld h, b
    ld c, b
    ld h, b
    ld c, b
    ret nz

    adc b
    ret nz

    adc b
    add b
    ld [$0800], sp
    ret nz

    adc b
    ld h, b
    ld c, b
    cp a
    nop
    cp a
    nop
    ld a, a
    nop
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    nop
    cp a
    nop
    push bc
    push bc
    rlca
    rlca
    ld e, $1E
    pop af
    pop af
    rst $00
    rst $00
    ld a, h
    ld a, h
    rlca
    rlca
    ld [bc], a
    add d
    ld a, [hl-]
    nop
    ld hl, sp+$00
    pop hl
    nop
    ld c, $00
    jr c, jr_008_5231

jr_008_5231:
    add e
    nop
    ld hl, sp+$00
    db $FD
    nop
    ld [hl], b
    ld h, b
    jr c, jr_008_526B

    ld e, $9C
    rrca
    rst $28
    inc bc
    dec sp
    nop
    inc c
    add b
    rlca
    ldh [rSB], a
    sbc a
    nop
    rst $08
    nop
    db $E3
    nop
    ldh a, [rP1]
    db $FC
    nop
    rst $38
    nop
    ld a, a
    nop
    rra
    nop
    nop
    inc e
    nop
    rlca
    ret nz

    ld bc, $80F0
    db $FC
    ldh [hUnk_FFC7], a
    ld hl, sp+$01
    cp $FF
    nop
    rst $38
    nop
    rst $38
    nop

jr_008_526B:
    ccf
    nop
    rrca
    nop
    inc bc
    nop
    jr c, jr_008_5273

jr_008_5273:
    cp $00
    nop
    nop
    db $FC
    nop
    rst $30
    jr @-$19

    ld b, $81
    ld bc, $6EEE
    cp c
    ld a, a

jr_008_5283:
    add b
    ld a, a
    rst $38
    add b
    inc bc
    nop
    ld l, b
    nop
    ld a, d
    nop
    ld a, [hl]
    nop
    ld de, $4600
    nop
    ld a, a
    nop
    nop
    nop
    rst $38
    ld bc, $00FF
    dec a
    nop
    rlca
    ld [bc], a
    inc hl
    ld [hl+], a
    db $ED
    cp $01
    cp $FF
    ld bc, $0000
    cp $00
    cp $00
    db $FC
    nop
    call c, $1200
    nop
    cp $00
    nop
    nop
    rst $38
    add b
    rst $38
    nop
    rst $08
    ld b, b
    jp nc, $D940

    ld e, c
    or a
    ld a, a
    add b
    ld a, a
    rst $38
    add b
    nop
    nop
    ld a, a
    nop
    ccf
    nop
    ccf
    nop
    ld h, $00
    ld c, b
    nop
    ld a, a
    nop
    nop
    nop
    ccf
    nop
    rst $28
    jr jr_008_5283

    ld h, b
    add c
    add b
    ld [hl], a
    halt
    sbc l
    cp $01
    cp $FF
    ld bc, $00C0
    ld d, $00
    ld e, [hl]
    nop
    ld a, [hl]
    nop
    adc b
    nop
    ld h, d
    nop
    cp $00
    nop
    nop
    nop
    jr c, jr_008_52FA

jr_008_52FA:
    ldh [$FF03], a
    add b
    rrca
    ld bc, $073F
    db $E3
    rra
    add b
    ld a, a
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $FC
    nop
    ldh a, [rP1]
    ret nz

    nop
    inc e
    nop
    ld a, a
    nop
    nop
    nop
    ld c, $06
    inc e
    inc c
    ld a, b
    add hl, sp
    ldh a, [hUnk_FFF7]
    ret nz

    call c, Call_000_3000
    ld bc, $07E0
    add b
    ld sp, hl
    nop
    di
    nop
    rst $00
    nop
    rrca
    nop
    ccf
    nop
    rst $38
    nop
    cp $00
    ld hl, sp+$00
    and e
    and e
    ldh [hUnk_FFE0], a
    ld a, b
    ld a, b
    adc a
    adc a
    db $E3
    db $E3
    ld a, $3E
    ldh [hUnk_FFE0], a
    ld b, b
    ld b, c
    ld e, h
    nop
    rra
    nop
    add a
    nop
    ld [hl], b
    nop
    inc e
    nop
    pop bc
    nop
    rra
    nop
    cp a
    nop
    ld b, $12
    ld b, $12
    inc bc
    ld de, $1103
    ld bc, $0010
    db $10
    inc bc
    ld de, $1206
    db $FD
    nop
    db $FD
    nop
    cp $00
    cp $00
    rst $38
    nop
    rst $38
    nop
    cp $00
    db $FD
    nop
    xor a
    inc b
    xor a
    inc b
    xor a
    inc b
    xor a
    inc b
    xor a
    inc b
    xor a
    inc b
    xor a
    inc b
    xor a
    inc b
    ret nc

    nop
    ret nc

    nop
    ret nc

    nop
    ret nc

    nop
    ret nc

    nop
    ret nc

    nop
    ret nc

    nop
    ret nc

    nop
    cp e
    ld [hl+], a
    cp e
    ld [hl+], a
    cp e
    ld [hl+], a
    cp e
    ld [hl+], a
    cp e
    ld [hl+], a
    cp e
    ld [hl+], a
    cp e
    ld [hl+], a
    cp e
    ld [hl+], a
    call z, $CC00
    nop
    call z, $CC00
    nop
    call z, $CC00
    nop
    call z, $CC00
    nop
    ld [hl], e
    ld [bc], a
    ld [hl], e
    ld [bc], a
    ld [hl], e
    ld [bc], a
    ld [hl], e
    ld [bc], a
    ld [hl], e
    ld [bc], a
    ld [hl], e
    ld [bc], a
    ld [hl], e
    ld [bc], a
    ld [hl], e
    ld [bc], a
    cp h
    nop
    cp h
    nop
    cp h
    nop
    cp h
    nop
    cp h
    nop
    cp h
    nop
    cp h
    nop
    cp h
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    adc $40
    adc $40
    adc $40
    adc $40
    adc $40
    rst $38
    nop
    nop
    nop
    nop

jr_008_53EC:
    nop
    dec a
    nop
    dec a
    nop
    dec a
    nop
    dec a
    nop
    dec a
    nop
    inc sp
    nop
    rst $38
    nop
    rst $38
    nop
    db $DD
    ld b, h
    db $DD
    ld b, h
    db $DD
    ld b, h
    db $DD
    ld b, h
    db $DD
    ld b, h
    rst $38
    nop
    nop
    nop

jr_008_540B:
    nop
    nop
    inc sp
    nop
    inc sp
    nop
    inc sp
    nop
    inc sp
    nop

jr_008_5415:
    inc sp
    nop

jr_008_5417:
    inc e
    db $FC

jr_008_5419:
    rst $38
    nop

jr_008_541B:
    rst $38
    nop
    push af
    jr nz, jr_008_5415

    jr nz, jr_008_5417

    jr nz, jr_008_5419

    jr nz, jr_008_541B

    jr nz, jr_008_540B

    nop
    nop
    nop
    nop
    nop
    dec bc
    nop
    dec bc
    nop
    dec bc
    nop
    dec bc
    nop
    dec bc
    nop
    daa
    jr z, jr_008_546B

    jr z, jr_008_53EC

    xor b
    or b
    xor b
    or b
    xor b
    and b
    xor b
    or b
    xor b
    jr nc, jr_008_546F

    ret c

    nop
    sbc $00
    ld e, a
    nop
    ld e, a
    nop
    ld e, a
    nop
    ld e, a
    nop
    ld e, a
    nop
    rst $18
    nop
    ld [bc], a
    ld [bc], a
    ld h, c
    ld h, c
    ret c

    sbc b
    call z, $840C
    inc b
    add h
    inc b
    add h
    inc b
    add l
    add l
    db $FD
    nop
    sbc [hl]
    nop

jr_008_546B:
    ld h, a
    nop
    di
    nop

jr_008_546F:
    ei
    nop
    ei
    nop
    ei
    nop
    ld a, d
    nop
    dec de
    dec de
    ld e, $1E
    ld e, $1E
    rra
    rra
    rrca
    rrca
    rst $08
    adc a
    rst $20
    rst $00
    di
    db $E3
    db $E4
    nop
    pop hl
    nop
    pop hl
    nop
    ldh [rP1], a
    ldh a, [rP1]
    ld [hl], b
    nop
    jr c, jr_008_5495

jr_008_5495:
    inc e
    nop
    add [hl]
    inc b
    halt
    ld h, h
    ld h, a
    ld b, [hl]
    ld l, a
    ld c, [hl]
    ld a, a
    ld a, e
    ld b, c
    ld b, c
    nop
    ret nz

    nop
    ld [hl], b
    ei
    nop
    sbc e
    nop
    cp c
    nop
    or c
    nop
    add h
    nop
    cp [hl]
    nop
    rst $38
    nop
    rst $38
    nop
    ret


    ret


    ld [hl], e
    ld [hl], d
    ld e, $1C
    nop
    ldh [rP1], a
    jr c, jr_008_54C2

jr_008_54C2:
    rrca
    add b
    ld bc, $00E0
    ld [hl], $00
    adc l
    nop
    db $E3
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    nop
    rra
    nop
    nop
    ret nz

    nop
    ld a, b
    nop
    rrca
    nop
    ld bc, $00E0
    db $FC
    ret nz

    rst $38
    ld hl, sp-$01
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rra
    nop
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    nop
    nop
    ldh a, [rP1]
    rst $38
    ldh [hUnk_FFEF], a
    cp $EF
    rst $38
    rrca
    rra
    ld de, $FF11
    nop
    rst $38
    nop
    rrca
    nop
    nop
    nop
    stop
    stop
    ldh a, [rP1]
    xor $00
    ldh a, [rP1]
    rst $38
    ldh [rIE], a
    cp $FF
    rst $38
    rra
    rra
    ld bc, $0001
    nop
    nop
    nop
    rrca
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh [rP1], a
    cp $00
    rst $38
    nop
    rst $38
    nop
    nop
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    nop
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    rst $38
    nop
    stop
    stop
    stop
    rst $38
    nop
    rst $28
    nop
    rst $28
    nop
    rst $28
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $38
    nop
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
    rst $38
    nop
    rst $38
    nop
    nop
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    nop
    ld [$0808], sp
    ld [$0808], sp
    ld [$00FF], sp
    ld [$0800], sp
    nop
    ld [$FF00], sp
    nop
    rst $30
    nop
    rst $30
    nop
    rst $30
    nop
    ldh [$FF1F], a
    rst $38
    rst $38
    rst $38
    rst $38
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
    rra
    nop
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
    rst $38
    nop
    rst $38
    nop
    rrca
    nop
    rst $38
    rlca
    rst $30
    ld a, a
    rst $30
    rst $38
    ldh [hUnk_FFE8], a
    ld [$0808], sp
    ld [$0808], sp
    ldh a, [rP1]
    nop
    nop
    ld [$0800], sp
    nop
    rra
    nop
    rst $30
    nop
    rst $30
    nop
    rst $30
    nop
    nop
    ldh [rP1], a
    nop
    rrca
    nop
    rst $38
    rlca
    rst $38
    ld a, a
    cp $FE
    ldh a, [hUnk_FFF0]
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    ld bc, $0F00
    nop
    rst $38
    nop
    nop
    inc bc
    nop
    ld e, $00
    ldh a, [rP1]
    add b
    rlca
    nop
    ccf
    inc bc
    rst $30
    rra
    rst $30
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld hl, sp+$00
    ret nz

    nop
    ld [$0800], sp
    nop
    sub e
    sub e
    adc $4E
    ld a, b
    jr c, jr_008_561E

jr_008_561E:
    rlca
    nop
    inc e
    nop
    ldh a, [rSB]
    add b
    rlca
    nop

jr_008_5627:
    ld l, h
    nop
    or c
    nop
    rst $00
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    ld hl, sp+$00
    ld h, c
    jr nz, jr_008_56A8

    ld h, $E6
    ld h, d
    or $72
    cp $DE
    add d
    add d
    nop
    inc bc
    nop
    ld c, $DF
    nop
    reti


    nop
    sbc l
    nop
    adc l
    nop
    ld hl, $7D00
    nop
    rst $38
    nop
    rst $38
    nop
    ret c

    ret c

    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld hl, sp-$08
    ldh a, [hUnk_FFF0]
    di
    pop af
    rst $20
    db $E3
    rst $08
    rst $00
    daa
    nop
    add a
    nop
    add a
    nop
    rlca
    nop
    rrca
    nop
    ld c, $00
    inc e
    nop
    jr c, jr_008_5677

jr_008_5677:
    ld b, b
    ld b, b
    add [hl]
    add [hl]
    dec de
    add hl, de
    inc sp
    jr nc, jr_008_56A1

    jr nz, jr_008_56A3

    jr nz, jr_008_56A5

    jr nz, jr_008_5627

    and c
    cp a
    nop
    ld a, c
    nop
    and $00
    rst $08
    nop
    rst $18
    nop
    rst $18
    nop
    rst $18
    nop
    ld e, [hl]
    nop
    db $E4
    inc d
    adc h
    inc d
    dec c
    dec d
    dec c
    dec d
    dec c
    dec d

jr_008_56A1:
    dec b
    dec d

jr_008_56A3:
    dec c
    dec d

jr_008_56A5:
    inc c
    inc d
    dec de

jr_008_56A8:
    nop
    ld a, e
    nop
    ld a, [$FA00]
    nop
    ld a, [$FA00]
    nop
    ld a, [$FB00]
    nop
    jr c, jr_008_56F8

    rst $38
    nop
    rst $38
    nop
    xor a
    inc b
    xor a
    inc b
    xor a
    inc b
    xor a
    inc b
    xor a
    inc b
    rst $00
    nop
    nop
    nop
    nop
    nop
    ret nc

    nop
    ret nc

    nop
    ret nc

    nop
    ret nc

    nop
    ret nc

    nop
    call z, $FF00
    nop
    rst $38
    nop
    cp e
    ld [hl+], a
    cp e
    ld [hl+], a
    cp e
    ld [hl+], a
    cp e
    ld [hl+], a
    cp e
    ld [hl+], a
    rst $38
    nop
    nop
    nop
    nop
    nop
    call z, $CC00
    nop
    call z, $CC00
    nop
    call z, RST_00

jr_008_56F8:
    nop
    rst $38
    nop
    rst $38
    nop
    ld [hl], e
    ld [bc], a
    ld [hl], e
    ld [bc], a
    ld [hl], e
    ld [bc], a
    ld [hl], e
    ld [bc], a
    ld [hl], e
    ld [bc], a
    rst $38
    nop
    nop
    nop
    nop
    nop
    cp h
    nop
    cp h
    nop
    cp h
    nop
    cp h
    nop
    cp h
    nop
    jr nz, jr_008_5719

jr_008_5719:
    jr nz, jr_008_571B

jr_008_571B:
    jr nz, jr_008_571D

jr_008_571D:
    jr nz, jr_008_571F

jr_008_571F:
    rst $38
    nop
    sbc b
    nop
    call z, $E600
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld [hl], e
    nop
    ld [hl], e
    nop
    ld [hl], e
    nop
    ld [hl], e
    nop
    rst $38
    nop
    rlca
    nop
    pop bc
    ret nz

    ld [hl], b
    ldh a, [rIE]
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    rst $38
    nop
    ccf
    nop
    adc a
    nop
    ld a, b
    ld hl, sp+$78
    ld hl, sp+$78
    ld hl, sp+$78
    ld hl, sp-$01
    nop
    rst $00
    ccf
    pop af
    adc a
    ret c

    rst $20
    add a
    nop
    add a
    nop
    add a
    nop
    add a
    nop
    nop
    nop
    jr c, jr_008_5773

jr_008_5773:
    ld c, $00
    daa
    nop
    rrca
    inc bc
    rrca
    inc bc
    rst $38
    di
    rrca
    inc bc
    ld a, a
    nop
    dec b
    nop
    ld hl, sp-$08
    add l
    add h
    ldh a, [rP1]
    ldh a, [rP1]
    nop
    nop
    ldh a, [rP1]
    ldh a, [rP1]
    cp $00
    rlca
    nop
    ld a, e
    nop
    ldh [hUnk_FFC0], a
    ld [hl], b
    ld h, b
    ld sp, $F321
    and e
    or $26
    call z, $0CCC
    inc c
    add hl, de
    add hl, de
    ccf
    nop
    sbc a
    nop
    sbc $00
    ld e, h
    nop
    reti


    nop
    inc sp
    nop
    di
    nop
    and $00
    add a
    add a
    ld b, a
    ld b, a
    adc $CC
    ld c, h
    ld c, b
    ld a, l
    ld a, c
    cp l
    add hl, sp
    xor h
    inc l
    xor [hl]
    inc l
    ld a, b
    nop
    cp b
    nop
    inc sp
    nop
    or a
    nop
    add [hl]
    nop
    add $00
    db $D3
    nop
    db $D3
    nop
    ld [hl+], a
    ld [hl+], a
    ld de, $CE11
    adc h
    adc e
    ld a, [bc]
    add hl, bc
    add hl, bc
    ld h, l
    ld b, l
    push bc
    add l

jr_008_57E5:
    push bc
    add l
    db $DD
    nop
    xor $00
    ld [hl], e
    nop
    push af
    nop
    or $00
    cp d
    nop
    ld a, d
    nop
    ld a, d
    nop
    rst $38
    cp $1B
    inc de
    inc c
    ld [$C9ED], sp
    adc h
    ld [$30B8], sp
    ldh a, [hUnk_FFE0]
    nop
    nop
    ld bc, $EC00
    nop
    rst $30
    nop
    ld [hl], $00
    rst $30
    nop
    rst $08
    nop
    rra
    nop
    rst $38
    nop
    di
    db $E3
    ld d, $14
    ld c, $0C
    ld l, h
    ld l, b
    ld l, l
    ld c, c
    ld [hl], c
    ld [hl], c
    jr nz, jr_008_57E5

    nop
    ld a, h
    inc e
    nop
    db $EB
    nop
    di
    nop
    sub a
    nop
    or [hl]
    nop
    adc [hl]
    nop
    rst $38
    nop
    rst $38
    nop
    inc bc
    inc bc
    rst $28
    adc a
    cp $FC
    ld a, b
    ld a, b
    nop
    nop
    nop
    db $FC
    nop
    rlca
    nop
    nop
    db $FC
    nop
    ld [hl], b
    nop
    inc bc
    nop
    add a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rla
    rla
    scf
    dec h
    ld a, $38
    jr jr_008_586F

    nop
    rst $38
    nop
    ld bc, $0000
    db $FC
    nop
    add sp, $00
    jp c, $C700

    nop
    rst $28
    nop

jr_008_586F:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    inc bc
    nop
    ld a, a
    ld e, [hl]
    db $FC
    ld hl, sp-$3A
    add h
    ld b, $04
    nop
    rst $38
    nop
    nop
    nop
    nop
    rst $38
    nop
    and c
    nop
    rlca
    nop
    ld a, e
    nop
    ei
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    or b
    or b
    ld e, h
    ld e, h
    rra
    rlca
    ld b, $02
    nop
    rst $38
    nop
    nop
    nop
    nop
    rst $38
    nop
    ld c, a
    nop
    and e
    nop
    ld hl, sp+$00
    db $FD
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    or $C6
    ld a, [hl]
    ld a, [hl]
    inc a
    inc a
    ld [bc], a
    ld [bc], a
    nop
    rst $38
    nop
    nop
    nop
    nop
    rst $38
    nop
    add hl, sp
    nop
    add c
    nop
    jp $FD00


    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    db $E3
    pop hl
    ccf
    ccf
    adc e
    ld [$0404], sp
    nop
    rst $38
    nop
    nop
    nop
    nop
    rst $38
    nop
    ld e, $00
    ret nz

    nop
    rst $30
    nop
    ei
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    rst $00
    add a
    db $FC
    db $FC
    pop de
    db $10
    jr nz, jr_008_591F

    nop
    rst $38
    nop
    nop
    nop
    nop
    rst $38
    nop
    ld a, b
    nop
    inc bc
    nop
    rst $28
    nop
    rst $18
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    ld l, a
    ld h, e
    ld a, [hl]
    ld a, [hl]
    inc a
    inc a
    ld b, b
    ld b, b

jr_008_591F:
    nop
    rst $38
    nop
    nop
    nop
    nop
    rst $38
    nop
    sbc h
    nop
    add c
    nop
    jp $BF00


    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    dec c
    dec c
    ld a, [hl-]
    ld a, [hl-]
    ld hl, sp-$20
    ld h, b
    ld b, b
    nop
    rst $38
    nop
    nop
    nop
    nop
    rst $38
    nop
    ldh a, [c]
    nop
    push bc
    nop
    rra
    nop
    cp a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    cp $7A
    ccf
    rra
    ld h, e
    ld hl, $2060
    nop
    rst $38
    nop
    nop
    nop
    nop
    rst $38
    nop
    add l
    nop
    ldh [rP1], a
    sbc $00
    rst $18
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    add sp, -$18
    db $EC
    and h
    ld a, h
    inc e
    jr jr_008_5987

    nop
    rst $38
    nop
    add b
    nop
    nop
    ccf
    nop

jr_008_5987:
    rla
    nop
    ld e, e
    nop
    db $E3
    nop
    rst $30
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ret nz

    nop
    ret nz

    ret nz

    rst $30
    pop af
    ld a, a
    ccf
    ld e, $1E
    nop
    nop
    nop
    ccf
    nop
    ldh [rP1], a
    nop
    ccf
    nop
    ld c, $00
    ret nz

    nop
    pop hl
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $08
    rst $00
    ld l, b
    jr z, @+$72

    jr nc, @+$38

    ld d, $B6
    sub d
    adc [hl]
    adc [hl]
    inc b
    inc bc
    nop
    ld a, $38
    nop
    rst $10
    nop
    rst $08
    nop
    jp hl


    nop
    ld l, l
    nop
    ld [hl], c
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld a, a
    ret c

    ret z

    jr nc, jr_008_59ED

    or a
    sub e
    ld sp, $1D10
    inc c
    rrca
    rlca
    nop
    nop
    add b
    nop
    scf
    nop
    rst $28
    nop

jr_008_59ED:
    ld l, h
    nop
    rst $28
    nop
    di
    nop
    ld hl, sp+$00
    rst $38
    nop
    ld b, h
    ld b, h
    adc b
    adc b
    ld [hl], e
    ld sp, $50D1
    sub b
    sub b
    and [hl]
    and d
    and e
    and c
    and e
    and c
    cp e
    nop
    ld [hl], a
    nop
    adc $00
    xor a
    nop
    ld l, a
    nop
    ld e, l
    nop
    ld e, [hl]
    nop
    ld e, [hl]
    nop
    pop hl
    pop hl
    ldh [c], a
    ldh [c], a
    ld [hl], e
    inc sp
    ld [hl-], a
    ld [de], a
    cp [hl]
    sbc [hl]
    cp l
    sbc h
    dec [hl]
    inc [hl]
    ld [hl], l
    inc [hl]
    ld e, $00
    dec e
    nop
    call z, $ED00
    nop
    ld h, c
    nop
    ld h, e
    nop
    rlc b
    rlc b
    rlca
    inc bc
    ld c, $06
    adc h
    add h
    rst $08
    push bc
    ld l, a
    ld h, h
    inc sp
    inc sp
    jr nc, jr_008_5A75

    sbc b
    sbc b
    db $FC
    nop
    ld sp, hl
    nop
    ld a, e
    nop
    ld a, [hl-]
    nop
    sbc e
    nop
    call z, $CF00
    nop
    ld h, a
    nop
    ldh a, [hUnk_FFC0]
    ldh a, [hUnk_FFC0]
    rst $38
    rst $08
    ldh a, [hUnk_FFC0]
    cp $00
    and b
    nop
    rra
    rra
    and c
    ld hl, $000F
    rrca
    nop
    nop
    nop
    rrca
    nop
    rrca
    nop
    ld a, a
    nop
    ldh [rP1], a

jr_008_5A75:
    sbc $00
    ld e, $1F
    ld e, $1F
    ld e, $1F
    ld e, $1F
    rst $38
    nop
    db $E3
    db $FC
    adc a
    pop af
    dec de
    rst $20
    pop hl
    nop
    pop hl
    nop
    pop hl
    nop
    pop hl
    nop
    nop
    nop
    inc e
    nop
    ld [hl], b
    nop
    db $E4
    nop
    adc $00
    adc $00
    adc $00
    adc $00
    rst $38
    nop
    ldh [rP1], a
    add e
    inc bc
    ld c, $0F
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    rst $38
    nop
    db $FC
    nop
    pop af
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    rst $38
    nop
    add hl, de
    nop
    inc sp
    nop
    ld h, a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    rst $38
    nop
    rst $38
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
    rst $38
    nop
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
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop

jr_008_5AFC:
    rst $38
    nop
    nop
    ld e, $1C
    ld [hl-], a
    ld [hl+], a
    ld [hl-], a
    ld [hl+], a
    sub d
    sub d
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $E3
    nop
    db $DD
    nop
    db $DD
    nop
    ld l, l
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    ld bc, $0101
    ld bc, $FEFE
    pop bc
    pop bc
    db $FC
    db $FC
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    cp $00
    ld bc, $3E00
    nop
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    ret nz

    add b
    ld h, b
    ld b, b
    jr nc, @+$22

    inc sp
    inc hl
    rst $28
    rst $08
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    nop
    cp a
    nop
    rst $18
    nop
    call c, Call_000_3000
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rlca
    rlca
    inc e
    jr jr_008_5B8A

    jr z, jr_008_5AFC

    db $10
    add b
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld hl, sp+$00
    rst $20
    nop
    rst $10
    nop
    rst $28
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    add c
    ld bc, $BEFF
    ld [hl], e
    ld h, d
    ld [hl], e
    ld h, e
    ld sp, $FF31
    nop
    rst $38

jr_008_5B8A:
    nop
    rst $38
    nop
    cp $00
    ld b, c
    nop
    sbc l
    nop
    sbc h
    nop
    adc $00
    nop
    nop
    nop
    nop
    nop
    rst $38
    ld bc, $1801
    db $10
    jr nc, jr_008_5BC3

    db $FC
    ld hl, sp-$39
    add [hl]
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    rst $28
    nop
    rst $18
    nop
    rlca
    nop
    ld a, c
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    jr jr_008_5BCF

    inc c
    ld [$86C7], sp

jr_008_5BC3:
    db $EC
    ret z

    ld l, a
    ld c, e
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $28
    nop

jr_008_5BCF:
    rst $30
    nop
    ld a, c
    nop
    scf
    nop
    or h
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    jr nc, jr_008_5BEF

    ld h, b
    jr nz, @-$3B

    jp Jump_008_64E6


    ld h, d
    ld [hl+], a
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $28
    nop

jr_008_5BEF:
    rst $18
    nop
    inc a
    nop
    sbc e
    nop
    db $DD
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    ret nz

    add b
    ldh [hUnk_FFC0], a
    ld h, c
    ld b, c
    db $E3
    jp $8287


    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    nop
    ccf
    nop
    cp [hl]
    nop
    inc a
    nop
    ld a, l
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    ld h, a
    ld b, a
    rst $28
    call z, Call_000_08CC
    add h
    inc b
    pop bc
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp b
    nop
    inc sp
    nop
    rst $30
    nop
    ei
    nop
    ld a, a
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    and $E2
    rst $30
    inc sp
    inc sp
    db $10
    ld hl, $8320
    ld bc, $00FF
    rst $38
    nop
    rst $38
    nop
    dec e
    nop
    call z, $EF00
    nop
    rst $18
    nop
    cp $00
    nop
    nop
    nop
    nop
    nop
    rst $38
    inc bc
    ld bc, $0307
    add [hl]
    add d
    rst $00
    jp Jump_008_41E1


    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    db $FC
    nop
    ld a, l
    nop
    inc a
    nop
    cp [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    inc c
    ld [$0406], sp
    jp Jump_008_67C3


    ld h, $46
    ld b, h
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $30
    nop
    ei
    nop
    inc a
    nop
    reti


    nop
    cp e
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    jr jr_008_5CA7

    jr nc, jr_008_5CB1

    db $E3
    ld h, c
    scf
    inc de
    or $D2

jr_008_5CA7:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $30
    nop
    rst $28
    nop

jr_008_5CB1:
    sbc [hl]
    nop
    db $EC
    nop
    dec l
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    add b
    add b
    jr jr_008_5CC9

    inc c
    inc b
    ccf
    rra
    db $E3
    ld h, c
    rst $38
    nop

jr_008_5CC9:
    rst $38
    nop
    rst $38
    nop
    ld a, a
    nop
    rst $30
    nop
    ei
    nop
    ldh [rP1], a
    sbc [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    add c
    add b
    rst $38
    ld a, l
    adc $46
    adc $C6
    adc h
    adc h
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    nop
    add d
    nop
    cp c
    nop
    add hl, sp
    nop
    ld [hl], e
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    ldh [hUnk_FFE0], a
    jr c, jr_008_5D19

    inc d
    inc d
    add hl, de
    ld [$0001], sp
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rra
    nop
    rst $20
    nop
    db $EB
    nop
    rst $30
    nop
    rst $38
    nop
    nop
    nop

jr_008_5D19:
    nop
    nop
    nop
    rst $38
    inc bc
    ld bc, $0206
    inc c
    inc b
    call z, $F7C4
    di
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    db $FD
    nop
    ei
    nop
    dec sp
    nop
    inc c
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    add b
    add b
    add b
    add b
    ld a, a
    ld a, a
    add e
    add e
    ccf
    ccf
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    nop
    ld a, a
    nop
    add b
    nop
    ld a, h
    nop
    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    nop
    ld a, b
    jr c, jr_008_5DAE

    ld b, h
    ld c, h
    ld b, h
    ld c, c
    ld c, c
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $00
    nop
    cp e
    nop
    cp e
    nop
    or [hl]
    nop
    rst $38
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
    rst $38
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    rst $38
    nop
    db $E3
    nop
    db $E3
    nop
    db $E3
    nop
    db $E3
    nop
    db $E3
    nop
    db $E3
    nop
    rst $38
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_008_5DAE:
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    rst $38
    nop
    pop af
    nop
    pop af
    nop
    pop af
    nop
    pop af
    nop
    pop af
    nop
    pop af
    nop
    rst $38
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    rst $38
    nop
    ldh a, [hUnk_FFF0]
    ldh a, [hUnk_FFF0]
    ldh a, [hUnk_FFF0]
    ldh a, [hUnk_FFF0]
    ldh a, [hUnk_FFF0]
    ldh a, [hUnk_FFF0]
    rst $38
    nop
    nop
    nop
    rrca
    nop
    rrca
    nop
    rrca
    nop
    rrca
    nop
    rrca
    nop
    rrca
    nop
    nop
    nop
    rst $38
    nop
    pop bc
    ccf
    pop bc
    ccf
    pop bc
    ccf
    pop bc
    ccf
    pop bc
    ccf
    pop bc
    ccf
    rst $38
    nop
    nop
    nop
    ld a, $00
    ld a, $00
    ld a, $00
    ld a, $00
    ld a, $00
    ld a, $00
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    rst $38
    nop
    add e
    db $FC
    add e
    db $FC
    add e
    db $FC
    add e
    db $FC
    add e
    db $FC
    add e
    db $FC
    rst $38
    nop
    nop
    nop
    ld a, h
    nop
    ld a, h
    nop
    ld a, h
    nop
    ld a, h
    nop
    ld a, h
    nop
    ld a, h
    nop
    nop
    nop
    rst $38
    nop
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rst $38
    nop
    nop
    nop
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    nop
    nop
    rst $38
    nop
    adc a
    nop
    adc a
    nop
    adc a
    nop
    adc a
    nop
    adc a
    nop
    adc a
    nop
    rst $38
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    rst $38
    nop
    rst $00
    nop
    rst $00
    nop
    rst $00
    nop
    rst $00
    nop
    rst $00
    nop
    rst $00
    nop
    rst $38
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    rst $38
    nop
    ld de, $1100
    nop
    ld de, $1100
    nop
    ld de, $1100
    nop
    rst $38
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    nop
    nop
    rst $38
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_008_64E6:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_008_67C3:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_008_79C9:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_008_7EC9:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
