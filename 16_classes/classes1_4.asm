PUBLIC	_main
_TEXT	SEGMENT
_s$ = -24						; size = 8
_b$ = -16						; size = 16
_main	PROC
	sub	esp, 24					; 00000018H
	push	30					; 0000001eH
	push	20					; 00000014H
	push	10					; 0000000aH
	push	1
	lea	ecx, DWORD PTR _b$[esp+40]
	call	??0box@@QAE@HHHH@Z			; box::box
	push	40					; 00000028H
	push	2
	lea	ecx, DWORD PTR _s$[esp+32]
	call	??0sphere@@QAE@HH@Z			; sphere::sphere
	lea	ecx, DWORD PTR _b$[esp+24]
	call	?print_color@object@@QAEXXZ		; object::print_color
	lea	ecx, DWORD PTR _s$[esp+24]
	call	?print_color@object@@QAEXXZ		; object::print_color
	lea	ecx, DWORD PTR _b$[esp+24]
	call	?dump@box@@QAEXXZ			; box::dump
	lea	ecx, DWORD PTR _s$[esp+24]
	call	?dump@sphere@@QAEXXZ			; sphere::dump
	xor	eax, eax
	add	esp, 24					; 00000018H
	ret	0
_main	ENDP
