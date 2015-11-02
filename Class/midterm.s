main:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
.L8:
	call	Menu()
	call	getN()
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	cmpl	$2, %eax
	je	.L3
	cmpl	$3, %eax
	je	.L4
	cmpl	$1, %eax
	jne	.L10
	call	problem1()
	jmp	.L6
.L3:
	call	problem2()
	jmp	.L6
.L4:
	call	problem3()
	jmp	.L6
.L10:
	movl	-4(%rbp), %eax
	movl	%eax, %edi
	call	def(int)
.L6:
	cmpl	$0, -4(%rbp)
	jle	.L7
	cmpl	$3, -4(%rbp)
	jg	.L7
	jmp	.L8
.L7:
	movl	$0, %eax
	leave
	ret
.LC0:
	.string	"Menu for the Midterm"
.LC1:
	.string	"Type 1 for problem 1."
.LC2:
	.string	"Type 2 for problem 2."
.LC3:
	.string	"Type 3 for problem 3."
.LC4:
	.string	"Type anything else to exit \n"
Menu():
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$.LC0, %esi
	movl	std::cout, %edi
	call	std::basic_ostream<char, std::char_traits<char> >& std::operator<< <std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*)
	movl	std::basic_ostream<char, std::char_traits<char> >& std::endl<char, std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&), %esi
	movq	%rax, %rdi
	call	std::basic_ostream<char, std::char_traits<char> >::operator<<(std::basic_ostream<char, std::char_traits<char> >& (*)(std::basic_ostream<char, std::char_traits<char> >&))
	movl	$.LC1, %esi
	movl	std::cout, %edi
	call	std::basic_ostream<char, std::char_traits<char> >& std::operator<< <std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*)
	movl	std::basic_ostream<char, std::char_traits<char> >& std::endl<char, std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&), %esi
	movq	%rax, %rdi
	call	std::basic_ostream<char, std::char_traits<char> >::operator<<(std::basic_ostream<char, std::char_traits<char> >& (*)(std::basic_ostream<char, std::char_traits<char> >&))
	movl	$.LC2, %esi
	movl	std::cout, %edi
	call	std::basic_ostream<char, std::char_traits<char> >& std::operator<< <std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*)
	movl	std::basic_ostream<char, std::char_traits<char> >& std::endl<char, std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&), %esi
	movq	%rax, %rdi
	call	std::basic_ostream<char, std::char_traits<char> >::operator<<(std::basic_ostream<char, std::char_traits<char> >& (*)(std::basic_ostream<char, std::char_traits<char> >&))
	movl	$.LC3, %esi
	movl	std::cout, %edi
	call	std::basic_ostream<char, std::char_traits<char> >& std::operator<< <std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*)
	movl	std::basic_ostream<char, std::char_traits<char> >& std::endl<char, std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&), %esi
	movq	%rax, %rdi
	call	std::basic_ostream<char, std::char_traits<char> >::operator<<(std::basic_ostream<char, std::char_traits<char> >& (*)(std::basic_ostream<char, std::char_traits<char> >&))
	movl	$.LC4, %esi
	movl	std::cout, %edi
	call	std::basic_ostream<char, std::char_traits<char> >& std::operator<< <std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*)
	movl	std::basic_ostream<char, std::char_traits<char> >& std::endl<char, std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&), %esi
	movq	%rax, %rdi
	call	std::basic_ostream<char, std::char_traits<char> >::operator<<(std::basic_ostream<char, std::char_traits<char> >& (*)(std::basic_ostream<char, std::char_traits<char> >&))
	nop
	popq	%rbp
	ret
getN():
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	leaq	-4(%rbp), %rax
	movq	%rax, %rsi
	movl	std::cin, %edi
	call	std::basic_istream<char, std::char_traits<char> >::operator>>(int&)
	movl	-4(%rbp), %eax
	leave
	ret
.LC5:
	.string	"Enter your gross hourly pay: "
