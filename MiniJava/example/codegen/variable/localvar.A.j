.class public A
.super java/lang/Object

.method public <init>()V
    .limit stack 1
    .limit locals 1
    aload_0
    invokenonvirtual java/lang/Object/<init>()V
    return
.end method

.method public foo(I[I)I
    .limit stack 3
    .limit locals 5
    .var 1 is par I from methodstart_0 to methodend_0
    .var 2 is par2 I from methodstart_0 to methodend_0
    .var 3 is local I from methodstart_0 to methodend_0
    .var 4 is local2 I from methodstart_0 to methodend_0
methodstart_0:
    iload 1		; par
    istore 3	; local = par
    aload 2		; par2
    astore 4	; local2 = par2
    aload 4		; local2
    ldc 0
    ldc 1
    iastore		; local2[0] = 1
    iload 3		
    ireturn		; return local
methodend_0:
.end method