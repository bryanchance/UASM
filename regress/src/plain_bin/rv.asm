;
; 2.46 allow function call expansion after comma
;
	.486
	.model	flat, stdcall
	.data
	d1 dd 32
	.code

foo	proc a:dword
	ret
foo	endp

bar	proc
local	l1
	mov	edi,[ebx + foo(0)]
	add	esi,foo(0xFFFFFFFF)
	mov	d1,foo(1)
	mov dl2,foo(1)
	mov	l1,foo(1)
	ret
bar	endp

.data
dl2 dd 64
	
	end
	