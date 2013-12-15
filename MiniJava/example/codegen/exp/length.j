.class public Main
.super java/lang/Object

.method public <init>()V
    aload_0
    invokenonvirtual java/lang/Object/<init>()V
    return
.end method

.method public static main([Ljava/lang/String;)V
    .limit stack 100
    getstatic java/lang/System/out Ljava/io/PrintStream;
    ldc 5			; 5
    newarray int	; new int[5]
    arraylength		; (new int[5]).length
    invokevirtual java/io/PrintStream/println(I)V
    return
.end method