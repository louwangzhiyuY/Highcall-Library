; Hc/NtUserSetProcessRestrictionExemption
; This file was automatically generated by Highcall's syscall generator.

IFDEF RAX
; 64bit

EXTERNDEF sciUserSetProcessRestrictionExemption:DWORD

.DATA
.CODE

HcUserSetProcessRestrictionExemption PROC
	mov r10, rcx
	mov eax, sciUserSetProcessRestrictionExemption
	syscall
	ret
HcUserSetProcessRestrictionExemption ENDP

ELSE
; 32bit

EXTERNDEF C sciUserSetProcessRestrictionExemption:DWORD

.586			  
.MODEL FLAT, C   
.STACK
.DATA
.CODE

ASSUME FS:NOTHING

HcUserSetProcessRestrictionExemption PROC
	mov eax, sciUserSetProcessRestrictionExemption
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
HcUserSetProcessRestrictionExemption ENDP

ENDIF

END