.LC6:
	.string	"Enter your hours worked: "
.LC7:
	.string	"Impossible!"
problem1():
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
.L21:
	movl	$.LC5, %esi
	movl	std::cout, %edi
	call	std::basic_ostream<char, std::char_traits<char> >& std::operator<< <std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*)
	leaq	-8(%rbp), %rax
	movq	%rax, %rsi
	movl	std::cin, %edi
	call	std::basic_istream<char, std::char_traits<char> >::operator>>(int&)
	movl	std::basic_ostream<char, std::char_traits<char> >& std::endl<char, std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&), %esi
	movl	std::cout, %edi
	call	std::basic_ostream<char, std::char_traits<char> >::operator<<(std::basic_ostream<char, std::char_traits<char> >& (*)(std::basic_ostream<char, std::char_traits<char> >&))
	movl	$.LC6, %esi
	movl	std::cout, %edi
	call	std::basic_ostream<char, std::char_traits<char> >& std::operator<< <std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*)
	leaq	-12(%rbp), %rax
	movq	%rax, %rsi
	movl	std::cin, %edi
	call	std::basic_istream<char, std::char_traits<char> >::operator>>(int&)
	movl	std::basic_ostream<char, std::char_traits<char> >& std::endl<char, std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&), %esi
	movl	std::cout, %edi
	call	std::basic_ostream<char, std::char_traits<char> >::operator<<(std::basic_ostream<char, std::char_traits<char> >& (*)(std::basic_ostream<char, std::char_traits<char> >&))
	movl	-12(%rbp), %eax
	cmpl	$40, %eax
	jg	.L15
	movl	-8(%rbp), %edx
	movl	-12(%rbp), %eax
	imull	%edx, %eax
	movl	%eax, -4(%rbp)
	jmp	.L16
.L15:
	movl	-12(%rbp), %eax
	cmpl	$40, %eax
	jle	.L17
	movl	-12(%rbp), %eax
	cmpl	$50, %eax
	jg	.L17
	movl	-8(%rbp), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$3, %eax
	movl	%eax, %ecx
	movl	-8(%rbp), %eax
	leal	(%rax,%rax), %edx
	movl	-12(%rbp), %eax
	subl	$40, %eax
	imull	%edx, %eax
	addl	%ecx, %eax
	movl	%eax, -4(%rbp)
	jmp	.L16
.L17:
	movl	-12(%rbp), %eax
	cmpl	$50, %eax
	jle	.L18
	movl	-12(%rbp), %eax
	cmpl	$60, %eax
	jg	.L18
	movl	-8(%rbp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	sall	$4, %edx
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	-8(%rbp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%eax, %edx
	movl	-12(%rbp), %eax
	subl	$50, %eax
	imull	%edx, %eax
	addl	%ecx, %eax
	movl	%eax, -4(%rbp)
	jmp	.L16
.L18:
	movl	$.LC7, %esi
	movl	std::cout, %edi
	call	std::basic_ostream<char, std::char_traits<char> >& std::operator<< <std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*)
	movl	std::basic_ostream<char, std::char_traits<char> >& std::endl<char, std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&), %esi
	movq	%rax, %rdi
	call	std::basic_ostream<char, std::char_traits<char> >::operator<<(std::basic_ostream<char, std::char_traits<char> >& (*)(std::basic_ostream<char, std::char_traits<char> >&))
.L16:
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	movl	std::cout, %edi
	call	std::basic_ostream<char, std::char_traits<char> >::operator<<(int)
	movl	-12(%rbp), %eax
	testl	%eax, %eax
	js	.L21
	movl	-12(%rbp), %eax
	cmpl	$60, %eax
	jle	.L22
	jmp	.L21
.L22:
	nop
	leave
	ret
.LC8:
	.string	"Type a for the first package."
.LC9:
	.string	"Type b for the second package."
.LC10:
	.string	"Type c for the third package."
