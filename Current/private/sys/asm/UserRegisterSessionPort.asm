; Hc/NtUserRegisterSessionPort
; This file was automatically generated by Highcall's syscall generator.

IFDEF RAX
; 64bit

EXTERNDEF sciUserRegisterSessionPort:DWORD

.DATA
.CODE

HcUserRegisterSessionPort PROC
	mov r10, rcx
	mov eax, sciUserRegisterSessionPort
	syscall
	ret
HcUserRegisterSessionPort ENDP

ELSE
; 32bit

EXTERNDEF C sciUserRegisterSessionPort:DWORD

.586			  
.MODEL FLAT, C   
.STACK
.DATA
.CODE

ASSUME FS:NOTHING

HcUserRegisterSessionPort PROC
	mov eax, sciUserRegisterSessionPort
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
HcUserRegisterSessionPort ENDP

ENDIF

END