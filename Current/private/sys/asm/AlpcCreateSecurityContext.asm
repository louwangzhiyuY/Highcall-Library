; Hc/NtAlpcCreateSecurityContext
; This file was automatically generated by Highcall's syscall generator.

IFDEF RAX
; 64bit

EXTERNDEF sciAlpcCreateSecurityContext:DWORD

.DATA
.CODE

HcAlpcCreateSecurityContext PROC
	mov r10, rcx
	mov eax, sciAlpcCreateSecurityContext
	syscall
	ret
HcAlpcCreateSecurityContext ENDP

ELSE
; 32bit

EXTERNDEF C sciAlpcCreateSecurityContext:DWORD

.586			  
.MODEL FLAT, C   
.STACK
.DATA
.CODE

ASSUME FS:NOTHING

HcAlpcCreateSecurityContext PROC
	mov eax, sciAlpcCreateSecurityContext
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
HcAlpcCreateSecurityContext ENDP

ENDIF

END