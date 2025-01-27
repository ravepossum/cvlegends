DEF HeaderLogo EQU $0104 ; nintendo logo

; joypad buttons
	const_def
	const BIT_D_RIGHT  ; 0
	const BIT_D_LEFT   ; 1
	const BIT_D_UP     ; 2
	const BIT_D_DOWN   ; 3
	const BIT_A_BUTTON ; 4
	const BIT_B_BUTTON ; 5
	const BIT_SELECT   ; 6
	const BIT_START    ; 7

DEF NO_INPUT EQU 0
DEF D_RIGHT  EQU 1 << BIT_D_RIGHT
DEF D_LEFT   EQU 1 << BIT_D_LEFT
DEF D_UP     EQU 1 << BIT_D_UP
DEF D_DOWN   EQU 1 << BIT_D_DOWN
DEF A_BUTTON EQU 1 << BIT_A_BUTTON
DEF B_BUTTON EQU 1 << BIT_B_BUTTON
DEF SELECT   EQU 1 << BIT_SELECT
DEF START    EQU 1 << BIT_START

DEF D_ANY    EQU (D_RIGHT | D_LEFT | D_UP | D_DOWN)