.LC11:
	.string	"Enter a number of hours over 11: "
.LC12:
	.string	"Your bill will be $"
.LC13:
	.string	"Enter a number of hours over 22: "
.LC14:
	.string	"Enter a number of hours over 33: "
problem2():
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	$.LC8, %esi
	movl	std::cout, %edi
	call	std::basic_ostream<char, std::char_traits<char> >& std::operator<< <std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*)
	movl	std::basic_ostream<char, std::char_traits<char> >& std::endl<char, std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&), %esi
	movq	%rax, %rdi
	call	std::basic_ostream<char, std::char_traits<char> >::operator<<(std::basic_ostream<char, std::char_traits<char> >& (*)(std::basic_ostream<char, std::char_traits<char> >&))
	movl	$.LC9, %esi
	movl	std::cout, %edi
	call	std::basic_ostream<char, std::char_traits<char> >& std::operator<< <std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*)
	movl	std::basic_ostream<char, std::char_traits<char> >& std::endl<char, std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&), %esi
	movq	%rax, %rdi
	call	std::basic_ostream<char, std::char_traits<char> >::operator<<(std::basic_ostream<char, std::char_traits<char> >& (*)(std::basic_ostream<char, std::char_traits<char> >&))
	movl	$.LC10, %esi
	movl	std::cout, %edi
	call	std::basic_ostream<char, std::char_traits<char> >& std::operator<< <std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*)
	movl	std::basic_ostream<char, std::char_traits<char> >& std::endl<char, std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&), %esi
	movq	%rax, %rdi
	call	std::basic_ostream<char, std::char_traits<char> >::operator<<(std::basic_ostream<char, std::char_traits<char> >& (*)(std::basic_ostream<char, std::char_traits<char> >&))
	movl	$.LC4, %esi
	movl	std::cout, %edi
	call	std::basic_ostream<char, std::char_traits<char> >& std::operator<< <std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*)
	movl	std::basic_ostream<char, std::char_traits<char> >& std::endl<char, std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&), %esi
	movq	%rax, %rdi
	call	std::basic_ostream<char, std::char_traits<char> >::operator<<(std::basic_ostream<char, std::char_traits<char> >& (*)(std::basic_ostream<char, std::char_traits<char> >&))
	leaq	-9(%rbp), %rax
	movq	%rax, %rsi
	movl	std::cin, %edi
	call	std::basic_istream<char, std::char_traits<char> >& std::operator>><char, std::char_traits<char> >(std::basic_istream<char, std::char_traits<char> >&, char&)
	movzbl	-9(%rbp), %eax
	cmpb	$97, %al
	jne	.L24
	movl	$.LC11, %esi
	movl	std::cout, %edi
	call	std::basic_ostream<char, std::char_traits<char> >& std::operator<< <std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*)
	leaq	-8(%rbp), %rax
	movq	%rax, %rsi
	movl	std::cin, %edi
	call	std::basic_istream<char, std::char_traits<char> >::operator>>(int&)
	movl	-8(%rbp), %eax
	cmpl	$11, %eax
	jg	.L25
	movl	$30, -4(%rbp)
	jmp	.L26
.L25:
	movl	-8(%rbp), %eax
	cmpl	$11, %eax
	jle	.L27
	movl	-8(%rbp), %eax
	cmpl	$22, %eax
	jg	.L27
	movl	-8(%rbp), %eax
	leal	-11(%rax), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	addl	$30, %eax
	movl	%eax, -4(%rbp)
	jmp	.L26
.L27:
	movl	-8(%rbp), %eax
	cmpl	$22, %eax
	jle	.L26
	movl	-8(%rbp), %eax
	leal	-11(%rax), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	leal	30(%rax), %ecx
	movl	-8(%rbp), %eax
	leal	-22(%rax), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	addl	%ecx, %eax
	movl	%eax, -4(%rbp)
