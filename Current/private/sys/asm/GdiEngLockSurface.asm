; Hc/NtGdiEngLockSurface
; This file was automatically generated by Highcall's syscall generator.

IFDEF RAX
; 64bit

EXTERNDEF sciGdiEngLockSurface:DWORD

.DATA
.CODE

HcGdiEngLockSurface PROC
	mov r10, rcx
	mov eax, sciGdiEngLockSurface
	syscall
	ret
HcGdiEngLockSurface ENDP

ELSE
; 32bit

EXTERNDEF C sciGdiEngLockSurface:DWORD

.586			  
.MODEL FLAT, C   
.STACK
.DATA
.CODE

ASSUME FS:NOTHING

HcGdiEngLockSurface PROC
	mov eax, sciGdiEngLockSurface
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
HcGdiEngLockSurface ENDP

ENDIF

END