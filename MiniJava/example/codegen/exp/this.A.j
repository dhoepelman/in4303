.class public A
.super java/lang/Object

; Default constructor
.method public <init>()V
    aload_0
    invokenonvirtual java/lang/Object/<init>()V
    return
.end method

; Method methodA()
.method public methodA()LA;
    .limit stack 100
    aload_0	; Load this, local variable 0
    areturn	; Return reference
.end method