.L26:
	movl	$.LC12, %esi
	movl	std::cout, %edi
	call	std::basic_ostream<char, std::char_traits<char> >& std::operator<< <std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*)
	movq	%rax, %rdx
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	std::basic_ostream<char, std::char_traits<char> >::operator<<(int)
	jmp	.L36
.L24:
	movzbl	-9(%rbp), %eax
	cmpb	$98, %al
	jne	.L29
	movl	$.LC13, %esi
	movl	std::cout, %edi
	call	std::basic_ostream<char, std::char_traits<char> >& std::operator<< <std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*)
	leaq	-8(%rbp), %rax
	movq	%rax, %rsi
	movl	std::cin, %edi
	call	std::basic_istream<char, std::char_traits<char> >::operator>>(int&)
	movl	-8(%rbp), %eax
	cmpl	$22, %eax
	jg	.L30
	movl	$35, -4(%rbp)
	jmp	.L31
.L30:
	movl	-8(%rbp), %eax
	cmpl	$22, %eax
	jle	.L32
	movl	-8(%rbp), %eax
	cmpl	$44, %eax
	jg	.L32
	movl	-8(%rbp), %eax
	subl	$22, %eax
	addl	%eax, %eax
	addl	$35, %eax
	movl	%eax, -4(%rbp)
	jmp	.L31
.L32:
	movl	-8(%rbp), %eax
	cmpl	$44, %eax
	jle	.L31
	movl	-8(%rbp), %eax
	subl	$22, %eax
	addl	%eax, %eax
	leal	35(%rax), %edx
	movl	-8(%rbp), %eax
	subl	$44, %eax
	sall	$2, %eax
	addl	%edx, %eax
	movl	%eax, -4(%rbp)
.L31:
	movl	$.LC12, %esi
	movl	std::cout, %edi
	call	std::basic_ostream<char, std::char_traits<char> >& std::operator<< <std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*)
	movq	%rax, %rdx
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	std::basic_ostream<char, std::char_traits<char> >::operator<<(int)
	jmp	.L36
.L29:
	movzbl	-9(%rbp), %eax
	cmpb	$99, %al
	jne	.L36
	movl	$.LC14, %esi
	movl	std::cout, %edi
	call	std::basic_ostream<char, std::char_traits<char> >& std::operator<< <std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*)
	leaq	-8(%rbp), %rax
	movq	%rax, %rsi
	movl	std::cin, %edi
	call	std::basic_istream<char, std::char_traits<char> >::operator>>(int&)
	movl	-8(%rbp), %eax
	cmpl	$33, %eax
	jg	.L33
	movl	$40, -4(%rbp)
	jmp	.L34
.L33:
	movl	-8(%rbp), %eax
	cmpl	$33, %eax
	jle	.L35
	movl	-8(%rbp), %eax
	cmpl	$66, %eax
	jg	.L35
	movl	-8(%rbp), %eax
	leal	-33(%rax), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	addl	$40, %eax
	movl	%eax, -4(%rbp)
	jmp	.L34
.L35:
	movl	-8(%rbp), %eax
	cmpl	$66, %eax
	jle	.L34
	movl	-8(%rbp), %eax
	leal	7(%rax), %edx
	movl	-8(%rbp), %eax
	subl	$66, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	movl	%eax, -4(%rbp)
.L34:
	movl	$.LC12, %esi
	movl	std::cout, %edi
	call	std::basic_ostream<char, std::char_traits<char> >& std::operator<< <std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*)
	movq	%rax, %rdx
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	std::basic_ostream<char, std::char_traits<char> >::operator<<(int)
.L36:
	nop
	leave
	ret
.LC15:
	.string	"Enter the number of terms of the Fibonacci sequence you want"
.LC16:
	.string	"The "
.LC17:
	.string	" term is "
.LC18:
	.string	"."
