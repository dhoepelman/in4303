.class public A
.super java/lang/Object

; Default constructor
.method public <init>()V
    aload_0
    invokenonvirtual java/lang/Object/<init>()V
    return
.end method

; Foo method that returns 1
.method public foo()I
    .limit stack 100
    ldc 1
    ireturn
.end method