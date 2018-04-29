section .text
	global _start	; deve ser declarado para linker (ld)
_start:				; informa ao ponto de entrada do linker
	mov edx,len		; comprimento da mensagem
	mov ecx,msg		; mensagem para escrever
	mov ebx,1		; descritor de arquivo (stdout)
	mov eax,4		; número de chamada do sistema (sys_write)
	int 0x80		; chamada do kernel

	mov eax,1		; número de chamada do sistema (sys_exit)
	int 0x80		; chamada do kernel

section .data
msg db 'Ola, mundo!',0xa	; nossa string
len equ $ - msg		; comprimento da nossa string