problem3():
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	subq	$40, %rsp
	movl	$0, -20(%rbp)
	movl	$1, -24(%rbp)
	movl	$.LC15, %esi
	movl	std::cout, %edi
	call	std::basic_ostream<char, std::char_traits<char> >& std::operator<< <std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*)
	movl	std::basic_ostream<char, std::char_traits<char> >& std::endl<char, std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&), %esi
	movq	%rax, %rdi
	call	std::basic_ostream<char, std::char_traits<char> >::operator<<(std::basic_ostream<char, std::char_traits<char> >& (*)(std::basic_ostream<char, std::char_traits<char> >&))
	leaq	-36(%rbp), %rax
	movq	%rax, %rsi
	movl	std::cin, %edi
	call	std::basic_istream<char, std::char_traits<char> >::operator>>(unsigned int&)
	movl	$1, -32(%rbp)
.L39:
	movl	-32(%rbp), %edx
	movl	-36(%rbp), %eax
	cmpl	%eax, %edx
	jnb	.L38
	movl	-20(%rbp), %edx
	movl	-24(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -28(%rbp)
	movl	-24(%rbp), %eax
	movl	%eax, -20(%rbp)
	movl	-28(%rbp), %eax
	movl	%eax, -24(%rbp)
	addl	$1, -32(%rbp)
	jmp	.L39
.L38:
	movl	-36(%rbp), %ebx
	movl	$.LC16, %esi
	movl	std::cout, %edi
	call	std::basic_ostream<char, std::char_traits<char> >& std::operator<< <std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*)
	movl	%ebx, %esi
	movq	%rax, %rdi
	call	std::basic_ostream<char, std::char_traits<char> >::operator<<(unsigned int)
	movl	$.LC17, %esi
	movq	%rax, %rdi
	call	std::basic_ostream<char, std::char_traits<char> >& std::operator<< <std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*)
	movq	%rax, %rdx
	movl	-28(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	std::basic_ostream<char, std::char_traits<char> >::operator<<(unsigned int)
	movl	$.LC18, %esi
	movq	%rax, %rdi
	call	std::basic_ostream<char, std::char_traits<char> >& std::operator<< <std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*)
	movl	std::basic_ostream<char, std::char_traits<char> >& std::endl<char, std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&), %esi
	movq	%rax, %rdi
	call	std::basic_ostream<char, std::char_traits<char> >::operator<<(std::basic_ostream<char, std::char_traits<char> >& (*)(std::basic_ostream<char, std::char_traits<char> >&))
	nop
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	ret
.LC19:
	.string	"You typed "
.LC20:
	.string	" to exit the program."
def(int):
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	$.LC19, %esi
	movl	std::cout, %edi
	call	std::basic_ostream<char, std::char_traits<char> >& std::operator<< <std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*)
	movq	%rax, %rdx
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	std::basic_ostream<char, std::char_traits<char> >::operator<<(int)
	movl	$.LC20, %esi
	movq	%rax, %rdi
	call	std::basic_ostream<char, std::char_traits<char> >& std::operator<< <std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*)
	movl	std::basic_ostream<char, std::char_traits<char> >& std::endl<char, std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&), %esi
	movq	%rax, %rdi
	call	std::basic_ostream<char, std::char_traits<char> >::operator<<(std::basic_ostream<char, std::char_traits<char> >& (*)(std::basic_ostream<char, std::char_traits<char> >&))
	nop
	leave
	ret
__static_initialization_and_destruction_0(int, int):
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	cmpl	$1, -4(%rbp)
	jne	.L43
	cmpl	$65535, -8(%rbp)
	jne	.L43
	movl	std::__ioinit, %edi
	call	std::ios_base::Init::Init()
	movl	$__dso_handle, %edx
	movl	std::__ioinit, %esi
	movl	std::ios_base::Init::~Init(), %edi
	call	__cxa_atexit
.L43:
	nop
	leave
	ret
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$65535, %esi
	movl	$1, %edi
	call	__static_initialization_and_destruction_0(int, int)
	popq	%rbp
	ret
