; Hc/NtOpenCompositionSurfaceDirtyRegion
; This file was automatically generated by Highcall's syscall generator.

IFDEF RAX
; 64bit

EXTERNDEF sciOpenCompositionSurfaceDirtyRegion:DWORD

.DATA
.CODE

HcOpenCompositionSurfaceDirtyRegion PROC
	mov r10, rcx
	mov eax, sciOpenCompositionSurfaceDirtyRegion
	syscall
	ret
HcOpenCompositionSurfaceDirtyRegion ENDP

ELSE
; 32bit

EXTERNDEF C sciOpenCompositionSurfaceDirtyRegion:DWORD

.586			  
.MODEL FLAT, C   
.STACK
.DATA
.CODE

ASSUME FS:NOTHING

HcOpenCompositionSurfaceDirtyRegion PROC
	mov eax, sciOpenCompositionSurfaceDirtyRegion
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
HcOpenCompositionSurfaceDirtyRegion ENDP

ENDIF

END