.class public A
.super java/lang/Object

.field public arrfield [I

.method public <init>()V
    .limit stack 1
    .limit locals 1
    aload_0
    invokenonvirtual java/lang/Object/<init>()V
    return
.end method

.method public foo()I
    .limit stack 3
    aload_0
    ldc 5
    newarray int
    putfield A/arrfield [I	; arrfield = new int[5]
    aload_0
    getfield A/arrfield [I	; arrfield
    ldc 2					; arrfield[2]
    ldc 1
    iastore					; arrfield[2] = 1
    aload_0					
    getfield A/arrfield [I
    ldc 2
    iaload					
    ireturn					; return arrfield[2]
.end method