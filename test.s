	.file "test.s"
	.text
	.text
	.globl main
	.type main, @function
main:
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	movq $5, %rax
	movq %rax, -8(%rbp)
	subq $8, %rsp
	movq -8(%rbp), %rax
	movq %rax, -16(%rbp)
	subq $8, %rsp
	movq $10, %rax
	pushq %rax
	movq $20, %rax
	popq %rcx
	subq %rax, %rcx
	movq %rcx, %rax
	movq %rax, -24(%rbp)
	movq -24(%rbp), %rax
	# Convert integer to string and print
	movq $10, %r9
	movq $0, %r10
	movq %rax, %rcx
	testq %rcx, %rcx
	jns .Lpositive_0
	negq %rcx
	movq $45, (%rsp)
	decq %rsp
	incq %r10
.Lpositive_0:
.Lconvert_loop_0:
	xorq %rdx, %rdx
	divq %r9
	addq $48, %rdx
	decq %rsp
	movb %dl, (%rsp)
	incq %r10
	testq %rax, %rax
	jnz .Lconvert_loop_0
	movq %r10, %rdx
	movq %rsp, %rsi
	movq $1, %rdi
	movq $1, %rax
	syscall
	movq $10, (%rsp)
	movq $1, %rdx
	movq %rsp, %rsi
	movq $1, %rdi
	movq $1, %rax
	syscall
	addq %r10, %rsp
	incq %rsp
	movq -8(%rbp), %rax
	# Convert integer to string and print
	movq $10, %r9
	movq $0, %r10
	movq %rax, %rcx
	testq %rcx, %rcx
	jns .Lpositive_1
	negq %rcx
	movq $45, (%rsp)
	decq %rsp
	incq %r10
.Lpositive_1:
.Lconvert_loop_1:
	xorq %rdx, %rdx
	divq %r9
	addq $48, %rdx
	decq %rsp
	movb %dl, (%rsp)
	incq %r10
	testq %rax, %rax
	jnz .Lconvert_loop_1
	movq %r10, %rdx
	movq %rsp, %rsi
	movq $1, %rdi
	movq $1, %rax
	syscall
	movq $10, (%rsp)
	movq $1, %rdx
	movq %rsp, %rsi
	movq $1, %rdi
	movq $1, %rax
	syscall
	addq %r10, %rsp
	incq %rsp
	movq -8(%rbp), %rax
	pushq %rax
	movq $5, %rax
	popq %rcx
	cmpq %rax, %rcx
	sete %al
	movzbq %al, %rax
	cmpq $0, %rax
	je L2
	movq $10, %rax
	# Convert integer to string and print
	movq $10, %r9
	movq $0, %r10
	movq %rax, %rcx
	testq %rcx, %rcx
	jns .Lpositive_4
	negq %rcx
	movq $45, (%rsp)
	decq %rsp
	incq %r10
.Lpositive_4:
.Lconvert_loop_4:
	xorq %rdx, %rdx
	divq %r9
	addq $48, %rdx
	decq %rsp
	movb %dl, (%rsp)
	incq %r10
	testq %rax, %rax
	jnz .Lconvert_loop_4
	movq %r10, %rdx
	movq %rsp, %rsi
	movq $1, %rdi
	movq $1, %rax
	syscall
	movq $10, (%rsp)
	movq $1, %rdx
	movq %rsp, %rsi
	movq $1, %rdi
	movq $1, %rax
	syscall
	addq %r10, %rsp
	incq %rsp
	jmp L3
L2:
L3:
	movq $20, %rax
	# Convert integer to string and print
	movq $10, %r9
	movq $0, %r10
	movq %rax, %rcx
	testq %rcx, %rcx
	jns .Lpositive_5
	negq %rcx
	movq $45, (%rsp)
	decq %rsp
	incq %r10
.Lpositive_5:
.Lconvert_loop_5:
	xorq %rdx, %rdx
	divq %r9
	addq $48, %rdx
	decq %rsp
	movb %dl, (%rsp)
	incq %r10
	testq %rax, %rax
	jnz .Lconvert_loop_5
	movq %r10, %rdx
	movq %rsp, %rsi
	movq $1, %rdi
	movq $1, %rax
	syscall
	movq $10, (%rsp)
	movq $1, %rdx
	movq %rsp, %rsi
	movq $1, %rdi
	movq $1, %rax
	syscall
	addq %r10, %rsp
	incq %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	.section .note.GNU-stack,"",@progbits
