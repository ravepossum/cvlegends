MACRO bankset
	ld a, BANK(\1)
    ld [rROMB0], a
ENDM

; Waits for either H or V blank (VRAM is accessible)
MACRO wait_for_blank
    ldh a, [rSTAT]
    bit 1, a
    jr nz, \1
ENDM

; Enumerate constants

MACRO const_def
	IF _NARG >= 1
		DEF const_value = \1
	ELSE
		DEF const_value = 0
	ENDC
	IF _NARG >= 2
		DEF const_inc = \2
	ELSE
		DEF const_inc = 1
	ENDC
ENDM

MACRO const
	DEF \1 EQU const_value
	DEF const_value += const_inc
ENDM
