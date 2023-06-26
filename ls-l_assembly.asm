section .data
    bin: db "/bin/sh", 0
    c: db "-c", 0
    comando: db "ls -l", 0


section .text
global main
global _start

main:
_start:

mov eax, 0x0b
push 0
push comando
mov edi, esp
push c
push bin
mov ebx, bin
mov ecx, esp
mov edx, 0
int 0x80