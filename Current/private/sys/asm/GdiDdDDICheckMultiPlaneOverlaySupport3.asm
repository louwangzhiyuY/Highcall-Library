; Hc/NtGdiDdDDICheckMultiPlaneOverlaySupport3
; This file was automatically generated by Highcall's syscall generator.

IFDEF RAX
; 64bit

EXTERNDEF sciGdiDdDDICheckMultiPlaneOverlaySupport3:DWORD

.DATA
.CODE

HcGdiDdDDICheckMultiPlaneOverlaySupport3 PROC
	mov r10, rcx
	mov eax, sciGdiDdDDICheckMultiPlaneOverlaySupport3
	syscall
	ret
HcGdiDdDDICheckMultiPlaneOverlaySupport3 ENDP

ELSE
; 32bit

EXTERNDEF C sciGdiDdDDICheckMultiPlaneOverlaySupport3:DWORD

.586			  
.MODEL FLAT, C   
.STACK
.DATA
.CODE

ASSUME FS:NOTHING

HcGdiDdDDICheckMultiPlaneOverlaySupport3 PROC
	mov eax, sciGdiDdDDICheckMultiPlaneOverlaySupport3
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
HcGdiDdDDICheckMultiPlaneOverlaySupport3 ENDP

ENDIF

END