; Hc/NtUserBlockInput
; This file was automatically generated by Highcall's syscall generator.

IFDEF RAX
; 64bit

EXTERNDEF sciUserBlockInput:DWORD

.DATA
.CODE

HcUserBlockInput PROC
	mov r10, rcx
	mov eax, sciUserBlockInput
	syscall
	ret
HcUserBlockInput ENDP

ELSE
; 32bit

EXTERNDEF C sciUserBlockInput:DWORD

.586			  
.MODEL FLAT, C   
.STACK
.DATA
.CODE

ASSUME FS:NOTHING

HcUserBlockInput PROC
	mov eax, sciUserBlockInput
	mov ecx, fs:[0c0h]
	test ecx, ecx
	jne _wow64
	lea edx, [esp + 4]
	INT 02eh
	ret
	_wow64:
	xor ecx, ecx
	lea edx, [esp + 4h]
	call dword ptr fs:[0c0h]
	ret
HcUserBlockInput ENDP

ENDIF

END