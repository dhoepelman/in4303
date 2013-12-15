.class public A
.super java/lang/Object

.method public <init>()V
    aload_0
    invokenonvirtual java/lang/Object/<init>()V
    return
.end method

.method public foo()[I;
    .limit stack 100
    ldc 3				; 3
    newarray int		; new int[3]
    areturn
.end method